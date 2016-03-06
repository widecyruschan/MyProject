<?php /* Smarty version Smarty-3.0.9, created on 2014-06-03 10:01:33
         compiled from "/Library/WebServer/Documents/tf/inc/templates/frontend/default/component_header.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1518958961538d2c7dc19be4-73806068%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c8cd36cf7c1c0acbd67696cad3c193497e116226' => 
    array (
      0 => '/Library/WebServer/Documents/tf/inc/templates/frontend/default/component_header.tpl',
      1 => 1400379108,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1518958961538d2c7dc19be4-73806068',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div class="subFullScreen"></div>
<div class="topHeader">
  <div id="header">
    <div class="top_nav" id="menuNav"><?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;
 $_from = channel::navigation(); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
 $_smarty_tpl->tpl_vars['i']->value = $_smarty_tpl->tpl_vars['n']->key;
?><a <?php if ($_smarty_tpl->tpl_vars['i']->value==3){?>style="margin-left: 165px;"<?php }?> href="<?php echo $_smarty_tpl->tpl_vars['n']->value['URL'];?>
"><?php echo $_smarty_tpl->tpl_vars['n']->value['title'];?>

      </a><?php }} ?></div>
  </div>
</div>
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