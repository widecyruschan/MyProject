<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$d['title']:}</title>

<meta name="keywords" content="{:$d['keyword']:}" />
<meta name="description" content="{:$d['introduction']:}" />
<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/download.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<link rel="stylesheet" type="text/css" href="inc/tools/highslide/highslide.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
<script type="text/javascript" src="inc/tools/highslide/highslide-with-gallery.js"></script>
</head>
<body>
{:include file='component_header.tpl':}
<!-- 有子类时显示子类 -->
<div class="classify">
{:foreach category::data(4,$d['channel_id'],0,1) as $n:}<a href="{:$n['URL']:}">{:$n['title']:}</a>{:if $n['next_level']:}&nbsp;|&nbsp;{:/if:}{:/foreach:}
</div>

<div class="box">
	<div class="main">
		<div class="down_titlebar">
			<ol class="down_location">{:$lang['page']['location']:}<a href="./">{:$lang['page']['home']:}</a> &gt;&gt; <a href="{:misc::get_url('channel',4,$mycms['channel_id']):}">{:$d['channel']:}</a> &gt;&gt; {:category::cid2name($d['category_id'],' &gt;&gt; ',true):}</ol>
			<ol class="down_title">{:$d['title']:}</ol>
		</div>
		
		<!-- 软件基本信息 -->
		<div class="caption">
			<ol class="heading">{:$lang['page']['info'][0]:}</ol>
			<ol class="right_lines"></ol>
		</div>
		<div class="basic">
			<div class="misc">
				<ul>
					<li><strong>{:$lang['page']['misc'][0]:}</strong>{:$d['size']:}</li>
					<li><strong>{:$lang['page']['misc'][1]:}</strong>{:$d['authorization']:}</li>
				</ul>
				<ul>
					<li><strong>{:$lang['page']['misc'][2]:}</strong>{:$d['softlang']:}</li>
					<li><strong>{:$lang['page']['misc'][3]:}</strong>{:$d['environment']:}</li>
				</ul>
				<ul>
					<li><strong>{:$lang['page']['misc'][4]:}</strong><script type="text/javascript" src="app.php?a=hits&type=3&id={:$d['id']:}&show=1"></script></li>
					<li><strong>{:$lang['page']['misc'][5]:}</strong>{:$d['count']:}</li>
				</ul>
				<ul>
					<li><strong>{:$lang['page']['misc'][6]:}</strong>{:if $d['sourceurl']:}<a target="_blank" href="{:$d['sourceurl']:}">Home Page</a>{:/if:}</li>
					<li><strong>{:$lang['page']['misc'][7]:}</strong>{:if $d['demourl']:}<a target="_blank" href="{:$d['demourl']:}">Demo Url</a>{:/if:}</li>
				</ul>
				<ul>
					<li><strong>{:$lang['page']['misc'][8]:}</strong>{:$d['addtime']:}</li>
					<li><strong>{:$lang['page']['misc'][9]:}</strong>{:$d['format_permission']:}</li>
				</ul>
				<ul>
					<li><strong>{:$lang['page']['misc'][10]:}</strong>{:$d['integral']:}</li>
					<li><strong>{:$lang['page']['misc'][11]:}</strong>{:$d['money']:}</li>
				</ul>
			</div>
			<div class="photo">
				<ol class="img">
					<a href="{:$d['picture'][1]:}" title="{:$lang['page']['photo_title']:}" onclick="return hs.expand(this)"><img src="{:$d['picture'][1]:}" width="226" height="176" onload="mycms.img_auto_size(this)" /></a>
					{:foreach $d['picture'] as $i => $n:}{:if $i > 1 && file_exists($n):}<a href="{:$n:}" onclick="return hs.expand(this)"></a>{:/if:}{:/foreach:}		
				</ol>
				<ol class="txt">{:$lang['page']['photo_caption']:}</ol>
			</div>
		</div>
		
		<!-- 详细介绍 -->
		<div class="caption">
			<ol class="heading">{:$lang['page']['info'][1]:}</ol>
			<ol class="right_lines"></ol>
		</div>
		<div class="down_content">{:$d['content']:}</div>
		
		<!-- 下载地址 -->
		<div class="caption">
			<ol class="heading">{:$lang['page']['info'][2]:}</ol>
			<ol class="right_lines"></ol>
		</div>
		<div class="down_url">
		{:foreach $d['format_url'] as $dd:}<ol><a href="{:$dd[2]:}" target="_blank">{:$dd[0]:}</a></ol> {:/foreach:}
		</div>
		
		<!-- 下载说明 -->
		<div class="caption">
			<ol class="heading">{:$lang['page']['info'][3]:}</ol>
			<ol class="right_lines"></ol>
		</div>
		<div class="down_content">
			{:$lang['page']['explain']:}		
			<!-- 上、下相关 -->
			<br />
			<strong>{:$lang['page']['similar_prev']:}</strong>{:if $d['data_prev']['title']:}<a href="{:$d['data_prev']['URL']:}" title="{:$d['data_prev']['title']:}">{:$d['data_prev']['title']:}</a>{:else:}<em>NULL</em>{:/if:}<br />
			<strong>{:$lang['page']['similar_next']:}</strong>{:if $d['data_next']['title']:}<a href="{:$d['data_next']['URL']:}" title="{:$d['data_next']['title']:}">{:$d['data_next']['title']:}</a>{:else:}<em>NULL</em>{:/if:}
		</div>
		
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
			{:foreach download::data(0,10,1,$d['channel_id']) as $i => $dd:}
			<ul>
				<li class="num">{:$i + 1:}</li>
				<li class="title"><a href="{:$dd['URL']:}" title="{:$dd['title']:}" target="_blank">{:$dd['title_format']:}</a></li>
			</ul>
			{:/foreach:}
		</div>
		<!-- 推荐资源 end -->
		
		<!-- 下载排行 begin -->
		<div class="caption"><ol class="heading">{:$lang['page']['title'][2]:}</ol></div>
		<div class="well">
			{:foreach download::data(9,10,0,$d['channel_id']) as $i => $dd:}
			<ul>
				<li class="num">{:$i + 1:}</li>
				<li class="title"><a href="{:$dd['URL']:}" title="{:$dd['title']:}" target="_blank">{:$dd['title_format']:}</a> <font color="#666666">({:$dd['count']:})</font></li>
			</ul>
			{:/foreach:}
		</div>		
		<!-- 下载排行 end -->
		
	</div>
</div>
{:include file='component_footer.tpl':}
</body>
</html>