<?php
/*
* @Multi-Language Enterprise Content Management System
*/
defined('CMSROOT') or die('Access Denied');
if(isset($_POST['website'])){
	$username = trim($_POST['username']);
	$password = trim($_POST['password']);
	$website = trim($_POST['website']);
	preg_match('/^[\w_]{5,20}$/',$username) or msgbox('管理员帐号必须由5 - 20个字符组成，只能使用数字、字母或下划线！');
	(preg_match('/[\'\"\\\\\/]/',$password) || strlen($password) < 5 || strlen($password) > 20) && msgbox('管理员密码必须为5 - 20个字符，不得使用特殊字符！');
	strlen($website) < 10 && msgbox('网站访问地址填写不正确。');
	$website = rtrim($website,'/').'/';
	require(CMSROOT.'/inc/config/globals.config.php');
	$config['url'] = $website;
	if(array2php($config,'config',CMSROOT.'/inc/config/globals.config.php')){ 
		$keyfile = file_get_contents(CMSROOT.'/inc/config/version.config.php');
		empty($keyfile) && die('无法获取配置文件。file_get_contents()');
		$keyfile = str_replace('__{WEBKEY}__',random(38,0),$keyfile);
		if(@file_put_contents(CMSROOT.'/inc/config/version.config.php',$keyfile)){
			$db = new db;
			$count = $db->query("SELECT count(*) FROM `{$DB['prefix']}admin`",1,0);
			if($count[0] == 0){
				$encryption = random(8,0);
				$password = md5(md5($password).md5($encryption));
				$sql = "INSERT INTO `{$DB['prefix']}admin` (`username`,`password`,`encryption`,`loginip`,`logintime`,`frequency`,`purviews`,`level`) VALUES ('{$username}','{$password}','{$encryption}','','','0','','1');";
				$db->execute($sql) ? msgbox('','index.php?step=7') : msgbox('添加管理员出错！');
			} else { 
				msgbox('','index.php?step=7');
			}
		} else {
			msgbox('无法更新配置文件！请确认您是否有相应文件的写入权限：inc/config/version.config.php');
		}
	} else {
		msgbox('无法更新配置文件！请确认您是否有相应文件的写入权限：inc/config/globals.config.php');
	}
}
$website = isset($_SERVER['HTTP_X_FORWARDED_HOST']) ? $_SERVER['HTTP_X_FORWARDED_HOST'] : (isset($_SERVER['HTTP_HOST']) ? $_SERVER['HTTP_HOST'] : '');
$website = dirname(dirname(dirname('http://'.$website.$_SERVER['SCRIPT_NAME']))).'/';
?>
<br />
<form name="data_admin" action="" method="post" onsubmit="return check_admin();">
<strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;创建管理员及系统配置</strong>
<table width="100%" cellpadding="0" cellspacing="0" border="0">
	<tr>
		<td width="130" align="right" height="40">网站访问地址：</td>
		<td width="200"><input type="text" name="website" class="input" maxlength="50" size="25" value="<?php echo $website;?>" /></td>
		<td class="remark">一般不用修改，如果获取失败或错误时请填写</td>
	</tr>
	<tr>
		<td width="130" align="right" height="40">后台登录帐号：</td>
		<td width="200"><input type="text" name="username" class="input" maxlength="20" size="25" value="admin" /></td>
		<td class="remark">5 - 20个字符组成，只能使用数字、字母和下划线</td>
	</tr>
	<tr>
		<td align="right" height="40">后台登录密码：</td>
		<td><input type="password" name="password" class="input" maxlength="20" size="25" value="" /></td>
		<td class="remark">后台管理员登录密码</td>
	</tr>
	<tr>
		<td align="right" height="40">重复管理员密码：</td>
		<td><input type="password" name="password2" class="input" maxlength="20" size="25" value="" /></td>
		<td class="remark">再输入一次后台管理员登录密码</td>
	</tr>
	<tr>
		<td align="right" height="40">二次加密随机数：</td>
		<td><input name="encryption" type="text" class="input" size="25" maxlength="20" value="<?php echo random(8,0);?>" /></td>
		<td class="remark">管理员密码MD5二次加密随机数</td>
	</tr>
	<tr>
		<td align="right" height="40">网站 KEY：</td>
		<td><input name="webkey" type="text" class="input" size="25" maxlength="40" value="<?php echo random(38,0);?>" /></td>
		<td class="remark">网站唯一识别码，用于文件、Cookie加密解密</td>
	</tr>
</table>
<table width="100%"><tr>
<td width="80" height="80">&nbsp;</td>
<td align="center"><a href="index.php?step=5" onfocus="this.blur()"><img src="images/button_prev.png" width="112" height="35" /></a></td>
<td align="center"><input name="" type="image" src="images/button_next.png" /></td>
<td width="80">&nbsp;</td>
</tr></table>
</form>