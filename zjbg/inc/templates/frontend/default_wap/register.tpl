<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$lang['page']['title']:}</title>

<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/register.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
<script type="text/javascript" src="inc/script/register.js"></script>
<script type="text/javascript">	
$(function(){
	{:if $mycms['strictly']:}	mycms.register.bind('#username','{:$lang['page']['strictly_username']:}','{:$lang['page']['username_exists_js']:}',true);
	{:else:}mycms.register.bind('#username','{:$lang['page']['general_username']:}','{:$lang['page']['username_exists_js']:}',false);{:/if:} {:* //// 是否严格要求登录帐号 *:}
	mycms.register.bind('#email','{:$lang['page']['mail_error']:}','{:$lang['page']['email_exists_js']:}');
	mycms.register.bind('#password','{:$lang['page']['pwd_error']:}');
	mycms.register.bind('#password2','{:$lang['page']['pwd_contrast']:}');
	{:if $mycms['captcha']:}mycms.register.bind('#captcha','{:$lang['page']['fill_captcha']:}');{:else:}mycms.register.captcha = true;{:/if:} {:* ////// 是否开启注册验证码  *:} 
	mycms.register.rank({:$lang['page']['pwd_rank']:}); 
});
</script>
</head>
<body>
{:include file='component_header.tpl':}
<div class="box list">
	<div class="titlebar">
		<ol class="title">{:$lang['page']['title']:}</ol>
		<ol class="location">{:$lang['page']['location']:}<a href="./">{:$lang['page']['home']:}</a> &gt;&gt; {:$lang['page']['title']:}</ol>
	</div>
	<div class="form">
		<form name="register" id="register_form" action="member/register.php" method="post">
		<ul class="head">
			{:$lang['page']['tips'][0]:}{:if $mycms['email_auth']:}<br />{:$lang['page']['tips'][1]:}{:/if:}
		</ul>
		<ul>
			<li class="field">{:$lang['page']['username']:}</li>
			<li class="entry"><input class="rounded" type="text" name="username" id="username" value="" tabindex="1" /></li>
			<li class="info">
				<ol class="attention rounded">{:if $mycms['strictly']:}{:$lang['page']['tips'][2]:}{:else:}{:$lang['page']['tips'][3]:}{:/if:}</ol>
				<ol class="error rounded"></ol>
				<ol class="ok rounded"></ol>
				<ol class="loading"><img src="inc/images/loading.gif" width="16" height="16" /></ol>
			</li>
		</ul>
		<ul>
			<li class="field">{:$lang['page']['email']:}</li>
			<li class="entry"><input class="rounded" type="text" name="email" id="email" value="" tabindex="2" /></li>
			<li class="info">
				<ol class="attention rounded">{:$lang['page']['tips'][4]:}</ol>
				<ol class="error rounded"></ol>
				<ol class="ok rounded"></ol>
				<ol class="loading"><img src="inc/images/loading.gif" width="16" height="16" /></ol>
			</li>
		</ul>
		<ul>
			<li class="field">{:$lang['page']['password']:}</li>
			<li class="entry"><input class="rounded" type="password" name="password" id="password" value="" tabindex="3" /></li>
			<li class="info">
				<ol class="attention rounded">{:$lang['page']['tips'][5]:}</ol>
				<ol class="error rounded"></ol>
				<ol class="ok rounded"></ol>
			</li>
		</ul>
		<ul>
			<li class="field">{:$lang['page']['strength']:}</li>
			<li class="rank_image" id="rank_image"></li>
			<li class="rank_score" id="rank_score"></li>
			<li class="rank_text" id="rank_text"></li>
		</ul>
		<ul>
			<li class="field">{:$lang['page']['confirm']:}</li>
			<li class="entry"><input class="rounded" type="password" name="password2" id="password2" value="" tabindex="4" /></li>
			<li class="info">
				<ol class="attention rounded">{:$lang['page']['tips'][6]:}</ol>
				<ol class="error rounded"></ol>
				<ol class="ok rounded"></ol>
			</li>
		</ul>
		{:if $mycms['captcha']:}
		<ul class="captcha">
			<li class="field">{:$lang['page']['captcha']:}</li>
			<li class="entry"><input class="rounded" type="text" name="captcha" id="captcha" value="" tabindex="5" onfocus="document.getElementById('siimage').style.display='block';" onchange="document.getElementById('siimage').style.display='none'" /></li>
			<li class="image"><span><a href="#" onClick="document.getElementById('siimage').src = 'inc/include/captcha.php?sid=' + Math.random(); return false;"><img id="siimage" src="inc/include/captcha.php?sid={:time():}" /></a></span></li>
			<li class="info">
				<ol class="attention rounded">{:$lang['page']['fill_captcha']:}</ol>
				<ol class="error rounded"></ol>
				<ol class="ok rounded"></ol>				
			</li>
		</ul>
		{:/if:}
		<ul class="agreement">
			<li class="field">{:$lang['page']['agreement']:}</li>
			<li class="entry rounded">{:$lang['page']['agreement_content']:}</li>
		</ul>
		<ul class="submit">
			<input name="act" value="register" type="hidden" />
			<input name="" value="{:$lang['page']['button']:}" type="submit" id="submit" tabindex="6" />
		</ul>
		</form>
	</div>
</div>
{:include file='component_footer.tpl':}
</body>
</html>