<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$lang['page']['activate_title']:}</title>

<meta name="keywords" content="{:$web['keyword']:}" />
<meta name="description" content="{:$web['description']:}" />
<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/register.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
</head>
<body>
{:include file='component_header.tpl':}
<div class="box list">
	<div class="titlebar">
		<ol class="title">{:$lang['page']['activate_title']:}</ol>
		<ol class="location"></ol>
	</div>
	<div class="form">
		<form name="register" id="register_form" action="" method="post">{:*重获激活码*:}
		<ul class="head">{:$lang['page']['tips'][0]:}<br />{:$lang['page']['tips'][7]:}</ul>
		<ul>
			<li class="field">{:$lang['page']['username']:}</li>
			<li class="entry"><input class="rounded" type="text" name="username" value="" tabindex="1" /></li>
			<li class="explain">{:$lang['page']['tips'][8]:}</li>
		</ul>
		<ul>
			<li class="field">{:$lang['page']['password']:}</li>
			<li class="entry"><input class="rounded" type="password" name="password" value="" tabindex="2" /></li>
			<li class="explain">{:$lang['page']['tips'][9]:}</li>
		</ul>
		<ul>
			<li class="field">{:$lang['page']['modify_mail'][0]:}</li>
			<li class="entry">
				<input name="modify_mail" style="width:auto; height:auto; border:0;" type="radio" value="1" onclick="$('.new_mail').show()" tabindex="3" /> {:$lang['page']['modify_mail'][1]:} &nbsp;&nbsp;&nbsp;
				<input name="modify_mail" style="width:auto; height:auto; border:0;" type="radio" value="0" onclick="$('.new_mail').hide()" checked tabindex="4" /> {:$lang['page']['modify_mail'][2]:}
			</li>
			<li class="explain">{:$lang['page']['modify_mail'][3]:}</li>
		</ul>
		<ul class="new_mail">
			<li class="field">{:$lang['page']['email']:}</li>
			<li class="entry"><input class="rounded" type="text" name="email" value="" tabindex="5" /></li>
			<li class="explain">{:$lang['page']['tips'][10]:}</li>
		</ul>
		<ul class="submit">
			<input name="act" value="activate" type="hidden" />
			<input name="" value="{:$lang['page']['activate_button']:}" type="submit" id="submit" tabindex="6" />
		</ul>
		</form>
	</div>
	<div class="remark">{:$lang['page']['explain']:}</div>
</div>
{:include file='component_footer.tpl':}
</body>
</html>