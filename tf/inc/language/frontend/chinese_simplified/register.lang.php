<?php

defined('CMSROOT') or die('Access Denied.');

$language['page'] = array(
	
	'title' => '新用户注册',
	'home' => '首页',
	'location' => '您的位置：',
	'prohibit_register' => '禁止新用户注册。',
	'activate_success' => '恭喜您，帐号已成功激活。',
	'activate_failure' => '抱歉，激活失败或该验证码已经失效。',
	'resent_success' => '激活邮件已重新发送，请登录您的注册邮箱收取激活邮件。',
	'resent_failure' => '激活邮件发送失败，请更换注册邮箱或重发激活邮件。',
	'modify_failure' => '注册邮箱修改失败，该邮箱已经注册。',
	'has_activate' => '抱歉，操作失败，该帐号无需激活。',
	'login_error' => '操作失败，登录密码错误或用户不存在。',
	'captcha_error' => '抱歉，您输入的验证码不正确，请重新输入。',
	'login_failed' => '注册成功，自动登录失败，帐号可能存在异常，请尝试手动登录',
	'receive_mail' => '注册成功，请登录您的注册邮箱收取验证激活邮件。',
	'mail_failure' => '注册成功，验证激活邮件发送失败，请更换注册邮箱或重发激活邮件。',
	'admin_audit' => '注册成功，该帐号需管理员审核后才可使用，请耐心等待。',
	'general_error' => '注册失败，请检测您提交的数据是否正确。',
	'strictly_username' => '登录帐号必须由 5-20 个字母、数字或下划线组成且只能以字母开头，不支持中文和特殊字符。',
	'general_username' => '登录帐号必须由 5-20 个字符组成，可以使用中文，不支持特殊字符（@、#、$、%等）。',
	'mail_error' => '您输入的电子邮箱格式不正确，请重新填写。如：abc@163.com',
	'pwd_error' => '密码必须由 6-20 个字符组成，不支持单、双引号及斜杠。',
	'ban_username' => '抱歉，该帐号被系统保留，禁止注册。',
	'username_exists' => '抱歉，该帐号已经被其他人使用。',
	'email_exists' => '抱歉，该邮箱已经注册，请更换邮箱。',
	'activate_title' => '重新获取注册激活码',
	'username_exists_js' => '该帐号已经被其他人使用。您可以重新输入其它的帐号或者使用该帐号<a href="member/login.php">登录</a>。',
	'email_exists_js' => '该邮箱已经注册。您可以重新输入其它的邮箱或者使用该帐号<a href="member/login.php">登录</a>。',
	'pwd_contrast' => '您两次输入的密码不一致，请重新填写，注意区分大小写。',
	'fill_captcha' => '请填写验证码。',
	'pwd_rank' => '["非常弱","比较弱","一般","比较强","很强","非常强","极佳"]',
	
	'tips' => array(
		0 => '以下全部为必填项。您已经注册？<a href="'.misc::url('login').'">马上登录</a> 或 <a href="member/login.php?action=getpwd">找回密码</a>',
		1 => '您已经注册，还没有收到激活邮件？<a href="member/register.php?action=activate">重新获取激活码或修改注册邮箱</a>',
		2 => '请输入 5-20 个由字母、数字或下划线组成且必须以字母开头的字符，不支持中文和特殊字符。',
		3 => '由 5-20 个字符组成，一个汉字为两个字符，可以使用中文，不支持特殊字符（@、#、$、%等）。',
		4 => '请填写有效的电子邮箱地址，便于找回密码及接收激活邮件时使用。',
		5 => '请输入由 6 - 20 个字符组成的用户密码，不支持单、双引号及斜杠。',
		6 => '请再输入一次您上面填写的登录密码，注意区分大小写。',
		7 => '您还没有注册帐号？<a href="'.misc::url('register').'">马上注册</a>',
		8 => '请填写您注册时的帐号',
		9 => '请填写登录密码',
		10 => '请填写新邮件地址',
	),
	
	'username' => '登录帐号：',
	'email' => '电子邮箱：',
	'password' => '登录密码：',
	'strength' => '密码强度：',
	'confirm' => '确认密码：',
	'captcha' => '验 证 码 ：',
	'agreement' => '注册协议：',
	'button' => '同意以上协议并注册',
	
	'modify_mail' => array('修改邮箱：','是','否','是否修改注册邮箱？'),
	'activate_button' => '重新发送激活邮件',
	
	'agreement_content' => '
		1、在本站注册的会员，必须遵守《互联网电子公告服务管理规定》，不得在本站发表诽谤他人，侵犯他人隐私，侵犯他人知识产权，传播病毒，政治言论，商业讯息等信息。<br />
		2、在所有在本站发表的文章，本站都具有最终编辑权，并且保留用于印刷或向第三方发表的权利，如果你的资料不齐全，我们将有权不作任何通知使用你在本站发布的作品。<br />
		3、在登记过程中，您将选择注册名和密码。注册名的选择应遵守法律法规及社会公德。您必须对您的密码保密，您将对您注册名和密码下发生的所有活动承担责任。
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
		
	'explain' => '
		<strong>说明：</strong><br />
		只有未激活的用户才需要重新获得激活码；<br />
		激活码从获得起30天内有效；<br />
		激活码只会发送到您注册的邮箱，如果您的邮箱填写不正确，您可以通过输入用户名和注册密码修改注册邮箱；<br />
		已经激活的用户不需要再次激活；<br />
		确认邮件是否被您提供的邮箱系统自动拦截，或被误认为垃圾邮件放到垃圾箱了；<br />
		如果您确认邮箱地址正确，可以请求再次发送激活邮件；<br />
		更换相对稳定的邮箱地址；	
	',
	
);