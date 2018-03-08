<?php
require_once(dirname(__FILE__).'/header.php');
$language['page']['title'] = is_numeric($_GET['id']) ? $language['page']['title'][1] : $language['page']['title'][0]; 
$mycms['channel_show'] = true; 
$mycms['channelID']=isset($_GET['channel']) ? $_GET['channel'] :0;
if(!is_numeric($_GET['id'])){
	$mycms['action'] = 'add'; 
	$mycms['picture'] = array(); 
	$mycms['picture']['items_'] = 3; 
	$sql = "SELECT * FROM `{$DB['prefix']}channel` WHERE `module` != '0' && `module` = 'MO003x' && `lang` = '".LANG."' ORDER BY `sort` ASC";
	$cat = $db->query($sql);
	if(count($cat) == 1){ 
		$mycms['channel_show'] = false;
		if(!isset($_GET['channel'])){
			header('Location: picture_update.php?channel='.$cat[0]['id']);
			exit();
		}
	}
	$mycms['picture']['channel_text'] = empty($_GET['channel']) ? '<option selected="selected" value="">'.$language['page']['select_channel'].'</option>' : '<option value="picture_update.php?channel=0">'.$language['page']['select_channel'].'</option>';
	foreach($cat as $n){
		$mycms['picture']['channel_text'] .= $_GET['channel'] != $n['id'] ? '<option value="picture_update.php?channel='.$n['id'].'">'.$n['title'].'</option>' : '<option selected="selected" value="">'.$n['title'].'</option>';
	}
	$mycms['picture']['nexus_text'] = is_numeric($_GET['category']) ? '<option selected="selected" value="">'.$language['page']['select_category'].'</option>' : '<option value="">'.$language['page']['select_category'].'</option>';
	if(is_numeric($_GET['channel'])){
		$sql = "SELECT * FROM `{$DB['prefix']}category` WHERE `lang` = '".LANG."' && `channel` = '{$_GET['channel']}'";	
		$cat = category::order($db->query($sql));
		foreach($cat as $n){
			$inden = $n['level'] > 1 ? '├'.str_repeat('────',$n['level']-1) : '';
			$mycms['picture']['nexus_text'] .= $_GET['category'] == $n['id'] ? '<option selected="selected" value="'.$n['nexus'].'">'.$inden.$n['title'].'</option>' : '<option value="'.$n['nexus'].'">'.$inden.$n['title'].'</option>';
		}
	}		
	$member_rank = member::rank();
	$mycms['picture']['permission_text'] = '<option value="0" selected>'.$language['page']['unlimited'].'</option>';
	foreach ($member_rank as $n){
		$mycms['picture']['permission_text'] .= '<option value="'.$n['id'].'">'.$n['rankname'].'</option>';
	}
	require_once(CMSINC.'/config/picture.config.php');
	$mycms['picture']['picture_config_js'] = $mycms['picture']['picture_js'] = $mycms['picture']['description_js'] = $mycms['picture']['img_html_js'] = '';
	for($i=0; $i<50; $i++){ 
		if($i > 0){
			$mycms['picture']['picture_config_js'] .= ',';
			$mycms['picture']['picture_js'] .= ',';
			$mycms['picture']['description_js'] .= ',';
			$mycms['picture']['img_html_js'] .= ',';
		}
		$mycms['picture']['picture_config_js'] .= '['.implode(',',$picture_config['MO003x'][($i>3 ? 3 : $i)]).']'; 
		$mycms['picture']['picture_js'] .= "''"; 
		$mycms['picture']['description_js'] .= "''"; 
		$mycms['picture']['img_html_js'] .= "''"; 
	}
	$mycms['picture']['bold'] = $mycms['picture']['recom'] = $mycms['picture']['permission'] = $mycms['picture']['money'] = $mycms['picture']['integral'] = $mycms['picture']['sort'] = 0;
	$mycms['picture']['comment'] = $mycms['picture']['audit'] = 1;
	$mycms['picture']['click'] = rand(0,1000);
	$mycms['picture']['addtime'] = date('Y-m-d',$gmt_time);
} else {
	$mycms['action'] = 'update'; 
	$mycms['picture'] = array(); 
	$mycms['channel_show'] = false;
	$sql = "SELECT * FROM `{$DB['prefix']}picture` WHERE `lang` = '".LANG."' && `id` = '{$_GET['id']}' LIMIT 1";
	if(!$mycms['picture'] = $db->query($sql,1)){
		msgbox($language['page']['nodata'],'BACK');	
	}
	$mycms['picture']['content'] = html_chars($mycms['picture']['content']);
	$mycms['picture']['nexus_text'] = '<option value="">'.$language['page']['select_category'].'</option>';
	$sql = "SELECT * FROM `{$DB['prefix']}category` WHERE `lang` = '".LANG."' && `channel` = '{$mycms['picture']['channel']}'";	
	$cat = category::order($db->query($sql));
	foreach($cat as $n){
		$inden = $n['level'] > 1 ? '├'.str_repeat('────',$n['level']-1) : '';
		$mycms['picture']['nexus_text'] .= $mycms['picture']['category'] == $n['nexus'] ? '<option selected="selected" value="'.$n['nexus'].'">'.$inden.$n['title'].'</option>' : '<option value="'.$n['nexus'].'">'.$inden.$n['title'].'</option>';
	}
	$member_rank = member::rank();	
	$mycms['picture']['permission_text'] = empty($mycms['picture']['permission']) ? '<option value="0" selected>'.$language['page']['unlimited'].'</option>' : '<option value="0">'.$language['page']['unlimited'].'</option>';
	$darr = explode(',',$mycms['picture']['permission']);
	foreach ($member_rank as $n){
		$mycms['picture']['permission_text'] .= in_array($n['id'],$darr) ? '<option selected value="'.$n['id'].'">'.$n['rankname'].'</option>' : '<option value="'.$n['id'].'">'.$n['rankname'].'</option>';
	}
	require_once(CMSINC.'/config/picture.config.php');
	$mycms['picture']['picture_config_js'] = $mycms['picture']['picture_js'] = $mycms['picture']['description_js'] = $mycms['picture']['img_html_js'] = '';
	$mycms['picture']['picture'] = explode(',',$mycms['picture']['picture']); 
	$mycms['picture']['items_'] = count($mycms['picture']['picture']); 
	$mycms['picture']['description'] = explode(STRING_DELIMITED,str_replace(array(chr(92),chr(13),chr(10)),array('&#92;','\r\n',''),$mycms['picture']['description'])); 
	for($i=0; $i<50; $i++){ 
		if($i > 0){
			$mycms['picture']['picture_config_js'] .= ',';
			$mycms['picture']['picture_js'] .= ',';
			$mycms['picture']['description_js'] .= ',';
			$mycms['picture']['img_html_js'] .= ',';
		}
		$picture_config['MO003x'][$i][0] = $picture_config['MO003x'][$i][3] = 0; 
		$mycms['picture']['picture_config_js'] .= '['.implode(',',$picture_config['MO003x'][($i>3 ? 3 : $i)]).']'; 
		$mycms['picture']['picture_js'] .= "'".$mycms['picture']['picture'][$i]."'"; 
		$mycms['picture']['description_js'] .= "'".$mycms['picture']['description'][$i]."'"; 
		$pic_t = $mycms['picture']['picture'][$i]; 
		$mycms['picture']['img_html_js'] .= is_file('../'.$pic_t) ? "'".'<img border="0" src="../'.$pic_t.'" class="upload_preview" />'."'" : "''"; 
	}	
	is_numeric($mycms['picture']['addtime']) && $mycms['picture']['addtime'] = date('Y-m-d',$mycms['picture']['addtime']);	
}
if($action == 'add'){
	trim($_POST['aid']) == '' or (!preg_match('/^[a-zA-Z][a-zA-Z0-9_]{3,20}$/',$_POST['aid'])) && msgbox($language['page']['code_warning'],'BACK'); 
	is_numeric($_GET['channel']) or msgbox($language['page']['select_channel'],'BACK'); 
	$content = $_POST['content']; 
	$_POST = html_chars($_POST); 
	$picture = is_array($_POST['picture_url']) ? implode(',',$_POST['picture_url']) : ''; 
	$permission = is_array($_POST['permission']) ? (in_array('0',$_POST['permission']) ? '0' : implode(',',$_POST['permission'])) : 0; 
	$description = implode(STRING_DELIMITED,$_POST['description']); 
	$_POST['tag'] = str_replace('，',',',trim($_POST['tag'])); 
	$sql = "INSERT INTO `{$DB['prefix']}picture`(`lang`,`channel`,`category`,`title`,`brief`,`color`,`bold`,`aid`,`tag`,`author`,`source`,`sourceurl`,`keyword`,`content`,`template`,`comment`,
		`picture`,`description`,`recom`,`audit`,`permission`,`filename`,`click`,`money`,`integral`,`buyuser`,`sort`,`publisher`,`addtime`) VALUES ('".LANG."','{$_GET['channel']}',
		'{$_POST['category']}','{$_POST['title']}','{$_POST['brief']}','{$_POST['color']}','".($_POST['bold'] == 1 ? 1 : 0)."','{$_POST['aid']}','{$_POST['tag']}','{$_POST['author']}','{$_POST['source']}',
		'{$_POST['sourceurl']}','{$_POST['keyword']}','{$content}','{$_POST['template']}','".($_POST['comment'] == 0 ? 0 : 1)."','{$picture}','{$description}','".($_POST['recom'] == 1 ? 1 : 0)."',
		'".($_POST['audit'] == 1 ? 1 :0)."','{$permission}','{$_POST['filename']}','".numeric($_POST['click'])."','".numeric($_POST['money'])."','".numeric($_POST['integral'])."',
		'{$_POST['buyuser']}','".numeric($_POST['sort'])."','{$_SESSION['admin']['login']['username']}','".date2time($_POST['addtime'])."');";
	if($db->execute($sql)){
		$id = $db->get_last_id();
		tag::update(explode(',',$_POST['tag']),'MO003x');
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
		$sqls ="INSERT INTO `{$DB['prefix']}picture_field` (aid {$fields}) VALUES ($id {$detail});";
		$db1=new db();
		if($db1->execute($sqls)){
			admin::logs(2,$language['page']['title']."，{$language['common']['successful']}(id:{$id}){$pic_info}"); 
			$config['static'] == 2 && $_POST['make_html'] == '1' && admin::make_html(3,$id,'picture_manage.php'); 
			msgbox($language['common']['successful'].($pic_info == '' ? '' : '，'.$pic_info),'picture_manage.php'); 
		} else { 
			admin::logs(2,$language['page']['title']."，{$language['common']['failed']}"); 
			msgbox($language['common']['failed'],'BACK'); 
		}
		} else {
					admin::logs(3,$language['page']['title']."，{$language['common']['successful']}(id:{$id})"); 
					$config['static'] == 2 && $_POST['make_html'] == '1' && admin::make_html(1,$id,'article_manage.php'); 
					msgbox($language['common']['successful'],'article_manage.php'); 
		}
	} else { 
		admin::logs(2,$language['page']['title']."，{$language['common']['failed']}"); 
		msgbox($language['common']['failed'],'BACK'); 
	}
}
if($action == 'update' && is_numeric($_GET['id'])){
	$content = $_POST['content']; 
	trim($_POST['aid']) == '' or (!preg_match('/^[a-zA-Z][a-zA-Z0-9_]{3,20}$/',$_POST['aid'])) && msgbox($language['page']['code_warning'],'BACK'); 
	$_POST = html_chars($_POST); 
	$picture = is_array($_POST['picture_url']) ? implode(',',$_POST['picture_url']) : ''; 
	$permission = is_array($_POST['permission']) ? (in_array('0',$_POST['permission']) ? '0' : implode(',',$_POST['permission'])) : 0; 
	$description = implode(STRING_DELIMITED,$_POST['description']); 
	$_POST['tag'] = str_replace('，',',',trim($_POST['tag'])); 
	$sql = "UPDATE `{$DB['prefix']}picture` SET `category` = '{$_POST['category']}',`title` = '{$_POST['title']}',`brief` = '{$_POST['brief']}',`color` = '{$_POST['color']}',
		`bold` = '".($_POST['bold'] == 1 ? 1 : 0)."',`aid` = '{$_POST['aid']}',`tag` = '{$_POST['tag']}',`author` = '{$_POST['author']}',`source` = '{$_POST['source']}',`sourceurl` = '{$_POST['sourceurl']}',
		`keyword` = '{$_POST['keyword']}',`content` = '{$content}',`template` = '{$_POST['template']}',`comment` = '".($_POST['comment'] == 0 ? 0 : 1)."',`picture` = '{$picture}',
		`description` = '{$description}',`recom` = '".($_POST['recom'] == 1 ? 1 :0)."',`audit` = '".($_POST['audit'] == 1 ? 1 : 0)."',`permission` = '{$permission}',`filename` = '{$_POST['filename']}',
		`click` = '".numeric($_POST['click'])."',`money` = '".numeric($_POST['money'])."',`integral` = '".numeric($_POST['integral'])."',`buyuser` = '{$_POST['buyuser']}',
		`sort` = '".numeric($_POST['sort'])."',`publisher` = '{$_SESSION['admin']['login']['username']}',`addtime` = '".date2time($_POST['addtime'])."'	WHERE `id` = '{$_GET['id']}';";
	if($db->execute($sql)){
		tag::modify(explode(',',$mycms['picture']['tag']),explode(',',$_POST['tag']),'MO003x');
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
		$ii=0;
		if($v){
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
		$sqls ="UPDATE `{$DB['prefix']}picture_field` set $detail where aid=".$id.";";
		$db1=new db();
		if($db1->execute($sqls)){
			admin::logs(3,$language['page']['title']."，{$language['common']['successful']}(id:{$id})"); 
			$config['static'] == 2 && $_POST['make_html'] == '1' && admin::make_html(3,$_GET['id'],'picture_manage.php'); 
			msgbox($language['common']['successful'],'picture_manage.php'); 
		} else {
			admin::logs(3,$language['page']['title']."，{$language['common']['failed']}"); 
			msgbox($language['common']['failed'],'BACK'); 
		}
		} else {
					admin::logs(3,$language['page']['title']."，{$language['common']['successful']}(id:{$id})"); 
					$config['static'] == 2 && $_POST['make_html'] == '1' && admin::make_html(1,$id,'picture_manage.php'); 
					msgbox($language['common']['successful'],'picture_manage.php'); 
		}	
	} else {
		admin::logs(3,$language['page']['title']."，{$language['common']['failed']}"); 
		msgbox($language['common']['failed'],'BACK'); 
	}	
}
require_once(ADMIN_PATH.'/footer.php'); 
