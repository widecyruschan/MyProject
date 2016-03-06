<?php /* Smarty version Smarty-3.0.9, created on 2014-05-09 22:24:11
         compiled from "/Library/WebServer/Documents/tf/inc/templates/manage/channel_manage.dwt" */ ?>
<?php /*%%SmartyHeaderCode:1064641055536ce50b7527c9-65896405%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f042c5c27821d18eab5f8b00e000a1ef5f27ca33' => 
    array (
      0 => '/Library/WebServer/Documents/tf/inc/templates/manage/channel_manage.dwt',
      1 => 1374981360,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1064641055536ce50b7527c9-65896405',
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
<style type="text/css">
.list td{padding:0; margin:0;}
.lists td{border-bottom:1px #999 solid;}
.lists .l1{background:url(../inc/templates/manage/images/sprite_green.png) -35px -34px no-repeat; width:24px;}
.lists .l2{float:left; width:100px; height:40px; line-height:40px; background:url(../inc/templates/manage/images/0101.gif) 0 19px repeat-x;}
.lists .l3{float:left; height:40px; padding:0 0 0 5px; line-height:40px;}
.part{display:none;}
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
			<tr><td class="title"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['title'];?>
<?php echo $_smarty_tpl->getVariable('mycms')->value['title_lang'];?>
</td></tr>
		</table>
		
		<table class="list" cellpadding="0" cellspacing="1" border="0">
			<tr>
				<td class="field_head" width="50"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][0];?>
</td>
				<td class="field_head" width="250"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][1];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][2];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][3];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][4];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][5];?>
</td>
			</tr>		
			<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['channel_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
		  <tr class="go_down">
				<td  align="center"><?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
</td>
				<td>&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['n']->value['title'];?>
<?php if ($_smarty_tpl->tpl_vars['n']->value['permission']!='0'){?> <img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['restricted'];?>
" src="../inc/templates/manage/images/operation/lock.png" width="16" height="16"><?php }?></td>
				<td align="center"><?php echo $_smarty_tpl->tpl_vars['n']->value['modname'];?>
</td>
				<td align="center"><?php echo $_smarty_tpl->tpl_vars['n']->value['show_text'];?>
</td>
				<td align="center"><?php echo $_smarty_tpl->tpl_vars['n']->value['sort'];?>
</td>
				<td class="operation" align="center">
                <a href="channel_update.php?UpChannelID=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/folder.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['add_root'];?>
"></a>
					<a href="channel_update.php?id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
&UpChannelID=<?php echo $_smarty_tpl->tpl_vars['n']->value['UpChannelID'];?>
"><img src="../inc/templates/manage/images/operation/pencil.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][0];?>
"></a>
					<?php if ($_smarty_tpl->tpl_vars['n']->value['module']=='MO001x'||$_smarty_tpl->tpl_vars['n']->value['module']=='MO002x'||$_smarty_tpl->tpl_vars['n']->value['module']=='MO003x'||$_smarty_tpl->tpl_vars['n']->value['module']=='MO004x'){?><a href="fields_manage.php?id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/cog_go.png" title="字段管理"></a>
                    <?php }else{ ?><img src="../inc/templates/manage/images/operation/disabled.png"><?php }?>
					<a href="channel_manage.php?del=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
" onclick="return confirm('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['remove_channel'];?>
');"><img src="../inc/templates/manage/images/operation/delete.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][1];?>
"></a>
					<?php if ($_smarty_tpl->tpl_vars['n']->value['module']=='MO001x'){?><a href="article_update.php?channel=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/page_add.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][2];?>
"></a>
					<?php }elseif($_smarty_tpl->tpl_vars['n']->value['module']=='MO002x'){?><a href="product_update.php?channel=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/page_add.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][3];?>
"></a>
					<?php }elseif($_smarty_tpl->tpl_vars['n']->value['module']=='MO003x'){?><a href="picture_update.php?channel=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/page_add.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][4];?>
"></a>
					<?php }elseif($_smarty_tpl->tpl_vars['n']->value['module']=='MO004x'){?><a href="download_update.php?channel=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/page_add.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][5];?>
"></a>
					<?php }else{ ?><img src="../inc/templates/manage/images/operation/disabled.png"><?php }?>
				</td>
			</tr>
           <?php echo subchannel($_smarty_tpl->tpl_vars['n']->value['id']);?>

			<?php }} else { ?><tr><td colspan="6" class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['no_data'];?>
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