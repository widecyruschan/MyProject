<?php /* Smarty version Smarty-3.0.9, created on 2014-01-22 17:33:16         compiled from "E:/wwwroot/dmcc/inc/templates/manage/admin_update.dwt" */ ?><?php /*%%SmartyHeaderCode:658852df905c6b8126-55174846%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');$_smarty_tpl->decodeProperties(array (  'file_dependency' =>   array (    'ad70fb87112d3892e0e847ffee28b048f6d5e055' =>     array (      0 => 'E:/wwwroot/dmcc/inc/templates/manage/admin_update.dwt',      1 => 1389950821,      2 => 'file',    ),  ),  'nocache_hash' => '658852df905c6b8126-55174846',  'function' =>   array (  ),  'has_nocache_code' => false,)); /*/%%SmartyHeaderCode%%*/?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title><?php echo $_smarty_tpl->getVariable('lang')->value['common']['web_title'];?></title><link rel="stylesheet" type="text/css" href="../inc/templates/manage/css/common_<?php echo $_smarty_tpl->getVariable('admin')->value['theme'];?>.css" /><script type="text/javascript" src="../inc/script/jquery.js"></script><script type="text/javascript" src="../inc/templates/manage/js/common.js"></script><style type="text/css">#file_list{padding:10px 0 25px 60px;}#file_list ul{clear:both;}#file_list ul li{float:left; height:22px; line-height:22px;}#file_list ul .aax{width:18px;}#file_list ul .aay{width:120px;}</style><script type="text/javascript">var top_error_isshow = false;function detect(){	if(document.form_admin.username.value.length < 5 || document.form_admin.username.value.length > 20){		mycms.top_error('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['info'][0];?>');		document.form_admin.username.focus();		top_error_isshow = true;		return false;	}	<?php if ($_smarty_tpl->getVariable('mycms')->value['action']=='add'){?>	if(document.form_admin.password.value.length < 5 || document.form_admin.password.value.length > 20){		mycms.top_error('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['info'][1];?>');		document.form_admin.password.focus();		top_error_isshow = true;		return false;	}	<?php }?>	if(document.form_admin.password.value != document.form_admin.password_.value){		mycms.top_error('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['info'][3];?>');		document.form_admin.password.focus();		top_error_isshow = true;		return false;	}	return true;	}$(function(){	mycms.alternately('list');	mycms.keysubmit('form_admin','submit','detect()');	$('form input,form select,form textarea').change(function(){		if(top_error_isshow){			$('.top_error').fadeTo(400,0,function(){$(this).slideUp(400);});			top_error_isshow = false;		}	});		});</script></head><body><?php $_template = new Smarty_Internal_Template('component_header.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null); echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?><div id="body_box">	<table cellpadding="0" cellspacing="0" border="0" class="icon">		<tr><td><?php echo $_smarty_tpl->getVariable('mycms')->value['icon'];?></td></tr>	</table>	<div class="rounded table">		<table width="100%" cellpadding="0" cellspacing="0" border="0" class="box_top">			<tr>				<td class="title"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['title'];?></td>			</tr>		</table>		<div class="error rounded top_error hide"><ol></ol><span></span></div>		<form name="form_admin" id="form_admin" action="" method="post">		<table class="list" cellpadding="0" cellspacing="1" border="0">			<tr>				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['list'][0];?></td>				<td><input name="username" type="text" class="input rounded" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['user']['username'];?>" size="30" maxlength="20" /> <span class="red">*</span></td>				<td class="field"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['list'][1];?></td>			</tr>			<tr>				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['list'][2];?></td>				<td><input name="password" type="password" class="input rounded" value="" size="30" maxlength="32" /> <span class="red">*</span></td>				<td class="field"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['list'][1];?><?php if ($_smarty_tpl->getVariable('mycms')->value['action']=='update'){?>，<?php echo $_smarty_tpl->getVariable('lang')->value['page']['list'][3];?><?php }?></td>			</tr>			<tr>				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['list'][4];?></td>				<td><input name="password_" type="password" class="input rounded" value="" size="30" maxlength="32" /> <span class="red">*</span></td>				<td class="field"><?php if ($_smarty_tpl->getVariable('mycms')->value['action']=='update'){?><?php echo $_smarty_tpl->getVariable('lang')->value['page']['list'][3];?><?php }?></td>			</tr>			<tr>				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['list'][5];?></td>				<td>					<input name="level" type="radio" value="0" onclick="$('#file_list').slideDown(400,function(){$(this).fadeTo(400,1)});" <?php if ($_smarty_tpl->getVariable('mycms')->value['user']['level']=='0'||$_smarty_tpl->getVariable('mycms')->value['action']=='add'){?>checked<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page']['list'][6];?> &nbsp;&nbsp;&nbsp;&nbsp;					<input name="level" type="radio" value="1" onclick="$('#file_list').fadeTo(400,0,function(){$(this).slideUp(400);});" <?php if ($_smarty_tpl->getVariable('mycms')->value['user']['level']=='1'){?>checked<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page']['list'][7];?>				</td>				<td class="field"></td>			</tr>		</table>		<div id="file_list" <?php if ($_smarty_tpl->getVariable('mycms')->value['user']['level']=='1'){?>style="display:none;"<?php }?>>			<ul>				<li class="aax"><input type="checkbox" value="3" name="all" onclick="mycms.select_all(this.form);" /></li>				<li><strong><?php echo $_smarty_tpl->getVariable('lang')->value['page']['list'][8];?></strong></li>			</ul>			<ul>			<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable; $_from = $_smarty_tpl->getVariable('mycms')->value['file_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}if ($_smarty_tpl->_count($_from) > 0){    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){ $_smarty_tpl->tpl_vars['i']->value = $_smarty_tpl->tpl_vars['n']->key;?>			<li class="aax"><input name="purviews[]" type="checkbox" value="<?php echo $_smarty_tpl->tpl_vars['n']->value[0];?>" <?php if ($_smarty_tpl->getVariable('mycms')->value['action']=='update'&&in_array($_smarty_tpl->tpl_vars['n']->value[0],$_smarty_tpl->getVariable('mycms')->value['user']['purviews'])){?>checked="checked"<?php }?> /></li>			<li class="aay"><?php echo $_smarty_tpl->tpl_vars['n']->value[1];?></li>			<?php if (($_smarty_tpl->tpl_vars['i']->value+1)%4==0){?></ul><ul><?php }?>			<?php }} ?>			</ul>		</div>				<table class="table top_line">			<tr>				<td align="right" height="60"><a id="submit" class="submit" href="#"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['submit'];?></a></td>				<td width="80"><input type="hidden" name="action" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['action'];?>" /></td>				<td><a class="submit reset" href="javascript:form_admin.reset();"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['reset'];?></a></td>			</tr>		</table>				</form>		<?php if ($_smarty_tpl->getVariable('admin')->value['information']){?><div class="information rounded"><ol></ol><?php echo $_smarty_tpl->getVariable('lang')->value['page']['info'][4];?></div><?php }?>	</div>	<?php $_template = new Smarty_Internal_Template('component_footer.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null); echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?></div></body></html>