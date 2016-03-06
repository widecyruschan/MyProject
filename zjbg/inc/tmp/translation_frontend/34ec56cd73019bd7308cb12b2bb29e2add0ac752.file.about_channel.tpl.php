<?php /* Smarty version Smarty-3.0.9, created on 2014-12-09 16:47:33
         compiled from "/Users/CyrusChan/Sites/zjbg/inc/templates/frontend/default/about_channel.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3985999155486b72542d497-95027030%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '34ec56cd73019bd7308cb12b2bb29e2add0ac752' => 
    array (
      0 => '/Users/CyrusChan/Sites/zjbg/inc/templates/frontend/default/about_channel.tpl',
      1 => 1417773679,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3985999155486b72542d497-95027030',
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
<link rel="stylesheet" type="text/css" href="/inc/templates/frontend/default/style/tg_sub.css" />
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

<div id="focusBar" > <a href="javascript:void(0)" class="arrL" onclick="prePage()">&nbsp;</a><a href="javascript:void(0)" class="arrR" onclick="nextPage()">&nbsp;</a><?php $_smarty_tpl->tpl_vars['i'] = new Smarty_variable(1, null, null);?>
  <ul class="mypng"><?php  $_smarty_tpl->tpl_vars['pic'] = new Smarty_Variable;
 $_from = photo::data(2,10,0,36); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['pic']->key => $_smarty_tpl->tpl_vars['pic']->value){
?>
    <li id="focusIndex<?php echo $_smarty_tpl->getVariable('i')->value;?>
">
      <div class="focusL"><a href="<?php echo $_smarty_tpl->tpl_vars['pic']->value['sourceurl'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['pic']->value['picture'][0];?>
" width="900" height="180" /></a></div>
      <div class="focusR"><a href="<?php echo $_smarty_tpl->tpl_vars['pic']->value['sourceurl'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['pic']->value['picture'][1];?>
" width="900" height="180" /></a></div>
      <?php $_smarty_tpl->tpl_vars['i'] = new Smarty_variable($_smarty_tpl->getVariable('i')->value+1, null, null);?>
    </li><?php }} ?>
  </ul>
</div>




<div class="frame_main">
		<div class="content_top"></div>
		<div class="content_common"><div class="content_menu"><div class="classify"><div class="left_title"><?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['titleEn'];?>
</div><?php if ($_smarty_tpl->getVariable('mycms')->value['channel']['UpChannelID']==0){?><?php $_smarty_tpl->tpl_vars['UpChannelIDs'] = new Smarty_variable($_smarty_tpl->getVariable('mycms')->value['channel']['id'], null, null);?>
        <?php }else{ ?><?php $_smarty_tpl->tpl_vars['UpChannelIDs'] = new Smarty_variable($_smarty_tpl->getVariable('mycms')->value['channel']['UpChannelID'], null, null);?><?php }?>
        <?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = channel::navigation($_smarty_tpl->getVariable('UpChannelIDs')->value); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?> <a href="<?php echo $_smarty_tpl->tpl_vars['n']->value['URL'];?>
" target="<?php echo $_smarty_tpl->tpl_vars['n']->value['target'];?>
" ><?php echo $_smarty_tpl->tpl_vars['n']->value['title'];?>
</a> 
        <?php  $_smarty_tpl->tpl_vars['s'] = new Smarty_Variable;
 $_from = channel::navigation($_smarty_tpl->tpl_vars['n']->value['id']); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['s']->key => $_smarty_tpl->tpl_vars['s']->value){
?><div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'"> <a href="<?php echo $_smarty_tpl->tpl_vars['s']->value['URL'];?>
" target="<?php echo $_smarty_tpl->tpl_vars['s']->value['target'];?>
"  >&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['s']->value['title'];?>
</a> 
        <div class="h3_cat">
<div class="shadow">
<div class="shadow_border">
<ul><?php  $_smarty_tpl->tpl_vars['k'] = new Smarty_Variable;
 $_from = channel::navigation($_smarty_tpl->tpl_vars['s']->value['id']); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['k']->key => $_smarty_tpl->tpl_vars['k']->value){
?>
<li><a href="<?php echo $_smarty_tpl->tpl_vars['k']->value['URL'];?>
" target="<?php echo $_smarty_tpl->tpl_vars['k']->value['target'];?>
"><?php echo $_smarty_tpl->tpl_vars['k']->value['title'];?>
</a></li> <?php }} ?> 
</ul>
</div>
</div>
</div></div>
        
        <?php }} ?> 
        
        <?php }} ?> </div></div><div class="titlebar">
			<ol class="title"><?php echo $_smarty_tpl->getVariable('a')->value['title'];?>
</ol>
			<ol class="location">&gt;
				<a href="./"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['home'];?>
</a> &gt;
			<?php echo $_smarty_tpl->getVariable('mycms')->value['channel_title'];?>
 &gt;<?php echo $_smarty_tpl->getVariable('a')->value['title'];?>

			</ol>
		</div><div class="Contents">
			<?php echo $_smarty_tpl->getVariable('a')->value['content'];?>
</div>	
		</div>
		<div class="content_bottom"></div>
		<?php if ($_smarty_tpl->getVariable('a')->value['page']>0){?><?php $_template = new Smarty_Internal_Template('component_page_style.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?><?php }?>
</div>
<script type="text/javascript" src="/inc/templates/frontend/default/script/sub.js"></script>
<?php $_template = new Smarty_Internal_Template('component_footer.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</body>
</html>