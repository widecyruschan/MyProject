<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$mycms['channel']['seotitle']:}</title>

<meta name="keywords" content="{:$mycms['channel']['seokey']:}" />
<meta name="description" content="{:$mycms['channel']['seodescr']:}" />
<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/product.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
<script type="text/javascript" src="inc/script/focus_classic.js"></script>
<script type="text/javascript">
$(function(){mycms.focus_classic('focus',3000,1,60);}); // 焦点图
</script>
</head>
<body>
{:include file='component_header.tpl':}
<div class="classify">{:foreach category::data(2,$mycms['channel']['id'],0,1) as $n:}<a href="{:$n['URL']:}">{:$n['title']:}</a>{:if $n['next_level']:}&nbsp;|&nbsp;{:/if:}{:/foreach:}</div>
<div class="box">
	<div class="frame_side">
		<!-- 焦点图 -->
		<div id="focus">
			<div></div> 
			<ul> 
				{:$pic = photo::data(0,0,0,0,0,'product_focus'):}
				{:foreach $pic['picture'] as $i => $n:} {:$p = explode("\r\n",$pic['description'][$i]):} <!-- //// 以换行符为间隔将图片简介转成数组 -->
				<li><a href="{:$p[0]:}" target="_blank"><img src="{:$n:}" alt="{:$p[1]:}" width="278" height="348" /></a></li> 
				{:/foreach:}
			</ul> 
		</div>
		
		<!-- 搜索 -->
		<div class="search">
			<form name="searchform" method="get" target="_blank" action="search.php">
			<span class="left"></span>
			<input class="word" type="text" name="word" id="word" tabindex="5" maxlength="50" value="{:$lang['page']['enter_keywords']:}" onfocus="if(this.value == '{:$lang['page']['enter_keywords']:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['enter_keywords']:}';this.style.color = '#999';}" />
			<input class="button" type="submit" name="" tabindex="6" value="{:$lang['page']['search']:}" onclick="if(document.getElementById('word').value == '{:$lang['page']['enter_keywords']:}'){ alert('{:$lang['page']['enter_keywords_msg']:}');return false;}" />
			<input type="hidden" name="type" value="2" />
			</form>
		</div>		
		
		<!-- TAG -->
		<div class="caption">
			<ol class="heading">{:$lang['page']['tag']:}</ol>
			<ol class="more"><a href="{:misc::url('tag'):}"><img src="{:$web['path']:}images/more.gif" width="42" height="20" /></a></ol>
		</div>
		<div class="tag">
		{:foreach tag::data(0,2,50) as $t:}
			{:if $t['total'] > 30:}<a target="_blank" href="{:$t['URL']:}" class="hot1">{:$t['title']:}</a>
			{:elseif $t['click'] > 50:}<a target="_blank" href="{:$t['URL']:}" class="top1">{:$t['title']:}</a>
			{:elseif $t['total'] > 15:}<a target="_blank" href="{:$t['URL']:}" class="hot2">{:$t['title']:}</a>
			{:elseif $t['click'] > 30:}<a target="_blank" href="{:$t['URL']:}" class="top2">{:$t['title']:}</a>
			{:elseif $t['total'] > 5:}<a target="_blank" href="{:$t['URL']:}" class="hot3">{:$t['title']:}</a>
			{:elseif $t['click'] > 10:}<a target="_blank" href="{:$t['URL']:}" class="top3">{:$t['title']:}</a>
			{:else:}<a target="_blank" href="{:$t['URL']:}" class="gen">{:$t['title']:}</a>{:/if:}
		{:/foreach:}
		</div>
		
		<!-- 左侧广告位（278*118px） -->
		<div class="ad_1">{:ad::show('product_1'):}</div> 
	</div>
	<div class="frame_main">
		
		<!-- 推荐 -->
		<div class="heading">{:$lang['page']['recom']:}</div>
		<div class="recom">
			{:$p = product::data(0,20,1,$mycms['channel']['id']):}
			{:for $i=0; $i<4; $i++:}
			<div class="circle">
				<ul class="image">
					<li>{:if $p[$i*5]['picture'][0] != '':}<a href="{:$p[$i*5]['URL']:}" title="{:$p[$i*5]['title']:}"><img src="{:$p[$i*5]['picture'][0]:}" onload="mycms.img_auto_size(this)" width="100" height="100" alt="{:$p[$i*5]['title']:}" /></a>{:/if:}</li>
				</ul>
				<ul class="text">
					{:for $x=0; $x<5; $x++:}
					<li {:if $x==0:}class="first"{:else:}class="routine"{:/if:}><a href="{:$p[$x+$i*5]['URL']:}" title="{:$p[$x+$i*5]['title']:}">{:$p[$x+$i*5]['title_format']:}</a></li>
					{:/for:}
				</ul>
			</div>
			{:/for:}
		</div>
		
		<!-- 间隔 -->
		<div class="interval"></div>

		<!-- 最新 -->
		<div class="heading">{:$lang['page']['latest']:}</div>
		<div class="recom">
			{:$p = product::data(1,30,0,$mycms['channel']['id']):}
			{:for $i=0; $i<6; $i++:}
			<div class="circle">
				<ul class="image">
					<li>{:if $p[$i*5]['picture'][0] != '':}<a href="{:$p[$i*5]['URL']:}" title="{:$p[$i*5]['title']:}"><img src="{:$p[$i*5]['picture'][0]:}" onload="mycms.img_auto_size(this)" width="100" height="100" alt="{:$p[$i*5]['title']:}" /></a>{:/if:}</li>
				</ul>
				<ul class="text">
					{:for $x=0; $x<5; $x++:}
					<li {:if $x==0:}class="first"{:else:}class="routine"{:/if:}><a href="{:$p[$x+$i*5]['URL']:}" title="{:$p[$x+$i*5]['title']:}">{:$p[$x+$i*5]['title_format']:}</a></li>
					{:/for:}
				</ul>
			</div>
			{:/for:}
		</div>
		
	</div>
