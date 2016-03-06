<?php /* Smarty version Smarty-3.0.9, created on 2013-07-30 15:43:00
         compiled from "E:/wwwroot/dmcc/inc/templates/manage/module_manage.dwt" */ ?>
<?php /*%%SmartyHeaderCode:74651f76e84837c59-22114709%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '225e19d2acdf2807b829d14847f802b017924125' => 
    array (
      0 => 'E:/wwwroot/dmcc/inc/templates/manage/module_manage.dwt',
      1 => 1374981480,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '74651f76e84837c59-22114709',
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
<script type="text/javascript" src="../inc/script/jquery.js"></script><script type="text/javascript" src="../inc/templates/manage/js/common.js"></script>
<script type="text/javascript">
$(function(){
	mycms.alternately('list');
	mycms.title2div('title2div');
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
				<td class="title"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['title'];?>
</td>
			</tr>
		</table>
		<table class="list td_align" cellpadding="0" cellspacing="1">
			<tr>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['name'];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['code'];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['development'];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['type'];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['installation'];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'];?>
</td>
			</tr>
			<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
			<tr>
				<td><a href="javascript:void(0);" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['remark'];?>
<br /><?php echo $_smarty_tpl->tpl_vars['n']->value['info'];?>
" class="title2div"><?php echo $_smarty_tpl->tpl_vars['n']->value['modname'];?>
</a></td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['modcode'];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['develop'];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['type'];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['status'];?>
</td>
				<td class="operation">
					<?php if ($_smarty_tpl->tpl_vars['n']->value['isinstall']){?><a href="module_manage.php?action=uninst&modcode=<?php echo $_smarty_tpl->tpl_vars['n']->value['modcode'];?>
" onclick="return confirm('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['ok_del'];?>
');"><img src="../inc/templates/manage/images/operation/application_delete.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['uninst'];?>
" class="title2div" /></a>
					<?php }else{ ?><a href="module_manage.php?action=install&dir=<?php echo $_smarty_tpl->tpl_vars['n']->value['dir'];?>
" onclick="return confirm('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['ok_install'];?>
');"><img src="../inc/templates/manage/images/operation/hammer_screwdriver.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['install'];?>
" class="title2div" /></a><?php }?>
					<?php if ($_smarty_tpl->tpl_vars['n']->value['package']){?><a href="module_manage.php?action=delpack&dir=<?php echo $_smarty_tpl->tpl_vars['n']->value['dir'];?>
" onclick="return confirm('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['ok_remove'];?>
');"><img src="../inc/templates/manage/images/operation/delete.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['remove'];?>
" class="title2div" /></a>
					<?php }else{ ?><img src="../inc/templates/manage/images/operation/disabled.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['have_removed'];?>
" class="title2div" /><?php }?>
				</td>
			</tr>
			<?php }} else { ?><tr><td colspan="6" class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['no_data'];?>
</td></tr>
			<?php } ?>
		</table>
		<table class="table top_line"><tr><td height="50"><?php echo $_smarty_tpl->getVariable('mycms')->value['page'];?>
</td></tr></table>
		<?php if ($_smarty_tpl->getVariable('admin')->value['attention']){?><div class="attention rounded"><ol></ol><?php echo $_smarty_tpl->getVariable('lang')->value['page']['notes'][0];?>
</div><?php }?>
		<?php if ($_smarty_tpl->getVariable('admin')->value['information']){?>
			<div class="information rounded"><ol></ol>
				1、<?php echo $_smarty_tpl->getVariable('lang')->value['page']['notes'][1];?>
<br />
				2、<?php echo $_smarty_tpl->getVariable('lang')->value['page']['notes'][2];?>
<br />
				3、<?php echo $_smarty_tpl->getVariable('lang')->value['page']['notes'][3];?>

			</div>
		<?php }?>
	</div>
	<?php $_template = new Smarty_Internal_Template('component_footer.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</div>
</body>
</html>