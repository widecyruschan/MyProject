<?php /* Smarty version Smarty-3.0.9, created on 2013-07-20 10:33:57
         compiled from "/Users/cgc/Sites/mlecms/inc/templates/manage/mysql_backup.dwt" */ ?>
<?php /*%%SmartyHeaderCode:13623822951e9f7156d1892-50435077%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '27587c970ba4e222e98093eee370a5ddaa350722' => 
    array (
      0 => '/Users/cgc/Sites/mlecms/inc/templates/manage/mysql_backup.dwt',
      1 => 1344393623,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '13623822951e9f7156d1892-50435077',
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
// 进度条预加载
var img = new Image;
img.src = '../inc/templates/manage/images/progress.gif';

function progress(){
	$('#progress_box').html('<img src="../inc/templates/manage/images/progress.gif" width="280" height="13" border="0" /><br /><br /><?php echo $_smarty_tpl->getVariable('lang')->value['page'][25];?>
');
	$('#progress_box').css({'padding':'100px 0','text-align':'center'});
	return true;
}
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
	<div class="rounded table" id="progress_box">
		<table width="100%" cellpadding="0" cellspacing="0" border="0" class="box_top">
			<tr>
				<td class="title"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['title'];?>
</td>
				<td>
					<table cellpadding="0" cellspacing="0" border="0">
						<tr>
							<td><?php if ($_smarty_tpl->getVariable('mycms')->value['operation']!=false){?><a class="button_2" href="mysql_backup.php"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][14];?>
</a><?php }?></td>
						</tr>
					</table>
				</td>				
			</tr>
		</table>
		
		<?php if ($_smarty_tpl->getVariable('mycms')->value['operation']===false){?>
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
			</tr>
			<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['backup_files']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
			<tr>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['name'];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['time'];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['size'];?>
</td>
				<td class="operation">
					<a href="mysql_backup.php?action=download&file=<?php echo $_smarty_tpl->tpl_vars['n']->value['name'];?>
"><img src="../inc/templates/manage/images/operation/download.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][21];?>
" /></a>
					<a href="mysql_backup.php?action=recover&file=<?php echo $_smarty_tpl->tpl_vars['n']->value['name'];?>
" onclick="return confirm('<?php echo $_smarty_tpl->getVariable('lang')->value['page'][19];?>
');"><img src="../inc/templates/manage/images/operation/cog_go.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][22];?>
" /></a>
					<a href="mysql_backup.php?action=del&file=<?php echo $_smarty_tpl->tpl_vars['n']->value['name'];?>
" onclick="return confirm('<?php echo $_smarty_tpl->getVariable('lang')->value['page'][20];?>
');"><img src="../inc/templates/manage/images/operation/delete.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][23];?>
" /></a>
				</td>
			</tr>
			<?php }} else { ?><tr><td colspan="4" class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][5];?>
</td></tr>
			<?php } ?>
		</table>
		<?php }else{ ?>
		<table class="list td_align" cellpadding="0" cellspacing="1" border="0">
			<tr>
				<td class="field_head">Table</td>
				<td class="field_head">Op</td>
				<td class="field_head">Msg_type</td>
				<td class="field_head">Msg_text</td>
			</tr>
			<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['operation']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
			<tr>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value[0];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value[1];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value[2];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value[3];?>
</td>
			</tr>
			<?php }} ?>
		</table>
		<?php }?>
		<table class="table top_line">
			<tr>
				<td>
					<table style="margin:0 auto;" cellpadding="10" cellspacing="0" border="0">
						<tr>
							<td><a class="submit" onclick="progress();" href="mysql_backup.php?action=backup"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][6];?>
</a></td>
							<td><a class="submit" href="mysql_backup.php?action=check"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][10];?>
</a></td>
							<td><a class="submit" href="mysql_backup.php?action=optimize"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][11];?>
</a></td>
							<td><a class="submit" href="mysql_backup.php?action=repair"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][12];?>
</a></td>
							<td><a class="submit" href="mysql_backup.php?action=analyze"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][13];?>
</a></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>		
		<?php if ($_smarty_tpl->getVariable('admin')->value['information']){?>
		<div class="information rounded"><ol></ol>
			1、<?php echo $_smarty_tpl->getVariable('lang')->value['page'][16];?>
<br />
			2、<?php echo $_smarty_tpl->getVariable('lang')->value['page'][17];?>
<br />
			3、<?php echo $_smarty_tpl->getVariable('lang')->value['page'][18];?>
<br />
			4、<?php echo $_smarty_tpl->getVariable('lang')->value['page'][24];?>
<br />
			5、<?php echo $_smarty_tpl->getVariable('lang')->value['page'][26];?>
<br />
		</div>
		<?php }?>
	</div>
	<?php $_template = new Smarty_Internal_Template('component_footer.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</div>
</body>
</html>