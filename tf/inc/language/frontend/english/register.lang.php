<?php

defined('CMSROOT') or die('Access Denied.');

$language['page'] = array(
	
	'title' => 'New User Registration',
	'home' => 'Home',
	'location' => 'You Are Here:',
	'prohibit_register' => 'New User Registration disabled.',
	'activate_success' => 'Congratulations, the account has been successfully activated.',
	'activate_failure' => 'Sorry, invalid activation code.',
	'resent_success' => 'Activation email has been sent.',
	'resent_failure' => 'Failed to send activation email.',
	'modify_failure' => 'The mailbox has been registered.',
	'has_activate' => 'Sorry, the operation fails, the account does not require activation.',
	'login_error' => 'Operation failed, error or user password does not exist.',
	'captcha_error' => 'Sorry, the verification code you entered is incorrect, please try again.',
	'login_failed' => 'Successful registration, automatic login fails, the account may be abnormal, try to manually log in.',
	'receive_mail' => 'Successfully registered.',
	'mail_failure' => 'Registration is successful, verify the activation email sent to fail.',
	'admin_audit' => 'Registration is successful, please wait administrator review.',
	'general_error' => 'Registration failed, please check the data you submit is correct.',
	'strictly_username' => 'Login ID must be 5-20 characters.',
	'general_username' => 'Login ID must be 5-20 characters.',
	'mail_error' => 'E-mail address is not correct.',
	'pwd_error' => 'Password must be 6-20 characters.',
	'ban_username' => 'Sorry, the account banned users.',
	'username_exists' => 'Sorry, this account has been used by others.',
	'email_exists' => 'Sorry, the mailbox is already registered.',
	'activate_title' => 'Gain activation code',
	'username_exists_js' => 'This account has been used by others.',
	'email_exists_js' => 'The mailbox is already registered.',
	'pwd_contrast' => 'The two passwords are not the same as.',
	'fill_captcha' => 'Enter the captcha.',
	'pwd_rank' => '["Very Weak","Weak","General","Relatively strong","Strong","Very strong","Excellent"]',
	
	'tips' => array(
		0 => 'You have to register? <a href="'.misc::url('login').'">Log in</a> Or <a href="member/login.php?action=getpwd">Forgot Password</a>',
		1 => 'have not received activation email? <a href="member/register.php?action=activate">Resend</a>',
		2 => 'Please enter a 5-20 letters, numbers or underscores and must begin with a letter character.',
		3 => 'By the 5-20 characters, special characters are not supported.',
		4 => 'Please fill a valid email address.',
		5 => 'Please enter the 6 - 20-character password.',
		6 => 'Please enter the time you complete the above login password, case sensitive.',
		7 => 'You have not registered? <a href="'.misc::url('register').'">Join Free</a>',
		8 => 'Please fill in your registered account',
		9 => 'Please fill in the password',
		10 => 'Please fill out a new e-mail address',
	),
	
	'username' => 'Username:',
	'email' => 'E-Mail:',
	'password' => 'Password:',
	'strength' => 'Pwd Strength:',
	'confirm' => 'Confirm Pwd:',
	'captcha' => 'Captcha:',
	'agreement' => 'Agreement:',
	'button' => 'Agreed and up',
	
	'modify_mail' => array('Replacement:','Yes','No','Replacement e-mail?'),
	'activate_button' => 'Resend',
	
	'agreement_content' => '
		While the administrators and moderators of this forum will attempt to remove or edit any generally objectionable material as quickly as possible,
		it is impossible to review every message. Therefore you acknowledge that all posts made to these forums express the views and opinions of the author 
		and not the administrators, moderators or webmaster (except for posts by these people) and hence will not be held liable.
		You agree not to post any abusive, obscene, vulgar, slanderous, hateful, threatening, sexually-oriented or any other material that may violate any 
		applicable laws. Doing so may lead to you being immediately and permanently banned (and your service provider being informed). The IP address of all 
		posts is recorded to aid in enforcing these conditions. You agree that the webmaster, administrator and moderators of this forum have the right to remove, 
		edit, move or close any topic at any time should they see fit. As a user you agree to any information you have entered above being stored in a database. 
		While this information will not be disclosed to any third party without your consent the webmaster, administrator and moderators cannot be held responsible 
		for any hacking attempt that may lead to the data being compromised.
		This forum system uses cookies to store information on your local computer. These cookies do not contain any of the information you have entered above; 
		they serve only to improve your viewing pleasure. The e-mail address is used only for confirming your registration details and password (and for sending 
		new passwords should you forget your current one).
		By clicking Register below you agree to be bound by these conditions.
	',
	
	'activate_subject' => '会员注册激活邮件',
	'activate_email' => '<div style="font-size:13px; line-height:20px; font-family:Verdana,Geneva,sans-serif;">尊敬的 {#name}，您好：<br />
		感谢您注册成为 {#web} 会员。<br />
		这是一封由 {#web} 发送的会员注册验证邮件，如果这不是您所操作，请立即忽略并删除这封邮件。<br /><br />
		-------------------------------------------------------------<br /><br />
		注册用户名：{#name}，<a href="{#code_url}">点击这里激活帐号</a><br />
		如果上面的链接无法点击，您也可以复制以下链接，粘贴到您浏览器的地址栏内，然后按"回车"键激活您的帐号：<br />
		{#code_url}<br /><br />
		-------------------------------------------------------------<br /><br />
		<strong>相关链接：</strong><br />
		网站首页地址：<a href="{#web_url}">{#web_url}</a><br />
		重发激活码及修改注册邮箱：<a href="{#web_url}member/register.php?action=activate">{#web_url}member/register.php?action=activate</a><br />
		找回用户密码：<a href="{#web_url}member/login.php?action=getpwd">{#web_url}member/login.php?action=getpwd</a><br />
		会员登录：<a href="{#web_url}member/login.php">{#web_url}member/login.php</a><br />
		新用户注册：<a href="{#web_url}member/register.php">{#web_url}member/register.php</a><br /><br />
		本邮件为系统自动发出，请勿回复。<br />
		欢迎加入，衷心感谢！<br /><br />
		{#web}<br />
		{#time}</div>',
		
	'explain' => '',
	
);