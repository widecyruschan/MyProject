<?php /* Smarty version Smarty-3.0.9, created on 2013-07-28 16:59:40
         compiled from "E:/wwwroot/dmcc/inc/templates/manage/component_menu.dwt" */ ?>
<?php /*%%SmartyHeaderCode:222351f4dd7ccbb0e9-62369323%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2ff3cff9c88688db0b853fa76da40a5737940d18' => 
    array (
      0 => 'E:/wwwroot/dmcc/inc/templates/manage/component_menu.dwt',
      1 => 1374981395,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '222351f4dd7ccbb0e9-62369323',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<div id="frame_side">
	<div class="welcome"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['welcome'];?>
<a href="admin_password.php" class="left_url"><?php echo $_smarty_tpl->getVariable('mycms')->value['session']['admin']['login']['username'];?>
</a> , <a target="_blank" href="../?<?php echo time();?>
" class="left_url"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['front'];?>
</a> | <a href="login.php?action=logout" class="left_url"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['exit'];?>
</a></div>
	<div id="menu">
		<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['menu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
		<ol>
			<a href="javascript:void(0);" onfocus="this.blur();" class="item"><?php echo $_smarty_tpl->tpl_vars['n']->value['attribute'][1];?>
</a>
			<ul><?php  $_smarty_tpl->tpl_vars['x'] = new Smarty_Variable;
 $_from = $_smarty_tpl->tpl_vars['n']->value['submenu']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['x']->key => $_smarty_tpl->tpl_vars['x']->value){
?><li><a href="<?php echo $_smarty_tpl->tpl_vars['x']->value[3];?>
" onfocus="this.blur();" <?php if ($_smarty_tpl->tpl_vars['x']->value['current']){?>id="current"<?php }?>><?php echo $_smarty_tpl->tpl_vars['x']->value[1];?>
</a></li><?php }} ?></ul>
		</ol>
		<?php }} ?>
	</div>
</div>