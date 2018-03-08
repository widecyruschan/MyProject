<?php
require_once(dirname(__FILE__).'/header.php');
$language['page']['title'] = is_numeric($_GET['id']) ? $language['page']['title'][1] : $language['page']['title'][0]; 
$mycms['channel_show'] = true; 
$mycms['channelID']=isset($_GET['channel']) ? $_GET['channel'] :0;
if(!is_numeric($_GET['id'])){
	$mycms['action'] = 'add'; 
	$mycms['article'] = array(); 
	$mycms['article']['items_'] = 2; 
	$sql = "SELECT * FROM `{$DB['prefix']}channel` WHERE `module` != '0' && `module` = 'MO001x' && `lang` = '".LANG."' ORDER BY `sort` ASC";
	$cat = $db->query($sql);
	if(count($cat) == 1){ 
		$mycms['channel_show'] = false;
		if(!isset($_GET['channel'])){
			header('Location: article_update.php?channel='.$cat[0]['id']);
			exit();
		}
	}
	$mycms['article']['channel_text'] = empty($_GET['channel']) ? '<option selected="selected" value="">'.$language['page']['select_channel'].'</option>' : '<option value="article_update.php?channel=0">'.$language['page']['select_channel'].'</option>';
	Sortchannel();
	$mycms['article']['nexus_text'] = is_numeric($_GET['channel']) ? '<option selected="selected" value="">'.$language['page']['select_channel'].'</option>' : '<option value="">'.$language['page']['select_channel'].'</option>';
	if(is_numeric($_GET['channel'])){
		$sql = "SELECT * FROM `{$DB['prefix']}channel` WHERE `lang` = '".LANG."' && `UpChannelID` = '{$_GET['channel']}'";	
		$cat = channel::order($db->query($sql));
		foreach($cat as $n){
			$inden = $n['level'] > 1 ? '├'.str_repeat('────',$n['level']-1) : '';
			$mycms['article']['nexus_text'] .= $_GET['channel'] == $n['id'] ? '<option selected="selected" value="'.$n['nexus'].'">'.$inden.$n['title'].'</option>' : '<option value="'.$n['nexus'].'">'.$inden.$n['title'].'</option>';
		}
	}		
	$member_rank = member::rank();
	$mycms['article']['permission_text'] = '<option value="0" selected>'.$language['page']['unlimited'].'</option>';
	foreach ($member_rank as $n){
		$mycms['article']['permission_text'] .= '<option value="'.$n['id'].'">'.$n['rankname'].'</option>';
	}
	require_once(CMSINC.'/config/picture.config.php');
	$mycms['article']['picture_config_js'] = $mycms['article']['picture_js'] = '';
	for($i=0; $i<30; $i++){ 
		if($i > 0){
			$mycms['article']['picture_config_js'] .= ',';
			$mycms['article']['picture_js'] .= ',';
		}
		$mycms['article']['picture_config_js'] .= '['.implode(',',$picture_config['MO001x'][($i>3 ? 3 : $i)]).']'; 
		$mycms['article']['picture_js'] .= "''"; 
	}	
	$mycms['article']['bold'] = $mycms['article']['page'] = $mycms['article']['recom'] = $mycms['article']['permission'] = $mycms['article']['money'] = $mycms['article']['integral'] = $mycms['article']['sort'] = 0;
	$mycms['article']['published'] = $mycms['article']['comment'] = $mycms['article']['audit'] = 1;
	$mycms['article']['click'] = rand(0,1000);
	$mycms['article']['addtime'] = date('Y-m-d',$gmt_time);
	$mycms['article']['page'] = 0;
} else {
	$mycms['action'] = 'update'; 
	$mycms['article'] = array(); 
	$mycms['channel_show'] = true;
	$sql = "SELECT * FROM `{$DB['prefix']}article` WHERE `lang` = '".LANG."' && `id` = '{$_GET['id']}' LIMIT 1";
	if(!$mycms['article'] = $db->query($sql,1)){
		msgbox($language['page']['nodata'],'BACK');	
	}
	$mycms['article']['content'] = html_chars($mycms['article']['content']);
	$mycms['article']['nexus_text'] = '<option value="">'.$language['page']['select_category'].'</option>';
		$mycms['article']['channel_text'] = empty($_GET['channel']) ? '<option selected="selected" value="">'.$language['page']['select_channel'].'</option>' : '<option value="article_update.php?channel=0">'.$language['page']['select_channel'].'</option>';
	Sortchannel();

	$member_rank = member::rank();	
	$mycms['article']['permission_text'] = empty($mycms['article']['permission']) ? '<option value="0" selected>'.$language['page']['unlimited'].'</option>' : '<option value="0">'.$language['page']['unlimited'].'</option>';
	$darr = explode(',',$mycms['article']['permission']);
	foreach ($member_rank as $n){
		$mycms['article']['permission_text'] .= in_array($n['id'],$darr) ? '<option selected value="'.$n['id'].'">'.$n['rankname'].'</option>' : '<option value="'.$n['id'].'">'.$n['rankname'].'</option>';
	}
	require_once(CMSINC.'/config/picture.config.php');
	$mycms['article']['picture_config_js'] = $mycms['article']['picture_js'] = '';
	$mycms['article']['picture'] = explode(',',$mycms['article']['picture']); 
	$mycms['article']['items_'] = count($mycms['article']['picture']); 
	for($i=0; $i<30; $i++){ 
		if($i > 0){
			$mycms['article']['picture_config_js'] .= ',';
			$mycms['article']['picture_js'] .= ',';
		}
		$picture_config['MO001x'][$i][0] = $picture_config['MO001x'][$i][3] = 0; 
		$mycms['article']['picture_config_js'] .= '['.implode(',',$picture_config['MO001x'][($i>3 ? 3 : $i)]).']'; 
		$mycms['article']['picture_js'] .= "'".$mycms['article']['picture'][$i]."'"; 
	}	
	is_numeric($mycms['article']['addtime']) && $mycms['article']['addtime'] = date('Y-m-d',$mycms['article']['addtime']);	
}
if($action == 'add'){
	is_numeric($_GET['channel']) or msgbox($language['page']['select_channel'],'BACK'); 
	$content = $_POST['content']; 
	$_POST = html_chars($_POST); 
	$picture = is_array($_POST['picture_url']) ? implode(',',$_POST['picture_url']) : ''; 
	$permission = is_array($_POST['permission']) ? (in_array('0',$_POST['permission']) ? '0' : implode(',',$_POST['permission'])) : 0; 
	$page_size = $_POST['page'] == 2 ? numeric($_POST['page_size']) : numeric($_POST['page']);
	$page_size >= 2 && $content = misc::content_add_page_break($content,$page_size); 
	$_POST['tag'] = str_replace('，',',',trim($_POST['tag'])); 
	$sql = "INSERT INTO `{$DB['prefix']}article`(`lang`,`channel`,`category`,`title`,`brief`,`color`,`bold`,`tag`,`author`,`source`,`sourceurl`,`keyword`,`introduction`,`content`,`template`,`comment`,`picture`,`recom`,`published`,`audit`,`permission`,`filename`,`click`,`money`,`integral`,`buyuser`,`page`,`sort`,`publisher`,`addtime`,`backgroudColour`) VALUES ('".LANG."','{$_GET['channel']}','{$_POST['category']}','{$_POST['title']}','{$_POST['brief']}','{$_POST['color']}','".($_POST['bold'] == 1 ? 1 : 0)."','{$_POST['tag']}','{$_POST['author']}','{$_POST['source']}','{$_POST['sourceurl']}','{$_POST['keyword']}','{$_POST['introduction']}','{$content}','{$_POST['template']}','".($_POST['comment'] == 0 ? 0 : 1)."','{$picture}','".($_POST['recom'] == 1 ? 1 : 0)."','".($_POST['published'] == 0 ? 0 : 1)."','".($_POST['audit'] == 1 ? 1 :0)."','{$permission}','{$_POST['filename']}','".(is_numeric($_POST['click']) ? $_POST['click'] : 0)."','".(is_numeric($_POST['money']) ? $_POST['money'] : 0)."','".(is_numeric($_POST['integral']) ? $_POST['integral'] : 0)."','{$_POST['buyuser']}','{$page_size}','".(is_numeric($_POST['sort']) ? $_POST['sort'] : 0)."','{$_SESSION['admin']['login']['username']}','".date2time($_POST['addtime'])."','{$_POST['backgroudColour']}');";
	if($db->execute($sql)){
		$id = $db->get_last_id();
		tag::update(explode(',',$_POST['tag']),'MO001x');
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
		$UPchannleID="";
							$db1=new db();
						$db2=new db();
				$GetUPchannleID=$db1->query("SELECT `UpchannelID` FROM `{$db->prefix}channel` where `id`=".$_GET['channel']);
				foreach($GetUPchannleID as $f){
					$GetUPchannleIDs=$db2->query("SELECT `UpchannelID` FROM `{$db->prefix}channel` where `id`={$f['UpchannelID']}");
					foreach($GetUPchannleIDs as $g){
					$g['UpchannelID']>0 ? $UPchannleID .=",".$g['UpchannelID']:$UPchannleID;
				 }
					$f['UpchannelID']>0 ? $UPchannleID .=",".$f['UpchannelID']:$UPchannleID;
				 }

				
				$fieldswhere=" fieldshow='1' and channelID in (".$_GET['channel'].$UPchannleID.")";
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
		$sqls ="INSERT INTO `{$DB['prefix']}article_field` (aid {$fields}) VALUES ($id {$detail});";
		$db1=new db();
		if($db1->execute($sqls)){
			admin::logs(2,$language['page']['title']."，{$language['common']['successful']}(id:{$id}){$pic_info}"); 
			$config['static'] == 2 && $_POST['make_html'] == '1' && admin::make_html(1,$id,'article_manage.php'); 
			msgbox($language['common']['successful'].($pic_info == '' ? '' : '，'.$pic_info),'article_manage.php'); 
		} else { 
			admin::logs(2,$language['page']['title']."，{$language['common']['failed']}"); 
			msgbox($language['common']['failed'],'BACK'); 
		}
		}else{
			admin::logs(2,$language['page']['title']."，{$language['common']['successful']}(id:{$id}){$pic_info}"); 
			$config['static'] == 2 && $_POST['make_html'] == '1' && admin::make_html(1,$id,'article_manage.php'); 
			msgbox($language['common']['successful'].($pic_info == '' ? '' : '，'.$pic_info),'article_manage.php'); 
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
	$page_size = $_POST['page'] == 2 ? numeric($_POST['page_size']) : numeric($_POST['page']);
	$page_size >= 2 && $content = misc::content_add_page_break($content,$page_size); 
	$_POST['tag'] = str_replace('，',',',trim($_POST['tag'])); 
	$sql = "UPDATE `{$DB['prefix']}article` SET `channel` = '{$_POST['channelID']}',`title` = '{$_POST['title']}',`brief` = '{$_POST['brief']}',`color` = '{$_POST['color']}',`bold` = '".($_POST['bold'] == 1 ? 1 : 0)."',
		`tag` = '{$_POST['tag']}',`author` = '{$_POST['author']}',`source` = '{$_POST['source']}',`sourceurl` = '{$_POST['sourceurl']}',`keyword` = '{$_POST['keyword']}',`introduction` = '{$_POST['introduction']}',
		`content` = '{$content}',`template` = '{$_POST['template']}',`comment` = '".($_POST['comment'] == 0 ? 0 : 1)."',`picture` = '{$picture}',`recom` = '".($_POST['recom'] == 1 ? 1 :0)."',
		`published` = '".($_POST['published'] == 0 ? 0 : 1)."',`audit` = '".($_POST['audit'] == 1 ? 1 : 0)."',`permission` = '{$permission}',`filename` = '{$_POST['filename']}',`click` = '".(is_numeric($_POST['click']) ? $_POST['click'] : 0)."',
		`money` = '".(is_numeric($_POST['money']) ? $_POST['money'] : 0)."',`integral` = '".(is_numeric($_POST['integral']) ? $_POST['integral'] : 0)."',`buyuser` = '{$_POST['buyuser']}',`page` = '{$page_size}',
		`sort` = '".(is_numeric($_POST['sort']) ? $_POST['sort'] : 0)."',`publisher` = '{$_SESSION['admin']['login']['username']}',`addtime` = '".date2time($_POST['addtime'])."',`backgroudColour` = '{$_POST['backgroudColour']}'	WHERE `id` = '{$_GET['id']}';";
	if($db->execute($sql)){
		tag::modify(explode(',',$mycms['article']['tag']),explode(',',$_POST['tag']),'MO001x');
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
		$UPchannleID="";
								$db1=new db();
						$db2=new db();
				$GetUPchannleID=$db1->query("SELECT `UpchannelID` FROM `{$db->prefix}channel` where `id`=".$_GET['channel']);
				foreach($GetUPchannleID as $f){
					$GetUPchannleIDs=$db2->query("SELECT `UpchannelID` FROM `{$db->prefix}channel` where `id`={$f['UpchannelID']}");
					foreach($GetUPchannleIDs as $g){
					$g['UpchannelID']>0 ? $UPchannleID .=",".$g['UpchannelID']:$UPchannleID;
				 }
					$f['UpchannelID']>0 ? $UPchannleID .=",".$f['UpchannelID']:$UPchannleID;
				 }

				
				$fieldswhere=" fieldshow='1' and channelID in (".$_GET['channel'].$UPchannleID.")";
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
			$sqls ="UPDATE `{$DB['prefix']}article_field` set $detail where aid=".$id.";";
			$db1=new db();
				if($db1->execute($sqls)){
					admin::logs(3,$language['page']['title']."，{$language['common']['successful']}(id:{$id})"); 
					$config['static'] == 2 && $_POST['make_html'] == '1' && admin::make_html(1,$id,'article_manage.php'); 
					msgbox($language['common']['successful'],'article_manage.php'); 
				} else { 
					admin::logs(3,$language['page']['title']."，{$language['common']['failed']}"); 
					msgbox($language['common']['failed'],'BACK'); 
				}
		} else {
					admin::logs(3,$language['page']['title']."，{$language['common']['successful']}(id:{$id})"); 
					$config['static'] == 2 && $_POST['make_html'] == '1' && admin::make_html(1,$id,'article_manage.php'); 
					msgbox($language['common']['successful'],'article_manage.php'); 
		}
	} else {
		admin::logs(3,$language['page']['title']."，{$language['common']['failed']}"); 
		msgbox($language['common']['failed'],'BACK'); 
	}	
}


require_once(ADMIN_PATH.'/footer.php'); 
