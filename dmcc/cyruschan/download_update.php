<?php
require_once(dirname(__FILE__).'/header.php');
$language['page']['title'] = is_numeric($_GET['id']) ? $language['page']['title'][1] : $language['page']['title'][0]; 
$mycms['channel_show'] = true; 
$mycms['channelID']=isset($_GET['channel']) ? $_GET['channel'] :0;

if(!is_numeric($_GET['id'])){
	$mycms['action'] = 'add'; 
	$mycms['download'] = array(); 
	$mycms['download']['items_'] = 2; 
	$sql = "SELECT * FROM `{$DB['prefix']}channel` WHERE `module` != '0' && `module` = 'MO004x' && `lang` = '".LANG."' ORDER BY `sort` ASC";
	$cat = $db->query($sql);
	if(count($cat) == 1){ 
		$mycms['channel_show'] = false;
		if(!isset($_GET['channel'])){
			header('Location: download_update.php?channel='.$cat[0]['id']);
			exit();
		}
	}
	$mycms['download']['channel_text'] = empty($_GET['channel']) ? '<option selected="selected" value="">'.$language['page']['select_channel'].'</option>' : '<option value="download_update.php?channel=0">'.$language['page']['select_channel'].'</option>';
	foreach($cat as $n){
		$mycms['download']['channel_text'] .= $_GET['channel'] != $n['id'] ? '<option value="download_update.php?channel='.$n['id'].'">'.$n['title'].'</option>' : '<option selected="selected" value="">'.$n['title'].'</option>';
	}
	$mycms['download']['nexus_text'] = is_numeric($_GET['category']) ? '<option selected="selected" value="">'.$language['page']['select_category'].'</option>' : '<option value="">'.$language['page']['select_category'].'</option>';
	if(is_numeric($_GET['channel'])){
		$sql = "SELECT * FROM `{$DB['prefix']}category` WHERE `lang` = '".LANG."' && `channel` = '{$_GET['channel']}'";	
		$cat = category::order($db->query($sql));
		foreach($cat as $n){
			$inden = $n['level'] > 1 ? '├'.str_repeat('────',$n['level']-1) : '';
			$mycms['download']['nexus_text'] .= $_GET['category'] == $n['id'] ? '<option selected="selected" value="'.$n['nexus'].'">'.$inden.$n['title'].'</option>' : '<option value="'.$n['nexus'].'">'.$inden.$n['title'].'</option>';
		}
	}		
	$member_rank = member::rank();
	$mycms['download']['permission_text'] = '<option value="0" selected>'.$language['page']['unlimited'].'</option>';
	foreach ($member_rank as $n){
		$mycms['download']['permission_text'] .= '<option value="'.$n['id'].'">'.$n['rankname'].'</option>';
	}
	require_once(CMSINC.'/config/picture.config.php');
	$mycms['download']['picture_config_js'] = $mycms['download']['picture_js'] = '';
	for($i=0; $i<30; $i++){ 
		if($i > 0){
			$mycms['download']['picture_config_js'] .= ',';
			$mycms['download']['picture_js'] .= ',';
		}
		$mycms['download']['picture_config_js'] .= '['.implode(',',$picture_config['MO004x'][($i>3 ? 3 : $i)]).']'; 
		$mycms['download']['picture_js'] .= "''"; 
	}
	$mycms['download']['bold'] = $mycms['download']['mode'] = $mycms['download']['recom'] = $mycms['download']['money'] = $mycms['download']['integral'] = $mycms['download']['sort'] = $mycms['download']['count'] = 0;
	$mycms['download']['comment'] =  $mycms['download']['audit'] = 1;
	$mycms['download']['click'] = rand(0,1000);
	$mycms['download']['addtime'] = date('Y-m-d',$gmt_time);
} else {
	$mycms['action'] = 'update'; 
	$mycms['download'] = array(); 
	$mycms['channel_show'] = false;
	$sql = "SELECT * FROM `{$DB['prefix']}download` WHERE `lang` = '".LANG."' && `id` = '{$_GET['id']}' LIMIT 1";
	if(!$mycms['download'] = $db->query($sql,1)){
		msgbox($language['page']['nodata'],'BACK');	
	}
	$mycms['download']['content'] = html_chars($mycms['download']['content']);
	$mycms['download']['nexus_text'] = '<option value="">'.$language['page']['select_category'].'</option>';
	$sql = "SELECT * FROM `{$DB['prefix']}category` WHERE `lang` = '".LANG."' && `channel` = '{$mycms['download']['channel']}'";	
	$cat = category::order($db->query($sql));
	foreach($cat as $n){
		$inden = $n['level'] > 1 ? '├'.str_repeat('────',$n['level']-1) : '';
		$mycms['download']['nexus_text'] .= $mycms['download']['category'] == $n['nexus'] ? '<option selected="selected" value="'.$n['nexus'].'">'.$inden.$n['title'].'</option>' : '<option value="'.$n['nexus'].'">'.$inden.$n['title'].'</option>';
	}
	$member_rank = member::rank();	
	$mycms['download']['permission_text'] = empty($mycms['download']['permission']) ? '<option value="0" selected>'.$language['page']['unlimited'].'</option>' : '<option value="0">'.$language['page']['unlimited'].'</option>';
	$darr = explode(',',$mycms['download']['permission']);
	foreach ($member_rank as $n){
		$mycms['download']['permission_text'] .= in_array($n['id'],$darr) ? '<option selected value="'.$n['id'].'">'.$n['rankname'].'</option>' : '<option value="'.$n['id'].'">'.$n['rankname'].'</option>';
	}
	require_once(CMSINC.'/config/picture.config.php');
	$mycms['download']['picture_config_js'] = $mycms['download']['picture_js'] = '';
	$mycms['download']['picture'] = explode(',',$mycms['download']['picture']); 
	$mycms['download']['items_'] = count($mycms['download']['picture']); 
	for($i=0; $i<30; $i++){ 
		if($i > 0){
			$mycms['download']['picture_config_js'] .= ',';
			$mycms['download']['picture_js'] .= ',';
		}
		$picture_config['MO004x'][$i][0] = $picture_config['MO004x'][$i][3] = 0; 
		$mycms['download']['picture_config_js'] .= '['.implode(',',$picture_config['MO004x'][($i>3 ? 3 : $i)]).']'; 
		$mycms['download']['picture_js'] .= "'".$mycms['download']['picture'][$i]."'"; 
	}	
	is_numeric($mycms['download']['addtime']) && $mycms['download']['addtime'] = date('Y-m-d',$mycms['download']['addtime']);		
}
if($action == 'add'){
	is_numeric($_GET['channel']) or msgbox($language['page']['select_channel'],'BACK'); 
	$content = $_POST['content']; 
	$_POST = html_chars($_POST); 
	$picture = is_array($_POST['picture_url']) ? implode(',',$_POST['picture_url']) : ''; 
	$permission = is_array($_POST['permission']) ? (in_array('0',$_POST['permission']) ? '0' : implode(',',$_POST['permission'])) : 0; 
	$_POST['tag'] = str_replace('，',',',trim($_POST['tag'])); 
	$local = $_POST['local'];
	if($_POST['is_rename'] && is_file('../'.$local)){
		$file_info = pathinfo($local);
		$new_name = $file_info['dirname'].'/'.random(32).'.'.$file_info['extension'];
		if(@rename('../'.$local,'../'.$new_name)){
			$local = $new_name;
		} else {
			msgbox($language['page']['not_rename'],'NOT',0);	
		}
	}
	$sql = "INSERT INTO `{$DB['prefix']}download`(`lang`,`channel`,`category`,`title`,`color`,`bold`,`tag`,`author`,`source`,`sourceurl`,`demourl`,`environment`,`softlang`,";
	$sql .= "`authorization`,`size`,`local`,`mode`,`mirror`,`keyword`,`content`,`template`,`comment`,`agree`,`disagree`,`picture`,`recom`,`audit`,`permission`,`filename`,";
	$sql .= "`click`,`count`,`money`,`integral`,`buyuser`,`sort`,`publisher`,`addtime`) VALUES ('".LANG."','{$_GET['channel']}','{$_POST['category']}','{$_POST['title']}','{$_POST['color']}',";
	$sql .= "'".numeric($_POST['bold'])."','{$_POST['tag']}','{$_POST['author']}','{$_POST['source']}','{$_POST['sourceurl']}','{$_POST['demourl']}','{$_POST['environment']}','{$_POST['softlang']}',";
	$sql .= "'{$_POST['authorization']}','{$_POST['size']}','{$local}','".numeric($_POST['mode'])."','".trim($_POST['mirror'])."','{$_POST['keyword']}','{$content}','{$_POST['template']}',";
	$sql .= "'".numeric($_POST['comment'])."','".numeric($_POST['agree'])."','".numeric($_POST['disagree'])."','{$picture}','".numeric($_POST['recom'])."','".numeric($_POST['audit'])."',";
	$sql .= "'{$permission}','{$_POST['filename']}','".numeric($_POST['click'])."','".numeric($_POST['count'])."','".numeric($_POST['money'])."','".numeric($_POST['integral'])."',";
	$sql .= "'{$_POST['buyuser']}','".numeric($_POST['sort'])."','{$_SESSION['admin']['login']['username']}','".date2time($_POST['addtime'])."');";
	if($db->execute($sql)){
		$id = $db->get_last_id();
		tag::update(explode(',',$_POST['tag']),'MO004x');
		$pic_info = '';
		foreach($_POST['picture_url'] as $i => $n){
			$pics = new picture();
			$url = '../'.$n;
			if(is_file($url)){
				if($_POST['picture_cut'][$i] == 1){
					$pics->cut['file'] = $url;
					$pics->cut['width'] = $_POST['picture_width'][$i];
					$pics->cut['save_name'] = false;
					$pics->cut['height'] = $_POST['picture_height'][$i];
					$pics->cut() === true or $pic_info = $pics->info;	
				}
				if($_POST['picture_watermark'][$i] == 1){
					$pics->watermark['file'] = $url;
					$pics->watermark() === true or $pic_info = $pics->info;
				}
			}
		}
		$fieldswhere=" fieldshow=1 and channelID=".$_GET['channel'];
		$v=$db->query("SELECT fields,fieldstype FROM `{$DB['prefix']}fields` WHERE ".$fieldswhere." order by  fieldorder DESC,fid;");
		foreach($v as $f){
			if($f['fieldstype']=='int'){
				 $detail.=','.$_POST[$f['fields']];	
			}
			elseif($f['fieldstype']=='time'){
				$detail.=',\''.strtotime($_POST[$f['fields']]).'\'';
			}else
			{
				$detail.=',\''.$_POST[$f['fields']].'\'';
			}
			$fields.=',`'.$f['fields'].'`';
		}
		$sqls ="INSERT INTO `{$DB['prefix']}download_field` (aid {$fields}) VALUES ($id {$detail});";
		$db1=new db();
		if($db1->execute($sqls)){
			admin::logs(2,$language['page']['title']."，{$language['common']['successful']}(id:{$id}){$pic_info}"); 
			$config['static'] == 2 && $_POST['make_html'] == '1' && admin::make_html(1,$id,'download_manage.php'); 
			msgbox($language['common']['successful'].($pic_info == '' ? '' : '，'.$pic_info),'download_manage.php'); 
		} else { 
			admin::logs(2,$language['page']['title']."，{$language['common']['failed']}"); 
			msgbox($language['common']['failed'],'BACK'); 
		}
	} else { 
		admin::logs(2,$language['page']['title']."，{$language['common']['failed']}"); 
		msgbox($language['common']['failed'],'BACK'); 
	}
}
if($action == 'update' && is_numeric($_GET['id'])){
	$content = $_POST['content']; 
	$_POST = html_chars($_POST);
	$picture = is_array($_POST['picture_url']) ? implode(',',$_POST['picture_url']) : ''; 
	$permission = is_array($_POST['permission']) ? (in_array('0',$_POST['permission']) ? '0' : implode(',',$_POST['permission'])) : 0; 
	$_POST['tag'] = str_replace('，',',',trim($_POST['tag'])); 
	$local = $_POST['local'];
	if($_POST['is_rename'] && is_file('../'.$local)){
		$file_info = pathinfo($local);
		$new_name = $file_info['dirname'].'/'.random(32).'.'.$file_info['extension'];
		if(@rename('../'.$local,'../'.$new_name)){
			$local = $new_name;
		} else {
			msgbox($language['page']['not_rename'],'NOT',0);	
		}
	}	
	$sql = "UPDATE `{$DB['prefix']}download` SET `category` = '{$_POST['category']}',`title` = '{$_POST['title']}',`color` = '{$_POST['color']}',`bold` = '".numeric($_POST['bold'])."',";
	$sql .= "`tag` = '{$_POST['tag']}',`author` = '{$_POST['author']}',`source` = '{$_POST['source']}',`sourceurl` = '{$_POST['sourceurl']}',`demourl` = '{$_POST['demourl']}',";
	$sql .= "`environment` = '{$_POST['environment']}',`softlang` = '{$_POST['softlang']}',`authorization` = '{$_POST['authorization']}',`size` = '{$_POST['size']}',";
	$sql .= "`local` = '{$local}',`mode` = '".numeric($_POST['mode'])."',`mirror` = '".trim($_POST['mirror'])."',`keyword` = '{$_POST['keyword']}',`content` = '{$content}',";
	$sql .= "`template` = '{$_POST['template']}',`comment` = '".numeric($_POST['comment'])."',`agree` = '".numeric($_POST['agree'])."',`disagree` = '".numeric($_POST['disagree'])."',";
	$sql .= "`picture` = '{$picture}',`recom` = '".numeric($_POST['recom'])."',`audit` = '".numeric($_POST['audit'])."',`permission` = '{$permission}',`filename` = '{$_POST['filename']}',";
	$sql .= "`click` = '".numeric($_POST['click'])."',`count` = '".numeric($_POST['count'])."',`money` = '".numeric($_POST['money'])."',`integral` = '".numeric($_POST['integral'])."',";
	$sql .= "`buyuser` = '{$_POST['buyuser']}',`sort` = '".numeric($_POST['sort'])."',`publisher` = '{$_SESSION['admin']['login']['username']}',`addtime` = '".date2time($_POST['addtime'])."' WHERE `id` = '{$_GET['id']}';";
	if($db->execute($sql)){
		tag::modify(explode(',',$mycms['download']['tag']),explode(',',$_POST['tag']),'MO004x');
		$pic_info = '';
		foreach($_POST['picture_url'] as $i => $n){
			$pics = new picture();
			$url = '../'.$n;
			if(is_file($url)){
				if($_POST['picture_cut'][$i] == 1){
					$pics->cut['file'] = $url;
					$pics->cut['width'] = $_POST['picture_width'][$i];
					$pics->cut['save_name'] = false;
					$pics->cut['height'] = $_POST['picture_height'][$i];
					$pics->cut() === true or $pic_info = $pics->info;	
				}
				if($_POST['picture_watermark'][$i] == 1){
					$pics->watermark['file'] = $url;
					$pics->watermark() === true or $pic_info = $pics->info;
				}
			}
		}		
				$fieldswhere=" fieldshow=1 and channelID=".$_GET['channel'];
		$v=$db->query("SELECT fields,fieldstype FROM `{$DB['prefix']}fields` WHERE ".$fieldswhere." order by  fieldorder DESC,fid;");
		if($v){
		$ii=0;
		foreach($v as $f){
			if($ii!=0){
				if($f['fieldstype']=='int'){
					 $detail.=','.$f['fields'].'='.$_POST[$f['fields']];	
				}
				elseif($f['fieldstype']=='time'){
					$detail.=','.$f['fields'].'=\''.strtotime($_POST[$f['fields']]).'\'';
				}else
				{
					$detail.=','.$f['fields'].'=\''.$_POST[$f['fields']].'\'';
				}
			}else{
				if($f['fieldstype']=='int'){
					 $detail=$f['fields'].'='.$_POST[$f['fields']];	
				}
				elseif($f['fieldstype']=='time'){
					$detail=$f['fields'].'=\''.strtotime($_POST[$f['fields']]).'\'';
				}else
				{
					$detail=$f['fields'].'=\''.$_POST[$f['fields']].'\'';
				}
			}
			$ii++;
		}
		$sqls ="UPDATE `{$DB['prefix']}download_field` set {$detail} where aid=".$id.";";
		$db1=new db();
		if($db1->execute($sqls)){
		admin::logs(3,$language['page']['title']."，{$language['common']['successful']}(id:{$id})"); 
		$config['static'] == 2 && $_POST['make_html'] == '1' && admin::make_html(1,$id,'download_manage.php'); 
		msgbox($language['common']['successful'],'download_manage.php'); 
		} else { 
		admin::logs(3,$language['page']['title']."，{$language['common']['failed']}"); 
		msgbox($language['common']['failed'],'BACK'); 
		}
		}else{
		admin::logs(3,$language['page']['title']."，{$language['common']['successful']}(id:{$id})"); 
		$config['static'] == 2 && $_POST['make_html'] == '1' && admin::make_html(1,$id,'download_manage.php'); 
		msgbox($language['common']['successful'],'download_manage.php'); 
		}
	} else {
		admin::logs(3,$language['page']['title']."，{$language['common']['failed']}"); 
		msgbox($language['common']['failed'],'BACK'); 
	}	
}
require_once(ADMIN_PATH.'/footer.php'); 
