<?php /* Smarty version Smarty-3.0.9, created on 2013-07-10 15:47:56
         compiled from "/Users/cgc/Sites/mlecms/inc/templates/manage/ad_update.dwt" */ ?>
<?php /*%%SmartyHeaderCode:87687237551dd11ac64c216-76371644%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '1df7bbf95204df73d1d1d95451d766a5db71c709' => 
    array (
      0 => '/Users/cgc/Sites/mlecms/inc/templates/manage/ad_update.dwt',
      1 => 1344393622,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '87687237551dd11ac64c216-76371644',
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
function adtype(tid){
	$('.ad_type').hide();
	switch(tid){
		case 1 : $('.code').show(); break;
		case 2 : $('.image').show(); break;
		case 3 : $('.text').show(); break;
		case 4 : $('.flash').show(); break;
	}
}
var top_error_isshow = false;
function detect(){
	if(document.form.aid.value.match(/^[a-zA-Z][a-zA-Z0-9_]{3,20}$/) == null){
		mycms.top_error('<?php echo $_smarty_tpl->getVariable('lang')->value['page'][48];?>
');
		top_error_isshow = true;
		return false;
	}
	if(document.form.title.value == ''){
		mycms.top_error('<?php echo $_smarty_tpl->getVariable('lang')->value['page'][49];?>
');
		top_error_isshow = true;
		return false;
	}
	if(document.form.url.value == '' || document.form.url.value == 'http://'){
		mycms.top_error('<?php echo $_smarty_tpl->getVariable('lang')->value['page'][50];?>
');
		top_error_isshow = true;
		return false;
	}
	return true;
}
$(function(){
	mycms.alternately('list');
	mycms.title2div('title2div');
	mycms.keysubmit('form','submit','detect()');
	$('.code').show();
	$('form input,form select,form textarea').change(function(){
		if(top_error_isshow){
			$('.top_error').fadeTo(400,0,function(){$(this).slideUp(400);});
			top_error_isshow = false;
		}
	});	
});
</script>
<style type="text/css">
.up{float:left; padding:0 5px 0 0;}
.ad_type{display:none;}
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
					<input name="aid" id="aid" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['ad']['aid'];?>
" size="15" class="input rounded" />
					<select name="aid_often" size="0" class="select rounded" style="width:205px; overflow:hidden;" onChange="document.getElementById('aid').value=this.value; this.selectedIndex=0;">
						<option value="" selected="selected"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][47];?>
</option>
						<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['aid_often']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
						<option value="<?php echo $_smarty_tpl->tpl_vars['n']->value['aid'];?>
"><?php echo $_smarty_tpl->tpl_vars['n']->value['title'];?>
</option>
						<?php }} ?>
					</select>					
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][3];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$ad['aid']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][4];?>
</td>
				<td>
					<input name="title" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['ad']['title'];?>
" size="50" class="input rounded" /> <span class="red">*</span>
				</td>
				<td class="field">{:$ad['title']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][28];?>
</td>
				<td>
					<input name="url" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['ad']['url'];?>
" size="40" class="input rounded" /> <span class="red">*</span>
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][40];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field"><em>NULL</em></td>
			</tr>
			<?php if ($_smarty_tpl->getVariable('mycms')->value['action']=='add'){?>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][20];?>
</td>
				<td>
					<input name="ad_type" type="radio" value="1" onclick="adtype(1)" checked="checked" /> <?php echo $_smarty_tpl->getVariable('lang')->value['page'][21];?>
 &nbsp;&nbsp;&nbsp;&nbsp;
					<input name="ad_type" type="radio" value="2" onclick="adtype(2)" /> <?php echo $_smarty_tpl->getVariable('lang')->value['page'][22];?>
 &nbsp;&nbsp;&nbsp;&nbsp;
					<input name="ad_type" type="radio" value="3" onclick="adtype(3)" /> <?php echo $_smarty_tpl->getVariable('lang')->value['page'][23];?>
 &nbsp;&nbsp;&nbsp;&nbsp;
					<input name="ad_type" type="radio" value="4" onclick="adtype(4)" /> <?php echo $_smarty_tpl->getVariable('lang')->value['page'][24];?>

				</td>
				<td class="field"><em>NULL</em></td>
			</tr>
			<?php }?>
			<tr class="ad_type code">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][25];?>
</td>
				<td>
					<textarea name="code" class="rounded" style="padding:5px;" rows="4" cols="50"><?php echo $_smarty_tpl->getVariable('mycms')->value['ad']['code'];?>
</textarea>
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][26];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$ad['code']:}</td>
			</tr>
			<tr class="ad_type image">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][27];?>
</td>
				<td>
					<div class="up"><input type="text" name="ad_image" id="ad_image" class="input rounded" value="" size="20" /></div>
					<div class="up"><iframe src="upload.php?dir=ad&preview=preview&return_id=ad_image" width="183" height="30" border="0" scrolling="no" frameborder="0"></iframe></div>
					<span class="red">*</span>					
				</td>
				<td class="field"><div id="preview"><em>NULL</em></div></td>
			</tr>
			<tr class="ad_type image">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][29];?>
</td>
				<td>
					<?php echo $_smarty_tpl->getVariable('lang')->value['page'][30];?>
 <input type="text" size="5" class="input rounded" name="ad_width" value="" />
					<?php echo $_smarty_tpl->getVariable('lang')->value['page'][31];?>
 <input type="text" size="5" class="input rounded" name="ad_height" value="" /> Px <span class="red">*</span>					
				</td>
				<td class="field"><em>NULL</em></td>
			</tr>
			<tr class="ad_type image">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][32];?>
</td>
				<td><input name="ad_alt" type="text" value="" size="40" class="input rounded" /></td>
				<td class="field"><em>NULL</em></td>
			</tr>
			<tr class="ad_type text">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][33];?>
</td>
				<td><input name="ad_text" type="text" value="" size="40" class="input rounded" /> <span class="red">*</span></td>
				<td class="field"><em>NULL</em></td>
			</tr>
			<tr class="ad_type text">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][34];?>
</td>
				<td>
					<input name="ad_color" type="text" id="xcolor" value="" size="10" class="input rounded iColorPicker" />
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][35];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field"><em>NULL</em></td>
			</tr>
			<tr class="ad_type text">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][36];?>
</td>
				<td>
					<input name="ad_size" type="text" value="" size="10" class="input rounded" /> Px
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][37];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field"><em>NULL</em></td>
			</tr>
			<tr class="ad_type flash">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][38];?>
</td>
				<td>
					<div class="up"><input type="text" name="ad_flash" id="ad_flash" class="input rounded" value="" size="20" /></div>
					<div class="up"><iframe src="upload.php?dir=ad&annex=1&return_id=ad_flash" width="183" height="30" border="0" scrolling="no" frameborder="0"></iframe></div>
					<span class="red">*</span>					
				</td>
				<td class="field"><em>NULL</em></td>
			</tr>
			<tr class="ad_type flash">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][39];?>
</td>
				<td>
					<?php echo $_smarty_tpl->getVariable('lang')->value['page'][30];?>
 <input type="text" size="5" class="input rounded" name="ad_flash_width" value="" />
					<?php echo $_smarty_tpl->getVariable('lang')->value['page'][31];?>
 <input type="text" size="5" class="input rounded" name="ad_flash_height" value="" /> Px <span class="red">*</span>					
				</td>
				<td class="field"><em>NULL</em></td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][5];?>
</td>
				<td>
					<input name="weight" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['ad']['weight'];?>
" size="10" class="input rounded" />
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][6];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$ad['weight']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][7];?>
</td>
				<td>
					<input name="limit" type="radio" value="0" <?php if ($_smarty_tpl->getVariable('mycms')->value['ad']['limit']!='1'){?>checked<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page'][8];?>
 &nbsp;&nbsp;&nbsp;&nbsp;
					<input name="limit" type="radio" value="1" <?php if ($_smarty_tpl->getVariable('mycms')->value['ad']['limit']=='1'){?>checked<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page'][9];?>

				</td>
				<td class="field">{:$ad['limit']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][10];?>
</td>
				<td>
					<input name="start" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['ad']['start'];?>
" size="20" class="input rounded" />
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][11];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$ad['start']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][12];?>
</td>
				<td>
					<input name="end" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['ad']['end'];?>
" size="20" class="input rounded" />
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][13];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$ad['end']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][14];?>
</td>
				<td>
					<textarea name="expired" class="rounded" style="padding:5px;" rows="3" cols="50"><?php echo $_smarty_tpl->getVariable('mycms')->value['ad']['expired'];?>
</textarea>
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][15];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$ad['expired']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][41];?>
</td>
				<td>
					<input name="click_open" type="radio" value="1" <?php if ($_smarty_tpl->getVariable('mycms')->value['ad']['click']!='-1'){?>checked<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page'][42];?>
 &nbsp;&nbsp;&nbsp;&nbsp;
					<input name="click_open" type="radio" value="0" <?php if ($_smarty_tpl->getVariable('mycms')->value['ad']['click']=='-1'){?>checked<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page'][43];?>

					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][44];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$ad['click']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][45];?>
</td>
				<td>
					<input name="click" type="text" value="<?php if ($_smarty_tpl->getVariable('mycms')->value['ad']['click']=='-1'){?>0<?php }else{ ?><?php echo $_smarty_tpl->getVariable('mycms')->value['ad']['click'];?>
<?php }?>" size="10" class="input rounded" />
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][46];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$ad['click']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][55];?>
</td>
				<td>
					<input name="sort" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['ad']['sort'];?>
" size="10" class="input rounded" />
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][56];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$ad['sort']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][16];?>
</td>
				<td>
					<input name="enable" type="radio" value="1" <?php if ($_smarty_tpl->getVariable('mycms')->value['ad']['enable']=='1'){?>checked<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page'][17];?>
 &nbsp;&nbsp;&nbsp;&nbsp;
					<input name="enable" type="radio" value="0" <?php if ($_smarty_tpl->getVariable('mycms')->value['ad']['enable']!='1'){?>checked<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page'][18];?>

					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page'][19];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$ad['enable']:}</td>
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
		<?php if ($_smarty_tpl->getVariable('admin')->value['information']){?><div class="information rounded"><ol></ol><?php echo $_smarty_tpl->getVariable('lang')->value['page'][51];?>
</div><?php }?>
	</div>
	<?php $_template = new Smarty_Internal_Template('component_footer.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</div>
</body>
</html>