</div>

<!-- 中部通栏广告位（930*100px） -->
<div class="ad_2">{:ad::show('product_2'):}</div>

<!-- 栏目 -->
<div class="box categories">
	<div class="frame_main">
		{:foreach category::data(2,$mycms['channel']['id'],0,1) as $c:}
		<div class="caption">
			<ol class="heading">{:$c['title']:}</ol>
			<ol class="more"><a href="{:$c['URL']:}"><img src="{:$web['path']:}images/more.gif" width="42" height="20" /></a></ol>
		</div>
		<div class="recom">
			{:$p = product::data(0,10,0,$mycms['channel']['id'],$c['id']):}
			{:for $i=0; $i<2; $i++:}
			<div class="circle">
				<ul class="image">
					<li>{:if $p[$i*5]['picture'][0] != '':}<a href="{:$p[$i*5]['URL']:}" title="{:$p[$i*5]['title']:}"><img src="{:$p[$i*5]['picture'][0]:}" onload="mycms.img_auto_size(this)" width="100" height="100" alt="{:$p[$i*5]['title']:}" /></a>{:/if:}</li>
				</ul>
				<ul class="text">
					{:for $x=0; $x<5; $x++:}
					<li {:if $x==0:}class="first"{:else:}class="routine"{:/if:}><a href="{:$p[$x+$i*5]['URL']:}" title="{:$p[$x+$i*5]['title']:}">{:$p[$x+$i*5]['title_format']:}</a></li>
					{:/for:}
				</ul>
			</div>
			{:/for:}
		</div>
		{:if $c['next_level'] != 0:}<div class="interval"></div>{:/if:} <!-- 最后一个栏目不显示间隔线 -->
		{:/foreach:}
	</div>
	
	<div class="frame_side">
		<div class="ad_3">{:ad::show('product_3'):}</div> <!-- 右侧广告位（278*218px） -->
		<!-- 畅销 -->
		<div class="heading">{:$lang['page']['sell_well']:}</div>
		<div class="well">
			{:foreach product::data(13,10,0,$mycms['channel']['id']) as $p:}
			<ol><a href="{:$p['URL']:}" title="{:$p['title']:}">{:$p['title_format']:}</a> ({:$lang['page']['sold']|cat:$p['sales']:})</ol>
			{:/foreach:}
		</div>
		
		<!-- 热门 -->
		<div class="heading">{:$lang['page']['hot']:}</div>
		<div class="well">
			{:foreach product::data(5,10,0,$mycms['channel']['id']) as $p:}
			<ol><a href="{:$p['URL']:}" title="{:$p['title']:}">{:$p['title_format']:}</a> ({:$lang['page']['hits']|cat:$p['click']:})</ol>
			{:/foreach:}
		</div>
	</div>
</div>
{:include file='component_footer.tpl':}
</body>
</html>