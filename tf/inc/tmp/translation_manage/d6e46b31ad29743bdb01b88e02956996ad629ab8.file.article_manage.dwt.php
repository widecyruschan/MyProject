<?php /* Smarty version Smarty-3.0.9, created on 2015-01-16 14:35:20
         compiled from "E:/website/tf/inc/templates/manage/article_manage.dwt" */ ?>
<?php /*%%SmartyHeaderCode:51454b8b1281cd884-36357455%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'd6e46b31ad29743bdb01b88e02956996ad629ab8' => 
    array (
      0 => 'E:/website/tf/inc/templates/manage/article_manage.dwt',
      1 => 1418118215,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '51454b8b1281cd884-36357455',
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
function check(){
	var key = $('#word').val();
	if(key == '' || key == "<?php echo $_smarty_tpl->getVariable('lang')->value['page']['keyword'];?>
"){
		alert("<?php echo $_smarty_tpl->getVariable('lang')->value['page']['enter_keywords'];?>
");
		return false;		
	} else {
		return true;	
	}
}
$(function(){
	mycms.alternately('list');
	mycms.keysubmit('search','search_button','check()');
	mycms.acsubmit('manage','audit','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['determine'][0];?>
','audit',false);
	mycms.acsubmit('manage','unaudit','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['determine'][1];?>
','unaudit',false);
	mycms.acsubmit('manage','del','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['determine'][2];?>
','del',false);
	mycms.acsubmit('manage','clear','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['determine'][3];?>
','clear',false);
	mycms.acsubmit('manage','published','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['determine'][5];?>
','published',false);
	mycms.acsubmit('manage','unpublished','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['determine'][4];?>
','unpublished',false);
	mycms.acsubmit('manage','recom','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['determine'][6];?>
','recom',false);
	mycms.acsubmit('manage','unrecom','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['determine'][7];?>
','unrecom',false);	
	mycms.acsubmit('manage','restore','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['determine'][8];?>
','restore',false);	
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
	<table cellpadding="0" cellspacing="0" border="0" class="table">
		<tr>
			<td valign="top" align="right">
				<form action="" method="get" name="search" id="search">
				<table cellpadding="0" cellspacing="5" border="0">
					<tr>
						<td><?php if ($_smarty_tpl->getVariable('mycms')->value['channel_show']){?><select class="select rounded" onChange="window.open(this.options[this.selectedIndex].value,'_self')" size="1"><?php echo $_smarty_tpl->getVariable('mycms')->value['channel_text'];?>
</select><?php }?></td>
						<td><select class="select rounded" onChange="window.open(this.options[this.selectedIndex].value,'_self')" size="1"><?php echo $_smarty_tpl->getVariable('mycms')->value['sort_text'];?>
</select></td>
						<td><select class="select rounded" onChange="window.open(this.options[this.selectedIndex].value,'_self')" size="1"><?php echo $_smarty_tpl->getVariable('mycms')->value['filter_text'];?>
</select></td>
						<td>
							<input type="hidden" name="channel" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['get']['channel'];?>
" />
							<input type="hidden" name="category" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['get']['category'];?>
" />
							<input type="hidden" name="sort" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['get']['sort'];?>
" />
							<input type="hidden" name="trash" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['get']['trash'];?>
" />
							<input type="text" class="input rounded" name="word" id="word" size="15" onfocus="if(this.value=='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['keyword'];?>
'){this.value='';}" onblur="if(this.value==''){this.value='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['keyword'];?>
';}" value="<?php if ($_smarty_tpl->getVariable('mycms')->value['get']['word']){?><?php echo $_smarty_tpl->getVariable('mycms')->value['get']['word'];?>
<?php }else{ ?><?php echo $_smarty_tpl->getVariable('lang')->value['page']['keyword'];?>
<?php }?>" />
							<input type="text" style="display:none;" /> 
						</td>
						<td><a class="button_2" href="#" id="search_button"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['search'];?>
</a></td>
						<td><a class="button_2" href="article_manage.php?<?php echo rand();?>
"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['refresh'];?>
</a></td>	
					</tr>
				</table>			
				</form>
			</td>
		</tr>
	</table>

	<div class="rounded table">
		<table width="100%" cellpadding="0" cellspacing="0" border="0" class="box_top">
			<tr>
				<td class="title"><?php if ($_smarty_tpl->getVariable('mycms')->value['get']['trash']==1){?><?php echo $_smarty_tpl->getVariable('lang')->value['page']['recycle'];?>
<?php }else{ ?><?php echo $_smarty_tpl->getVariable('lang')->value['page']['title'];?>
<?php }?><?php echo $_smarty_tpl->getVariable('mycms')->value['title_lang'];?>
</td>
				<td>
					<table cellpadding="0" cellspacing="0" border="0">
						<tr>
							<td><a href="article_manage.php?trash=0" class="basic_button" <?php if ($_smarty_tpl->getVariable('mycms')->value['get']['trash']==1){?>style="background:none;"<?php }?>><?php echo $_smarty_tpl->getVariable('lang')->value['page']['manage'];?>
</a></td>
							<td><a href="article_manage.php?trash=1" class="advanced_button" <?php if ($_smarty_tpl->getVariable('mycms')->value['get']['trash']==1){?>style="background:url(../inc/templates/manage/images/switch_bg.png);"<?php }?>><?php echo $_smarty_tpl->getVariable('lang')->value['page']['recycle'];?>
</a></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<form action="" method="post" name="manage" id="manage">
		<table class="list td_align" cellpadding="0" cellspacing="1" border="0">
			<tr>
				<td class="article_head" width="30"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][0];?>
</td>
				<td class="field_head" width="25"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][1];?>
</td>
				<?php if ($_smarty_tpl->getVariable('mycms')->value['channel_show']){?><td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][2];?>
</td><?php }?>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][4];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][5];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][6];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][7];?>
</td>
			</tr>
			<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
			<tr>
				<td><input name="id[]" type="checkbox" value="<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
" /></td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
</td>
				<?php if ($_smarty_tpl->getVariable('mycms')->value['channel_show']){?><td><a href="article_manage.php?channel=<?php echo $_smarty_tpl->tpl_vars['n']->value['channel'];?>
"><?php echo $_smarty_tpl->tpl_vars['n']->value['channel_title'];?>
</a></td><?php }?>
				<td style="text-align:left;">
					<a target="_blank" href="../view.php?id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['n']->value['title_format'];?>
</a>
					<?php if ($_smarty_tpl->tpl_vars['n']->value['permission']!='0'){?> <img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['title_img'][0];?>
" src="../inc/templates/manage/images/operation/lock.png" width="16" height="16"><?php }?>
					<?php if ($_smarty_tpl->tpl_vars['n']->value['money']>'0'){?> <img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['title_img'][1];?>
<?php echo $_smarty_tpl->tpl_vars['n']->value['money'];?>
" src="../inc/templates/manage/images/operation/money.png" width="16" height="16"><?php }?>
					<?php if ($_smarty_tpl->tpl_vars['n']->value['integral']>'0'){?> <img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['title_img'][2];?>
<?php echo $_smarty_tpl->tpl_vars['n']->value['integral'];?>
" src="../inc/templates/manage/images/operation/license_key.png" width="16" height="16"><?php }?>							
				</td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['addtime'];?>
</td>
				<td><span class="blue"><?php echo $_smarty_tpl->tpl_vars['n']->value['click'];?>
</span>/<span class="red"><?php echo $_smarty_tpl->tpl_vars['n']->value['commenttotal'];?>
</span></td>
				<td class="operation">
					<?php if ($_smarty_tpl->getVariable('mycms')->value['get']['trash']!='1'){?>
					<?php if ($_smarty_tpl->tpl_vars['n']->value['audit']){?><a href="<?php echo $_smarty_tpl->getVariable('mycms')->value['op_url'];?>
&action=unaudit&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/accept.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][0];?>
" /></a><?php }else{ ?><a href="<?php echo $_smarty_tpl->getVariable('mycms')->value['op_url'];?>
&action=audit&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/ban.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][1];?>
" /></a><?php }?>
					<a href="article_update.php?id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
&channel=<?php echo $_smarty_tpl->tpl_vars['n']->value['channel'];?>
"><img src="../inc/templates/manage/images/operation/pencil.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][2];?>
" /></a>
					<a href="<?php echo $_smarty_tpl->getVariable('mycms')->value['op_url'];?>
&action=del&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/delete.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][3];?>
" /></a>
					<?php if ($_smarty_tpl->tpl_vars['n']->value['published']){?><a href="<?php echo $_smarty_tpl->getVariable('mycms')->value['op_url'];?>
&action=unpublished&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/page_world.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][4];?>
" /></a><?php }else{ ?><a href="<?php echo $_smarty_tpl->getVariable('mycms')->value['op_url'];?>
&action=published&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/page_delete.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][5];?>
" /></a><?php }?>
					<?php if ($_smarty_tpl->tpl_vars['n']->value['recom']){?><a href="<?php echo $_smarty_tpl->getVariable('mycms')->value['op_url'];?>
&action=unrecom&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/featured.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][6];?>
" /></a><?php }else{ ?><a href="<?php echo $_smarty_tpl->getVariable('mycms')->value['op_url'];?>
&action=recom&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/disabled.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][7];?>
" /></a><?php }?>
					<?php }else{ ?>
					<a href="<?php echo $_smarty_tpl->getVariable('mycms')->value['op_url'];?>
&action=restore&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/restore.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][8];?>
" /></a>
					<a href="<?php echo $_smarty_tpl->getVariable('mycms')->value['op_url'];?>
&action=clear&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
" onclick="return confirm('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['completely_clear'];?>
');"><img src="../inc/templates/manage/images/operation/trashcan_delete.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][9];?>
" /></a>
					<?php }?>
				</td>
			</tr>
			<?php }} else { ?><tr><td colspan="<?php if ($_smarty_tpl->getVariable('mycms')->value['channel_show']){?>7<?php }else{ ?>6<?php }?>" class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['no_data'];?>
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
								<?php if ($_smarty_tpl->getVariable('mycms')->value['get']['trash']!='1'){?>
								<a href="javascript:void(0);"><img id="audit" src="../inc/templates/manage/images/operation/accept.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['volume'][0];?>
" /></a>
								<a href="javascript:void(0);"><img id="unaudit" src="../inc/templates/manage/images/operation/ban.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['volume'][1];?>
" /></a>
								<a href="javascript:void(0);"><img id="del" src="../inc/templates/manage/images/operation/delete.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['volume'][2];?>
" /></a>
								<a href="javascript:void(0);"><img id="clear" src="../inc/templates/manage/images/operation/trashcan_delete.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['volume'][3];?>
" /></a>
								<a href="javascript:void(0);"><img id="published" src="../inc/templates/manage/images/operation/page_world.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['volume'][5];?>
" /></a>
								<a href="javascript:void(0);"><img id="unpublished" src="../inc/templates/manage/images/operation/page_delete.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['volume'][4];?>
" /></a>
								<a href="javascript:void(0);"><img id="recom" src="../inc/templates/manage/images/operation/featured.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['volume'][6];?>
" /></a>
								<a href="javascript:void(0);"><img id="unrecom" src="../inc/templates/manage/images/operation/disabled.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['volume'][7];?>
" /></a>
								<?php }else{ ?>
								<a href="javascript:void(0);"><img id="restore" src="../inc/templates/manage/images/operation/restore.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['volume'][8];?>
" /></a>
								<a href="javascript:void(0);"><img id="clear" src="../inc/templates/manage/images/operation/trashcan_delete.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['volume'][3];?>
" /></a>
								<?php }?>
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