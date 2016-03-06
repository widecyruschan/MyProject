<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$web['title']:}</title>
<link rel="shortcut icon" href=" /favicon.ico" />
<meta name="keywords" content="{:$web['keyword']:}" />
<meta name="description" content="{:$web['description']:}" />
<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link rel="stylesheet" type="text/css" href="/inc/templates/frontend/default/style/tg_style.css" />
<link rel="stylesheet" type="text/css" href="/inc/templates/frontend/default/style/tg_index.css" />
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
<!--<script language="javascript">
function is_mobile() { 
var s=navigator.userAgent.toLowerCase();
 if( s.match(/android/i)
 || s.match(/webos/i)
 || s.match(/iphone/i)
 || s.match(/ipad/i)
 || s.match(/ipod/i)
 || s.match(/blackberry/i)
 || s.match(/windows phone/i)
 || s.match(/opera mini/i)
 || s.match(/opera mobile/i)
 || s.match(/applewebkit.*mobile/i)
 || s.match(/ mobile /i)
 ){
    return true;
  }
 else {
    return false;
  }
}
	var is_mob=is_mobile();
	if(is_mob){
		 window.location="/app.php?a=lang&i=2"
		}
</script>-->

</head>
<body>
<div class="zpConFullScreen"></div>
<div class="topHeader">
  <div id="header">
    <ul class="top_nav" id="nav">{:foreach channel::navigation() as $i => $n:}<li class="current_page_item" {:if $i==4:}style="margin-left: 165px;"{:/if:}><a href="{:$n['URL']:}">{:$n['title']:}
      </a>{:if sizeof(channel::navigation($n['id'])) > 0:}<ul class="children"> {:foreach channel::navigation($n['id']) as $s:}<li class="page_item"><a href="{:$s['URL']:}" target="{:$s['target']:}"  >{:$s['title']:}</a>{:if sizeof(channel::navigation($s['id']))> 0:}<ul class="children">{:foreach channel::navigation($s['id']) as $a:}<li class="page_item"><a href="{:$a['URL']:}" target="{:$a['target']:}"  >{:$a['title']:}</a></li>{:/foreach:}</ul>{:/if:}</li>{:/foreach:}</ul>{:/if:}</li>{:/foreach:}</ul>
  </div>
</div>
<div id="focusBar" ><a href="javascript:void(0)" class="arrL" onclick="prePage()">&nbsp;</a><a href="javascript:void(0)" class="arrR" onclick="nextPage()">&nbsp;</a>{:$i=1:}
   <ul >{:foreach photo::data(2,10,0,35) as $pic:}
   <li id="focusIndex{:$i:}">
      <div class="focusL"><a href="{:$pic['sourceurl']:}"><img src="{:$pic['picture'][0]:}" width="900" height="350" /></a></div>
      <div class="focusR"><a href="{:$pic['sourceurl']:}"><img src="{:$pic['picture'][1]:}" width="900" height="350" /></a></div>
      {:$i=$i+1:}
    </li>{:/foreach:}
  </ul>
</div>

<div class="indexprolist"><div class="indelist"><div class="box" id="flash1"><div class="listtitle" id="til1"></div>
  <div class="indexsub" id="scrollDiv">
  <ul>{:foreach article::data(0,3,0,25) as $i => $a:}
    <li>{:$a['title']:}</li>{:/foreach:}
  </ul>
</div><div class="indexsub" id="scrollDiv"><a href="/view.php?id=84"><img src="/inc/templates/frontend/default/images/index_bl.jpg" width="258" height="133" alt=""/></a></div>
</div><div class="box" id="flash2"><div class="listtitle" id="til2"></div><a href="/view.php?id=62"><div class="indexsub"><img src="/inc/templates/frontend/default/images/index_ab.jpg" width="136" height="160" alt=""/>
  <div class="indexsubfont">广州军区珠江宾馆是一家具有军队特色和高星级标准的酒店，位于秀美的珠江水畔，毗邻繁华的珠江新城，风景宜人.....</div></div></a>
</div><div class="box" id="flash3"><div class="listtitle" id="til3"></div>
  <div class="indexsub"><img src="/inc/templates/frontend/default/images/indexbr.jpg" width="257" height="183" alt=""/></div>
</div></div></div><script type="text/javascript" src="/inc/templates/frontend/default/script/index.js"></script>
{:include file='component_footer.tpl':}




</body>
</html>