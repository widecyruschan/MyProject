<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$lang['page']['title']:}</title>

<meta name="keywords" content="{:$web['keyword']:}" />
<meta name="description" content="{:$web['description']:}" />
<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/login.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
<script type="text/javascript">	
function check(){
	var username = document.loginform.username.value; var password = document.loginform.password.value;
	if(username.length < 5 || username == '{:$lang['page']['enter_username']:}'){alert('{:$lang['page']['warning_enter_username']:}'); document.loginform.username.focus(); return false;	}
	if(password.length < 5){alert('{:$lang['page']['warning_enter_password']:}'); document.loginform.password.focus(); return false;}
	{:if $mycms['login_captcha']:}if(document.loginform.captcha.value == ''){alert('{:$lang['page']['warning_captcha']:}'); document.loginform.captcha.focus(); return false;}{:/if:}
	return true;
}
</script>
</head>
<body>
{:include file='component_header.tpl':}
<div class="box list">
	<div class="titlebar">
		<ol class="title">{:$lang['page']['title']:}</ol>
		<ol class="location">{:$lang['page']['location']:}<a href="./">{:$lang['page']['home']:}</a> &gt;&gt; {:$lang['page']['title']:}</ol>
	</div>
	<div class="head">
		{:$lang['page']['tips'][0]:}<br />{:$lang['page']['tips'][1]:}{:if $mycms['email_auth']:}<br />{:$lang['page']['tips'][2]:}{:/if:}
	</div>
	<div class="loginbox">
		<form name="loginform" method="post" action="member/login.php?goto={:$mycms['get']['goto']:}" onsubmit="return check()">
		<ol class="heading">{:$lang['page']['title']:}</ol>
		<ol class="text">{:$lang['page']['username']:}</ol>
		<ol class="field">
			<span class="left"></span>
			<input name="username" class="username" maxlength="30" type="text" tabindex="1" value="{:$lang['page']['enter_username']:}" onfocus="if(this.value == '{:$lang['page']['enter_username']:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['enter_username']:}';this.style.color = '#999';}" />
			<span class="right"></span>
		</ol>
		<ol class="text">{:$lang['page']['password']:}</ol>
		<ol class="field"><input name="password" class="password" maxlength="20" type="password" tabindex="2" value="" /></ol>
		
		{:if $mycms['login_captcha']:}
		<ol class="text">{:$lang['page']['captcha']:}：</ol>
		<ol class="field">
			<input type="text" name="captcha" class="password" style="text-transform:uppercase;" tabindex="3"  maxlength="20" onfocus="document.getElementById('siimage_div').style.display='block';" onchange="document.getElementById('siimage_div').style.display='none'" />
			<div id="siimage_div"><a href="#" onClick="document.getElementById('siimage').src = 'inc/include/captcha.php?sid=' + Math.random(); return false;"><img id="siimage" src="inc/include/captcha.php?sid={:time():}" /></a></div>
		</ol>
		{:/if:}
		
		<ol class="signinbutton"><input type="submit" name="submit" tabindex="4" value="{:$lang['page']['login']:}" /></ol>
		<ol class="register"><a href="{:misc::url('register'):}">{:$lang['page']['register']:}</a></ol>
		</form>	
	</div>
</div>
{:include file='component_footer.tpl':}
</body>
</html>