<?php /* Smarty version Smarty-3.0.9, created on 2013-07-09 16:05:05
         compiled from "/Users/cgc/Sites/mlecms/inc/templates/manage/admin_manage.dwt" */ ?>
<?php /*%%SmartyHeaderCode:52793699251dbc431d6e9d0-77886298%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6502f5709dc3abd7310dc2e8ab2533437dc1604b' => 
    array (
      0 => '/Users/cgc/Sites/mlecms/inc/templates/manage/admin_manage.dwt',
      1 => 1344393622,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '52793699251dbc431d6e9d0-77886298',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $_smarty_tpl->getVariable('lang')->value['common']['web_title'];?>
</title>
<link rel="stylesheet" type="text/css" href="../inc/templates/manage/css/common_<?php echo $_smarty_tpl->getVariable('admin')->value['theme'];?>
.css" />
<script type="text/javascript" src="../inc/script/jquery.js"></script>
<script type="text/javascript" src="../inc/templates/manage/js/common.js"></script>
<script type="text/javascript">
$(function(){
	mycms.alternately('list');
});
</script>
</head>
<body>
<?php $_template = new Smarty_Internal_Template('component_header.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
<div id="body_box">
	<table cellpadding="0" cellspacing="0" border="0" class="icon">
		<tr><td><?php echo $_smarty_tpl->getVariable('mycms')->value['icon'];?>
</td></tr>
	</table>
	<div class="rounded table">
		<table width="100%" cellpadding="0" cellspacing="0" border="0" class="box_top">
			<tr>
				<td class="title"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][0];?>
</td>
			</tr>
		</table>
		<table class="list td_align" cellpadding="0" cellspacing="1" border="0">
			<tr>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][1];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][2];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][3];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][4];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][5];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][6];?>
</td>
			</tr>
			<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['admin_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
			<tr>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['username'];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['level'];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['loginip'];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['logintime'];?>
</td>
				<td class="blue"><?php echo $_smarty_tpl->tpl_vars['n']->value['frequency'];?>
</td>
				<td class="operation">
					<a href="admin_update.php?id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/pencil.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][9];?>
" /></a>
					<a href="admin_manage.php?id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
" onclick="return confirm('<?php echo $_smarty_tpl->getVariable('lang')->value['page'][11];?>
');"><img src="../inc/templates/manage/images/operation/delete.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][10];?>
" /></a>
				</td>
			</tr>
			<?php }} ?>
		</table>
	</div>
	<?php $_template = new Smarty_Internal_Template('component_footer.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</div>
</body>
</html>