<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$lang['page']['title']:}</title>

<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
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
			<ol class="location">
				{:$lang['page']['location']:}<a href="./">{:$lang['page']['home']:}</a> &gt;&gt;
				<a href="member/center.php">{:$lang['page']['center']:}</a> &gt;&gt;
				{:$lang['page']['title']:}
			</ol>
		</div>
		
		<div class="order_list">
			<ul class="head">
				<li class="d">{:$lang['page']['list'][0]:}</li>
				<li class="a">{:$lang['page']['list'][1]:}</li>
				<li class="b">{:$lang['page']['list'][2]:}</li>
				<li class="c">{:$lang['page']['list'][3]:}</li>
				<li class="c">{:$lang['page']['list'][4]:}</li>
			</ul>
			{:foreach $mycms['order_list'] as $o:}
			<ul>
				<li class="d"><a href="member/checkout.php?action=view&id={:$o['id']:}">{:$o['oid']:}</a></li>
				<li class="a">{:date('Y-m-d H:i:s',$o['addtime']):}</li>
				<li class="b">{:$o['amount']:}</li>
				<li class="c">{:$lang['page']['status'][$o['status']]:}</li>
				<li class="c">
					<a href="member/checkout.php?action=view&id={:$o['id']:}"><img src="{:$web['path']:}images/member_order.gif" title="{:$lang['page']['list'][6]:}" /></a>
					{:if $o['status'] == 0:}
					<a href="member/order.php?action=pay&id={:$o['id']:}" onclick="return confirm('{:$lang['page']['list'][13]|cat:$o['amount']:}');"><img src="{:$web['path']:}images/member_money.png" title="{:$lang['page']['list'][7]:}" /></a>
					<a href="member/checkout.php?id={:$o['id']:}"><img src="{:$web['path']:}images/memebr_edit.png" title="{:$lang['page']['list'][8]:}" /></a>
					<a href="member/order.php?action=return&id={:$o['id']:}" onclick="return confirm('{:$lang['page']['list'][14]:}');"><img src="{:$web['path']:}images/member_shopping.png" title="{:$lang['page']['list'][9]:}" /></a>
					<a href="member/order.php?action=del&id={:$o['id']:}" onclick="return confirm('{:$lang['page']['list'][15]:}');"><img src="{:$web['path']:}images/member_delete.png" title="{:$lang['page']['list'][10]:}" /></a>
					{:/if:}
					{:if $o['status'] == 3:}<a href="member/order.php?action=receipt&id={:$o['id']:}"><img src="{:$web['path']:}images/member_accept.png" title="{:$lang['page']['list'][11]:}" /></a>{:/if:}
				</li>
			</ul>
			{:/foreach:}
		</div>
		{:include file='component_page_style.tpl':}
	</div>
</div>
{:include file='component_footer.tpl':}
</body>
</html>