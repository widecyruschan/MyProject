<?php
require_once(dirname(__FILE__).'/header.php');
$language['page']['title'] = is_numeric($_GET['id']) ? $language['page']['title'][1] : $language['page']['title'][0]; 
if($action == 'add'){
	$_POST = html_chars($_POST);
	$permission = is_array($_POST['permission']) ? (in_array('0',$_POST['permission']) ? '0' : implode(',',$_POST['permission'])) : 0;
	$sql = "INSERT INTO `{$DB['prefix']}channel`(`lang`,`title`,`titleEn`,`url`,`target`,`module`,`permission`,`show`,`pathhome`,`pathcategory`,`pathcontent`,`seotitle`,`seokey`,`seodescr`,`template`,`templatecontent`,`sort`,`addtime`,`UpChannelID`)";
	$sql .= "VALUES('".LANG."','{$_POST['title']}','{$_POST['titleEn']}','{$_POST['url']}','".($_POST['tmp_px'] == '1' ? $_POST['target'] : '_self')."','".($_POST['tmp_px'] != 1 ? $_POST['module'] : 0)."','{$permission}','{$_POST['show']}','{$_POST['pathhome']}','{$_POST['pathcategory']}','{$_POST['pathcontent']}','{$_POST['seotitle']}','{$_POST['seokey']}','{$_POST['seodescr']}','{$_POST['template']}','{$_POST['templatecontent']}','".(is_numeric($_POST['sort']) ? $_POST['sort'] : 20)."','{$gmt_time}','{$_POST['UpChannelID']}');";
	if($db->execute($sql)){
		$id = $db->get_last_id();
		$nexuscon=$db->execute("SELECT * FROM `{$DB['prefix']}channel` WHERE `id` in (SELECT UpChannelID FROM `{$DB['prefix']}channel` WHERE `id`={$id}) LIMIT 1"); 
		$nexus = empty($nexuscon['nexus']) ? ','.$id.',' : $nexuscon['nexus'].$nexus.','; 
		$level = count(explode(',',$nexus)); 
		
		
		if($db->execute("UPDATE `{$DB['prefix']}channel` SET `nexus` = '{$nexus}',`level`='{$level}' WHERE `id` = '{$id}';")){ 
		admin::logs(2,$language['page']['title']."，{$language['common']['successful']}(id:{$id})"); 
		msgbox($language['common']['successful'],'channel_manage.php'); 
		}
		else{
		admin::logs(2,$language['page']['title']."，{$language['common']['failed']}"); 
		msgbox($language['common']['failed'],'CURRENTS'); 
		}
	} else {
		admin::logs(2,$language['page']['title']."，{$language['common']['failed']}"); 
		msgbox($language['common']['failed'],'CURRENTS'); 
	}
}
if($action == 'update' && is_numeric($_GET['id'])){
	$_POST = html_chars($_POST);
	$permission = is_array($_POST['permission']) ? (in_array('0',$_POST['permission']) ? '0' : implode(',',$_POST['permission'])) : 0;
		$nexuscon=$db->query("SELECT nexus FROM `{$DB['prefix']}channel` WHERE `id`={$_POST['UpChannelID']}",1); 
		$nexus = empty($nexuscon['nexus']) ? ','.$id.',' : $nexuscon['nexus'].$nexus.','; 
		$level = count(explode(',',$nexuscon['nexus']))-1; 
	
	$sql = "UPDATE `{$DB['prefix']}channel` SET `title` = '{$_POST['title']}',`titleEn` = '{$_POST['titleEn']}',`url` = '{$_POST['url']}',`target` = '".($_POST['tmp_px'] == '1' ? $_POST['target'] : '_self')."',`permission` = '{$permission}',`show` = '{$_POST['show']}',`pathhome` = '{$_POST['pathhome']}',`pathcategory` = '{$_POST['pathcategory']}',`pathcontent` = '{$_POST['pathcontent']}',`seotitle` = '{$_POST['seotitle']}',`seokey` = '{$_POST['seokey']}',`seodescr` = '{$_POST['seodescr']}',`template` = '{$_POST['template']}',`templatecontent` = '{$_POST['templatecontent']}',`module` = '{$_POST['module']}',`UpChannelID` = {$_POST['UpChannelID']},`sort` = '".(is_numeric($_POST['sort']) ? $_POST['sort'] : 20)."',`level`={$level},`nexus`='{$nexus}' WHERE `id` = '{$_GET['id']}';";
	if($db->execute($sql)){
		admin::logs(3,$language['page']['title']."，{$language['common']['successful']}(id:{$id})"); 
		msgbox($language['common']['successful'],'channel_manage.php'); 
	} else {
		admin::logs(3,$language['page']['title']."，{$language['common']['failed']}"); 
		msgbox($language['common']['failed'],'CURRENTS'); 
	}	
}
if(!is_numeric($_GET['id'])){
	$mycms['action'] = 'add'; 
	$mycms['channel'] = array(); 
	$mycms['channel']['sort'] = 20; 
	$mycms['channel']['UpChannelID'] = is_numeric($_GET['UpChannelID']) ? $_GET['UpChannelID'] : 0; 
	$mycms['channel']['UpChannelID_text']='<option value="">'.$language['page']['UpChannelIDselect'].'</option>';
	subchannel();
		$mycms['channel']['module_text'] = '<option value="" selected="selected">'.$language['page']['select'].'</option>';
	$mod = module::get_module(1);
	foreach($mod as $n){
		$mycms['channel']['module_text'] .= '<option value="'.$n['modcode'].'">'.$n['modname'].'</option>';
	}
	$member_rank = member::rank();		
	$mycms['channel']['permission_text'] = '<option value="0" selected>'.$language['page']['unlimited'].'</option>';
	foreach ($member_rank as $n){
		$mycms['channel']['permission_text'] .= '<option value="'.$n['id'].'">'.$n['rankname'].'</option>';
	}
} else {
	$mycms['action'] = 'update'; 
	$sql = "SELECT * FROM `{$DB['prefix']}channel` WHERE `lang` = '".LANG."' && `id` = '{$id}' LIMIT 1";
	if(!$mycms['channel'] = $db->query($sql,1)){
		msgbox($language['page']['nodata'],'channel_manage.php');	
	}
	$mycms['channel']['UpChannelID'] = is_numeric($_GET['UpChannelID']) ? $_GET['UpChannelID'] : 0; 
	$mycms['channel']['UpChannelID_text']='<option value="0">'.$language['page']['UpChannelIDselect'].'</option>';
	subchannel(0,$mycms['channel']['id']);
	$mycms['channel']['module_text'] = '<option value="" selected="selected">'.$language['page']['select'].'</option>';
	$mod = module::get_module(1);
	foreach($mod as $n){
		$mycms['channel']['module_text'] .= $mycms['channel']['module'] != $n['modcode'] ? '<option value="'.$n['modcode'].'">'.$n['modname'].'</option>' : '<option selected="selected" value="'.$n['modcode'].'">'.$n['modname'].'</option>';
	}
	$member_rank = member::rank();
	$mycms['channel']['permission_text'] = empty($mycms['channel']['permission']) ? '<option selected value="0">'.$language['page']['unlimited'].'</option>' : '<option value="0">'.$language['page']['unlimited'].'</option>';
	$darr = explode(',',$mycms['channel']['permission']);
	foreach ($member_rank as $n){
		$mycms['channel']['permission_text'] .= in_array($n['id'],$darr) ? '<option selected value="'.$n['id'].'">'.$n['rankname'].'</option>' : '<option value="'.$n['id'].'">'.$n['rankname'].'</option>';
	}
}

function subchannel($id=0,$channelids=0){
		global $db,$DB,$language,$mycms;
$mychannel = $db->query("SELECT * FROM `{$DB['prefix']}channel` WHERE `lang` = '".LANG."' && `UpChannelID` =".$id." ORDER BY `sort` ASC,`id` ASC");
	if ($mychannel){
			foreach($mychannel as $m){
				$substr='';
				for($i=0;$i<$m['level'];$i++){
					$substr.="&nbsp;&nbsp;&nbsp;&nbsp;";
				}
				$id ==0 ? '': $substrs=$substr.'├&nbsp;';
				if($m['id'] != $channelids){ 
					$mycms['channel']['UpChannelID_text'] .= ($mycms['channel']['UpChannelID'] != $m['id']) ? '<option value="'.$m['id'].'">'.$substrs.$inden.$m['title'].'</option>' : '<option selected="selected" value="'.$m['id'].'">'.$substrs.$inden.$m['title'].'</option>';
		subchannel($m['id'],$channelids);
				}
			}
	}
}

require_once(ADMIN_PATH.'/footer.php');