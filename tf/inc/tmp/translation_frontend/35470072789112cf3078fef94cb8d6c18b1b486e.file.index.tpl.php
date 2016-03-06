<?php /* Smarty version Smarty-3.0.9, created on 2015-10-15 13:08:57
         compiled from "/Users/cyrus/Sites/tf/inc/templates/frontend/default/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:521223979561f34e98cbc98-12913882%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '35470072789112cf3078fef94cb8d6c18b1b486e' => 
    array (
      0 => '/Users/cyrus/Sites/tf/inc/templates/frontend/default/index.tpl',
      1 => 1421395260,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '521223979561f34e98cbc98-12913882',
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
<div class="zpConFullScreen"></div>
<div class="topHeader">
  <div id="header">
    <ul class="top_nav" id="nav"><?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;
 $_from = channel::navigation(); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
 $_smarty_tpl->tpl_vars['i']->value = $_smarty_tpl->tpl_vars['n']->key;
?><li class="current_page_item" <?php if ($_smarty_tpl->tpl_vars['i']->value==3){?>style="margin-left: 165px;"<?php }?>><a href="<?php echo $_smarty_tpl->tpl_vars['n']->value['URL'];?>
"><?php echo $_smarty_tpl->tpl_vars['n']->value['title'];?>

      </a><ul class="children"> <?php  $_smarty_tpl->tpl_vars['s'] = new Smarty_Variable;
 $_from = channel::navigation($_smarty_tpl->tpl_vars['n']->value['id']); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['s']->key => $_smarty_tpl->tpl_vars['s']->value){
?><li class="page_item"><a href="<?php echo $_smarty_tpl->tpl_vars['s']->value['URL'];?>
" target="<?php echo $_smarty_tpl->tpl_vars['s']->value['target'];?>
"  ><?php echo $_smarty_tpl->tpl_vars['s']->value['title'];?>
</a><ul class="children"> <?php  $_smarty_tpl->tpl_vars['a'] = new Smarty_Variable;
 $_from = channel::navigation($_smarty_tpl->tpl_vars['s']->value['id']); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['a']->key => $_smarty_tpl->tpl_vars['a']->value){
?><li class="page_item"><a href="<?php echo $_smarty_tpl->tpl_vars['a']->value['URL'];?>
" target="<?php echo $_smarty_tpl->tpl_vars['a']->value['target'];?>
"  ><?php echo $_smarty_tpl->tpl_vars['a']->value['title'];?>
</a></li><?php }} ?></ul></li><?php }} ?></ul></li><?php }} ?></ul>
      
      
  </div>
</div>
<div id="focusBar" > <a href="javascript:void(0)" class="arrL" onclick="prePage()">&nbsp;</a><a href="javascript:void(0)" class="arrR" onclick="nextPage()">&nbsp;</a><?php $_smarty_tpl->tpl_vars['i'] = new Smarty_variable(1, null, null);?>
  <ul class="mypng"><?php  $_smarty_tpl->tpl_vars['pic'] = new Smarty_Variable;
 $_from = photo::data(2,10,0,35); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['pic']->key => $_smarty_tpl->tpl_vars['pic']->value){
?>
    <li id="focusIndex<?php echo $_smarty_tpl->getVariable('i')->value;?>
">
      <div class="focusL"><a href="<?php echo $_smarty_tpl->tpl_vars['pic']->value['sourceurl'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['pic']->value['picture'][0];?>
" width="900" height="350" /></a></div>
      <div class="focusR"><a href="<?php echo $_smarty_tpl->tpl_vars['pic']->value['sourceurl'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['pic']->value['picture'][1];?>
" width="900" height="350" /></a></div>
      <?php $_smarty_tpl->tpl_vars['i'] = new Smarty_variable($_smarty_tpl->getVariable('i')->value+1, null, null);?>
    </li><?php }} ?>
  </ul>
</div>

<div class="indexprolist"><div class="indelist"><div class="box" id="flash1"><div class="listtitle" id="til1"></div>
  <div class="indexsub" id="scrollDiv">
  <ul><?php  $_smarty_tpl->tpl_vars['a'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;
 $_from = article::data(0,10,0,25); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['a']->key => $_smarty_tpl->tpl_vars['a']->value){
 $_smarty_tpl->tpl_vars['i']->value = $_smarty_tpl->tpl_vars['a']->key;
?>
    <li><?php echo $_smarty_tpl->tpl_vars['a']->value['title'];?>
</li><?php }} ?>
  </ul>
</div>
</div><div class="box" id="flash2"><div class="listtitle" id="til2"></div>
  <img src="/inc/templates/frontend/default/images/index_img2.jpg" width="294">
</div><div class="box" id="flash3"><div class="listtitle" id="til3"></div>
  <div class="indexsub">电话：020-37304859<br />
    邮箱：teamfront@163.com <br />
    地址：广州市天河区珠江新城华强路2号富力盈丰大厦1635室 </div>
</div></div></div><script type="text/javascript" src="/inc/templates/frontend/default/script/index.js"></script>
<?php $_template = new Smarty_Internal_Template('component_footer.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>




</body>
</html>