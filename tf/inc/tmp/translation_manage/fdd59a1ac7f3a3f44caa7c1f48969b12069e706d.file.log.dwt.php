<?php /* Smarty version Smarty-3.0.9, created on 2013-07-13 00:55:31
         compiled from "/Users/cgc/Sites/mlecms/inc/templates/manage/log.dwt" */ ?>
<?php /*%%SmartyHeaderCode:17517821051e03503c219d0-36743819%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fdd59a1ac7f3a3f44caa7c1f48969b12069e706d' => 
    array (
      0 => '/Users/cgc/Sites/mlecms/inc/templates/manage/log.dwt',
      1 => 1344393623,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '17517821051e03503c219d0-36743819',
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
	mycms.title2div('title2div');
	mycms.acsubmit('manage','del','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['determine_delete'];?>
','del',false);
});
</script>
<style type="text/css">
#titlediv_jq{width:300px;}

</style>
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
				<td>
					<table cellpadding="0" cellspacing="0" border="0">
						<tr>
							<td>
								<select class="select rounded" onChange="window.open(this.options[this.selectedIndex].value,'_self')" size="1">
								<option <?php if ($_smarty_tpl->getVariable('mycms')->value['get']['type']==''){?>selected="selected"<?php }?> value="log.php"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['type'];?>
</option>
								<option <?php if ($_smarty_tpl->getVariable('mycms')->value['get']['type']==1){?>selected="selected"<?php }?> value="log.php?type=1"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['type1'];?>
</option>
								<option <?php if ($_smarty_tpl->getVariable('mycms')->value['get']['type']==2){?>selected="selected"<?php }?> value="log.php?type=2"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['type2'];?>
</option>
								<option <?php if ($_smarty_tpl->getVariable('mycms')->value['get']['type']==3){?>selected="selected"<?php }?> value="log.php?type=3"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['type3'];?>
</option>
								<option <?php if ($_smarty_tpl->getVariable('mycms')->value['get']['type']==4){?>selected="selected"<?php }?> value="log.php?type=4"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['type4'];?>
</option>
								<option <?php if ($_smarty_tpl->getVariable('mycms')->value['get']['type']==5){?>selected="selected"<?php }?> value="log.php?type=4"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['type5'];?>
</option>
								</select>							
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<form action="" method="post" name="manage" id="manage">
		<table class="list td_align" cellpadding="0" cellspacing="1">
			<tr>
				<td class="field_head" width="30"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['select'];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['action'];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['events'];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['time'];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['operator'];?>
</td>
			</tr>
			<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
			<tr>
				<td><input name="ids[]" type="checkbox" value="<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
" /></td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['type'];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['info'];?>
</td>
				<td><a href="javascript:void(0);" title="Date: <?php echo date('Y-m-d H:i:s',$_smarty_tpl->tpl_vars['n']->value['addtime']);?>
<br />IP: <?php echo $_smarty_tpl->tpl_vars['n']->value['ip'];?>
" class="title2div"><?php echo date('m-d H:i:s',$_smarty_tpl->tpl_vars['n']->value['addtime']);?>
 <span id="i<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
">(<?php echo $_smarty_tpl->tpl_vars['n']->value['ip'];?>
)</span></a></td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['username'];?>
</td>
			</tr>
			<script type="text/javascript">mycms.ip('<?php echo $_smarty_tpl->tpl_vars['n']->value['ip'];?>
','i<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
',0);</script>
			<?php }} else { ?><tr><td colspan="6" class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['no_data'];?>
</td></tr>
			<?php } ?>	
		</table>
		<table border="0" align="center" cellpadding="0" cellspacing="0" width="98%">
			<tr>
				<td>
					<table cellpadding="0" cellspacing="0" border="0">
						<tr>
							<td class="all_action"><input name="all" id="all" type="checkbox" onclick="mycms.select_all(this.form);" /></td>
							<td> &nbsp<?php echo $_smarty_tpl->getVariable('lang')->value['page']['select_all'];?>
 &nbsp;</td>
							<td class="operation">
								<input type="hidden" name="action" id="action" value="" />
								<a href="javascript:void(0);"><img id="del" src="../inc/templates/manage/images/operation/delete.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['delete_log'];?>
" class="title2div" width="16" height="16" border="0" /></a>
							</td>					
						</tr>
					</table>
				</td>
			</tr>
		</table>
		</form>
		<?php echo $_smarty_tpl->getVariable('mycms')->value['page'];?>
<?php if ($_smarty_tpl->getVariable('admin')->value['attention']){?><div class="attention rounded"><ol></ol><?php echo $_smarty_tpl->getVariable('lang')->value['page']['attention'];?>
</div><?php }?>
	</div>
	<?php $_template = new Smarty_Internal_Template('component_footer.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</div>
</body>
</html>