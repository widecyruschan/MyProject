<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$mycms['channel']['seotitle']:}</title>

<meta name="keywords" content="{:$mycms['channel']['seokey']:}" />
<meta name="description" content="{:$mycms['channel']['seodescr']:}" />
<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link href="{:$web['path']:}style/tg_style.css" rel="stylesheet" type="text/css" />
<link href="{:$web['path']:}style/news.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="{:$web['path']:}script/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="{:$web['path']:}script/scrolltopcontrol.js"></script>
</head>
<body>
<div class="topHeader">
  <div id="header">
    <div id="logo"><a href="/"><img src="{:$web['logo']:}" width="220" height="62" /></a></div>
        <a href="javascript:void(0);" class="searchBt">&nbsp;</a>
    <div class="searchInput">
<form action='/TG/search/index.php' method="post" name="search_news" id="search_news">
<a href="javascript:void(0);" onclick="$('#search_news').submit();return false;" class="searchSubmitBt">&nbsp;</a>
<input type="hidden" name="classid" value="16" />
<input type="hidden" name="show" value="title,smalltext,newstext" />
<input name="keyboard" type="text" id="keyboard" size="42" />
<input type="hidden" name="Submit22" class="searchSubmitBt" value="搜索" />
</form>
    </div>

<script type="text/javascript">
$(function() {
	$(".searchBt").toggle(
	  function () {
		  $(".searchInput").slideDown("fast");
		$(this).addClass("searchOn");
                    $('body').one('click', function() {    //给BODY绑定一次性点击事件   
		        if($(".searchBt").hasClass("searchOn"))$(".searchBt").trigger("click");
                    });
	  },
	  function () {
		 $(".searchInput").slideUp("fast");
		$(this).removeClass("searchOn");
	  }
	);
        $(".searchInput input").click(function() {     //点击显示部分不隐藏   
                return false;   
       });
});
</script>
    <div class="top_nav" id="menuNav">{:foreach channel::navigation() as $n:}<a href="/#{:$n['titleEn']:}">{:$n['title']:}
      <div class="navBg"></div>
      </a>{:/foreach:}</div>
  </div>
</div>
<div class="colTitBar" id="Portfolio">
  <h2 class="tit5" title="News"></h2>
</div>
<div class="main">
  {:include file='component_page_style.tpl':}
  <div class="newsL">
    <ul class="newsList">
{:foreach article::data(0,10,0,$mycms['channel']['id']) as $i => $a:}
      <li>
        <div class="pic"  onclick="location.href='{:$a['URL']:}';"><img src="{:$a['picture'][0]:} " />
          <div class="picFc"></div>
        </div>
        <div class="txt">
          <h3><a href="{:$a['URL']:}">{:$a['title']:}</a></h3>
          {:$a['introduction']:} </div>
        <div class="newsDate">{:$a['addtime']:}</div>
      </li>
{:/foreach:}

      

    </ul>
   {:include file='component_page_style.tpl':}
  </div>
  <div class="newsR">
      <ul class="sideMenu">
      <li><a href="/article.php?pid=25" id="class_16">全部 <span id="classcount_16"></span></a></li>
      <li><a href="/article.php?pid=26" id="class_21">双晖动态 <span id="classcount_21"></span></a></li>
      <li><a href="/article.php?pid=27" id="class_17">案例更新 <span id="classcount_17"></span></a></li>
    </ul>
    <div class="sideInfo"><a href="/#Contact" class="sendBt">&nbsp;</a></div>

  </div>
  <div class="cl"></div>
</div>
{:include file='component_footer.tpl':}
<script type="text/javascript">
$(function() {
	$('.newsDate').each(function(){
		var dtStr = $(this).text();
		var dt = dtStr.split('-');
		$(this).html('<span class="d1">'+dt[0]+'</span><span class="d2">'+dt[1].toUpperCase()+'<br />'+dt[2]+'</span>');
		});
});
//NAV	   
var xOnclick=0;
//$(".Nav a").click(
//   function() {
//	  $(".navBg").css("display","none");
//	  $(this).children().css("display","block");
//	  $(".navBg").removeAttr("title");
//	  $(this).children().attr("title","navBgOn");
//	  xOnclick = 1;
//	   }) 

$(".top_nav a").hover(
  function () {
  $(this).children().stop(false,true);
  $(this).children().fadeIn("normal");  
  },
  function () {
  var navBgStatus=($(this).children().attr("title"))
  //alert (navBgStatus)
	if (xOnclick != 1 && navBgStatus != "navBgOn"){
 $(this).children().stop(false,true);
 $(this).children().fadeOut("normal");
 }
 else 
  {
	  xOnclick=0; 
	  }
});

$(".pic").hover (
function () {
	$(this).children().stop(false,true);
	$(this).children(".picFc").fadeTo("normal",0.8);
	},
function () {
	$(this).children().stop(false,true);
	$(this).children(".picFc").fadeTo("normal",0);
	}
				 );

$(".sideMenu li").click(
function() {
	$(".sideMenu a").removeClass();
	$(this).find("a").addClass("menuOn");
	}						
						);

</script>
</body>
</html>