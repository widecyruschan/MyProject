<?php /* Smarty version Smarty-3.0.9, created on 2014-04-12 23:59:01
         compiled from "/Library/WebServer/Documents/inc/templates/manage/links_manage.dwt" */ ?>
<?php /*%%SmartyHeaderCode:2147239543534962c50a6e22-79500629%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e52154e56f9daeb004ab094b66caf10172010379' => 
    array (
      0 => '/Library/WebServer/Documents/inc/templates/manage/links_manage.dwt',
      1 => 1374981420,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2147239543534962c50a6e22-79500629',
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
	mycms.acsubmit('form','audit','<?php echo $_smarty_tpl->getVariable('lang')->value['page'][9];?>
','audit',false);
	mycms.acsubmit('form','logo','<?php echo $_smarty_tpl->getVariable('lang')->value['page'][17];?>
','logo',false);
	mycms.acsubmit('form','text','<?php echo $_smarty_tpl->getVariable('lang')->value['page'][18];?>
','text',false);
	mycms.acsubmit('form','unaudit','<?php echo $_smarty_tpl->getVariable('lang')->value['page'][10];?>
','unaudit',false);
	mycms.acsubmit('form','del','<?php echo $_smarty_tpl->getVariable('lang')->value['page'][11];?>
','del',false);	
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
<?php echo $_smarty_tpl->getVariable('mycms')->value['title_lang'];?>
</td>
			</tr>
		</table>
		
		<form action="" method="post" name="form" id="form">
		<table class="list td_align" cellpadding="0" cellspacing="1" border="0">
			<tr>
				<td class="field_head" width="30"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][1];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][2];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][3];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][4];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][5];?>
</td>
			</tr>
			<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['link_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
			<tr>
				<td><input name="id[]" type="checkbox" value="<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
" /></td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['logo_img'];?>
</td>
				<td><a target="_blank" href="<?php echo $_smarty_tpl->tpl_vars['n']->value['weburl'];?>
"><?php if ($_smarty_tpl->tpl_vars['n']->value['color']==''){?><?php echo $_smarty_tpl->tpl_vars['n']->value['webname'];?>
<?php }else{ ?><font color="<?php echo $_smarty_tpl->tpl_vars['n']->value['color'];?>
"><?php echo $_smarty_tpl->tpl_vars['n']->value['webname'];?>
</font><?php }?></a></td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['sort'];?>
</td>
				<td class="operation">
					<?php if ($_smarty_tpl->tpl_vars['n']->value['audit']){?><a href="links_manage.php?page=<?php echo $_smarty_tpl->getVariable('mycms')->value['dpage'];?>
&action=unaudit&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/accept.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][19];?>
" /></a><?php }else{ ?><a href="links_manage.php?page=<?php echo $_smarty_tpl->getVariable('mycms')->value['dpage'];?>
&action=audit&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/ban.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][20];?>
" /></a><?php }?>
					<?php if ($_smarty_tpl->tpl_vars['n']->value['type']){?><a href="links_manage.php?page=<?php echo $_smarty_tpl->getVariable('mycms')->value['dpage'];?>
&action=text&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/featured.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][21];?>
" /></a><?php }else{ ?><a href="links_manage.php?page=<?php echo $_smarty_tpl->getVariable('mycms')->value['dpage'];?>
&action=logo&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/disabled.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][22];?>
" /></a><?php }?>
					<a href="links_update.php?id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/pencil.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][14];?>
" /></a>
					<a onclick="return confirm('<?php echo $_smarty_tpl->getVariable('lang')->value['page'][13];?>
');" href="links_manage.php?page=<?php echo $_smarty_tpl->getVariable('mycms')->value['dpage'];?>
&action=del&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/delete.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][23];?>
" /></a>
				</td>
			</tr>
			<?php }} else { ?><tr><td colspan="5" class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][12];?>
</td></tr>
			<?php } ?>
		</table>
		<table class="table top_line">
			<tr>
				<td>
					<table cellpadding="0" cellspacing="0" border="0">
						<tr>
							<td class="all_action"><input name="all" id="all" type="checkbox" onclick="mycms.select_all(this.form);" /></td>
							<td> &nbsp<?php echo $_smarty_tpl->getVariable('lang')->value['page']['select_all'];?>
 &nbsp;</td>
							<td class="operation">
								<input type="hidden" name="action" id="action" value="" />
								<a href="javascript:void(0);"><img id="audit" src="../inc/templates/manage/images/operation/accept.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][6];?>
" /></a>
								<a href="javascript:void(0);"><img id="unaudit" src="../inc/templates/manage/images/operation/ban.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][7];?>
" /></a>
								<a href="javascript:void(0);"><img id="logo" src="../inc/templates/manage/images/operation/featured.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][15];?>
" /></a>
								<a href="javascript:void(0);"><img id="text" src="../inc/templates/manage/images/operation/disabled.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][16];?>
" /></a>
								<a href="javascript:void(0);"><img id="del" src="../inc/templates/manage/images/operation/delete.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][8];?>
" /></a>
							</td>					
						</tr>
					</table>
				</td>
			</tr>
		</table>	
		</form>
		<?php echo $_smarty_tpl->getVariable('mycms')->value['page'];?>

	</div>
	<?php $_template = new Smarty_Internal_Template('component_footer.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</div>
</body>
</html>