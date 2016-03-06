<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$web['title']:}</title>
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
</head>
<body>
{:include file='component_header.tpl':}
<div class="main">
  <div class="newsL">
    <ul class="newsList">
{:foreach article::data(0,16,0,$mycms['channel']['id']) as $i => $a:}
      <li>
        <div class="pic"  onclick="location.href='{:$a['URL']:}';"><img src="{:$a['picture'][0]:} " />
          <div class="picFc"></div>
        </div>
        <div class="txt">
          <h3><a href="{:$a['URL']:}" target="_self">{:$a['title']:}</a></h3>
          {:$a['introduction']:} </div>
        <div class="newsDate">{:$a['addtime']:}</div>
      </li>
{:/foreach:}

      

    </ul>
   {:include file='component_page_style.tpl':}
  </div>
  <div class="newsR">
      <ul class="sideMenu">
      <li><a href="/article.php?pid=6" id="class_16">全部项目 <span id="classcount_16"></span></a></li>
      <li><a href="/article.php?pid=33" id="class_21">形象礼仪系列课程 <span id="classcount_21"></span></a></li>
      <li><a href="/article.php?pid=34" id="class_17">贵格订制系列课程 <span id="classcount_17"></span></a></li>
    </ul>
    <div class="sideInfo"><a href="/#Contact" class="sendBt">&nbsp;</a></div>

  </div>
  <div class="cl"></div>
</div>
{:include file='component_footer.tpl':}

</body>
</html>