<?php /* Smarty version Smarty-3.0.9, created on 2014-12-10 16:52:23
         compiled from "E:/website/tf/inc/templates/frontend/default/component_page_style.tpl" */ ?>
<?php /*%%SmartyHeaderCode:30903548809c73cd3d4-54870669%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4fcebc4adc5b341a4650cce825192008f03eb0de' => 
    array (
      0 => 'E:/website/tf/inc/templates/frontend/default/component_page_style.tpl',
      1 => 1418117198,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '30903548809c73cd3d4-54870669',
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
	
