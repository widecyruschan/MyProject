<?php
require_once(dirname(__FILE__).'/header.php');

$language['page']['title'] = is_numeric($_GET['id']) ? $language['page']['title'][1] : $language['page']['title'][0]; 
if($action == 'add'){
	$_POST = html_chars($_POST);
	$permission = is_array($_POST['permission']) ? (in_array('0',$_POST['permission']) ? '0' : implode(',',$_POST['permission'])) : 0;

	$sql = "INSERT INTO `{$DB['prefix']}channel`(`lang`,`title`,`titleEn`,`url`,`target`,`module`,`permission`,`show`,`pathhome`,`pathcategory`,`pathcontent`,`seotitle`,`seokey`,`seodescr`,`template`,`templatecontent`,`sort`,`addtime`,`UpChannelID`)";
	$sql .= "VALUES('".LANG."','{$_POST['title']}','{$_POST['titleEn']}','{$_POST['url']}','".($_POST['tmp_px'] == '1' ? $_POST['target'] : '_self')."','".($_POST['tmp_px'] != 1 ? $_POST['module'] : 0)."','{$permission}','{$_POST['show']}','{$_POST['pathhome']}','{$_POST['pathcategory']}','{$_POST['pathcontent']}','{$_POST['seotitle']}','{$_POST['seokey']}','{$_POST['seodescr']}','{$_POST['template']}','{$_POST['templatecontent']}','".(is_numeric($_POST['sort']) ? $_POST['sort'] : 20)."','{$gmt_time}','{$_POST['UpChannelID']}');";
	if($db->execute($sql)){
        $xml=MenuXML();
        set_time_limit(0);
        write_file(CMSROOT."/XML/MenuXML.xml",$xml);
        
		$id = $db->get_last_id();
        $nexuscon=$db->query("SELECT nexus FROM `{$DB['prefix']}channel` WHERE `id`= (SELECT UpChannelID FROM `{$DB['prefix']}channel` WHERE `id`={$id})",1); 
		$nexus = empty($nexuscon['nexus']) ? ','.$id.',' : $nexuscon['nexus'].$id.','; 
		$level = count(explode(',',$nexus))-1; 
		if($db->execute("UPDATE `{$DB['prefix']}channel` SET `nexus` = '{$nexus}',`level`='{$level}' WHERE `id` = '{$id}';")){ 
		admin::logs(2,$language['page']['title']."，{$language['common']['successful']}(id:{$id})"); 
		msgbox($language['common']['successful'],'channel_manage.php'); 
		} else{
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
		$nexus = empty($nexuscon['nexus']) ? ','.$id.',' : $nexuscon['nexus'].$id.','; 
        $level = count(explode(',',$nexus))-1; 
		$_POST['module'];
		$modules=$_POST["tmp_px"]==1 ? 0 :$_POST['module'];
	$sql = "UPDATE `{$DB['prefix']}channel` SET `title` = '{$_POST['title']}',`titleEn` = '{$_POST['titleEn']}',`url` = '{$_POST['url']}',`target` = '".($_POST['tmp_px'] == '1' ? $_POST['target'] : '_self')."',`permission` = '{$permission}',`show` = '{$_POST['show']}',`pathhome` = '{$_POST['pathhome']}',`pathcategory` = '{$_POST['pathcategory']}',`pathcontent` = '{$_POST['pathcontent']}',`seotitle` = '{$_POST['seotitle']}',`seokey` = '{$_POST['seokey']}',`seodescr` = '{$_POST['seodescr']}',`template` = '{$_POST['template']}',`templatecontent` = '{$_POST['templatecontent']}',`module` = '{$modules}',`UpChannelID` = {$_POST['UpChannelID']},`sort` = '".(is_numeric($_POST['sort']) ? $_POST['sort'] : 20)."',`level`={$level},`nexus`='{$nexus}' WHERE `id` = '{$_GET['id']}';";
	if($db->execute($sql)){
		$xml=MenuXML();
   set_time_limit(0);
  	write_file(CMSROOT."/XML/MenuXML.xml",$xml);
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
				$id ==0 ? '': $substrs.='├&nbsp;';
				if($m['id'] != $channelids){ 
					$mycms['channel']['UpChannelID_text'] .= ($mycms['channel']['UpChannelID'] != $m['id']) ? '<option value="'.$m['id'].'">'.$substrs.$inden.$m['title'].'</option>' : '<option selected="selected" value="'.$m['id'].'">'.$substrs.$inden.$m['title'].'</option>';
		subchannel($m['id'],$channelids);
				}
			}
	}
}

function MenuXML() {
		global $db,$DB,$language;
        $map = "<?xml version=\"1.0\" encoding=\"UTF-8\" ?>\r\n";
		$sql = "SELECT a.*,b.`modname` FROM `{$DB['prefix']}channel` a LEFT JOIN `{$DB['prefix']}module` b ON a.`module` = b.`modcode` WHERE a.`lang` = '1' and a.`UpChannelID`=0  && `show` ='1' ORDER BY a.`sort` ASC,a.`id` ASC";
		$channels=$db->query($sql);
        $map.="<channel>\r\n";
        foreach ($channels as $v) {
            $map.="\t<channels>\r\n";
            $map.="\t\t<id>" . $v['id'] . "</id>\r\n";
            $map.="\t\t<UpChannelID>" . $v['UpChannelID'] . "</UpChannelID>\r\n";
            $map.="\t\t<CnchannelName>" . $v['title'] . "</CnchannelName>\r\n";
            $map.="\t\t<EnchannelName>" . $v['titleEn'] . "</EnchannelName>\r\n";
            $map.="\t\t<seotitle>" . $v['seotitle'] . "</seotitle>\r\n";
				switch ($v['module']){
					case 'MO001x' :
						$v['URL'] = $v['MO001x'] == 1 ? '/article.php' : '/article.php?pid='.$v['id']; 
						break;
					case 'MO002x' :
						$v['URL'] = $v['MO002x'] == 1 ? '/product.php' : '/product.php?pid='.$v['id'];
						break;
					case 'MO003x' :
						$v['URL'] = $v['MO003x'] == 1 ? '/photo.php' : '/photo.php?pid='.$v['id'];
						break;
					case 'MO004x' :
						$v['URL'] = $v['MO004x'] == 1 ? '/download.php' : '/download.php?pid='.$v['id'];
						break;
					case 0 : 
						$v['URL'] = $v['url'];
						break;
					default: break;
				}
				$v['URL'] = str_replace(array('{home}','{guestbook}','{feedback}'),array('./','guestbook.php','feedback.php'),$v['URL']);
            $map.="\t\t<url>" . $v['URL'] . "</url>\r\n";
			
			
            $map.="\t</channels>\r\n";
			$Subchannel = $db->query("SELECT * FROM `{$DB['prefix']}channel` WHERE `lang` = '1' && `UpChannelID` =".$v[id]." && `show` ='1' ORDER BY `sort` ASC,`id` ASC");
			foreach($Subchannel as $m){
            $map.="\t\t<channels>\r\n";
			$map.="\t\t\t\t<id>" . $m['id'] . "</id>\r\n";
            $map.="\t\t<UpChannelID>" . $m['UpChannelID'] . "</UpChannelID>\r\n";
			$map.="\t\t\t\t<CnSubchannelName>" . $m[title] . "</CnSubchannelName>\r\n";
            $map.="\t\t\t\t<EnSubchannelName>" . $m[titleEn] . "</EnSubchannelName>\r\n";
            $map.="\t\t\t\t<seotitle>" . $m['seotitle'] . "</seotitle>\r\n";
			switch ($v['module']){
					case 'MO001x' :
						$m['URL'] = $m['MO001x'] == 1 ? 'article.php' : 'article.php?pid='.$m['id']; 
						break;
					case 'MO002x' :
						$m['URL'] = $m['MO002x'] == 1 ? 'product.php' : 'product.php?pid='.$m['id'];
						break;
					case 'MO003x' :
						$m['URL'] = $m['MO003x'] == 1 ? 'photo.php' : 'photo.php?pid='.$m['id'];
						break;
					case 'MO004x' :
						$m['URL'] = $m['MO004x'] == 1 ? 'download.php' : 'download.php?pid='.$m['id'];
						break;
					case 0 : 
						$m['URL'] = $m['url'];
						break;
					default: break;
				}
				$m['URL'] = str_replace(array('{home}','{guestbook}','{feedback}'),array('./','guestbook.php','feedback.php'),$m['URL']);
            $map.="\t\t\t\t<url>" ."/". $m['URL'] . "</url>\r\n";
			$map.="\t\t</channels>\r\n";
			}
        }
		
        $map.='</channel>';
        return $map;
    }
	
	function write_file($filename,$data,$method="rb+",$iflock=1){
	@touch($filename);
	$handle=@fopen($filename,$method);
	if($iflock){
		@flock($handle,LOCK_EX);
	}
	@fputs($handle,$data);
	if($method=="rb+") @ftruncate($handle,strlen($data));
	@fclose($handle);
	@chmod($filename,0777);	
	if( is_writable($filename) ){
		return 1;
	}else{
		return 0;
	}
}

require_once(ADMIN_PATH.'/footer.php');
