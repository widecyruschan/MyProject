<?php /* Smarty version Smarty-3.0.9, created on 2014-04-13 00:10:12
         compiled from "/Library/WebServer/Documents/inc/templates/frontend/default/News.tpl" */ ?>
<?php /*%%SmartyHeaderCode:5156912175349656484b3e6-61653048%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '692321029a8e9e120589b412f82e9851d90a93eb' => 
    array (
      0 => '/Library/WebServer/Documents/inc/templates/frontend/default/News.tpl',
      1 => 1397318994,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '5156912175349656484b3e6-61653048',
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
  <?php $_template = new Smarty_Internal_Template('component_page_style.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
  <div class="newsL">
    <ul class="newsList">
<?php  $_smarty_tpl->tpl_vars['a'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;
 $_from = article::data(2,10,0,$_smarty_tpl->getVariable('mycms')->value['channel']['id']); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['a']->key => $_smarty_tpl->tpl_vars['a']->value){
 $_smarty_tpl->tpl_vars['i']->value = $_smarty_tpl->tpl_vars['a']->key;
?>
      <li>
        <div class="pic"  onclick="location.href='<?php echo $_smarty_tpl->tpl_vars['a']->value['URL'];?>
';"><img src="<?php echo $_smarty_tpl->tpl_vars['a']->value['picture'][0];?>
 " />
          <div class="picFc"></div>
        </div>
        <div class="txt">
          <h3><a href="<?php echo $_smarty_tpl->tpl_vars['a']->value['URL'];?>
"><?php echo $_smarty_tpl->tpl_vars['a']->value['title'];?>
</a></h3>
          <?php echo $_smarty_tpl->tpl_vars['a']->value['introduction'];?>
 </div>
        <div class="newsDate"><?php echo $_smarty_tpl->tpl_vars['a']->value['addtime'];?>
</div>
      </li>
<?php }} ?>

      

    </ul>
   <?php $_template = new Smarty_Internal_Template('component_page_style.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
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
<?php $_template = new Smarty_Internal_Template('component_footer.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>

</body>
</html>