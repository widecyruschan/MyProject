<?php
/*
* @Multi-Language Enterprise Content Management System
*/
defined('CMSROOT') or die('Access Denied');
function showjsmessage($message) {
	echo '<script type="text/javascript">showmessage(\''.addslashes($message).'\');</script>'."\r\n";
}
$db = new db();
$sqlfile = CMSROOT.'/inc/install/data/install.sql';
echo '<div id="notice"></div>';
file_exists($sqlfile) or die('<br /><font color="#F00">数据库安装文件丢失：'.$sqlfile.'</font>');
$sql = file_get_contents($sqlfile);
$sql = str_replace("\r\n","\n",$sql);
if(empty($sql)) die('无法获取安装数据。file_get_contents()');
$sql = trim(str_replace("\r","\n",str_replace(' `cms_',' `'.$DB['prefix'],$sql))); 
$ret = explode(";\n",$sql); 
unset($sql);
$result = true;
foreach($ret as $sql){
	$sql = trim($sql);
	if(substr($sql, 0, 12) == 'CREATE TABLE'){ 
		$t_name = preg_replace("/CREATE TABLE `([a-z0-9_]+)` .*/is","\\1",$sql); 
		if(@$db->execute($sql)){
			showjsmessage('<ol>正在创建数据表：'.$t_name.' &nbsp; … &nbsp;&nbsp;&nbsp; <img src="images/ok.png" /></ol>');
		} else {
			$result = false;
			showjsmessage('<ol><font color="#FF0000">正在创建数据表：'.$t_name.' &nbsp; … &nbsp;&nbsp;&nbsp; </font><img src="images/not.png" /></ol>');
		}
	} else { 
		@$db->execute($sql); 
	}
}
if($result){
	showjsmessage('<ol><font color="#000000">数据库安装成功，请继续下一步安装。</font></ol>');
} else {
	showjsmessage('<ol><font color="#FF0000">数据库没有正确安装或是安装过程中出现异常，请检查连接参数设置是否正确。</font></ol>');
}
?>
<div id="button"><table width="100%"><tr><td height="80" align="center">正在安装数据库，请稍候 …</td></tr></table></div>
<script type="text/javascript">
var table = '<table width="100%"><tr><td width="80" height="80">&nbsp;</td>';
table += '<td align="center"><a href="index.php?step=3" onfocus="this.blur()"><img src="images/button_prev.png" width="112" height="35" /></a></td>';
<?php if($result){?>table += '<td align="center"><a href="index.php?step=5<?php if($_GET['demo'] == 1){ echo '&demo=1'; } ?>" onfocus="this.blur()"><img src="images/button_next.png" width="112" height="35" /></a></td>';<?php }?>
table += '<td width="80">&nbsp;</td>';
table += '</tr></table>';
setTimeout(function(){
	document.getElementById('button').innerHTML = table;
},cumulative * spacing);
</script>