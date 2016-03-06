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
		$('#logourl').val() == '{:$lang['page']['form'][2]:}' && $('#logourl').val('');
		$('#webmaster').val() == '{:$lang['page']['form'][3]:}' && $('#webmaster').val('');
		$('#contact').val() == '{:$lang['page']['form'][4]:}' && $('#contact').val('');
		$('#info').val() == '{:$lang['page']['form'][5]:}' && $('#info').val('');
		
		// 必填项检测
		var s = true;
		if($('#webname').val() == '{:$lang['page']['form'][0]:}' || $('#webname').val() == ''){$('#webname').css({'border-color':'#F60','background-color':'#FFF2F2','color':'#F33'}); s = false;}
		if($('#weburl').val() == '{:$lang['page']['form'][1]:}' || $('#weburl').val() == ''){$('#weburl').css({'border-color':'#F60','background-color':'#FFF2F2','color':'#F33'}); s = false;}
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
		
		<!-- LOGO 链接 -->
		<div class="logo_link">
		{:foreach misc::links(200,1) as $n:}
		<ol><a href="{:$n['weburl']:}" target="_blank" title="{:$n['webname']:}"><img src="{:$n['logourl']:}" width="88" height="31" border="0" /></a><br /><a href="{:$n['weburl']:}" target="_blank" title="{:$n['webname']:}">{:if $n['color'] == '':}{:$n['webname']:}{:else:}<font color="{:$n['color']:}">{:$n['webname']:}</font>{:/if:}</a></ol>
		{:foreachelse:}<div class="notdata">{:$lang['page']['notdata'][0]:}</div>
		{:/foreach:}
		</div>
		
		<!-- 文字链接 -->
		<div class="text_link">
		{:foreach misc::links(200,0) as $n:}
		<a href="{:$n['weburl']:}" target="_blank" title="{:$n['webname']:}">{:if $n['color'] == '':}{:$n['webname']:}{:else:}<font color="{:$n['color']:}">{:$n['webname']:}</font>{:/if:}</a>&nbsp;&nbsp;
		{:foreachelse:}<div class="notdata">{:$lang['page']['notdata'][1]:}</div>
		{:/foreach:}
		</div>

	</div>
	<div class="frame_side">
		<div><ol class="heading">{:$lang['page']['submitted']:}</ol></div>
		<div class="form">
			<form method="post" action="links.php" name="guestbook" id="guestbook">
			<ol><input type="text" class="input" name="webname" id="webname" maxlength="100" value="{:$lang['page']['form'][0]:}" onfocus="if(this.value == '{:$lang['page']['form'][0]:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['form'][0]:}';this.style.color = '#999';}" /> <font color="#FF0000">*</font></ol>
			<ol><input type="text" class="input" name="weburl" id="weburl" maxlength="50" value="{:$lang['page']['form'][1]:}" onfocus="if(this.value == '{:$lang['page']['form'][1]:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['form'][1]:}';this.style.color = '#999';}" /> <font color="#FF0000">*</font></ol>
			<ol><input type="text" class="input" name="logourl" id="logourl" maxlength="50" value="{:$lang['page']['form'][2]:}" onfocus="if(this.value == '{:$lang['page']['form'][2]:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['form'][2]:}';this.style.color = '#999';}" /></ol>
			<ol><input type="text" class="input" name="webmaster" id="webmaster" maxlength="20" value="{:$lang['page']['form'][3]:}" onfocus="if(this.value == '{:$lang['page']['form'][3]:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['form'][3]:}';this.style.color = '#999';}" /></ol>
			<ol><input type="text" class="input" name="contact" id="contact" maxlength="20" value="{:$lang['page']['form'][4]:}" onfocus="if(this.value == '{:$lang['page']['form'][4]:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['form'][4]:}';this.style.color = '#999';}" /></ol>
			<ol><textarea name="info" id="info" onkeyup="if(value.length>200){value=value.substr(0,200);}" onfocus="if(this.value == '{:$lang['page']['form'][5]:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['form'][5]:}';this.style.color = '#999';}">{:$lang['page']['form'][5]:}</textarea></ol>
			<ol class="submit"><input value="{:$lang['page']['form'][6]:}" type="submit" /></ol>
			</form>
		</div>
	</div>
</div>
{:include file='component_footer.tpl':}
</body>
</html>