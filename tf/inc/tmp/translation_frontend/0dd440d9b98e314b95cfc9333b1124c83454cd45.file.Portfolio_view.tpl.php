<?php /* Smarty version Smarty-3.0.9, created on 2014-04-12 21:47:45
         compiled from "/Library/WebServer/Documents/inc/templates/frontend/default/Portfolio_view.tpl" */ ?>
<?php /*%%SmartyHeaderCode:132465416753494401a22a14-42949560%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0dd440d9b98e314b95cfc9333b1124c83454cd45' => 
    array (
      0 => '/Library/WebServer/Documents/inc/templates/frontend/default/Portfolio_view.tpl',
      1 => 1390792494,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '132465416753494401a22a14-42949560',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $_smarty_tpl->getVariable('a')->value['title'];?>
</title>

<meta name="keywords" content="<?php echo $_smarty_tpl->getVariable('a')->value['keyword'];?>
" />
<meta name="description" content="<?php echo $_smarty_tpl->getVariable('a')->value['introduction'];?>
" />
<meta name="copyright" content="2009-2011 MYCMS <?php echo $_smarty_tpl->getVariable('mycms')->value['version'];?>
" />
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
  <div id="conHeader"><div class="fl"><a href="/#Portfolios" class="zpBt1"><span class="zpBt1On">&nbsp;</span>&nbsp;</a>
 <?php if ($_smarty_tpl->getVariable('a')->value['data_prev']['title']){?><a href="<?php echo $_smarty_tpl->getVariable('a')->value['data_prev']['URL'];?>
" title="<?php echo $_smarty_tpl->getVariable('a')->value['data_prev']['title'];?>
" class="zpBtArrL"><span class="zpBtArrLOn">&nbsp;</span>&nbsp;</a>
  <?php }?>
  <?php if ($_smarty_tpl->getVariable('a')->value['data_next']['title']){?><a href="<?php echo $_smarty_tpl->getVariable('a')->value['data_next']['URL'];?>
" title="<?php echo $_smarty_tpl->getVariable('a')->value['data_next']['title'];?>
" class="zpBtArrR"><span class="zpBtArrROn">&nbsp;</span>&nbsp;</a><?php }?>
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
  <div class="wrapTl" style="background:<?php echo $_smarty_tpl->getVariable('a')->value['backgroudColour'];?>
;<?php if ($_smarty_tpl->getVariable('a')->value['picture'][4]){?>background:url(<?php echo $_smarty_tpl->getVariable('a')->value['picture'][4];?>
) repeat center center<?php }?>">
    <div class="main" id="toppicDiv"><img src="<?php echo $_smarty_tpl->getVariable('a')->value['picture'][3];?>
" /></div>
  </div>
  <div class="wrapTl" style="background:<?php if ($_smarty_tpl->getVariable('a')->value['backgroudColour']){?><?php echo $_smarty_tpl->getVariable('a')->value['backgroudColour'];?>
<?php }else{ ?>#d0d0d0<?php }?>;">
  <div class="zpInfo">
  <div class="zpInfoL">
  <div class="tit"><?php echo $_smarty_tpl->getVariable('a')->value['title'];?>
</div><?php echo $_smarty_tpl->getVariable('a')->value['introduction'];?>
</div>
  
  <div class="zpInfoR"><span>Category :</span><?php echo $_smarty_tpl->getVariable('a')->value['channelEn'];?>
<br />
   <span>Time :</span><?php echo $_smarty_tpl->getVariable('a')->value['addtime'];?>
<br />
    <span>Client :</span> <?php echo $_smarty_tpl->getVariable('a')->value['fieldsinfo_Client'];?>
</div>
  
  </div>
  <div class="main" style="padding-bottom:40px;" id="conpicDiv"><p><?php echo $_smarty_tpl->getVariable('a')->value['content'];?>
</p></div>
  </div>
</div>
<div id="zpTopListCon" style="display:none">
<?php  $_smarty_tpl->tpl_vars['a'] = new Smarty_Variable;
 $_from = article::data(9,4,0,2); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['a']->key => $_smarty_tpl->tpl_vars['a']->value){
?>
    <div class="zpBoxDiv">
      <div class="zpBoxOn"></div>
      <a href="<?php echo $_smarty_tpl->tpl_vars['a']->value['URL'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['a']->value['picture'][0];?>
" width="213" height="128"/></a></div>
    <span class="fg"></span>
<?php }} ?>  </div>
<?php $_template = new Smarty_Internal_Template('component_footer.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
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