<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$mycms['channel']['seotitle']:}</title>

<meta name="keywords" content="{:$mycms['channel']['seokey']:}" />
<meta name="description" content="{:$mycms['channel']['seodescr']:}" />
<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/photo.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
<script type="text/javascript" src="inc/script/focus_ent.js"></script>
</head>
<body>
{:include file='component_header.tpl':}
<div class="classify">{:foreach category::data(3,$mycms['channel']['id'],0,1) as $n:}<a href="{:$n['URL']:}">{:$n['title']:}</a>{:if $n['next_level']:}&nbsp;|&nbsp;{:/if:}{:/foreach:}</div>
<div class="box">
	<div class="parallel">
		<!-- 焦点图 begin 525 x 225px -->
		{:$pic = photo::data(0,0,0,0,0,'photo_focus'):}
		<div id="ifocus">
			<div id="ifocus_pic">
				<div id="ifocus_piclist">
					<ul>
						{:for $i=0; $i<4; $i++:}
						{:$p[$i] = explode("\r\n",$pic['description'][$i]):}
						<li><a href="{:$p[$i][0]:}" target="_blank"><img src="{:$pic['picture'][$i]:}" alt="{:$p[$i][1]:}" /></a></li>
						{:/for:}
					</ul>
				</div>
				<div id="ifocus_opdiv"></div>
				<div id="ifocus_tx">
					<ul>
						{:for $i=0; $i<4; $i++:}<li class="{:if $i>0:}normal{:else:}current{:/if:}">{:$p[$i][1]:}</li>{:/for:}
					</ul>
				</div>
			</div>
			<div id="ifocus_btn">
				<ul>
					{:for $i=0; $i<4; $i++:}<li class="{:if $i>0:}normal{:else:}current{:/if:}"><img src="{:$pic['picture'][$i]:}" alt="{:$p[$i][1]:}" /></li>{:/for:}
				</ul>
			</div>
		</div>
		<!-- 焦点图 end -->

		<!-- 最新发布 begin -->
		<div class="caption"><ol class="heading">{:$lang['page']['title'][1]:}</ol></div>
		<div class="data">
			{:foreach photo::data(1,12,0,$mycms['channel']['id']) as $pic:}
			<ul>
				<li class="pic"><a href="{:$pic['URL']:}" title="{:$pic['title']:}" target="_blank"><img src="{:$pic['picture'][0]:}" alt="{:$pic['title']:}" width="135" height="90" border="0" onload="mycms.img_auto_size(this)" /></a></li>
				<li class="txt"><a href="{:$pic['URL']:}" title="{:$pic['title']:}" target="_blank">{:$pic['title_format']:}</a></li>
			</ul>
			{:/foreach:}
		</div>
		<!-- 最新发布 end -->		
	</div>
	
	<div class="block">
	
		<!-- 搜索 -->
		<div class="search">
			<form name="searchform" method="get" target="_blank" action="search.php">
			<span class="left"></span>
			<input class="word" type="text" name="word" id="word" tabindex="5" maxlength="50" value="{:$lang['page']['enter_keywords']:}" onfocus="if(this.value == '{:$lang['page']['enter_keywords']:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['enter_keywords']:}';this.style.color = '#999';}" />
			<input class="button" type="submit" name="" tabindex="6" value="{:$lang['page']['search']:}" onclick="if(document.getElementById('word').value == '{:$lang['page']['enter_keywords']:}'){ alert('{:$lang['page']['enter_keywords_msg']:}');return false;}" />
			<input type="hidden" name="type" value="3" />
			</form>
		</div>		

		<!-- TAG -->
		<div class="caption">
			<ol class="heading">{:$lang['page']['tag']:}</ol>
			<ol class="more"><a href="{:misc::url('tag'):}"><img src="{:$web['path']:}images/more.gif" width="42" height="20" /></a></ol>
		</div>
		<div class="tag">
		{:foreach tag::data(0,3,50) as $t:}
			{:if $t['total'] > 30:}<a target="_blank" href="{:$t['URL']:}" class="hot1">{:$t['title']:}</a>
			{:elseif $t['click'] > 50:}<a target="_blank" href="{:$t['URL']:}" class="top1">{:$t['title']:}</a>
			{:elseif $t['total'] > 15:}<a target="_blank" href="{:$t['URL']:}" class="hot2">{:$t['title']:}</a>
			{:elseif $t['click'] > 30:}<a target="_blank" href="{:$t['URL']:}" class="top2">{:$t['title']:}</a>
			{:elseif $t['total'] > 5:}<a target="_blank" href="{:$t['URL']:}" class="hot3">{:$t['title']:}</a>
			{:elseif $t['click'] > 10:}<a target="_blank" href="{:$t['URL']:}" class="top3">{:$t['title']:}</a>
			{:else:}<a target="_blank" href="{:$t['URL']:}" class="gen">{:$t['title']:}</a>{:/if:}
		{:/foreach:}
		</div>	
	
		<!-- 推荐图集 begin -->
		<div class="caption"><ol class="heading">{:$lang['page']['title'][0]:}</ol></div>
		<div class="well">
			{:foreach photo::data(0,8,1,$mycms['channel']['id']) as $i => $pic:}
			<ul>
				<li class="num">{:$i + 1:}</li>
				<li class="title"><a href="{:$pic['URL']:}" title="{:$pic['title']:}" target="_blank">{:$pic['title_format']:}</a></li>
			</ul>
			{:/foreach:}
		</div>
		<!-- 推荐图集 end -->
		
		<!-- 热点 -->
		<div class="caption"><ol class="heading">{:$lang['page']['title'][2]:}</ol></div>
		<div class="well">
			{:foreach photo::data(5,8,0,$mycms['channel']['id']) as $i => $pic:}
			<ul>
				<li class="num">{:$i + 1:}</li>
				<li class="title"><a href="{:$pic['URL']:}" title="{:$pic['title']:}" target="_blank">{:$pic['title_format']:}</a></li>
			</ul>
			{:/foreach:}
		</div>		
	</div>
	
</div>

<!-- 中部通栏广告位（930*100px） -->
<div class="photo_banner">{:ad::show('photo_banner'):}</div>

<!-- 分类 -->
{:foreach category::data(3,$mycms['channel']['id'],0,1) as $i => $c:}
<div class="cat">
	<div class="caption">
			<ol class="heading">{:$c['title']:}</ol>
			<ol class="more"><a href="{:$c['URL']:}"><img src="{:$web['path']:}images/more.gif" width="42" height="20" /></a></ol>
		</div>
	<div class="data">
		{:foreach photo::data(0,12,0,$mycms['channel']['id'],$c['id']) as $pic:}<!-- 调用数可修改成6或12(两行) -->
		<ul>
			<li class="pic"><a href="{:$pic['URL']:}" title="{:$pic['title']:}" target="_blank"><img src="{:$pic['picture'][0]:}" alt="{:$pic['title']:}" width="135" height="90" border="0" onload="mycms.img_auto_size(this)" /></a></li>
			<li class="txt"><a href="{:$pic['URL']:}" title="{:$pic['title']:}" target="_blank">{:$pic['title_format']:}</a></li>
		</ul>
		{:/foreach:}
	</div>
</div>
{:/foreach:}
{:include file='component_footer.tpl':}
</body>
</html>