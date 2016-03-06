<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>{:$a['title']:}</title>
<meta name="keywords" content="{:$a['keyword']:}" />
<meta name="description" content="{:$a['introduction']:}" />
<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link href="{:$web['path']:}style/tg_style.css" rel="stylesheet" type="text/css" />
<link href="{:$web['path']:}style/news.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="{:$web['path']:}script/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="{:$web['path']:}script/scrolltopcontrol.js"></script>
</head>
<body style="padding-top:80px;">
<div class="conHeaderTop">
  <div id="conHeader">
    <div class="fr">    <a href="#" target="_blank" class="weiboSina">&nbsp;</a><a href="#" target="_blank" class="weiboQQ">&nbsp;</a></div>
    <span class="inline_block fr">分享到：</span>
    <div class="fl"><a href="/article.php?pid=25" class="listBt"><span class="listBtOn">&nbsp;</span></a><a href="/" class="homeBt"><span class="homeBtOn">&nbsp;</span></a></div>
  </div>
</div>
<div class="main">
  <div class="newsL">
    <div class="newsConTit">
      <div class="pic"><img src="{:$a['picture'][0]:}" /></div>
      <h1>{:$a['title']:}</h1>
      <div class="newsDate">{:$a['addtime']:}</div>
    </div>
    <div class="newsContent"><p>{:$a['content']:}</p></div>
    <div class="tc"><a href="/article.php?pid=25" class="moreBt">&nbsp;</a><a href="/" class="gobackBt">&nbsp;</a></div>
<div class="hr30"></div>
  </div>
  <div class="newsR">
        <ul class="sideMenu">
      <li><a href="/article.php?pid=25" id="class_16">全部 <span id="classcount_16"></span></a></li>
      <li><a href="/article.php?pid=26" id="class_21">双晖动态 <span id="classcount_21"></span></a></li>
      <li><a href="/article.php?pid=27" id="class_17">案例更新 <span id="classcount_17"></span></a></li>
    </ul>
    <div class="sideInfo"><a href="/#Contact" class="sendBt">&nbsp;</a></div>

<script language="JavaScript" type="text/javascript">
$(function() {
	$.ajax({url: "/e/ajax/Clas"+"sCou"+"nt.php",type: "get",
		error:function(){},
		success:function(data){
				var result = eval('('+data+')');
				if(result.success) {
					for(var x in result.info) {
					   $('#classcount_'+x).html('('+result.info[x]+')');
					}
				}
			}
	});
	$('a[id^=class_]').removeAttr('class');
	$('#class_21').attr("class", "menuOn");
});
</script>
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
	$('a[id^=class_]').removeAttr('class');
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

$(".sideMenu li").click(
function() {
	$(".sideMenu a").removeClass();
	$(this).find("a").addClass("menuOn");
	}						
						);
</script>
</body>
</html>