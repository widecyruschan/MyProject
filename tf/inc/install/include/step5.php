<?php
/*
* @Multi-Language Enterprise Content Management System
*/
defined('CMSROOT') or die('Access Denied');
$db = new db();
$sqlfile = CMSROOT.'/inc/install/data/basic.sql';
$affixfile = CMSROOT.'/inc/install/data/demo.sql'; 
file_exists($sqlfile) or die('<br /><font color="#F00">数据库安装文件丢失：'.$sqlfile.'</font>');
$sql = file_get_contents($sqlfile);
$_GET['demo'] = 1; 
if($_GET['demo'] == 1 && file_exists($affixfile)){
	$sql .= file_get_contents($affixfile);
}
$sql = str_replace("\r\n","\n",$sql);
if(empty($sql)) die('无法获取安装数据。file_get_contents()');
$sql = trim(str_replace("\r","\n",str_replace(' `cms_',' `'.$DB['prefix'],$sql))); 
$ret = explode(";\n",$sql); 
unset($sql);
$result = true;
foreach($ret as $sql){
	$sql = trim($sql);
	@$db->execute($sql) or $result = false;
}
if($result){
	msgbox('','index.php?step=6'); 
} else {
	echo '<div style="padding:30px 0 30px 20px; color:#F00;">系统模块安装失败，请重新安装或尝试跳过这一步。</div>';	
}
?>
<table width="100%"><tr>
<td width="80" height="80">&nbsp;</td>
<td align="center"><a href="index.php?step=4" onfocus="this.blur()"><img src="images/button_prev.png" width="112" height="35" /></a></td>
<td align="center"><a href="index.php?step=6" onfocus="this.blur()"><img src="images/button_next.png" width="112" height="35" /></a></td>
<td width="80">&nbsp;</td>
</tr></table>