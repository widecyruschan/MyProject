<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$mycms['channel']['seotitle']:}</title>

<meta name="keywords" content="{:$mycms['channel']['seokey']:}" />
<meta name="description" content="{:$mycms['channel']['seodescr']:}" />
<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link href="/inc/templates/frontend/default/style/tg_style.css" rel="stylesheet" type="text/css" />
<link href="{:$web['path']:}style/news.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="{:$web['path']:}script/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="{:$web['path']:}script/scrolltopcontrol.js"></script>
</head>
<body class="appBody" style="padding-top:80px;">
<div class="conHeaderTop">
  <div id="conHeader">
    <div class="fr">
    <a href="http://service.weibo.com/share/share.php?url=http://tg-vision.com/MobileApp/&appkey=&title=我们提供全方位多平台的移动应用解决方案--@TG-vision双晖传媒&pic=&ralateUid=2387134081&language=zh_cn" target="_blank" class="weiboSina">&nbsp;</a><a href="http://share.v.t.qq.com/index.php?c=share&a=index&url=http://tg-vision.com/MobileApp/&site=TG-vision&title=我们提供全方位多平台的移动应用解决方案--@tgvision" target="_blank" class="weiboQQ">&nbsp;</a></div>
    <span class="inline_block fr">分享到：</span>
    <div class="fl"><a href="/#Services" class="homeBt"><span class="homeBtOn">&nbsp;</span></a></div>
  </div>
</div>
<div class="main">
  <div class="appTit">{:$mycms['channel']['seodescr']:}</div>
  <div class="appRemark">{:$mycms['channel']['seokey']:}</div>
	{:foreach article::data(1,5,0,$mycms['channel']['id'],1,0,0,0,0,1) as $a:}
  <div class="appBox"><a href="{:$a['URL']:}" target="_blank"><img src="{:$a['picture'][2]:}" width="1000" /></a>
    <div class="appBoxTxt">
      <div class="pic"><img src="{:$a['picture'][1]:}" width="92" height="92" /></div>
      <div class="txt"><span class="tit black">{:$a['title']:}</span>{:$a['introduction']:}</div>
      <div class="newsDate">{:$a['addtime']:}</div>
    </div>
  </div>
  {:/foreach:}
	
  

  

  <div class="hr30"></div>
</div>
{:include file='component_footer.tpl':}
<script>
$(function() {
	$('.newsDate').each(function(){
		var dtStr = $(this).text();
		var dt = dtStr.split('-');
		$(this).html('<span class="d1">'+dt[0]+'</span><span class="d2">'+dt[1].toUpperCase()+'<br />'+dt[2]+'</span>');
		});
});
$("#conHeader .fl a").hover(
  function () {
  $(this).children().stop(false,true);
  $(this).children().fadeIn("normal");  
  },
  function () {
 $(this).children().stop(false,true);
 $(this).children().fadeOut("normal");

});
</script>
</body>
</html>