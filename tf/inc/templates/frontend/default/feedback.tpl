<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$lang['page']['title']:}</title>

<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/misc.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
<script type="text/javascript">
var _s = function(){
	if($('#feedback_type').val() == ''){
		alert('{:$lang['page']['msg'][0]:}');
	} else if($('#feedback_title').val() == ''){
		alert('{:$lang['page']['msg'][1]:}');
		$('#feedback_title').focus();
	} else if($('#contact').val() == ''){
		alert('{:$lang['page']['msg'][2]:}');
		$('#contact').focus();
	} else if($('#email').val() == ''){
		alert('{:$lang['page']['msg'][3]:}');
		$('#email').focus();	
	{:if $mycms['enabled_captcha']:}
	} else if($('#captcha').val() == ''){
		alert('{:$lang['page']['msg'][4]:}');
		$('#captcha').focus();
	{:/if:}
	} else {
		$('#feedback_form').submit();
	}
}
</script>
</head>
<body>
{:include file='component_header.tpl':}
<div class="box">
	<div class="frame_side">{:include file='component_product.tpl':}</div>
	<div class="frame_main">
		<div class="titlebar">
			<ol class="title">{:$lang['page']['title']:}</ol>
			<ol class="location">{:$lang['page']['location']:}<a href="./">{:$lang['page']['home']:}</a> &gt;&gt; {:$lang['page']['title']:}</ol>
		</div>
		<div class="feedback">
		<!-- 表单里可以随便添加、删除字段(文本域)，提交后所有字段数据都将以邮件的形式发送到 "语言站点设置" 中设置的 "企业邮箱" 中 -->
		<form name="feedback" id="feedback_form" action="feedback.php" method="post">
			<ul class="input">
				<li class="a">{:$lang['page']['form'][0]:}：</li>
				<li class="b">
					<select class="rounded" name="{:$lang['page']['form'][0]:}" id="feedback_type">
						<option value="" selected="selected">{:$lang['page']['form'][1]:}</option>
						<option value="{:$lang['page']['form'][2]:}">{:$lang['page']['form'][2]:}</option>
						<option value="{:$lang['page']['form'][3]:}">{:$lang['page']['form'][3]:}</option>
						<option value="{:$lang['page']['form'][4]:}">{:$lang['page']['form'][4]:}</option>
						<option value="{:$lang['page']['form'][5]:}">{:$lang['page']['form'][5]:}</option>
						<option value="{:$lang['page']['form'][6]:}">{:$lang['page']['form'][6]:}</option>
					</select>
				</li>
			</ul>
			<ul class="input">
				<li class="a">{:$lang['page']['form'][7]:}：</li>
				<li class="b">
					<input type="text" class="rounded" value="" name="{:$lang['page']['form'][7]:}" id="feedback_title" maxlength="50" /> <font color="#FF0000">*</font>
				</li>
			</ul>
			<ul class="input">
				<li class="a">{:$lang['page']['form'][8]:}：</li>
				<li class="b">
					<input type="text" class="rounded" value="" name="{:$lang['page']['form'][9]:}" id="contact" maxlength="20" /> <font color="#FF0000">*</font>
				</li>
			</ul>
			<ul class="input">
				<li class="a">{:$lang['page']['form'][10]:}：</li>
				<li class="b">
					<input type="text" class="rounded" value="" name="{:$lang['page']['form'][10]:}" id="email" maxlength="20" /> <font color="#FF0000">*</font>
				</li>
			</ul>
			<ul class="input">
				<li class="a">{:$lang['page']['form'][11]:}：</li>
				<li class="b">
					<input type="text" class="rounded" value="" name="{:$lang['page']['form'][11]:}" maxlength="20" />
				</li>
			</ul>
			<ul class="input">
				<li class="a">{:$lang['page']['form'][12]:}：</li>
				<li class="b">
					<input type="text" class="rounded" value="" name="{:$lang['page']['form'][12]:}" maxlength="20" />
				</li>
			</ul>
			<ul class="input">
				<li class="a">{:$lang['page']['form'][13]:}：</li>
				<li class="b">
					<input type="text" class="rounded" value="" name="{:$lang['page']['form'][13]:}" maxlength="20" />
				</li>
			</ul>
			<ul class="input">
				<li class="a">{:$lang['page']['form'][14]:}：</li>
				<li class="b">
					<input type="text" class="rounded" value="" name="{:$lang['page']['form'][14]:}" maxlength="20" />
				</li>
			</ul>
			<ul class="input">
				<li class="a">{:$lang['page']['form'][15]:}：</li>
				<li class="b">
					<input type="text" class="rounded" value="" name="{:$lang['page']['form'][15]:}" maxlength="20" />
				</li>
			</ul>
			<ul class="input">
				<li class="a">{:$lang['page']['form'][16]:}：</li>
				<li class="b">
					<input type="text" class="rounded" value="" name="{:$lang['page']['form'][16]:}" maxlength="20" />
				</li>
			</ul>
			<ul class="textarea">
				<li class="a">{:$lang['page']['form'][17]:}：</li>
				<li class="b">
					<textarea name="{:$lang['page']['form'][17]:}" class="rounded"></textarea>
				</li>
			</ul>
			<ul class="input">
				<li class="a">{:$lang['page']['form'][18]:}：</li>
				<li class="b">
					<select class="rounded" name="{:$lang['page']['form'][18]:}">
						<option value="{:$lang['page']['form'][19]:}" selected="selected">{:$lang['page']['form'][20]:}</option>
						<option value="{:$lang['page']['form'][21]:}">{:$lang['page']['form'][21]:}</option>
						<option value="{:$lang['page']['form'][22]:}">{:$lang['page']['form'][22]:}</option>
						<option value="{:$lang['page']['form'][23]:}">{:$lang['page']['form'][23]:}</option>
						<option value="{:$lang['page']['form'][24]:}">{:$lang['page']['form'][24]:}</option>
						<option value="{:$lang['page']['form'][25]:}">{:$lang['page']['form'][25]:}</option>
					</select>
				</li>
			</ul>
			{:if $mycms['enabled_captcha']:}
			<ul class="input">
				<li class="a">{:$lang['page']['form'][26]:}：</li>
				<li class="b">
					<input type="text" class="rounded captcha" name="captcha" id="captcha" maxlength="12" value="" onfocus="document.getElementById('captcha_box').style.display='block';" onchange="document.getElementById('captcha_box').style.display='none'" /> <font color="#FF0000">*</font>
					<span id="captcha_box"><a href="#" onClick="document.getElementById('siimage').src = 'inc/include/captcha.php?sid=' + Math.random(); return false;"><img id="siimage" src="inc/include/captcha.php?sid={:time():}" /></a></span>
				</li>
			</ul>
			{:/if:}
			<ul class="submit">
				<a href="javascript:_s();" onFocus="this.blur()">{:$lang['page']['form'][27]:}</a>
			</ul>
		</form>
		</div>
	</div>
</div>
{:include file='component_footer.tpl':}
</body>
</html>