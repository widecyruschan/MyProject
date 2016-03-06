{:$a = array_shift(article::data(2,1,0,$mycms['channel']['id'])):}
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$a['title']:}</title>
<meta name="keywords" content="{:$mycms['channel']['seokey']:}" />
<meta name="description" content="{:$mycms['channel']['seodescr']:}" />
<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link href="/inc/templates/frontend/default/style/style.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="{:$web['path']:}script/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="{:$web['path']:}script/scrolltopcontrol.js"></script>
</head>
<body>
{:include file='component_header.tpl':}

<div class="main">
  <div class="newsL">
    <div class="newsConTit">
      <div class="newsDate">{:$a['addtime']:}</div>
    </div>
    <div class="newsContent"><p>{:$a['content']:}</p></div>
    <div class="tc"><a href="/article.php?pid=25" class="moreBt">&nbsp;</a><a href="/" class="gobackBt">&nbsp;</a></div>
<div class="hr30"></div>
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