<?php
/*
* @Multi-Language Enterprise Content Management System
*/
defined('CMSROOT') or die('Access Denied');
if(isset($_POST['db_host'])){
	$dbs = array(
		'host' => $_POST['db_host'].':'.(is_numeric($_POST['db_port']) ? $_POST['db_port'] : 3306),
		'name' => $_POST['db_name'],
		'user' => $_POST['db_user'],
		'pass' => $_POST['db_pass'],
		'prefix' => $_POST['db_prefix'],
	);
	if(array2php($dbs,'DB',CMSROOT.'/inc/config/db.config.php')){
		if(@$conn = mysql_connect($dbs['host'],$dbs['user'],$dbs['pass'])){ 
			if(@mysql_select_db($dbs['name'],$conn)){ 
				msgbox('',($_POST['demo'] != 1 ? 'index.php?step=4' : 'index.php?step=4&demo=1'));
			} else { 
				if(@mysql_query("CREATE DATABASE `{$dbs['name']}` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;")){
					msgbox('',($_POST['demo'] != 1 ? 'index.php?step=4' : 'index.php?step=4&demo=1'));
				}else{
					msgbox("数据库 {$dbs['name']} 可能不存在，程序尝试创建失败。",'index.php?step=3');					
				}
			}
		}else{
			msgbox('无法连接到数据库，请检查服务器地址、用户名及密码填写是否正确！','index.php?step=3');	
		}
	} else {
		msgbox('无法更新数据库配置文件！请确认您是否有相应文件的写入权限：inc/config/db.config.php','index.php?step=3');	
	}
}
?>
<br />
<form name="data_admin" action="" method="post" onsubmit="return check_data();">
<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;数据库连接参数设置</strong>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td width="130" align="right" height="40">数据库服务器：</td>
		<td width="200"><input type="text" name="db_host" class="input" maxlength="20" size="25" value="localhost" /></td>
		<td class="remark">MySQL 数据库服务器地址，一般为 localhost</td>
	</tr>
	<tr>
		<td align="right" height="40">数据库连接端口：</td>
		<td><input type="text" name="db_port" class="input" maxlength="20" size="25" value="3306" /></td>
		<td class="remark">MySQL 数据库连接端口，一般为 3306</td>
	</tr>
	<tr>
		<td align="right" height="40">数据库名称：</td>
		<td><input type="text" name="db_name" class="input" maxlength="20" size="25" value="MYCMS" /></td>
		<td class="remark">填写的数据库如果不存在，程序将尝试创建</td>
	</tr>
	<tr>
		<td align="right" height="40">数据库用户名：</td>
		<td><input type="text" name="db_user" class="input" maxlength="20" size="25" value="root" /></td>
		<td class="remark">MySQL 数据库登录用户名</td>
	</tr>
	<tr>
		<td align="right" height="40">数据库密码：</td>
		<td><input type="text" name="db_pass" class="input" maxlength="20" size="25" value="" /></td>
		<td class="remark">数据库管理密码</td>
	</tr>
	<tr>
		<td align="right" height="40">数据表前缀：</td>
		<td><input type="text" name="db_prefix" class="input" maxlength="20" size="25" value="cms_" /></td>
		<td class="remark">同一数据库安装多个MYCMS时，请修改前缀</td>
	</tr>
	<tr>
		<td align="right" height="40">附加数据：</td>
		<td>
			<?php if(file_exists(CMSROOT.'/inc/install/data/demo.sql')){ ?><input name="demo" checked="checked" type="checkbox" value="1" /> 数据存在，可以安装
			<?php } else { ?><input name="demo" type="checkbox" disabled="disabled" value="1" /> 没有发现附加数据包<?php } ?>
		</td>
		<td class="remark">是否安装演示数据，需要另外<a href="http://www.el-ad.com" target="_blank">下载附加数据包</a></td>
	</tr>
</table>
<table width="100%"><tr>
<td width="80" height="80">&nbsp;</td>
<td align="center"><a href="index.php?step=2" onfocus="this.blur()"><img src="images/button_prev.png" width="112" height="35" /></a></td>
<td align="center"><input name="" type="image" src="images/button_next.png" /></td>
<td width="80">&nbsp;</td>
</tr></table>
</form>