<?php /* Smarty version Smarty-3.0.9, created on 2013-07-28 16:59:17
         compiled from "E:/wwwroot/dmcc/inc/templates/manage/login.dwt" */ ?>
<?php /*%%SmartyHeaderCode:2992151f4dd654e2d70-99904567%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a87fbc33230ec32999e077df581f21396fc0fac6' => 
    array (
      0 => 'E:/wwwroot/dmcc/inc/templates/manage/login.dwt',
      1 => 1374981478,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2992151f4dd654e2d70-99904567',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $_smarty_tpl->getVariable('lang')->value['page']['webtitle'];?>
</title>
<link rel="stylesheet" type="text/css" href="../inc/templates/manage/css/common_<?php echo $_smarty_tpl->getVariable('admin')->value['theme'];?>
.css" />
<script type="text/javascript" src="../inc/script/jquery.js"></script>
<script type="text/JavaScript" src="../inc/script/curvycorners.src.js"></script>

<!--[if IE 6]>
<script src="../inc/script/DD_belatedPNG.js"></script>
<script>
DD_belatedPNG.fix('body,.login');
</script>
<![endif]-->
<script type="text/javascript">
if (top.location != self.location) top.location = self.location;
function trim(str){
	return str.replace(/(^[\s\u3000]*)|([\s\u3000]*$)/g,"");
}
function check(){
	if(document.login.username.value.length < 5){
		alert('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['check'][0];?>
') ;
		document.login.username.focus();
		return false;		
	}
	if(document.login.password.value.length < 5){
		alert('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['check'][1];?>
') ;
		document.login.password.focus();
		return false;		
	}
	<?php if ($_smarty_tpl->getVariable('mycms')->value['captcha']){?>
	if(document.login.captcha.value == ''){
		alert('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['check'][2];?>
') ;
		document.login.captcha.focus();
		return false;		
	}	
	<?php }?>
}

//ie检测
if($.browser.msie && $.browser.version < 6){
	alert('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['browser'];?>
');
	location = '../';
}
</script>
<style type="text/css">
body{background:url(../inc/templates/manage/images/login_gb.png) #000; padding:0; margin:0; color:#333;}
.framework{height:0px; width:0px; top:50%; left:50%; position:absolute; margin:-222px auto auto -204px;}
.framework .login{width:408px; height:444px; background:url(../inc/templates/manage/images/login_bg.png) 0 0 no-repeat; overflow:hidden;}
.framework .login input{background:#FFF; border:0; height:23px; width:166px; line-height:23px; font-family:verdana,lucida,Arial,Helvetica,sans-serif;}
.framework .login .username{padding:78px 0 0 158px; *padding-top:77px;}
.framework .login .password{padding:24px 0 0 158px; *padding-top:22px;}
.framework .login .button_x{padding:20px 0 0 152px; width:108px;}
.framework .login .button_x input{width:78px; height:28px;}
.framework .login .captcha{padding:0 18px 0 0;}
.framework .login .captcha input{border:1px #CCC solid; height:25px; width:70px; padding:0 3px; text-transform:uppercase;}
#siimage{border:1px #DFDFDF solid;}
#siimage_div{display:none;}
#siimage_div img{position:absolute; margin:15px auto auto -107px;}
</style>
</head>
<body>
<div class="framework">
	<form name="login" action="" method="post" onsubmit="return check()">
	<div class="login">
		<ol class="username"><input name="username" type="text" value="" maxlength="20" /></ol>
		<ol class="password"><input name="password" type="password" value="" maxlength="20" /></ol>
		<ol class="button_x">
			<table cellpadding="0" cellspacing="0" border="0"><tr>
			<?php if ($_smarty_tpl->getVariable('mycms')->value['captcha']){?>
			<td class="captcha"><input name="captcha" type="text" value="" maxlength="10" size="20" class="rounded" onchange="document.getElementById('siimage_div').style.display='none'" onfocus="document.getElementById('siimage_div').style.display='block'" /></td>
			<td><div id="siimage_div"><a href="#" onClick="document.getElementById('siimage').src = '../inc/include/captcha.php?sid=' + Math.random(); return false;"><img id="siimage" src="../inc/include/captcha.php?sid=<?php echo time();?>
" /></a></div></td>
			<?php }?>
			<td><input type="image" src="../inc/templates/manage/images/login_submit.png" /></td>
			</tr></table>
		</ol>
	</div>
	<input type="hidden" value="login" name="action" />
	</form>
</div>
</body>
</html>