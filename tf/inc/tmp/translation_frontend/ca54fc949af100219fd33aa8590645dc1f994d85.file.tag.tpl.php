<?php /* Smarty version Smarty-3.0.9, created on 2015-01-21 16:56:40
         compiled from "E:/website/tf/inc/templates/frontend/default/tag.tpl" */ ?>
<?php /*%%SmartyHeaderCode:3267354bf69c8926ae6-96919638%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ca54fc949af100219fd33aa8590645dc1f994d85' => 
    array (
      0 => 'E:/website/tf/inc/templates/frontend/default/tag.tpl',
      1 => 1418117449,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '3267354bf69c8926ae6-96919638',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $_smarty_tpl->getVariable('lang')->value['page']['title'];?>
</title>

<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
style/misc.css" />
<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
style/language_<?php echo $_smarty_tpl->getVariable('web')->value['lang'];?>
.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
</head>
<body>
<?php $_template = new Smarty_Internal_Template('component_header.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
<div class="box">
	<?php  $_smarty_tpl->tpl_vars['m'] = new Smarty_Variable;
 $_from = module::get_module(1); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['m']->key => $_smarty_tpl->tpl_vars['m']->value){
?>
	<div class="m_tag">
		<ol class="m_title"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['type'][$_smarty_tpl->tpl_vars['m']->value['modcode']];?>
</ol>
		<ol class="m_list">
		<?php  $_smarty_tpl->tpl_vars['t'] = new Smarty_Variable;
 $_from = tag::data(0,$_smarty_tpl->tpl_vars['m']->value['modcode']); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['t']->key => $_smarty_tpl->tpl_vars['t']->value){
?>
		<a href="<?php echo $_smarty_tpl->tpl_vars['t']->value['URL'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['t']->value['title'];?>
</a>&nbsp;&nbsp;
		<?php }} ?>
		</ol>
	</div>
	<?php }} ?>
</div>
<?php $_template = new Smarty_Internal_Template('component_footer.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</body>
</html>