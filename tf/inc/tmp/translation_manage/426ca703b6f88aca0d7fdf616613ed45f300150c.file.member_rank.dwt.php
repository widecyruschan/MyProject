<?php /* Smarty version Smarty-3.0.9, created on 2013-07-13 00:56:02
         compiled from "/Users/cgc/Sites/mlecms/inc/templates/manage/member_rank.dwt" */ ?>
<?php /*%%SmartyHeaderCode:35754479951e035223092e3-51237247%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '426ca703b6f88aca0d7fdf616613ed45f300150c' => 
    array (
      0 => '/Users/cgc/Sites/mlecms/inc/templates/manage/member_rank.dwt',
      1 => 1344393623,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '35754479951e035223092e3-51237247',
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
	mycms.keysubmit('level','submit',true);
	mycms.title2div('title2div');
	<?php if ($_smarty_tpl->getVariable('web')->value['lang']!=1){?>
	$('input[name="scores[]"]').add('input[name="money[]"]').add('input[name="discount[]"]').attr('readonly',true);
	$('input[name="scores[]"]').add('input[name="money[]"]').add('input[name="discount[]"]').css('color','#8F8F8F');
	<?php }?>
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
<?php echo $_smarty_tpl->getVariable('mycms')->value['title_lang'];?>
</td>
			</tr>
		</table>
		<form name="level" id="level" action="" method="post">
		<table class="list td_align" cellpadding="0" cellspacing="1">
			<tr>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][0];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][1];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][2];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][3];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][4];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][5];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][6];?>
</td>
			</tr>
			<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['rank_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
			<tr>
				<td width="20"><?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
<input name="id[]" value="<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
" type="hidden" /></td>
				<td>
					<input name="rankname[]" value="<?php echo $_smarty_tpl->tpl_vars['n']->value['rankname'];?>
" type="text" class="input rounded" size="25" />
					<input name="rankname_all[]" value="<?php echo $_smarty_tpl->tpl_vars['n']->value['rankname_all'];?>
" type="hidden" class="input rounded" size="10" />
				</td>
				<td><input name="discount[]" value="<?php echo $_smarty_tpl->tpl_vars['n']->value['discount'];?>
" type="text" class="input rounded" size="10" /></td>
				<td><input name="scores[]" type="text" class="input rounded" value="<?php echo $_smarty_tpl->tpl_vars['n']->value['scores'];?>
" size="10" <?php if ($_smarty_tpl->tpl_vars['n']->value['id']==1){?>readonly="true" style="color:#8F8F8F;"<?php }?> /></td>
				<td><input name="money[]" value="<?php echo $_smarty_tpl->tpl_vars['n']->value['money'];?>
" type="text" class="input rounded" size="10" <?php if ($_smarty_tpl->tpl_vars['n']->value['id']==1){?>readonly="true" style="color:#8F8F8F;"<?php }?> /></td>
				<td><?php if ($_smarty_tpl->tpl_vars['n']->value['id']==1){?><?php echo $_smarty_tpl->getVariable('lang')->value['page']['system'];?>
<?php }else{ ?><?php echo $_smarty_tpl->getVariable('lang')->value['page']['user'];?>
<?php }?></td>
				<td class="operation">
					<?php if ($_smarty_tpl->tpl_vars['n']->value['id']!=1){?><a href="member_rank.php?action=del&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
" onclick="return confirm('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['op'][1];?>
');"><img src="../inc/templates/manage/images/operation/delete.png" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['op'][0];?>
" /></a>
					<?php if ($_smarty_tpl->tpl_vars['n']->value['auto']){?><a href="member_rank.php?action=unauto&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/award.png" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['op'][3];?>
" /></a>
					<?php }else{ ?><a href="member_rank.php?action=auto&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/cut.png" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['op'][4];?>
" /></a><?php }?>
					<?php if ($_smarty_tpl->tpl_vars['n']->value['enable']){?><a href="member_rank.php?action=unenable&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/accept.png" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['op'][5];?>
" /></a>
					<?php }else{ ?><a href="member_rank.php?action=enable&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/ban.png" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['op'][6];?>
" /></a><?php }?>
					<?php }else{ ?><a href="javascript:void(0)"><img src="../inc/templates/manage/images/operation/disabled.png" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['op'][2];?>
" /></a><?php }?>
				</td>
			</tr>
			<?php }} ?>
			<tr>
				<td width="20">N</td>
				<td><input name="rankname_add" value="" type="text" class="input rounded" size="25" /></td>
				<td><input name="discount_add" value="" type="text" class="input rounded" size="10" /></td>
				<td><input name="scores_add" value="" type="text" class="input rounded" size="10" /></td>
				<td><input name="money_add" value="" type="text" class="input rounded" size="10" /></td>
				<td><?php if ($_smarty_tpl->getVariable('n')->value['id']==1){?><?php echo $_smarty_tpl->getVariable('lang')->value['page']['system'];?>
<?php }else{ ?><?php echo $_smarty_tpl->getVariable('lang')->value['page']['user'];?>
<?php }?></td>
				<td><?php echo $_smarty_tpl->getVariable('lang')->value['page']['add'];?>
</td>
			</tr>			
		</table>
		<table class="table top_line">
			<tr>
				<td align="right" height="60"><a id="submit" class="submit" href="#"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['submit'];?>
</a></td>
				<td width="80">&nbsp;</td>
				<td><a class="submit reset" href="javascript:level.reset();"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['reset'];?>
</a></td>
			</tr>
		</table>		
		</form>
		<?php if ($_smarty_tpl->getVariable('admin')->value['information']){?>
		<div class="information rounded"><ol></ol>
			1、<?php echo $_smarty_tpl->getVariable('lang')->value['page']['notes'][0];?>
<br />
			2、<?php echo $_smarty_tpl->getVariable('lang')->value['page']['notes'][1];?>
<br />
			3、<?php echo $_smarty_tpl->getVariable('lang')->value['page']['notes'][2];?>
<br />
			4、<?php echo $_smarty_tpl->getVariable('lang')->value['page']['notes'][3];?>
<br />
			5、<?php echo $_smarty_tpl->getVariable('lang')->value['page']['notes'][4];?>

		</div>
		<?php }?>
	</div>
	<?php $_template = new Smarty_Internal_Template('component_footer.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</div>
</body>
</html>