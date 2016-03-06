<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$lang['page']['title']:}</title>

<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/member.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
<script type="text/javascript">
$(function(){
	// 文本域交互样式
	$('.form input').not('.readonly').focus(function(){$(this).css({'border-color':'#40B3FF','background-color':'#E5F5FF'});});
	$('.form input').not('.readonly').blur(function(){$(this).css({'border-color':'#C8C8FF','background-color':'#FFFFFF'});});	
	// 提交事件绑定
	$('#pwd_form').submit(function(){
		if(document.pwd_form.old_password.value == ''){alert('{:$lang['page']['msg'][0]:}'); document.pwd_form.old_password.focus(); return false;} // 旧密码
		{:if $mycms['user']['problem'] != '':}if(document.pwd_form.old_answer.value == ''){alert('{:$lang['page']['msg'][1]:}'); document.pwd_form.old_answer.focus(); return false;} // 旧密保答案 {:/if:}
		if(document.pwd_form.email.value.match(/^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/) == null){alert('{:$lang['page']['msg'][2]:}'); document.pwd_form.email.focus(); return false;} // 邮箱
		if(document.pwd_form.new_password.value != document.pwd_form.new_password2.value){alert('{:$lang['page']['msg'][3]:}'); document.pwd_form.new_password2.focus(); return false;	} // 两次新密码
		if(document.pwd_form.new_password.value != '' && document.pwd_form.new_password.value.match(/[^\'\"\\\/]{6,20}$/) == null){alert('{:$lang['page']['msg'][4]:}'); document.pwd_form.new_password.focus(); return false;} // 新密码格式
		if((document.pwd_form.new_problem.value != '' && document.pwd_form.new_answer.value == '') || (document.pwd_form.new_problem.value == '' && document.pwd_form.new_answer.value != '')){alert('{:$lang['page']['msg'][5]:}'); document.pwd_form.new_answer.focus(); return false;}// 新答案
	});
});
</script>
</head>
<body>
{:include file='component_header.tpl':}
<div class="box">
	<div class="frame_side">
		{:include file='component_manage.tpl':}
	</div>
	<div class="frame_main">
		<div class="titlebar">
			<ol class="title">{:$lang['page']['title']:}</ol>
			<ol class="location">{:$lang['page']['location']:}<a href="./">{:$lang['page']['home']:}</a> &gt;&gt; <a href="member/center.php">{:$lang['page']['center']:}</a> &gt;&gt; {:$lang['page']['title']:}</ol>
		</div>
		<div class="form">
			<form name="pwd_form" id="pwd_form" action="" method="post">
			<ul>
				<li class="field">{:$lang['page']['field'][0]:}</li>
				<li class="entry"><input name="username" type="text" class="input rounded readonly" value="{:$mycms['user']['username']:}" readonly="readonly" /></li>
				<li class="info">{:$lang['page']['info'][0]:}</li>
			</ul>
			<ul>
				<li class="field">{:$lang['page']['field'][1]:}</li>
				<li class="entry"><input class="input rounded" type="password" name="old_password" value="" /></li>
				<li class="info"><font color="#FF0000">*</font> {:$lang['page']['info'][1]:}</li>
			</ul>
			{:if $mycms['user']['problem'] != '':}
			<ul>
				<li class="field">{:$lang['page']['field'][2]:}</li>
				<li class="entry"><input class="input rounded readonly" type="text" name="old_problem" value="{:$mycms['user']['problem']:}" readonly="readonly" /></li>
				<li class="info">{:$lang['page']['info'][2]:}</li>
			</ul>
			<ul>
				<li class="field">{:$lang['page']['field'][3]:}</li>
				<li class="entry"><input class="input rounded" type="text" name="old_answer" value="" /></li>
				<li class="info"><font color="#FF0000">*</font> {:$lang['page']['info'][3]:}</li>
			</ul>
			{:/if:}
			<ul>
				<li class="field">{:$lang['page']['field'][4]:}</li>
				<li class="entry"><input class="input rounded" type="text" name="email" value="{:$mycms['user']['email']:}" /></li>
				<li class="info"><font color="#FF0000">*</font> {:$lang['page']['info'][4]:}</li>
			</ul>
			<ul>
				<li class="field">{:$lang['page']['field'][5]:}</li>
				<li class="entry"><input class="input rounded" type="password" name="new_password" value="" /></li>
				<li class="info">{:$lang['page']['info'][5]:}</li>
			</ul>
			<ul>
				<li class="field">{:$lang['page']['field'][6]:}</li>
				<li class="entry"><input class="input rounded" type="password" name="new_password2" value="" /></li>
				<li class="info">{:$lang['page']['info'][5]:}</li>
			</ul>
			<ul>
				<li class="field">{:$lang['page']['field'][7]:}</li>
				<li class="entry"><input class="input rounded" type="text" name="new_problem" value="" /></li>
				<li class="info">{:$lang['page']['info'][5]:}</li>
			</ul>
			<ul>
				<li class="field">{:$lang['page']['field'][8]:}</li>
				<li class="entry"><input class="input rounded" type="text" name="new_answer" value="" /></li>
				<li class="info">{:$lang['page']['info'][5]:}</li>
			</ul>
			<ul class="modify"><input name="" value="{:$lang['page']['field'][9]:}" type="submit" /></ul>
			</form>
		</div>
	</div>
</div>
{:include file='component_footer.tpl':}
</body>
</html>