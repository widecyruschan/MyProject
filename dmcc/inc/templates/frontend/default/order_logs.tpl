<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$lang['page']['title']:}</title>

<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/member.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
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
		<table class="logs" cellpadding="0" cellspacing="1">
			<tr><th>{:$lang['page']['th'][0]:}</th><th>{:$lang['page']['th'][1]:}</th><th>{:$lang['page']['th'][2]:}</th><th>{:$lang['page']['th'][3]:}</th></tr>
			{:foreach member::get_logs(10,true) as $g:}
			<tr>
				<td class="a"><h1>{:$g['oid']:}</h1><h2>{:date('Y-m-d H:i:s',$g['addtime']):}</h2></td>
				<td class="b"><h3>{:$g['amount']:}</h3>{:$lang['page']['type'][$g['type']]:}</td>
				<td class="c">{:$g['info']:}</td>
				<td class="d">
					{:if $g['result'] == '1':}<img src="{:$web['path']:}images/member_accept.png" width="16" height="16" title="{:$lang['page']['result'][1]:}" />
					{:else:}<img src="{:$web['path']:}images/member_delete.png" width="16" height="16" title="{:$lang['page']['result'][0]:}" />{:/if:}
				</td>
			</tr>
			{:foreachelse:}<tr><td colspan="4" height="50">{:$lang['page']['notdata']:}</td></tr>
			{:/foreach:}
		</table>
		{:include file='component_page_style.tpl':}
	</div>
</div>
{:include file='component_footer.tpl':}
</body>
</html>