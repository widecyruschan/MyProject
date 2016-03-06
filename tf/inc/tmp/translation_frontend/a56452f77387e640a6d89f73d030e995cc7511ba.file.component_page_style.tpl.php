<?php /* Smarty version Smarty-3.0.9, created on 2015-01-16 15:36:06
         compiled from "/Users/CyrusChan/Sites/tf/inc/templates/frontend/default/component_page_style.tpl" */ ?>
<?php /*%%SmartyHeaderCode:53028279654b8bf66f1d1a3-11784358%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a56452f77387e640a6d89f73d030e995cc7511ba' => 
    array (
      0 => '/Users/CyrusChan/Sites/tf/inc/templates/frontend/default/component_page_style.tpl',
      1 => 1402295309,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '53028279654b8bf66f1d1a3-11784358',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div class="pages"><?php if ($_smarty_tpl->getVariable('page_data')->value['total_page']>1){?>

	<?php if ($_smarty_tpl->getVariable('page_data')->value['page']>1){?>
	<a class="page" href="<?php echo $_smarty_tpl->getVariable('page_data')->value['first_url'];?>
"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['first'];?>
</a>
	<?php }else{ ?>
	<a class="page"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['first'];?>
</a>
	<?php }?>
	<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('page_data')->value['number']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
 $_smarty_tpl->tpl_vars['i']->value = $_smarty_tpl->tpl_vars['n']->key;
?>
		<?php if ($_smarty_tpl->tpl_vars['i']->value!=$_smarty_tpl->getVariable('page_data')->value['page']){?><a href="<?php echo $_smarty_tpl->tpl_vars['n']->value;?>
" class="page"><?php echo $_smarty_tpl->tpl_vars['i']->value;?>
</a>
		<?php }else{ ?><a  class="page"><?php echo $_smarty_tpl->tpl_vars['i']->value;?>
</a><?php }?>
	<?php }} ?>	
	<?php if ($_smarty_tpl->getVariable('page_data')->value['page']<$_smarty_tpl->getVariable('page_data')->value['total_page']){?>
	<a href="<?php echo $_smarty_tpl->getVariable('page_data')->value['next_url'];?>
" class="page"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['next'];?>
</a>
	<?php }else{ ?>
	<a class="page"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['next'];?>
</a>
	<?php }?><?php }?>
</div>
	
