<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$web['title']:}</title>
<meta name="keywords" content="{:$web['keyword']:}" />
<meta name="description" content="{:$web['description']:}" />
<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link rel="stylesheet" type="text/css" href="/inc/templates/frontend/default/style/tg_style.css" />
<link rel="stylesheet" type="text/css" href="/inc/templates/frontend/default/style/tg_sub.css" />
<link rel="stylesheet" type="text/css" href="/inc/templates/frontend/default/style/news.css" />
<!--[if IE 6]>
<script src="/inc/templates/frontend/default/script/DD_belatedPNG_0.0.8a-min.js"></script>
<script>
DD_belatedPNG.fix('a.arrL,a.arrR');
</script>
<![endif]-->

<script type="text/javascript" src="/inc/templates/frontend/default/script/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/inc/templates/frontend/default/script/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="/inc/templates/frontend/default/script/scrolltopcontrol.js"></script>

<style type="text/css">
.mypng img {
azimuth: expression( this.pngSet?this.pngSet=true:(this.nodeName == "IMG" && this.src.toLowerCase().indexOf('.png')>-1?(this.runtimeStyle.backgroundImage = "none", this.runtimeStyle.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + this.src + "', sizingMethod='image')", this.src = "transparent.gif"):(this.origBg = this.origBg? this.origBg :this.currentStyle.backgroundImage.toString().replace('url("', '').replace('")', ''), this.runtimeStyle.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + this.origBg + "', sizingMethod='crop')", this.runtimeStyle.backgroundImage = "none")), this.pngSet=true);
}
</style>
</head>
<body>
{:include file='component_header.tpl':}

<div id="focusBar" > <a href="javascript:void(0)" class="arrL" onclick="prePage()">&nbsp;</a><a href="javascript:void(0)" class="arrR" onclick="nextPage()">&nbsp;</a>{:$i=1:}
  <ul class="mypng">{:foreach photo::data(2,10,0,36) as $pic:}
    <li id="focusIndex{:$i:}">
      <div class="focusL"><a href="{:$pic['sourceurl']:}"><img src="{:$pic['picture'][0]:}" width="900" height="180" /></a></div>
      <div class="focusR"><a href="{:$pic['sourceurl']:}"><img src="{:$pic['picture'][1]:}" width="900" height="180" /></a></div>
      {:$i=$i+1:}
    </li>{:/foreach:}
  </ul>
</div>

<div class="frame_main">
		<div class="content_top"></div>
		<div class="content_common"><div class="content_menu"><div class="classify"><div class="left_title">News</div>{:foreach channel::navigation() as $n:} <a href="{:$n['URL']:}" target="{:$n['target']:}"{:if $mycms['channel_id'] == $n['id']:} class="active"{:/if:}>{:$n['title']:}</a> 
        {:foreach channel::navigation($n['id']) as $s:} <a href="{:$s['URL']:}" target="{:$s['target']:}" >&nbsp;&nbsp;&nbsp;&nbsp;{:$s['title']:}</a> {:/foreach:} 
        
        {:/foreach:} </div></div><div class="titlebar">
			<ol class="title">{:$a['title']:}</ol>
			<ol class="location">&gt;
				<a href="./">{:$lang['page']['home']:}</a> &gt;
			{:$mycms['channel_title']:} &gt;详情  
			</ol>
		</div>  <div class="newsL">
    <div class="newsConTit">
      <h1>{:$a['title']:}</h1>
    </div>
    <div class="newsContent"><p>{:$a['content']:}</p></div>
    <div class="tc"><a href="/article.php?pid=25" class="moreBt">&nbsp;</a><a href="/" class="gobackBt">&nbsp;</a></div>
<div class="hr30"></div>
  </div>
</div>
		<div class="content_bottom"></div>
		{:if $a['page'] > 0:}{:include file='component_page_style.tpl':}{:/if:}
</div>
<script type="text/javascript" src="/inc/templates/frontend/default/script/sub.js"></script>
{:include file='component_footer.tpl':}
</body>
</html>