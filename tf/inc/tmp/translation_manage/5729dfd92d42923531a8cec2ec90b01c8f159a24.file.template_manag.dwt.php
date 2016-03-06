<?php /* Smarty version Smarty-3.0.9, created on 2013-07-20 10:31:39
         compiled from "/Users/cgc/Sites/mlecms/inc/templates/manage/template_manag.dwt" */ ?>
<?php /*%%SmartyHeaderCode:1615267351e9f68b5b1f80-40901346%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5729dfd92d42923531a8cec2ec90b01c8f159a24' => 
    array (
      0 => '/Users/cgc/Sites/mlecms/inc/templates/manage/template_manag.dwt',
      1 => 1344393624,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1615267351e9f68b5b1f80-40901346',
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
<style type="text/css">
.underline{background:url(../inc/templates/manage/images/0101.gif) bottom repeat-x;}
.underline table td{padding:2px; margin:0; height:25px;}
.list{margin:0 auto 20px auto;}
.list .info{line-height:19px; word-break:break-all;}
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
				<td class="title"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][0];?>
</td>
			</tr>
		</table>
		<table class="list" cellpadding="0" cellspacing="1" border="0">
			<tr>
				<td class="field_head underline"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][1];?>
</td>
				<td class="underline"><b><?php echo $_smarty_tpl->getVariable('lang')->value['page'][2];?>
</b></td>
				<td class="field_head underline" width="100"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][3];?>
</td>
			</tr>
		<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['template_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
			<tr>
				<td align="center" class="underline"><img src="<?php echo ((($_smarty_tpl->getVariable('mycms')->value['template_path']).($_smarty_tpl->tpl_vars['n']->value['dir'])).('/')).($_smarty_tpl->tpl_vars['n']->value['thumbnail']);?>
" width="120" height="160" border="0" style="padding:2px; margin:10px 0; border:1px #CCC solid;" /></td>
				<td class="info underline">
					<?php echo ((('<b>').($_smarty_tpl->getVariable('lang')->value['page'][4])).('</b>')).($_smarty_tpl->tpl_vars['n']->value['name']);?>
<br />
					<?php echo ((('<b>').($_smarty_tpl->getVariable('lang')->value['page'][5])).('</b>')).($_smarty_tpl->tpl_vars['n']->value['version']);?>
<br />
					<b><?php echo $_smarty_tpl->getVariable('lang')->value['page'][6];?>
</b><a target="_blank" href="<?php echo $_smarty_tpl->tpl_vars['n']->value['website'];?>
"><?php echo $_smarty_tpl->tpl_vars['n']->value['production'];?>
</a><br />
					<?php echo ((('<b>').($_smarty_tpl->getVariable('lang')->value['page'][7])).('</b>')).($_smarty_tpl->tpl_vars['n']->value['date']);?>
<br />
					<?php echo ((('<b>').($_smarty_tpl->getVariable('lang')->value['page'][8])).('</b>')).($_smarty_tpl->tpl_vars['n']->value['module']);?>
<br />
					<b><?php echo $_smarty_tpl->getVariable('lang')->value['page'][9];?>
</b><?php echo $_smarty_tpl->tpl_vars['n']->value['use_web'];?>
<br />
					<b><?php echo $_smarty_tpl->getVariable('lang')->value['page'][16];?>
</b><?php echo ($_smarty_tpl->getVariable('mycms')->value['template_path']).($_smarty_tpl->tpl_vars['n']->value['dir']);?>
<br />
					<?php echo ((('<b>').($_smarty_tpl->getVariable('lang')->value['page'][10])).('</b>')).($_smarty_tpl->tpl_vars['n']->value['other']);?>

				</td>
				<td class="underline" align="center">
					<table cellpadding="0" cellspacing="0" border="0">
						<tr>
							<?php if ($_smarty_tpl->tpl_vars['n']->value['dlang_use']){?><!-- 当前语言站点已经启用该模板，"启用模板"按钮灰度变化 -->
							<td><img src="../inc/templates/manage/images/operation/disabled.png" width="16" height="16" border="0"></td>
							<td><font color="#999999"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][19];?>
</font></td>
							<?php }else{ ?>
							<td><img src="../inc/templates/manage/images/operation/accept.png" width="16" height="16" border="0"></td>
							<td><a href="template_manag.php?enable=<?php echo $_smarty_tpl->tpl_vars['n']->value['dir'];?>
"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][18];?>
</a></td>
							<?php }?>
						</tr>
						<tr>
							<td><img src="../inc/templates/manage/images/operation/edit.png" width="16" height="16" border="0"></td>
							<td><a href="template_update.php?dir=<?php echo $_smarty_tpl->tpl_vars['n']->value['dir'];?>
"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][11];?>
</a></td>
						</tr>
						<tr>
							<?php if ($_smarty_tpl->tpl_vars['n']->value['is_use']){?><!-- 有语言站点正在使用该模板，不可以删除 -->
							<td><img src="../inc/templates/manage/images/operation/disabled.png" width="16" height="16" border="0"></td>
							<td><font color="#999999"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][15];?>
</font></td>
							<?php }else{ ?>
							<td><img src="../inc/templates/manage/images/operation/delete.png" width="16" height="16" border="0"></td>
							<td><a onclick="return confirm('<?php echo $_smarty_tpl->getVariable('lang')->value['page'][14];?>
');" href="template_manag.php?del=<?php echo $_smarty_tpl->tpl_vars['n']->value['dir'];?>
"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][12];?>
</a></td>
							<?php }?>
						</tr>
					</table>
				</td>
			</tr>
		<?php }} ?>
		</table>
		<?php echo $_smarty_tpl->getVariable('mycms')->value['page'];?>

		<?php if ($_smarty_tpl->getVariable('admin')->value['information']){?><div class="information rounded"><ol></ol><?php echo $_smarty_tpl->getVariable('lang')->value['page'][13];?>
</div><?php }?>
	</div>
	<?php $_template = new Smarty_Internal_Template('component_footer.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</div>
</body>
</html>