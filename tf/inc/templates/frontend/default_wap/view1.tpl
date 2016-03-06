<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$a['title']:}</title>

<meta name="keywords" content="{:$a['keyword']:}" />
<meta name="description" content="{:$a['introduction']:}" />
<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/article.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
</head>
<body>
{:include file='component_header.tpl':}
<div class="box">
	<div class="frame_side">{:include file='component_article.tpl':}</div>
	<div class="frame_main">
		<div class="titlebar">
			<ol class="title">{:$a['channel']:}</ol>
			<ol class="location">{:$lang['page']['location']:}<a href="./">{:$lang['page']['home']:}</a> &gt;&gt; <a href="{:misc::get_url('channel',1,$mycms['channel_id']):}">{:$a['channel']:}</a> &gt;&gt; {:category::cid2name($a['category_id'],' &gt;&gt; ',true):} &gt;&gt; {:$lang['page']['main']:}</ol>
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
		
		<!-- 详细信息 -->
		<div class="details">
			<ol class="caption">{:$a['title']:}</ol>
			<ol class="misc">
				{:if $a['author']:}{:$lang['page']['misc'][0]:}<span>{:$a['author']:}</span>&nbsp;&nbsp;{:/if:}
				{:if $a['source']:}{:$lang['page']['misc'][1]:}<span>{:$a['source']:}</span>&nbsp;&nbsp;{:/if:}
				{:$lang['page']['misc'][2]:}<span><script type="text/javascript" src="app.php?a=hits&id={:$a['id']:}&show=1"></script></span>&nbsp;&nbsp;
				{:$lang['page']['misc'][3]:}<span>{:$a['addtime']:}</span>
			</ol>
			<ol class="content_common">{:$a['content']:}</ol>
		</div>
		
		<!-- 内容分页、启用了内容分页且有1页以上时显示 -->
		{:if $a['page']:}{:include file='component_page_style.tpl':}{:/if:}
		
		<!-- 上一篇、下一篇 -->
		<div class="similar">
			<ol>{:$lang['page']['similar_prev']:}{:if $a['data_prev']['title']:}<a href="{:$a['data_prev']['URL']:}" title="{:$a['data_prev']['title']:}">{:$a['data_prev']['title']:}</a>{:else:}<em>NULL</em>{:/if:}</ol>
			<ol>{:$lang['page']['similar_next']:}{:if $a['data_next']['title']:}<a href="{:$a['data_next']['URL']:}" title="{:$a['data_next']['title']:}">{:$a['data_next']['title']:}</a>{:else:}<em>NULL</em>{:/if:}</ol>
		</div>
	</div>
</div>
{:include file='component_footer.tpl':}
</body>
</html>