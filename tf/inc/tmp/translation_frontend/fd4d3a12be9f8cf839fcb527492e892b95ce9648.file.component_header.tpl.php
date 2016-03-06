<?php /* Smarty version Smarty-3.0.9, created on 2014-12-10 10:11:50
         compiled from "E:/website/tf/inc/templates/frontend/default/component_header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:186345487abe675fc10-08313452%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fd4d3a12be9f8cf839fcb527492e892b95ce9648' => 
    array (
      0 => 'E:/website/tf/inc/templates/frontend/default/component_header.tpl',
      1 => 1418117198,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '186345487abe675fc10-08313452',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div class="subFullScreen"></div>
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