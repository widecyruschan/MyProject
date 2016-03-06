<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$a['title']:}</title>

<meta name="keywords" content="{:$a['keyword']:}" />
<meta name="description" content="{:$a['introduction']:}" />
<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link href="/inc/templates/frontend/default/style/tg_style.css" rel="stylesheet" type="text/css" />
<link href="/inc/templates/frontend/default/style/news.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="/inc/templates/frontend/default/script/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/inc/templates/frontend/default/script/scrolltopcontrol.js"></script>
<!--[if IE 6]>
<script src="/inc/templates/frontend/default/script/DD_belatedPNG_0.0.8a-min.js"></script>
<script>
DD_belatedPNG.fix('.zpBoxDiv,.zpBoxOn');
</script>
<![endif]-->
</head>
<body style="padding-top:40px;">
<div class="conHeaderTop">
  <div id="conHeader"><div class="fl"><a href="/article.php?pid=6" class="zpBt1"><span class="zpBt1On">&nbsp;</span>&nbsp;</a>
 {:if $a['data_prev']['title']:}<a href="{:$a['data_prev']['URL']:}" title="{:$a['data_prev']['title']:}" class="zpBtArrL"><span class="zpBtArrLOn">&nbsp;</span>&nbsp;</a>
  {:/if:}
  {:if $a['data_next']['title']:}<a href="{:$a['data_next']['URL']:}" title="{:$a['data_next']['title']:}" class="zpBtArrR"><span class="zpBtArrROn">&nbsp;</span>&nbsp;</a>{:/if:}
<a href="javascript:void(0)" class="zpBtNew"><span class="zpBtNewOn">&nbsp;</span>&nbsp;</a></div>
    <div class="fr"><a href="#" target="_blank" class="weiboSina">&nbsp;</a><a href="#" target="_blank" class="weiboQQ">&nbsp;</a></div>
    <span class="inline_block fr">分享到：</span> </div>
</div>
<div class="zpTopBar">
  <div class="zpTopList" id="zpTopListDiv"></div>
</div>
<div id="container"></div>
<!--wrapCon_1 begin 默认显示的数据-->
<div id="wrapConTl_1">
  <div class="wrapTl" style="background:{:$a['backgroudColour']:};{:if $a['picture'][4]:}background:url({:$a['picture'][4]:}) repeat center center{:/if:}">
    <div class="main" id="toppicDiv"><img src="{:$a['picture'][3]:}" /></div>
  </div>
  <div class="wrapTl" style="background:{:if $a['backgroudColour']:}{:$a['backgroudColour']:}{:else:}#d0d0d0{:/if:};">
  <div class="zpInfo">
  <div class="zpInfoL">
  <div class="tit">{:$a['title']:}</div>{:$a['introduction']:}</div>
  
  <div class="zpInfoR"><span>Category :</span>{:$a['channelEn']:}<br />
   <span>Time :</span>{:$a['addtime']:}<br />
  </div>
  
  </div>
  <div class="main" style="padding-bottom:40px;" id="conpicDiv"><p>{:$a['content']:}</p></div>
  </div>
</div>
<div id="zpTopListCon" style="display:none">
{:foreach article::data(0,4,0,6) as $a:}
    <div class="zpBoxDiv">
      <div class="zpBoxOn"></div>
      <a href="{:$a['URL']:}"><img src="{:$a['picture'][0]:}" width="213" height="128"/></a></div>
    <span class="fg"></span>
{:/foreach:}  </div>
{:include file='component_footer.tpl':}
</body>
</html>
<script language="JavaScript" type="text/javascript">
$(function() {
	/*
	$(".wrapTl").each(function(){
		var bgStyleCon = $(this).attr('bgStyleCon');
		if(bgStyleCon) {
			 if(bgStyleCon.indexOf('#') == 0) {
				 $(this).attr('style','background:'+bgStyleCon);
			 } else {
				 $(this).attr('style','background:url('+bgStyleCon+') repeat center center');
			 }
		}
	});
	*/
	$("#zpTopListDiv").html($("#zpTopListCon").html());
});
$(".zpBoxDiv").live('mouseenter',function(){
	$(this).children().stop(false,true);
	$(this).children(".zpBoxOn").fadeIn("fast");
}).live('mouseleave',function(){
	$(this).children().stop(false,true);
	$(this).children(".zpBoxOn").fadeOut("fast");
});


//--------
var zpBtClick=0;
//$("#conHeader a").click(
//   function() {
//	  $("#conHeader span").css("display","none");
//	  $(this).children().css("display","block");
//	  $("#conHeader span").removeAttr("title");
//	  $(this).children().attr("title","navBgOn");
//	  zpBtClick = 1;
//	  	   }) 


$("#conHeader .fl a").hover(
  function () {
	  $(this).children().stop(false,true);
	  $(this).children().fadeIn("normal");  
  }, function () {
	  var navBgStatus=($(this).children().attr("title"))
	  //alert (navBgStatus)
	  if (zpBtClick != 1 && navBgStatus != "navBgOn"){
		  $(this).children().stop(false,true);
		  $(this).children().fadeOut("normal");
	  } else {
	  	zpBtClick=0; 
	  }
});

$(".zpBtNew").toggle( function(){
		$(".zpTopBar").slideDown("slow");
		$(".zpBoxDiv").slideDown("slow");
		$(this).children().toggleClass(".zpBtNewOn");
		zpBtClick = 1;
	},function(){
		$(".zpTopBar").slideUp("slow");
		$(".zpBoxDiv").slideUp("slow");
		$(this).children().toggleClass(".zpBtNewOn");
});

</script>