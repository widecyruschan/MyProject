<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$lang['page']['title']:}</title>

<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/login.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
</head>
<body>
{:include file='component_header.tpl':}
<div class="box list">
	<div class="titlebar">
		<ol class="title">{:$lang['page']['title']:}</ol>
		<ol class="location"></ol>
	</div>
	<div class="head">
		{:$lang['page']['tips'][0]:}{:if $mycms['email_auth']:}<br />{:$lang['page']['tips'][2]:}{:/if:}
	</div>
	{:if $mycms['action'] == 'getpwd':}<!--找回密码提交表单 -->
	<div class="loginbox">
		<form name="loginform" method="post" action="member/login.php">
		<ol class="heading">{:$lang['page']['title']:}</ol>
		<ol class="text">{:$lang['page']['username']:}</ol>
		<ol class="field">
			<span class="left"></span>
			<input name="username" class="username" style="color:#000;" maxlength="30" type="text" tabindex="1" value="" />
			<span class="right"></span>
		</ol>
		<ol class="text">{:$lang['page']['email']:}</ol>
		<ol class="field">
			<span class="left"></span>
			<input name="email" class="username" style="color:#000;" maxlength="20" type="text" tabindex="2" value="" />
			<span class="right"></span>
		</ol>
		<ol class="signinbutton">
			<input type="hidden" name="action" value="{:$mycms['action']:}">
			<input type="submit" name="submit" tabindex="4" value="{:$lang['page']['submit']:}" />
		</ol>
		</form>	
	</div>
	{:else:}<!-- 设置新密码提交表单 -->
	<div class="loginbox">
		<form name="loginform" method="post" action="member/login.php">
		<ol class="title">{:$lang['page']['title']:}</ol>
		<ol class="text xuname">{:$lang['page']['username']|cat:$mycms['username']:}</ol>
		<ol class="text">{:$lang['page']['new_password']:}</ol>
		<ol class="field"><input name="password" class="password" maxlength="30" type="password" id="pwd1" tabindex="1" value="" /></ol>
		<ol class="text">{:$lang['page']['confirm_password']:}</ol>
		<ol class="field"><input name="password2" class="password" maxlength="20" type="password" id="pwd2" tabindex="2" value="" /></ol>
		<ol class="signinbutton">
			<input type="hidden" name="action" value="{:$mycms['action']:}" />
			<input type="hidden" name="userid" value="{:$mycms['userid']:}" />
			<input type="hidden" name="code" value="{:$mycms['code']:}" />
			<input type="submit" name="submit" tabindex="4" value="{:$lang['page']['submit_button']:}" onclick="if($('#pwd1').val() != $('#pwd2').val() || $('#pwd1').val() == ''){ alert('{:$lang['page']['pwd_match']:}');return false;}" />
		</ol>
		</form>	
	</div>
	{:/if:}
</div>
{:include file='component_footer.tpl':}
</body>
</html>