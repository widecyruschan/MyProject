<?php
require_once(dirname(__FILE__).'/header.php');
if(is_numeric($_GET['del'])){
	$ass = $db->query("SELECT `id` FROM `{$DB['prefix']}channel` WHERE `UpChannelID` = '{$_GET['del']}'");
	if(empty($ass['id'])){ 
		if($db->execute("DELETE FROM `{$DB['prefix']}channel` WHERE `id` = '{$_GET['del']}'")){ 
			admin::logs(4,$language['page']['del_channel'].'，'.$language['common']['successful'].'(id:'.$_GET['del'].')'); 
			msgbox('','CURRENT'); 	
		} else {
			admin::logs(4,$language['page']['del_channel'].'，'.$language['common']['failed'].'(id:'.$_GET['del'].')');
			msgbox($language['common']['failed'],'CURRENT'); 		
		}	
	} else {
		msgbox($language['page']['category_exists'],'CURRENT'); 
	}
}
$sql = "SELECT a.*,b.`modname` FROM `{$DB['prefix']}channel` a LEFT JOIN `{$DB['prefix']}module` b ON a.`module` = b.`modcode` WHERE a.`lang` = '".LANG."' and a.`UpChannelID`=0 ORDER BY a.`sort` ASC,a.`id` ASC";
$mycms['channel_list'] = $db->query($sql);
foreach($mycms['channel_list'] as &$n){
	$n['module_text'] = '';
	$n['show_text'] = $n['show'] ? '<img src="../inc/templates/manage/images/operation/accept.png" width="16" height="16" title="'.$language['page']['show'].'" />' : '<img src="../inc/templates/manage/images/operation/ban.png" width="16" height="16" title="'.$language['page']['hide'].'" />';
	empty($n['modname']) && $n['modname'] = $language['page']['links']; 
}

function subchannel($id=0){
		global $db,$DB,$language;
$mychannel = $db->query("SELECT a.*,b.`modname` FROM `{$DB['prefix']}channel` a LEFT JOIN `{$DB['prefix']}module` b ON a.`module` = b.`modcode` WHERE a.`lang` = '".LANG."' and a.`UpChannelID`=".$id."  ORDER BY a.`sort` ASC,a.`id` ASC");
	if ($mychannel){
			foreach($mychannel as &$m){
				$m['show_text'] = $m['show'] ? '<img src="../inc/templates/manage/images/operation/accept.png" width="16" height="16" title="'.$language['page']['show'].'" />' : '<img src="../inc/templates/manage/images/operation/ban.png" width="16" height="16" title="'.$language['page']['hide'].'" />';
				$m['div_indentation'] = 40*$m['level'];	
				$substr='';
				for($i=0;$i<$m['level'];$i++){
					$substr.="&nbsp;&nbsp;&nbsp;";
				}
				empty($m['modname']) && $m['modname'] = $language['page']['links'];
				echo "<tr>";
				echo "<td align=\"center\">".$m['id']."</td>\n";
				echo "<td>".$substr."|-&nbsp;&nbsp;".$m['title'];
				if($m['permission']!= '0'){
				echo "<img title=\"".$lang['page']['restricted']."\" src=\"../inc/templates/manage/images/operation/lock.png\" width=\"16\" height=\"16\">\n";
				}
				echo "</td><td align=\"center\">".$m['modname']."</td>\n";
				echo "<td align=\"center\">".$m['show_text']."</td>\n";
				echo "<td align=\"center\">".$m['sort']."</td>\n";
				echo "<td class=\"operation\" align=\"center\">\n";
                echo "<a href=\"channel_update.php?UpChannelID=".$m['id']."\"><img src=\"../inc/templates/manage/images/operation/folder.png\" title=\"".$lang['page']['add_root']."\"></a>\n";
				echo "<a href=\"channel_update.php?id=".$m['id']."&UpChannelID=".$m['UpChannelID']."\"><img src=\"../inc/templates/manage/images/operation/pencil.png\" title=\"".$lang['page']['operation'][0]."\"></a>\n";
				if($m['module'] == 'MO001x' || $m['module'] == 'MO002x' || $m['module'] == 'MO003x'|| $m['module'] == 'MO004x'){
					echo "<a href=\"fields_manage.php?id=".$m['id']."\"><img src=\"../inc/templates/manage/images/operation/cog_go.png\" title=\"字段管理\"></a>\n";
				}else{
					echo "<img src=\"../inc/templates/manage/images/operation/disabled.png\">\n";
				}
					echo "<a href=\"channel_manage.php?del=".$m['id']."\" onclick=\"return confirm('{$language['page']['remove_channel']}');\"><img src=\"../inc/templates/manage/images/operation/delete.png\" title=\"".$language['page']['operation'][1]."\"></a>\n";
				if ($m['module'] == 'MO001x'){
					echo "<a href=\"article_update.php?channel=".$m['id']."\"><img src=\"../inc/templates/manage/images/operation/page_add.png\" title=\"".$language['page']['operation'][2]."\"></a>\n";
				}elseif($m['module'] == 'MO002x'){
					echo "<a href=\"product_update.php?channel=".$m['id']."\"><img src=\"../inc/templates/manage/images/operation/page_add.png\" title=\"".$language['page']['operation'][3]."\"></a>\n";
				}elseif ($m['module'] == 'MO003x'){
					echo "<a href=\"picture_update.php?channel=".$m['id']."\"><img src=\"../inc/templates/manage/images/operation/page_add.png\" title=\"".$language['page']['operation'][4]."\"></a>\n";
				}elseif ($m['module'] == 'MO004x'){
					echo "<a href=\"download_update.php?channel=".$m['id']."\"><img src=\"../inc/templates/manage/images/operation/page_add.png\" title=\"".$language['page']['operation'][5]."\"></a>\n";
				}else{
					echo "<img src=\"../inc/templates/manage/images/operation/disabled.png\">\n";
				}
	echo "</td></tr>";
	subchannel($m['id']);
		}	
	}
}
require_once(ADMIN_PATH.'/footer.php');