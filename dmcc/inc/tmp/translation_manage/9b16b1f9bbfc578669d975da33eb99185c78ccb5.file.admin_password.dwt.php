<?php /* Smarty version Smarty-3.0.9, created on 2014-01-22 17:33:50         compiled from "E:/wwwroot/dmcc/inc/templates/manage/admin_password.dwt" */ ?><?php /*%%SmartyHeaderCode:2429752df907e6087c8-56928949%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');$_smarty_tpl->decodeProperties(array (  'file_dependency' =>   array (    '9b16b1f9bbfc578669d975da33eb99185c78ccb5' =>     array (      0 => 'E:/wwwroot/dmcc/inc/templates/manage/admin_password.dwt',      1 => 1389950815,      2 => 'file',    ),  ),  'nocache_hash' => '2429752df907e6087c8-56928949',  'function' =>   array (  ),  'has_nocache_code' => false,)); /*/%%SmartyHeaderCode%%*/?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title><?php echo $_smarty_tpl->getVariable('lang')->value['common']['web_title'];?></title><link rel="stylesheet" type="text/css" href="../inc/templates/manage/css/common_<?php echo $_smarty_tpl->getVariable('admin')->value['theme'];?>.css" /><script type="text/javascript" src="../inc/script/jquery.js"></script><script type="text/javascript" src="../inc/templates/manage/js/common.js"></script><script type="text/javascript">var top_error_isshow = false;function detect(){	if(document.form_admin.password1.value == ''){		mycms.top_error('<?php echo $_smarty_tpl->getVariable('lang')->value['page'][8];?>');		document.form_admin.password1.focus();		top_error_isshow = true;		return false;	}			if(document.form_admin.password2.value.length < 5 || document.form_admin.password2.value.length > 20){		mycms.top_error('<?php echo $_smarty_tpl->getVariable('lang')->value['page'][6];?>');		document.form_admin.password2.focus();		top_error_isshow = true;		return false;	}	if(document.form_admin.password2.value != document.form_admin.password3.value){		mycms.top_error('<?php echo $_smarty_tpl->getVariable('lang')->value['page'][7];?>');		document.form_admin.password3.focus();		top_error_isshow = true;		return false;	}	return true;	}$(function(){	mycms.alternately('list');	mycms.keysubmit('form_admin','submit','detect()');	$('form input,form select,form textarea').change(function(){		if(top_error_isshow){			$('.top_error').fadeTo(400,0,function(){$(this).slideUp(400);});			top_error_isshow = false;		}	});		});</script></head><body><?php $_template = new Smarty_Internal_Template('component_header.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null); echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?><div id="body_box">	<table cellpadding="0" cellspacing="0" border="0" class="icon">		<tr><td><?php echo $_smarty_tpl->getVariable('mycms')->value['icon'];?></td></tr>	</table>	<div class="rounded table">		<table width="100%" cellpadding="0" cellspacing="0" border="0" class="box_top">			<tr>				<td class="title"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][0];?></td>			</tr>		</table>		<div class="error rounded top_error hide"><ol></ol><span></span></div>		<form name="form_admin" id="form_admin" action="" method="post">				<table class="list" cellpadding="0" cellspacing="1" border="0">			<tr>				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][1];?></td>				<td><?php echo $_smarty_tpl->getVariable('mycms')->value['session']['admin']['login']['username'];?></td>				<td class="field"></td>			</tr>			<tr>				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][2];?></td>				<td><input name="password1" type="password" class="input rounded" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['user']['username'];?>" size="30" maxlength="20" /> <span class="red">*</span></td>				<td class="field"></td>			</tr>			<tr>				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][3];?></td>				<td><input name="password2" type="password" class="input rounded" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['user']['username'];?>" size="30" maxlength="20" /> <span class="red">*</span></td>				<td class="field"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][4];?></td>			</tr>			<tr>				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][5];?></td>				<td><input name="password3" type="password" class="input rounded" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['user']['username'];?>" size="30" maxlength="20" /> <span class="red">*</span></td>				<td class="field"></td>			</tr>		</table>		<table class="table top_line">			<tr>				<td align="right" height="60"><a id="submit" class="submit" href="#"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['submit'];?></a></td>				<td width="80"><input type="hidden" name="action" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['action'];?>" /></td>				<td><a class="submit reset" href="javascript:form_admin.reset();"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['reset'];?></a></td>			</tr>		</table>					</form>	</div>	<?php $_template = new Smarty_Internal_Template('component_footer.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null); echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?></div></body></html>