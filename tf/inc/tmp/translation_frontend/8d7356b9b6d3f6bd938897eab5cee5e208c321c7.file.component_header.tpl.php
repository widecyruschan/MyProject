<?php /* Smarty version Smarty-3.0.9, created on 2014-04-12 22:57:28
         compiled from "/Library/WebServer/Documents/inc/templates/frontend/default/component_header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:11068086405349545851d072-93656498%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '8d7356b9b6d3f6bd938897eab5cee5e208c321c7' => 
    array (
      0 => '/Library/WebServer/Documents/inc/templates/frontend/default/component_header.tpl',
      1 => 1397314639,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '11068086405349545851d072-93656498',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>

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
