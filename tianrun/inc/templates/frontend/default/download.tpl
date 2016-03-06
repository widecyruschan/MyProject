<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$mycms['channel']['seotitle']:}</title>

<meta name="keywords" content="{:$mycms['channel']['seokey']:}" />
<meta name="description" content="{:$mycms['channel']['seodescr']:}" />
<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/download.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
</head>
<body>
{:include file='component_header.tpl':}
<div class="classify">{:foreach category::data(4,$mycms['channel']['id'],0,1) as $n:}<a href="{:$n['URL']:}">{:$n['title']:}</a>{:if $n['next_level']:}&nbsp;|&nbsp;{:/if:}{:/foreach:}</div>
<div class="box">
	<div class="main">
		<div class="titlebar">
			<ol class="title">{:$mycms['channel']['title']:}</ol>
			<ol class="location">{:$lang['page']['location']:}<a href="./">{:$lang['page']['home']:}</a> &gt;&gt; {:$mycms['channel']['title']:}</ol>
		</div>
		
		<!-- 列表数据，全部分类 -->
		{:foreach download::data(0,10,0,$mycms['channel']['id'],0,0,0,0,0,1,0,0,3) as $d:}
		<div class="data">
			<ul class="image"><li><a href="{:$d['URL']:}" title="{:$d['title']:}"><img src="{:$d['picture'][0]:}" alt="{:$d['title']:}" width="135" height="90" border="0" onload="mycms.img_auto_size(this)" /></a></li></ul>
			<ul class="content">
				<li class="title"><a href="{:$d['URL']:}" title="{:$d['title']:}">{:$d['title_format']:}</a></li>
				<li class="misc">
					{:$lang['page']['misc'][0]|cat:$d['addtime']:}&nbsp;&nbsp;&nbsp;
					{:$lang['page']['misc'][1]|cat:$d['size']:}&nbsp;&nbsp;&nbsp;
					{:$lang['page']['misc'][2]|cat:$d['count']:}&nbsp;&nbsp;&nbsp;
					{:$lang['page']['misc'][3]|cat:$d['click']:}
				</li>
				<li class="abstract">{:misc::html2txt($d['content'],220):}</li>
			</ul>
		</div>
		{:foreachelse:}<div class="notdata">{:$lang['page']['notdata']:}</div>{:/foreach:}
		{:include file='component_page_style.tpl':}
	</div>
	<div class="sidebar">
		<!-- 搜索 -->
		<div class="search">
			<form name="searchform" method="get" target="_blank" action="search.php">
			<span class="left"></span>
			<input class="word" type="text" name="word" id="word" tabindex="5" maxlength="50" value="{:$lang['page']['enter_keywords']:}" onfocus="if(this.value == '{:$lang['page']['enter_keywords']:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['enter_keywords']:}';this.style.color = '#999';}" />
			<input class="button" type="submit" name="" tabindex="6" value="{:$lang['page']['search']:}" onclick="if(document.getElementById('word').value == '{:$lang['page']['enter_keywords']:}'){ alert('{:$lang['page']['enter_keywords_msg']:}');return false;}" />
			<input type="hidden" name="type" value="4" />
			</form>
		</div>		

		<!-- TAG -->
		<div class="caption">
			<ol class="heading">{:$lang['page']['tag']:}</ol>
			<ol class="more"><a href="{:misc::url('tag'):}"><img src="{:$web['path']:}images/more.gif" width="42" height="20" /></a></ol>
		</div>
		<div class="tag">
		{:foreach tag::data(0,4,50) as $t:}
			{:if $t['total'] > 30:}<a target="_blank" href="{:$t['URL']:}" class="hot1">{:$t['title']:}</a>
			{:elseif $t['click'] > 50:}<a target="_blank" href="{:$t['URL']:}" class="top1">{:$t['title']:}</a>
			{:elseif $t['total'] > 15:}<a target="_blank" href="{:$t['URL']:}" class="hot2">{:$t['title']:}</a>
			{:elseif $t['click'] > 30:}<a target="_blank" href="{:$t['URL']:}" class="top2">{:$t['title']:}</a>
			{:elseif $t['total'] > 5:}<a target="_blank" href="{:$t['URL']:}" class="hot3">{:$t['title']:}</a>
			{:elseif $t['click'] > 10:}<a target="_blank" href="{:$t['URL']:}" class="top3">{:$t['title']:}</a>
			{:else:}<a target="_blank" href="{:$t['URL']:}" class="gen">{:$t['title']:}</a>{:/if:}
		{:/foreach:}
		</div>	
	
		<!-- 推荐资源 begin -->
		<div class="caption"><ol class="heading">{:$lang['page']['title'][0]:}</ol></div>
		<div class="well">
			{:foreach download::data(0,10,1,$mycms['channel']['id']) as $i => $d:}
			<ul>
				<li class="num">{:$i + 1:}</li>
				<li class="title"><a href="{:$d['URL']:}" title="{:$d['title']:}" target="_blank">{:$d['title_format']:}</a></li>
			</ul>
			{:/foreach:}
		</div>
		<!-- 推荐资源 end -->
		
		<!-- 下载排行 begin -->
		<div class="caption"><ol class="heading">{:$lang['page']['title'][2]:}</ol></div>
		<div class="well">
			{:foreach download::data(9,10,0,$mycms['channel']['id']) as $i => $d:}
			<ul>
				<li class="num">{:$i + 1:}</li>
				<li class="title"><a href="{:$d['URL']:}" title="{:$d['title']:}" target="_blank">{:$d['title_format']:}</a> <font color="#666666">({:$d['count']:})</font></li>
			</ul>
			{:/foreach:}
		</div>		
		<!-- 下载排行 end -->
		
	</div>
</div>
{:include file='component_footer.tpl':}
</body>
</html>