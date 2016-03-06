<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$mycms['category']['seotitle']:}</title>

<meta name="keywords" content="{:$mycms['category']['seokey']:}" />
<meta name="description" content="{:$mycms['category']['seodescr']:}" />
<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/article.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
</head>
<body>
{:include file='component_header.tpl':}
<!-- 有子类时显示 -->
{:$sub = category::data(0,0,$mycms['category']['id'],$mycms['category']['level']+1):}
{:if $sub:}<div class="classify">{:foreach $sub as $n:}<a href="{:$n['URL']:}">{:$n['title']:}</a>{:if $n['next_level']:}&nbsp;|&nbsp;{:/if:}{:/foreach:}</div>{:/if:}
<div class="box">
	<div class="frame_side">{:include file='component_article.tpl':}</div>
	<div class="frame_main">
		<div class="titlebar">
			<ol class="title">{:$mycms['category']['title']:}</ol>
			<ol class="location">{:$lang['page']['location']:}<a href="./">{:$lang['page']['home']:}</a> &gt;&gt; <a href="{:misc::get_url('channel',1,$mycms['channel_id']):}">{:$mycms['category']['channel']:}</a> &gt;&gt; {:category::cid2name($mycms['category']['nexus'],' &gt;&gt; ',true):}</ol>
		</div>
		
		<!-- 搜索 -->
		<div class="search">
			<form name="searchform" method="get" target="_blank" action="search.php">
			<span class="left"></span>
			<input class="word" type="text" name="word" id="word" tabindex="5" maxlength="50" value="{:$lang['page']['enter_keywords']:}" onfocus="if(this.value == '{:$lang['page']['enter_keywords']:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['enter_keywords']:}';this.style.color = '#999';}" />
			<input class="button" type="submit" name="" tabindex="6" value="{:$lang['page']['search']:}" onclick="if(document.getElementById('word').value == '{:$lang['page']['enter_keywords']:}'){ alert('{:$lang['page']['enter_keywords_msg']:}');return false;}" />
			<input type="hidden" name="type" value="1" />
			</form>
		</div>
		
		<!-- 列表 - 带分页 -->
		<div class="list">
		{:foreach article::data(0,20,0,0,$mycms['category']['id'],0,60,' ...',0,1,0,0,3) as $i => $a:}
			<ul>
				<li class="a">[<a href="{:misc::get_url('classify',1,category::cut($a['category_id'])):}">{:$a['category']:}</a>]</li>
				<li class="b"><a href="{:$a['URL']:}" title="{:$a['title']:}">{:$a['title_format']:}</a>&nbsp;<span>Hits:{:$a['click']:}</span></li>
				<li class="c">{:$a['addtime']:}</li>
			</ul>
		{:foreachelse:}
		</div>
		<div class="notdata">{:$lang['page']['notdata']:}</div>
		{:/foreach:}
		{:include file='component_page_style.tpl':}
	</div>
</div>
{:include file='component_footer.tpl':}
</body>
</html>