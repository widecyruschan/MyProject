<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$mycms['channel']['seotitle']:}</title>

<meta name="keywords" content="{:$mycms['channel']['seokey']:}" />
<meta name="description" content="{:$mycms['channel']['seodescr']:}" />
<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/article.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
<script type="text/javascript" src="inc/script/focus_classic.js"></script>
<script type="text/javascript">
$(function(){
	$.getScript('inc/script/msclass.js',function(){new marquee('thumbnail',2,1,620,115,20,0,0);});// 滚动图片新闻
	mycms.focus_classic('focus',3000,1,60); // 焦点图
}); 
</script>
</head>
<body>
{:include file='component_header.tpl':}
<div class="classify">{:foreach category::data(1,$mycms['channel']['id'],0,1) as $n:}<a href="{:$n['URL']:}">{:$n['title']:}</a>{:if $n['next_level']:}&nbsp;|&nbsp;{:/if:}{:/foreach:}</div>
<div class="box">
	<div class="main">
		<div class="first_screen">
			<div class="left_column">
				<!-- 焦点图 -->
				<div id="focus">
					<div></div> 
					<ul> 
						{:$pic = photo::data(0,0,0,0,0,'news_focus'):}
						{:foreach $pic['picture'] as $i => $n:} {:$p = explode("\r\n",$pic['description'][$i]):} {:* //// 以换行符为间隔将图片简介转成数组 *:}
						<li><a href="{:$p[0]:}" target="_blank"><img src="{:$n:}" alt="{:$p[1]:}" width="278" height="248" /></a></li> 
						{:/foreach:}
					</ul> 
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
			</div>
			
			<!-- 最新发布，发布日期降序 -->
			<div class="new">
				<div class="heading">{:$lang['page']['latest']:}</div>
				<div class="list">
					{:foreach article::data(1,12,0,$mycms['channel']['id']) as $a:}
					<ol>
						<a href="{:$a['URL']:}" title="{:$a['title']:}">{:$a['title_format']:}</a>
						<span>{:$a['addtime']:}</span>
					</ol>
					{:/foreach:}
				</div>		
			</div>
		</div>
		
		<!-- 图片 -->
		<div class="thumbnail">
			<div id="thumbnail">
			<table cellpadding="0" cellspacing="0" border="0"><tr>
			{:foreach article::data(0,5,0,$mycms['channel']['id'],0,0,22,'',0,0,0,0,0,0,1) as $a:}
				<td>
					<div class="pic"><a href="{:$a['URL']:}" title="{:$a['title']:}"><img src="{:$a['picture'][0]:}" width="120" height="90" onload="mycms.img_auto_size(this)" /></a></div>
					<div class="text"><a href="{:$a['URL']:}" title="{:$a['title']:}">{:$a['title_format']:}</a></div>
				</td>
			{:/foreach:}
			</tr></table>
			</div>
		</div>
		
		<!-- 类别数据调用，自定义字段排序 -->
		<div class="column_data">
			{:foreach category::data(1,$mycms['channel']['id'],0,1) as $i => $c:}
			<div class="recom">
				<div class="caption">
					<ol class="heading">{:$c['title']:}</ol>
					<ol class="more"><a href="{:$c['URL']:}"><img src="{:$web['path']:}images/more.gif" width="42" height="20" /></a></ol>
				</div>
				<div class="circle">
				{:foreach article::data(0,10,0,$mycms['channel']['id'],$c['id']) as $a:}
					<ol><a href="{:$a['URL']:}" title="{:$a['title']:}">{:$a['title_format']:}</a></ol>
				{:/foreach:}
				</div>
			</div>
			{:/foreach:}
		</div>
	
	</div>
	
	<!-- 右边栏 -->
	<div class="sidebar">
		<!-- TAG -->
		<div class="caption">
			<ol class="heading">{:$lang['page']['tag']:}</ol>
			<ol class="more"><a href="{:misc::url('tag'):}"><img src="{:$web['path']:}images/more.gif" width="42" height="20" /></a></ol>
		</div>
		<div class="tag">
		{:foreach tag::data(0,1,50) as $t:}
			{:if $t['total'] > 30:}<a target="_blank" href="{:$t['URL']:}" class="hot1">{:$t['title']:}</a>
			{:elseif $t['click'] > 50:}<a target="_blank" href="{:$t['URL']:}" class="top1">{:$t['title']:}</a>
			{:elseif $t['total'] > 15:}<a target="_blank" href="{:$t['URL']:}" class="hot2">{:$t['title']:}</a>
			{:elseif $t['click'] > 30:}<a target="_blank" href="{:$t['URL']:}" class="top2">{:$t['title']:}</a>
			{:elseif $t['total'] > 5:}<a target="_blank" href="{:$t['URL']:}" class="hot3">{:$t['title']:}</a>
			{:elseif $t['click'] > 10:}<a target="_blank" href="{:$t['URL']:}" class="top3">{:$t['title']:}</a>
			{:else:}<a target="_blank" href="{:$t['URL']:}" class="gen">{:$t['title']:}</a>{:/if:}
		{:/foreach:}
		</div>
		
		<!-- 广告 276*108px -->
		<div class="ad">{:ad::show('article_1'):}</div> 
		
		<!-- 推荐 -->
		<div class="heading">{:$lang['page']['recom']:}</div>
		<div class="well">
			{:foreach article::data(0,10,1,$mycms['channel']['id']) as $a:}
			<ol><a href="{:$a['URL']:}" title="{:$a['title']:}">{:$a['title_format']:}</a></ol>
			{:/foreach:}
		</div>
		
		<!-- 广告 276*108px -->
		<div class="ad">{:ad::show('article_2'):}</div> 
		
		<!-- 热门 -->
		<div class="heading">{:$lang['page']['hot']:}</div>
		<div class="well">
			{:foreach article::data(5,10,0,$mycms['channel']['id']) as $a:}
			<ol><a href="{:$a['URL']:}" title="{:$a['title']:}">{:$a['title_format']:}</a> ({:$lang['page']['hits']|cat:$a['click']:})</ol>
			{:/foreach:}
		</div>					
	</div>
</div>
{:include file='component_footer.tpl':}
</body>
</html>