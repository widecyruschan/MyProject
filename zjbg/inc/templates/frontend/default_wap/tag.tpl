<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$lang['page']['title']:}</title>

<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/misc.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
</head>
<body>
{:include file='component_header.tpl':}
<div class="box">
	{:foreach module::get_module(1) as $m:}
	<div class="m_tag">
		<ol class="m_title">{:$lang['page']['type'][$m['modcode']]:}</ol>
		<ol class="m_list">
		{:foreach tag::data(0,$m['modcode']) as $t:}
		<a href="{:$t['URL']:}" target="_blank">{:$t['title']:}</a>&nbsp;&nbsp;
		{:/foreach:}
		</ol>
	</div>
	{:/foreach:}
</div>
{:include file='component_footer.tpl':}
</body>
</html>