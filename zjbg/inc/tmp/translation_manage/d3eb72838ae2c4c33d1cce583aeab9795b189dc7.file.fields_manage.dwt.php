<?php /* Smarty version Smarty-3.0.9, created on 2014-12-05 10:50:55
         compiled from "/Users/CyrusChan/Sites/zjbg/inc/templates/manage/fields_manage.dwt" */ ?>
<?php /*%%SmartyHeaderCode:161500018854811d8f00b821-77651040%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd3eb72838ae2c4c33d1cce583aeab9795b189dc7' => 
    array (
      0 => '/Users/CyrusChan/Sites/zjbg/inc/templates/manage/fields_manage.dwt',
      1 => 1374981360,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '161500018854811d8f00b821-77651040',
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
$(function(){mycms.alternately('list');});
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
			<tr><td class="title"><?php echo $_smarty_tpl->getVariable('mycms')->value['pagetitle'];?>
<?php echo $_smarty_tpl->getVariable('lang')->value['page']['title'];?>
<?php echo $_smarty_tpl->getVariable('mycms')->value['title_lang'];?>
  <a href="fields_update.php?id=<?php echo $_smarty_tpl->getVariable('mycms')->value['id'];?>
">添加字段</a></td></tr>
		</table>
		
		<table class="list td_align" cellpadding="0" cellspacing="1" border="0">
			<tr>
				<td class="field_head" width="50"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][0];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][1];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][2];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][4];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][5];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][6];?>
</td>
			</tr>		
			<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['fields_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
			<tr>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['fid'];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['fieldsname'];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['fields'];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['fieldstype'];?>
</td>	
				<td><?php if ($_smarty_tpl->tpl_vars['n']->value['fieldshow']=='1'){?>启用<?php }else{ ?> 禁用<?php }?></td>
				<td class="operation">
					<a href="fields_update.php?id=<?php echo $_smarty_tpl->getVariable('mycms')->value['id'];?>
&fid=<?php echo $_smarty_tpl->tpl_vars['n']->value['fid'];?>
"><img src="../inc/templates/manage/images/operation/pencil.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][0];?>
"></a>
					<a href="fields_manage.php?id=<?php echo $_smarty_tpl->getVariable('mycms')->value['id'];?>
&del=<?php echo $_smarty_tpl->tpl_vars['n']->value['fid'];?>
" onclick="return confirm('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['remove_fields'];?>
');"><img src="../inc/templates/manage/images/operation/delete.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][1];?>
"></a>
				</td>
			</tr>
			<?php }} else { ?><tr><td colspan="7" class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['no_data'];?>
</td></tr>
			<?php } ?>
		</table>
		<?php if ($_smarty_tpl->getVariable('admin')->value['attention']){?><div class="attention rounded"><ol></ol><?php echo $_smarty_tpl->getVariable('lang')->value['page']['attention'];?>
</div><?php }?>
	</div>
	<?php $_template = new Smarty_Internal_Template('component_footer.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</div>
</body>
</html>