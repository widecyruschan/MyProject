<?php /* Smarty version Smarty-3.0.9, created on 2015-06-13 23:26:46
         compiled from "/Users/CyrusChan/Sites/dmcc/inc/templates/frontend/default/Portfolio.tpl" */ ?>
<?php /*%%SmartyHeaderCode:749587280557c4bb660a2f0-49156398%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'dacc29b315fa3d03475447a686637bbc6a5b83dd' => 
    array (
      0 => '/Users/CyrusChan/Sites/dmcc/inc/templates/frontend/default/Portfolio.tpl',
      1 => 1401765593,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '749587280557c4bb660a2f0-49156398',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['seotitle'];?>
</title>

<meta name="keywords" content="<?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['seokey'];?>
" />
<meta name="description" content="<?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['seodescr'];?>
" />
<meta name="copyright" content="2009-2011 MYCMS <?php echo $_smarty_tpl->getVariable('mycms')->value['version'];?>
" />
<link href="/inc/templates/frontend/default/style/tg_style.css" rel="stylesheet" type="text/css" />
<link href="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
style/news.css" rel="stylesheet" type="text/css" />
<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
script/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
script/scrolltopcontrol.js"></script>
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
  <div class="appTit"><?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['seodescr'];?>
</div>
  <div class="appRemark"><?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['seokey'];?>
</div>
	<?php  $_smarty_tpl->tpl_vars['a'] = new Smarty_Variable;
 $_from = article::data(1,5,0,$_smarty_tpl->getVariable('mycms')->value['channel']['id'],1,0,0,0,0,1); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['a']->key => $_smarty_tpl->tpl_vars['a']->value){
?>
  <div class="appBox"><a href="<?php echo $_smarty_tpl->tpl_vars['a']->value['URL'];?>
" target="_blank"><img src="<?php echo $_smarty_tpl->tpl_vars['a']->value['picture'][2];?>
" width="1000" /></a>
    <div class="appBoxTxt">
      <div class="pic"><img src="<?php echo $_smarty_tpl->tpl_vars['a']->value['picture'][1];?>
" width="92" height="92" /></div>
      <div class="txt"><span class="tit black"><?php echo $_smarty_tpl->tpl_vars['a']->value['title'];?>
</span><?php echo $_smarty_tpl->tpl_vars['a']->value['introduction'];?>
</div>
      <div class="newsDate"><?php echo $_smarty_tpl->tpl_vars['a']->value['addtime'];?>
</div>
    </div>
  </div>
  <?php }} ?>
	
  

  

  <div class="hr30"></div>
</div>
<?php $_template = new Smarty_Internal_Template('component_footer.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
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