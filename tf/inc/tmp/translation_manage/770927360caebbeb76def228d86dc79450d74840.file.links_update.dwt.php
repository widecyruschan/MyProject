<?php /* Smarty version Smarty-3.0.9, created on 2013-07-14 17:41:49
         compiled from "/Users/cgc/Sites/mlecms/inc/templates/manage/links_update.dwt" */ ?>
<?php /*%%SmartyHeaderCode:162444671351e2725d371b81-68383663%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '770927360caebbeb76def228d86dc79450d74840' => 
    array (
      0 => '/Users/cgc/Sites/mlecms/inc/templates/manage/links_update.dwt',
      1 => 1344393623,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '162444671351e2725d371b81-68383663',
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
<script type="text/javascript" src="../inc/script/color_select.js"></script>
<script type="text/javascript">
$(function(){
	mycms.alternately('list');
	mycms.title2div('title2div');
	mycms.keysubmit('form','submit','detect()');
	$('form input,form select,form textarea').change(function(){
		if(top_error_isshow){
			$('.top_error').fadeTo(400,0,function(){$(this).slideUp(400);});
			top_error_isshow = false;
		}
	});		
});
var top_error_isshow = false;
function detect(){
	if($('#webname').val() == ''){
		mycms.top_error('<?php echo $_smarty_tpl->getVariable('lang')->value['page'][23];?>
');
		top_error_isshow = true;
		return false;
	}
	
	if($('#weburl').val() == '' || $('#weburl').val() == 'http://'){
		mycms.top_error('<?php echo $_smarty_tpl->getVariable('lang')->value['page'][24];?>
');
		top_error_isshow = true;
		return false;
	}
		
	return true;
}
</script>
<style type="text/css">
.logo ol{float:left; padding:0 5px 0 0; height:30px;}
.upload_preview{width:auto; height:auto;}
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
<?php echo $_smarty_tpl->getVariable('mycms')->value['title_lang'];?>
</td>
			</tr>
		</table>
		
		<div class="error rounded top_error hide"><ol></ol><span></span></div>
		<form action="" method="post" name="form" id="form">
		<table class="list" cellpadding="0" cellspacing="1" border="0">
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][2];?>
</td>
				<td>
					<input name="type" type="radio" value="0" <?php if ($_smarty_tpl->getVariable('mycms')->value['links']['type']=='0'){?>checked<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page'][3];?>
 &nbsp;&nbsp;&nbsp;&nbsp;
					<input name="type" type="radio" value="1" <?php if ($_smarty_tpl->getVariable('mycms')->value['links']['type']=='1'){?>checked<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page'][4];?>

					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][5];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$links['type']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][6];?>
</td>
				<td><input name="webname" id="webname" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['links']['webname'];?>
" size="40" class="input rounded" /> <span class="red">*</span></td>
				<td class="field">{:$links['webname']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][18];?>
</td>
				<td>
					<input name="color" id="color" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['links']['color'];?>
" size="10" class="input rounded iColorPicker" />
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][19];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$links['color']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][7];?>
</td>
				<td><input name="weburl" id="weburl" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['links']['weburl'];?>
" size="40" class="input rounded" /> <span class="red">*</span></td>
				<td class="field">{:$links['weburl']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][8];?>
</td>
				<td>
					<div class="logo">
					<?php if ($_smarty_tpl->getVariable('mycms')->value['links']['preview_logo_url']!=''){?>
					<ol><img src="../inc/templates/manage/images/operation/picture.png" width="16" height="16" border="0" class="title2div" title="<img width='auto' border='0' src='<?php echo $_smarty_tpl->getVariable('mycms')->value['links']['preview_logo_url'];?>
' />"></ol>
					<?php }?>
					<ol><input type="text" name="logourl" id="logourl" class="input rounded" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['links']['logourl'];?>
" size="20" /></ol>
					<ol><iframe src="upload.php?dir=links&preview=upload_preview&return_id=logourl" width="183" height="30" border="0" scrolling="no" frameborder="0"></iframe></ol>
					<ol><img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][9];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" /></ol>
					</div>					
				</td>
				<td class="field"><div id="upload_preview">{:$links['logourl']:}</div></td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][20];?>
</td>
				<td><input name="webmaster" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['links']['webmaster'];?>
" size="40" class="input rounded" /></td>
				<td class="field">{:$links['webmaster']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][21];?>
</td>
				<td>
					<input name="contact" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['links']['contact'];?>
" size="40" class="input rounded" />
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][22];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$links['contact']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][10];?>
</td>
				<td><textarea name="info"  class="rounded" style="padding:5px;" rows="3" cols="40"><?php echo $_smarty_tpl->getVariable('mycms')->value['links']['info'];?>
</textarea></td>
				<td class="field">{:$links['info']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][12];?>
</td>
				<td>
					<input name="sort" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['links']['sort'];?>
" size="10" class="input rounded" />
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][13];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$links['sort']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][14];?>
</td>
				<td>
					<input name="audit" type="radio" value="1" <?php if ($_smarty_tpl->getVariable('mycms')->value['links']['audit']=='1'){?>checked<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page'][15];?>
 &nbsp;&nbsp;&nbsp;&nbsp;
					<input name="audit" type="radio" value="0" <?php if ($_smarty_tpl->getVariable('mycms')->value['links']['audit']=='0'){?>checked<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page'][16];?>

					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][17];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$links['audit']:}</td>
			</tr>
		</table>
		<table class="table top_line">
			<tr>
				<td align="right" height="60"><a id="submit" class="submit" href="#"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['submit'];?>
</a></td>
				<td width="80"><input type="hidden" name="action" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['action'];?>
" /></td>
				<td><a class="submit reset" href="javascript:form.reset();"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['reset'];?>
</a></td>
			</tr>
		</table>		
		</form>
	</div>
	<?php $_template = new Smarty_Internal_Template('component_footer.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</div>
</body>
</html>