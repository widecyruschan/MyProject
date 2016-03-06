<?php /* Smarty version Smarty-3.0.9, created on 2013-07-09 16:05:00
         compiled from "/Users/cgc/Sites/mlecms/inc/templates/manage/set_picture.dwt" */ ?>
<?php /*%%SmartyHeaderCode:52184976351dbc42c5f56c8-58571565%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '221532126beaa9bf95c140bf596b313bc58fb0b0' => 
    array (
      0 => '/Users/cgc/Sites/mlecms/inc/templates/manage/set_picture.dwt',
      1 => 1344393624,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '52184976351dbc42c5f56c8-58571565',
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
<script type="text/javascript" src="../inc/script/color_select.js"></script>
<script type="text/javascript">
$(function(){
	mycms.alternately('list');
	mycms.title2div('title2div');	
	mycms.keysubmit('form_picture','submit',true);
});
</script>
<style type="text/css">
.watpic ol{float:left; padding:0 5px 0 0; height:30px;}
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
			</tr>
		</table>		
		<?php if ($_smarty_tpl->getVariable('mycms')->value['preview_failed']!=1){?><div class="error rounded"><ol></ol><?php echo $_smarty_tpl->getVariable('lang')->value['page']['error'][0];?>
<?php echo $_smarty_tpl->getVariable('mycms')->value['preview_failed'];?>
</div><?php }?>
		<?php if ($_smarty_tpl->getVariable('mycms')->value['gd_info']==null){?><div class="error rounded"><ol></ol><?php echo $_smarty_tpl->getVariable('lang')->value['page']['error'][1];?>
</div><?php }?>
		<form name="form_picture" id="form_picture" action="" method="post">
		<table class="list" cellpadding="0" cellspacing="1" border="0">
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['cut'][0];?>
</td>
				<td>
					<?php echo $_smarty_tpl->getVariable('lang')->value['page']['cut'][1];?>
 <input type="text" name="cut[conditions][0]" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['picture_config']['cut']['conditions'][0];?>
" size="5" /> 
					<?php echo $_smarty_tpl->getVariable('lang')->value['page']['cut'][2];?>
 <input type="text" name="cut[conditions][1]" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['picture_config']['cut']['conditions'][1];?>
" size="5" /> <?php echo $_smarty_tpl->getVariable('lang')->value['page']['cut'][3];?>

				</td>
				<td class="field"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['cut'][4];?>
</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['cut'][5];?>
</td>
				<td>
					<select name="cut[quality]">
					<option value="100" <?php if ($_smarty_tpl->getVariable('mycms')->value['picture_config']['cut']['quality']==100){?>selected="selected"<?php }?>><?php echo $_smarty_tpl->getVariable('lang')->value['page']['cut'][6];?>
</option>
					<option value="80" <?php if ($_smarty_tpl->getVariable('mycms')->value['picture_config']['cut']['quality']==80){?>selected="selected"<?php }?>><?php echo $_smarty_tpl->getVariable('lang')->value['page']['cut'][7];?>
</option>
					<option value="60" <?php if ($_smarty_tpl->getVariable('mycms')->value['picture_config']['cut']['quality']==60){?>selected="selected"<?php }?>><?php echo $_smarty_tpl->getVariable('lang')->value['page']['cut'][8];?>
</option>
					<option value="40" <?php if ($_smarty_tpl->getVariable('mycms')->value['picture_config']['cut']['quality']==40){?>selected="selected"<?php }?>><?php echo $_smarty_tpl->getVariable('lang')->value['page']['cut'][9];?>
</option>
					<option value="20" <?php if ($_smarty_tpl->getVariable('mycms')->value['picture_config']['cut']['quality']==20){?>selected="selected"<?php }?>><?php echo $_smarty_tpl->getVariable('lang')->value['page']['cut'][10];?>
</option>
					</select>
				</td>
				<td class="field"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['cut'][11];?>
</td>
			</tr>		
			<?php  $_smarty_tpl->tpl_vars['m'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['x'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['module']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['m']->key => $_smarty_tpl->tpl_vars['m']->value){
 $_smarty_tpl->tpl_vars['x']->value = $_smarty_tpl->tpl_vars['m']->key;
?>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->tpl_vars['m']->value['modname'];?>
：</td>
				<td>
					<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['picture_config'][$_smarty_tpl->tpl_vars['m']->value['modcode']]; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
 $_smarty_tpl->tpl_vars['i']->value = $_smarty_tpl->tpl_vars['n']->key;
?>
					<div class="upload">
						<ul>
							<li><?php echo $_smarty_tpl->getVariable('lang')->value['page']['modname'][0];?>
 <?php echo $_smarty_tpl->tpl_vars['i']->value+1;?>
 <?php echo $_smarty_tpl->getVariable('lang')->value['page']['modname'][1];?>
</li>
							<li><input name="<?php echo $_smarty_tpl->tpl_vars['m']->value['modcode'];?>
[<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
][0]" type="checkbox" value="1" <?php if ($_smarty_tpl->tpl_vars['n']->value[0]=='1'){?>checked="checked"<?php }?> /></li>
							<li><?php echo $_smarty_tpl->getVariable('lang')->value['page']['modname'][2];?>
</li>
							<li><?php echo $_smarty_tpl->getVariable('lang')->value['page']['modname'][3];?>
</li>
							<li><input type="text" name="<?php echo $_smarty_tpl->tpl_vars['m']->value['modcode'];?>
[<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
][1]" value="<?php echo $_smarty_tpl->tpl_vars['n']->value[1];?>
" size="5" /></li>
							<li><?php echo $_smarty_tpl->getVariable('lang')->value['page']['modname'][4];?>
</li>
							<li><input type="text" name="<?php echo $_smarty_tpl->tpl_vars['m']->value['modcode'];?>
[<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
][2]" value="<?php echo $_smarty_tpl->tpl_vars['n']->value[2];?>
" size="5" /></li>
							<li><?php echo $_smarty_tpl->getVariable('lang')->value['page']['modname'][5];?>
</li>
							<li>&nbsp;&nbsp;&nbsp;&nbsp;<input name="<?php echo $_smarty_tpl->tpl_vars['m']->value['modcode'];?>
[<?php echo $_smarty_tpl->tpl_vars['i']->value;?>
][3]" type="checkbox" value="1" <?php if ($_smarty_tpl->tpl_vars['n']->value[3]=='1'){?>checked="checked"<?php }?> /></li>
							<li><?php echo $_smarty_tpl->getVariable('lang')->value['page']['modname'][6];?>
</li>
						</ul>
					</div>
					<?php }} ?>
				</td>
				<td class="field"><?php if ($_smarty_tpl->tpl_vars['x']->value>0){?><?php echo $_smarty_tpl->getVariable('lang')->value['page']['modname'][7];?>
<?php }else{ ?><?php echo $_smarty_tpl->getVariable('lang')->value['page']['modname'][8];?>
<?php }?></td>
			</tr>
			<?php }} ?>

			<tr class="td_top_line">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][0];?>
</td>
				<td>
					<?php echo $_smarty_tpl->getVariable('lang')->value['page']['cut'][1];?>
 <input type="text" name="watermark[request][0]" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['picture_config']['watermark']['request'][0];?>
" size="5" /> 
					<?php echo $_smarty_tpl->getVariable('lang')->value['page']['cut'][2];?>
 <input type="text" name="watermark[request][1]" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['picture_config']['watermark']['request'][1];?>
" size="5" /> <?php echo $_smarty_tpl->getVariable('lang')->value['page']['cut'][3];?>

				</td>
				<td class="field"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][1];?>
</td>
			</tr>			
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][2];?>
</td>
				<td>
					<input name="watermark[type]" type="radio" value="pics" <?php if ($_smarty_tpl->getVariable('mycms')->value['picture_config']['watermark']['type']=='pics'){?>checked="checked"<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][3];?>
 &nbsp;&nbsp;&nbsp;&nbsp;
					<input name="watermark[type]" type="radio" value="text" <?php if ($_smarty_tpl->getVariable('mycms')->value['picture_config']['watermark']['type']=='text'){?>checked="checked"<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][4];?>

				</td>
				<td class="field"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][5];?>
</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][6];?>
</td>
				<td>
					<div class="watpic">
					<ol><input type="text" name="watermark[pics]" id="watpic" class="input rounded" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['picture_config']['watermark']['pics'];?>
" size="20" /></ol>
					<ol><iframe src="upload.php?dir=other&preview=pid&return_id=watpic&fixed=watermark" width="183" height="30" border="0" scrolling="no" frameborder="0"></iframe></ol>
					</div>				
				</td>
				<td class="field"><div id="pid"><img border='0' src='<?php echo $_smarty_tpl->getVariable('mycms')->value['picture_config']['watermark']['pics'];?>
?<?php echo time();?>
' /></div></td>
			</tr>			
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][7];?>
</td>
				<td style="line-height:25px;">
					<input type="radio" name="watermark[alignment]" value="1" <?php if ($_smarty_tpl->getVariable('mycms')->value['picture_config']['watermark']['alignment']=='1'){?>checked="checked"<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][8];?>
 &nbsp;&nbsp;
					<input type="radio" name="watermark[alignment]" value="2" <?php if ($_smarty_tpl->getVariable('mycms')->value['picture_config']['watermark']['alignment']=='2'){?>checked="checked"<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][9];?>
 &nbsp;&nbsp;
					<input type="radio" name="watermark[alignment]" value="3" <?php if ($_smarty_tpl->getVariable('mycms')->value['picture_config']['watermark']['alignment']=='3'){?>checked="checked"<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][10];?>
 &nbsp;&nbsp;<br />
					<input type="radio" name="watermark[alignment]" value="4" <?php if ($_smarty_tpl->getVariable('mycms')->value['picture_config']['watermark']['alignment']=='4'){?>checked="checked"<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][11];?>
 &nbsp;&nbsp;
					<input type="radio" name="watermark[alignment]" value="5" <?php if ($_smarty_tpl->getVariable('mycms')->value['picture_config']['watermark']['alignment']=='5'){?>checked="checked"<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][12];?>
 &nbsp;&nbsp;
					<input type="radio" name="watermark[alignment]" value="6" <?php if ($_smarty_tpl->getVariable('mycms')->value['picture_config']['watermark']['alignment']=='6'){?>checked="checked"<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][13];?>
 &nbsp;&nbsp;<br />
					<input type="radio" name="watermark[alignment]" value="7" <?php if ($_smarty_tpl->getVariable('mycms')->value['picture_config']['watermark']['alignment']=='7'){?>checked="checked"<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][14];?>
 &nbsp;&nbsp;
					<input type="radio" name="watermark[alignment]" value="8" <?php if ($_smarty_tpl->getVariable('mycms')->value['picture_config']['watermark']['alignment']=='8'){?>checked="checked"<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][15];?>
 &nbsp;&nbsp;
					<input type="radio" name="watermark[alignment]" value="9" <?php if ($_smarty_tpl->getVariable('mycms')->value['picture_config']['watermark']['alignment']=='9'){?>checked="checked"<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][16];?>

				</td>
				<td class="field"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][17];?>
</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][18];?>
</td>
				<td>
					<?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][19];?>
 <input name="watermark[x]" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['picture_config']['watermark']['x'];?>
" type="text" size="5" /> <?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][21];?>
&nbsp;&nbsp;&nbsp;&nbsp; 
					<?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][20];?>
 <input name="watermark[y]" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['picture_config']['watermark']['y'];?>
" type="text" size="5" /> <?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][21];?>

				</td>
				<td class="field"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][22];?>
</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][23];?>
</td>
				<td>
					<select name="watermark[truetype]">
					<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['ttf_files']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
					<option value="<?php echo $_smarty_tpl->tpl_vars['n']->value;?>
" <?php if (basename($_smarty_tpl->getVariable('mycms')->value['picture_config']['watermark']['truetype'])==$_smarty_tpl->tpl_vars['n']->value){?>selected="selected"<?php }?>><?php echo $_smarty_tpl->tpl_vars['n']->value;?>
</option>
					<?php }} ?>
					</select>
				</td>
				<td class="field"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['watermark'][24];?>
</td>
			</tr>