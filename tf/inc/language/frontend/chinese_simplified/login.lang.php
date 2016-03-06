<?php

defined('CMSROOT') or die('Access Denied.');

$language['page'] = array(

	'title' => '会员登录',
	'home' => '首页',
	'location' => '您的位置：',
	'not_exist' => '抱歉，该用户不存在或者已经删除。',
	'password_error' => '密码错误，请重新输入。',
	'mail_activation' => '该帐号还未激活，请登录您的注册邮箱收取激活邮件。',
	'manage_activation' => '该帐号还未验证，请耐心等待或通知我们的管理员为您验证。',
	'refused_login' => '抱歉，该帐号已被禁止登录。',
	'unknown_error' => '登录失败。',
	'captcha_error' => '验证码错误，请重新输入。',
	
	'enter_username' => '请输入用户名或邮箱',
	'warning_enter_username' => '请输入正确的登录帐号或电子邮箱。',
	'warning_enter_password' => '请输入正确的登录密码。',
	'captcha' => '验证码',
	'warning_captcha' => '请输入验证码。',
	
	'username' => '用户帐号：',
	'password' => '登录密码：',
	'login' => '登 录',
	'register' => '免费注册',
	
	'tips' => array(
		0 => '您不是会员？<a href="'.misc::url('register').'">马上注册</a>',
		1 => '您已经是注册会员？通过注册邮箱 <a href="member/login.php?action=getpwd">找回密码</a>',
		2 => '您已经注册，还没有收到激活邮件？<a href="member/register.php?action=activate">重新获取激活码或修改注册邮箱</a>',
	),
	
	'getpwd' => '找回用户密码',
	'email' => '注册邮箱：',
	'submit' => '找回密码',
	'not_match' => '用户名与 Email 地址不匹配，请重新输入。',
	'reset' => '重置用户密码',
	'new_password' => '请输入新密码：',
	'confirm_password' => '确认新密码：',
	'submit_button' => '重置密码',
	'pwd_match' => '两次输入的密码不一致，请重新输入。',
	'pwd_error' => '密码必须由 6-20 个字符组成，不支持单、双引号及斜杠。',
	
	'modify_failure' => '操作失败，已经过期或无效的请求。',
	'modify_success' => '密码重置成功，请使用新密码登录。',
	'url_invalid' => '无效的请求，该链接已经过期。',
	
	'mail_success' => '操作成功，取回密码的方法已发送到您的邮箱中。',
	'mail_failure' => '密码找回邮件发送失败，请与系统管理员联系。',
	'mail_title' => '找回用户密码',
	'mail_content' =>  '<div style="font-size:13px; line-height:20px; font-family:Verdana,Geneva,sans-serif;">尊敬的 {#name}，您好：<br />
		这封信是由 {#web} 发送的。<br /><br />
		您收到这封邮件，是因为在我们的网站上这个邮箱地址被登记为用户邮箱，<br />
		且该用户请求使用 Email 重置密码所致。如果您没有提交密码重置的请求<br />
		或不是我们网站的注册用户，请立即忽略并删除这封邮件。只在您确认需<br />
		要重置密码的情况下，才继续阅读下面的内容。<br /><br />
		-------------------------------------------------------------<br /><br />
		您只需在提交请求后的三天之内，通过点击下面的链接重置您的密码：<br />
		注册用户名：{#name}，<a href="{#code_url}">点击这里重置密码</a><br />
		如果上面的链接无法点击，您也可以复制以下链接，粘贴到您浏览器的地址<br />
		栏内，然后按"回车"键打开页面进行操作：<br />
		{#code_url}<br /><br />
		上面的页面打开后，输入新的密码后提交，之后您即可使用新的密码登录网<br />
		站了。您可以在用户控制面板中随时修改您的密码。<br /><br />
		-------------------------------------------------------------<br /><br />
		网站首页地址：<a href="{#web_url}">{#web_url}</a><br />
		重发激活码及修改注册邮箱：<a href="{#web_url}member/register.php?action=activate">{#web_url}member/register.php?action=activate</a><br />
		找回用户密码：<a href="{#web_url}member/login.php?action=getpwd">{#web_url}member/login.php?action=getpwd</a><br />
		会员登录：<a href="{#web_url}member/login.php">{#web_url}member/login.php</a><br />
		新用户注册：<a href="{#web_url}member/register.php">{#web_url}member/register.php</a><br /><br />
		本邮件为系统自动发出，请勿回复。<br /><br />
		此致<br /><br />
		{#web}<br />
		{#time}</div>',
	
);