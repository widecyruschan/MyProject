<?php /* Smarty version Smarty-3.0.9, created on 2014-04-10 20:42:54
         compiled from "/Library/WebServer/Documents/inc/templates/frontend/default/component_page_style.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1787676225534691ce7a83b6-13395429%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'deaae027ad74fd635a3f4c3b05e9b4e9539a3e24' => 
    array (
      0 => '/Library/WebServer/Documents/inc/templates/frontend/default/component_page_style.tpl',
      1 => 1390787863,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1787676225534691ce7a83b6-13395429',
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
	
