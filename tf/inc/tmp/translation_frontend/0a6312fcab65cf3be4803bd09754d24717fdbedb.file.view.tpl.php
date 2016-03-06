<?php /* Smarty version Smarty-3.0.9, created on 2014-04-13 00:13:16
         compiled from "/Library/WebServer/Documents/inc/templates/frontend/default/view.tpl" */ ?>
<?php /*%%SmartyHeaderCode:14928183025349661cb06805-67657568%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0a6312fcab65cf3be4803bd09754d24717fdbedb' => 
    array (
      0 => '/Library/WebServer/Documents/inc/templates/frontend/default/view.tpl',
      1 => 1397319009,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '14928183025349661cb06805-67657568',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $_smarty_tpl->getVariable('web')->value['title'];?>
</title>
<meta name="keywords" content="<?php echo $_smarty_tpl->getVariable('web')->value['keyword'];?>
" />
<meta name="description" content="<?php echo $_smarty_tpl->getVariable('web')->value['description'];?>
" />
<meta name="copyright" content="2009-2011 MYCMS <?php echo $_smarty_tpl->getVariable('mycms')->value['version'];?>
" />
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
<?php $_template = new Smarty_Internal_Template('component_header.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
<div class="main">
  <div class="newsL">
    <div class="newsConTit">
      <div class="pic"><img src="<?php echo $_smarty_tpl->getVariable('a')->value['picture'][0];?>
" /></div>
      <h1><?php echo $_smarty_tpl->getVariable('a')->value['title'];?>
</h1>
      <div class="newsDate"><?php echo $_smarty_tpl->getVariable('a')->value['addtime'];?>
</div>
    </div>
    <div class="newsContent"><p><?php echo $_smarty_tpl->getVariable('a')->value['content'];?>
</p></div>
    <div class="tc"><a href="/article.php?pid=25" class="moreBt">&nbsp;</a><a href="/" class="gobackBt">&nbsp;</a></div>
<div class="hr30"></div>
  </div>
  <div class="newsR">
        <ul class="sideMenu">
      <li><a href="/article.php?pid=6" id="class_16">全部项目 <span id="classcount_16"></span></a></li>
      <li><a href="/article.php?pid=33" id="class_21">形象礼仪系列课程 <span id="classcount_21"></span></a></li>
      <li><a href="/article.php?pid=34" id="class_17">贵格订制系列课程 <span id="classcount_17"></span></a></li>
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
<?php $_template = new Smarty_Internal_Template('component_footer.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
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