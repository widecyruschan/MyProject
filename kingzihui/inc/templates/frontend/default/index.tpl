<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$web['title']:}</title>

<meta name="keywords" content="{:$web['keyword']:}" />
<meta name="description" content="{:$web['description']:}" />
<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link rel="stylesheet" type="text/css" href="{:$config['url']:}/inc/templates/frontend/default/style/tg_style.css" />
<link rel="stylesheet" type="text/css" href="{:$config['url']:}/inc/templates/frontend/default/style/tg_index.css" />
<link rel="stylesheet" type="text/css" href="{:$config['url']:}/inc/templates/frontend/default/style/news.css" />
<!--[if IE 6]>
<script src="/inc/templates/frontend/default/script/DD_belatedPNG_0.0.8a-min.js"></script>
<script>
DD_belatedPNG.fix('a.arrL,a.arrR');
</script>
<![endif]-->

<script type="text/javascript" src="{:$config['url']:}/inc/templates/frontend/default/script/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="{:$config['url']:}/inc/templates/frontend/default/script/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="{:$config['url']:}/inc/templates/frontend/default/script/scrolltopcontrol.js"></script>

<style type="text/css">
.mypng img {
azimuth: expression( this.pngSet?this.pngSet=true:(this.nodeName == "IMG" && this.src.toLowerCase().indexOf('.png')>-1?(this.runtimeStyle.backgroundImage = "none", this.runtimeStyle.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + this.src + "', sizingMethod='image')", this.src = "transparent.gif"):(this.origBg = this.origBg? this.origBg :this.currentStyle.backgroundImage.toString().replace('url("', '').replace('")', ''), this.runtimeStyle.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + this.origBg + "', sizingMethod='crop')", this.runtimeStyle.backgroundImage = "none")), this.pngSet=true);
}
</style>
<script language="javascript">
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
		 window.location="{:$config['url']:}/app.php?a=lang&i=2"
		}
</script>

</head>
<body>
<div class="zpConFullScreen"><img src="{:$config['url']:}/inc/templates/frontend/default/images/mainbg.jpg" width="100%"/></div>
<div class="topHeader">
  <div id="header">
    <div id="logo"><a href="{:$config['url']:}/"><img src="{:$web['logo']:}" width="433" height="62" /></a></div>
 


    <div class="top_nav" id="menuNav">{:foreach channel::navigation() as $n:}<a href="{:$n['URL']:}">{:$n['title']:}
      <div class="navBg"{:if $n['title'] == 'HOME':} style="display:block;" id="navBgOn"{:/if:}></div>
      </a>{:/foreach:}</div>
  </div>
</div><script  src="{:$config['url']:}/inc/templates/frontend/default/script/swfobject_source.js" type=text/javascript></script>
<div id="homes"></div>

<script type=text/javascript>
   var s2 = new SWFObject("{:$config['url']:}/inc/templates/frontend/default/images/index_Ad.swf", "index_Ad", "980", "450", "8", "#000000");
   s2.addParam("wmode", "transparent");
   s2.addParam("AllowscriptAccess", "sameDomain");
   s2.write("homes");
  </script>	
<div id="homes1"><img src="{:$config['url']:}/inc/templates/frontend/default/images/index_img3.jpg" width="872" height="374" /><br /><p>   英皇国际形象策划机构于1994年在香港创立，拥有专业的国际礼仪师、服饰搭配师、形体仪态培训师、化妆造型师、发型设计师等团队，公司成立多年以来，秉承“美丽可视、文化可感”的时尚宗旨，在朱子慧的带领下致力于个人及企业的形象包装，礼仪培训，以及酒会活动策划执行。凭着其在香港时尚界崇高的地位及影响力，香港及内地众多外企金领、名流绅士、文人雅士等都成为英皇国际策划培训机构的尊贵会员。 英皇国际形象策划机构的会员遍布香港，美国，台湾，新加坡，中国内地等国家，其努力的成果得到客户的一致认同与赞许。</p></div>
{:include file='component_footer.tpl':}
</body>
</html>