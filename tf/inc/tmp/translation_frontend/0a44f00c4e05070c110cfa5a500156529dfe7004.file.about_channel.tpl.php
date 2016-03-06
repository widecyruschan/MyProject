<?php /* Smarty version Smarty-3.0.9, created on 2014-04-12 21:42:51
         compiled from "/Library/WebServer/Documents/inc/templates/frontend/default/about_channel.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2051598232534942db965323-16909327%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0a44f00c4e05070c110cfa5a500156529dfe7004' => 
    array (
      0 => '/Library/WebServer/Documents/inc/templates/frontend/default/about_channel.tpl',
      1 => 1397310168,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2051598232534942db965323-16909327',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php $_smarty_tpl->tpl_vars['a'] = new Smarty_variable(array_shift(article::data(2,1,0,$_smarty_tpl->getVariable('mycms')->value['channel']['id'])), null, null);?>
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
<div class="zpConFullScreen"><img src="/inc/templates/frontend/default/images/mainbg.jpg" width="100%"/></div>
<div class="topHeader">
  <div id="header">
    <div id="logo"><a href="/"><img src="<?php echo $_smarty_tpl->getVariable('web')->value['logo'];?>
" width="433" height="62" /></a></div>
    <div class="top_nav" id="menuNav"><?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = channel::navigation(); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?><a href="<?php echo $_smarty_tpl->tpl_vars['n']->value['URL'];?>
"><?php echo $_smarty_tpl->tpl_vars['n']->value['title'];?>

      <div class="navBg"></div>
      </a><?php }} ?></div>
  </div>
</div>
	<div class="frame_main">
		
		<div class="content_common">
			<?php if ($_smarty_tpl->getVariable('a')->value['page']>0){?><?php if (!isset($_smarty_tpl->tpl_vars['a']) || !is_array($_smarty_tpl->tpl_vars['a']->value)) $_smarty_tpl->createLocalArrayVariable('a', null, null);
$_smarty_tpl->tpl_vars['a']->value['content'] = misc::content_page($_smarty_tpl->getVariable('a')->value['content'],$_smarty_tpl->getVariable('a')->value['page'],$_smarty_tpl->getVariable('a')->value['id']);?><?php }?>
			<?php echo $_smarty_tpl->getVariable('a')->value['content'];?>
		
		</div>
		
		<?php if ($_smarty_tpl->getVariable('a')->value['page']>0){?><?php $_template = new Smarty_Internal_Template('component_page_style.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?><?php }?>
	</div>
</div>
<?php $_template = new Smarty_Internal_Template('component_footer.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</body>
</html>