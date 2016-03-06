<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$lang['page']['title']:}</title>

<meta name="keywords" content="{:$web['keyword']:}" />
<meta name="description" content="{:$web['description']:}" />
<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/misc.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
<script type="text/javascript">
$(function(){
	// 文本域交互样式
	$('.form .input').add('textarea').focus(function(){$(this).css({'border-color':'#40B3FF','background-color':'#E5F5FF'});});
	$('.form .input').add('textarea').blur(function(){$(this).css({'border-color':'#C8C8FF','background-color':'#FFFFFF'});});
	// 表单检验
	$('#guestbook').submit(function(){
		// 非必填项初始化
		$('#phone').val() == '{:$lang['page']['form'][4]:}' && $('#phone').val('');
		$('#fax').val() == '{:$lang['page']['form'][5]:}' && $('#fax').val('');
		$('#company').val() == '{:$lang['page']['form'][6]:}' && $('#company').val('');
		$('#address').val() == '{:$lang['page']['form'][7]:}' && $('#address').val('');
		$('#qq').val() == '{:$lang['page']['form'][8]:}' && $('#qq').val('');
		
		// 必填项检测
		var s = true;
		if($('#title').val() == '{:$lang['page']['form'][0]:}' || $('#title').val() == ''){$('#title').css({'border-color':'#F60','background-color':'#FFF2F2','color':'#F33'}); s = false;}
		if($('#content').val() == '{:$lang['page']['form'][1]:}' || $('#content').val() == ''){$('#content').css({'border-color':'#F60','background-color':'#FFF2F2','color':'#F33'}); s = false;}
		if($('#nickname').val() == '{:$lang['page']['form'][2]:}' || $('#nickname').val() == ''){$('#nickname').css({'border-color':'#F60','background-color':'#FFF2F2','color':'#F33'}); s = false;}
		if($('#email').val().match(/^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/) == null){$('#email').css({'border-color':'#F60','background-color':'#FFF2F2','color':'#F33'}); s = false;}
		{:if $mycms['msg_captcha']:}if($('#captcha').val() == '{:$lang['page']['form'][9]:}' || $('#captcha').val() == ''){$('#captcha').css({'border-color':'#F60','background-color':'#FFF2F2','color':'#F33'}); s = false;}{:/if:}
		return s;
	});
});
</script>
</head>
<body>
{:include file='component_header.tpl':}
<div class="box">
	<div class="frame_main">
		<div class="titlebar">
			<ol class="title">{:$lang['page']['title']:}</ol>
			<ol class="location">{:$lang['page']['location']:}<a href="./">{:$lang['page']['home']:}</a> &gt;&gt; {:$lang['page']['title']:}</ol>
		</div>
		{:foreach msg_data(5) as $msg:}
		<div class="data rounded">
			<ul class="notbg">
				<li class="title">{:$msg['title']:}</li>
				<li class="icon"><img src="{:$web['path']:}images/time.png" width="16" height="16" border="0" /></li>
				<li class="time verdana">{:date('Y-m-d H:i:s',$msg['addtime']):}
			</ul>
			<ul>
				<li class="icon"><!-- 性别图标 -->
					{:if $msg['sex'] == 0:}<img src="{:$web['path']:}images/gender_female.png" width="16" height="16" border="0" />
					{:elseif $msg['sex'] == 1:}<img src="{:$web['path']:}images/gender_male.png" width="16" height="16" border="0" />
					{:else:}<img src="{:$web['path']:}images/gender_privacy.png" width="16" height="16" border="0" />{:/if:}
				</li>
				<li class="name">{:$msg['nickname']:}</li>			
				<li class="icon"><img src="{:$web['path']:}images/qq.png" width="16" height="16" border="0" /></li>
				<li class="qq">{:if $msg['qq'] != '':}<a href="tencent://message/?uin={:$msg['qq']:}&Menu=yes" class="verdana">{:$msg['qq']:}</a>{:else:}<em>NULL</em>{:/if:}</li>
				<li class="icon"><img src="{:$web['path']:}images/mail.png" width="16" height="16" border="0" /></li>
				<li class="mail"><a href="mailto:{:$msg['email']:}" class="verdana">{:$msg['email']:}</a></li>
				<li class="icon"><img src="{:$web['path']:}images/ip.png" width="16" height="16" border="0" /></li>
				<li class="time verdana" id="i{:$msg['id']:}">{:$msg['ip']:}</li>
			</ul>
			<ul class="content">
				<li class="icon"><img src="{:$web['path']:}images/hint.png" width="16" height="16" border="0" /></li>
				<li class="text">{:if $msg['visible'] != 1:}{:nl2br($msg['content']):}{:else:}<font color="#999">{:$lang['page']['private']:}</font>{:/if:}</li>
			</ul>
			{:if $msg['reply'] != '':}
			<ul class="content">
				<li class="icon"><img src="{:$web['path']:}images/status_online.png" width="16" height="16" border="0" /></li>
				<li class="text reply">
					{:$lang['page']['admin']:}{:nl2br($msg['reply']):}<br />
					<em>{:date('Y-m-d H:i:s',$msg['replytime']):}</em>
				</li>
			</ul>
			{:/if:}
		</div>
		<script type="text/javascript">mycms.ip('{:$msg['ip']:}','i{:$msg['id']:}',1);</script>
		{:foreachelse:}
		<div class="notdata">{:$lang['page']['notdata']:}</div>
		{:/foreach:}
		{:include file='component_page_style.tpl':}
	</div>
	<div class="frame_side">
		<div><ol class="heading">{:$lang['page']['submitted']:}</ol></div>
		<div class="form">
			<form method="post" action="guestbook.php" name="guestbook" id="guestbook">
			<ol><input type="text" class="input" name="title" id="title" maxlength="100" value="{:$lang['page']['form'][0]:}" onfocus="if(this.value == '{:$lang['page']['form'][0]:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['form'][0]:}';this.style.color = '#999';}" /> <font color="#FF0000">*</font></ol>
			<ol><textarea name="content" id="content" onkeyup="if(value.length>1000){value=value.substr(0,1000);}" onfocus="if(this.value == '{:$lang['page']['form'][1]:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['form'][1]:}';this.style.color = '#999';}">{:$lang['page']['form'][1]:}</textarea> <font color="#FF0000">*</font></ol>
			<ol><input type="text" class="input" name="nickname" id="nickname" maxlength="50" value="{:$lang['page']['form'][2]:}" onfocus="if(this.value == '{:$lang['page']['form'][2]:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['form'][2]:}';this.style.color = '#999';}" /> <font color="#FF0000">*</font></ol>
			<ol>
				{:$lang['page']['form'][10]:}<input name="sex" type="radio" value="0" checked />{:$lang['page']['form'][11]:}&nbsp;&nbsp;
				<input name="sex" type="radio" value="1" />{:$lang['page']['form'][12]:}&nbsp;&nbsp;
				<input name="sex" type="radio" value="2" />{:$lang['page']['form'][13]:}
			</ol>			
			<ol><input type="text" class="input" name="email" id="email" maxlength="50" value="{:$lang['page']['form'][3]:}" onfocus="if(this.value == '{:$lang['page']['form'][3]:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['form'][3]:}';this.style.color = '#999';}" /> <font color="#FF0000">*</font></ol>
			<ol><input type="text" class="input" name="phone" id="phone" maxlength="20" value="{:$lang['page']['form'][4]:}" onfocus="if(this.value == '{:$lang['page']['form'][4]:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['form'][4]:}';this.style.color = '#999';}" /></ol>
			<ol><input type="text" class="input" name="fax" id="fax" maxlength="20" value="{:$lang['page']['form'][5]:}" onfocus="if(this.value == '{:$lang['page']['form'][5]:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['form'][5]:}';this.style.color = '#999';}" /></ol>
			<ol><input type="text" class="input" name="company" id="company" maxlength="50" value="{:$lang['page']['form'][6]:}" onfocus="if(this.value == '{:$lang['page']['form'][6]:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['form'][6]:}';this.style.color = '#999';}" /></ol>
			<ol><input type="text" class="input" name="address" id="address" maxlength="255" value="{:$lang['page']['form'][7]:}" onfocus="if(this.value == '{:$lang['page']['form'][7]:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['form'][7]:}';this.style.color = '#999';}" /></ol>
			<ol><input type="text" class="input" name="qq" id="qq" maxlength="20" value="{:$lang['page']['form'][8]:}" onfocus="if(this.value == '{:$lang['page']['form'][8]:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['form'][8]:}';this.style.color = '#999';}" /></ol>
			<ol>
				{:$lang['page']['form'][14]:}<input name="visible" type="radio" value="1" />{:$lang['page']['form'][15]:}&nbsp;&nbsp;
				<input name="visible" type="radio" value="0" checked />{:$lang['page']['form'][16]:}
			</ol>
			<ul>
				{:if $mycms['msg_captcha']:}
				<li class="captcha">
					<input type="text" class="input" name="captcha" id="captcha" maxlength="12" value="{:$lang['page']['form'][9]:}" onfocus="if(this.value == '{:$lang['page']['form'][9]:}'){this.value = '';this.style.color = '#000';}; document.getElementById('siimage_div').style.display='block';" onblur="if(this.value==''){this.value='{:$lang['page']['form'][9]:}';this.style.color = '#999';}" onchange="document.getElementById('siimage_div').style.display='none'" /> <font color="#FF0000">*</font>
					<span id="siimage_div"><a href="#" onClick="document.getElementById('siimage').src = 'inc/include/captcha.php?sid=' + Math.random(); return false;"><img id="siimage" src="inc/include/captcha.php?sid={:time():}" /></a></span>
				</li>
				{:/if:}
				<li class="submit"><input value="{:$lang['page']['form'][17]:}" type="submit" /></li>
			</ul>
			</form>
		</div>
	</div>
</div>
{:include file='component_footer.tpl':}
</body>
</html>