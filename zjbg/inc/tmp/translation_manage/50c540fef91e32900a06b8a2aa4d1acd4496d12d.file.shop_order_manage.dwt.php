<?php /* Smarty version Smarty-3.0.9, created on 2013-07-10 15:47:41         compiled from "/Users/cgc/Sites/mlecms/inc/templates/manage/shop_order_manage.dwt" */ ?><?php /*%%SmartyHeaderCode:162857746051dd119d05aee0-94563199%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');$_smarty_tpl->decodeProperties(array (  'file_dependency' =>   array (    '50c540fef91e32900a06b8a2aa4d1acd4496d12d' =>     array (      0 => '/Users/cgc/Sites/mlecms/inc/templates/manage/shop_order_manage.dwt',      1 => 1344393624,      2 => 'file',    ),  ),  'nocache_hash' => '162857746051dd119d05aee0-94563199',  'function' =>   array (  ),  'has_nocache_code' => false,)); /*/%%SmartyHeaderCode%%*/?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title><?php echo $_smarty_tpl->getVariable('lang')->value['common']['web_title'];?></title><link rel="stylesheet" type="text/css" href="../inc/templates/manage/css/common_<?php echo $_smarty_tpl->getVariable('admin')->value['theme'];?>.css" /><script type="text/javascript" src="../inc/script/jquery.js"></script><script type="text/javascript" src="../inc/templates/manage/js/common.js"></script><script type="text/javascript">function check(){	var key = $('#word').val();	if(key == '' || key == "<?php echo $_smarty_tpl->getVariable('lang')->value['page']['keyword'];?>"){		alert("<?php echo $_smarty_tpl->getVariable('lang')->value['page']['enter_keywords'];?>");		return false;			} else {		return true;		}}$(function(){	mycms.keysubmit('search','search_button','check()');	mycms.alternately('list');	mycms.title2div('title2div');	mycms.acsubmit('manage','del','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][1];?>','del',false);	mycms.keysubmit('manage','submit',true);});</script></head><body><?php $_template = new Smarty_Internal_Template('component_header.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null); echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?><div id="body_box">	<table cellpadding="0" cellspacing="0" border="0" class="icon">		<tr><td><?php echo $_smarty_tpl->getVariable('mycms')->value['icon'];?></td></tr>	</table>	<div class="rounded table">		<table width="100%" cellpadding="0" cellspacing="0" border="0" class="box_top">			<tr>				<td class="title"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['title'];?><?php echo $_smarty_tpl->getVariable('mycms')->value['title_lang'];?></td>				<td>					<form action="" method="get" name="search" id="search">					<table cellpadding="0" cellspacing="5" border="0">						<tr>							<td><select class="select rounded" onChange="window.open(this.options[this.selectedIndex].value,'_self')" size="1"><?php echo $_smarty_tpl->getVariable('mycms')->value['sort_text'];?></select></td>							<td><select class="select rounded" onChange="window.open(this.options[this.selectedIndex].value,'_self')" size="1"><?php echo $_smarty_tpl->getVariable('mycms')->value['filter_text'];?></select></td>							<td>								<input type="hidden" name="channel" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['get']['channel'];?>" />								<input type="hidden" name="category" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['get']['category'];?>" />								<input type="hidden" name="sort" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['get']['sort'];?>" />								<input type="hidden" name="trash" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['get']['trash'];?>" />								<input type="text" class="input rounded" name="word" id="word" size="15" onfocus="if(this.value=='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['keyword'];?>'){this.value='';}" onblur="if(this.value==''){this.value='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['keyword'];?>';}" value="<?php if ($_smarty_tpl->getVariable('mycms')->value['get']['word']){?><?php echo $_smarty_tpl->getVariable('mycms')->value['get']['word'];?><?php }else{ ?><?php echo $_smarty_tpl->getVariable('lang')->value['page']['keyword'];?><?php }?>" />							</td>							<td><a class="button_2" href="#" id="search_button"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['search'];?></a></td>							<td><a class="button_2" href="shop_order_manage.php?<?php echo rand();?>"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['refresh'];?></a></td>							</tr>					</table>								</form>				</td>			</tr>		</table>				<form action="" method="post" name="manage" id="manage">		<table class="list td_align" cellpadding="0" cellspacing="1" border="0">			<tr>				<td class="field_head" width="30"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][0];?></td>				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][1];?></td>				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][2];?></td>				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][3];?></td>				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][4];?></td>				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][5];?></td>				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['head'][6];?></td>			</tr>			<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable; $_from = $_smarty_tpl->getVariable('mycms')->value['list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}if ($_smarty_tpl->_count($_from) > 0){    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){?>			<tr>				<td><input name="del[]" type="checkbox" value="<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>" /></td>				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['oid'];?></td>				<td><a href="member_update.php?id=<?php echo $_smarty_tpl->tpl_vars['n']->value['uid'];?>" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][6];?>"><?php echo (($_smarty_tpl->tpl_vars['n']->value['username']).('</a> (')).(date('Y-m-d',$_smarty_tpl->tpl_vars['n']->value['addtime']));?>)</td>				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['consignee'];?><?php if (!empty($_smarty_tpl->tpl_vars['n']->value['tel'])){?> (<?php echo $_smarty_tpl->tpl_vars['n']->value['tel'];?>)<?php }elseif(!empty($_smarty_tpl->tpl_vars['n']->value['mobile'])){?> (<?php echo $_smarty_tpl->tpl_vars['n']->value['mobile'];?>)<?php }?></td>				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['amount'];?></td>				<td<?php if ($_smarty_tpl->tpl_vars['n']->value['status']==4){?> class="blue"<?php }?>><?php echo $_smarty_tpl->getVariable('lang')->value['page']['status'][$_smarty_tpl->tpl_vars['n']->value['status']];?></td>				<td class="operation">					<a href="shop_order_update.php?id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>"><img src="../inc/templates/manage/images/operation/edit.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][2];?>" /></a>					<a href="shop_order_manage.php?page=<?php echo $_smarty_tpl->getVariable('mycms')->value['get']['page'];?>&sort=<?php echo $_smarty_tpl->getVariable('mycms')->value['get']['sort'];?>&filter=<?php echo $_smarty_tpl->getVariable('mycms')->value['get']['filter'];?>&del=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>" onclick="return confirm('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][4];?>');"><img src="../inc/templates/manage/images/operation/delete.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][3];?>" /></a>								</td>			</tr>			<?php }} ?>		</table>		<table class="table top_line">			<tr>				<td>					<table cellpadding="0" cellspacing="0" border="0">						<tr>							<td class="all_action"><input name="all" id="all" type="checkbox" onclick="mycms.select_all(this.form);" /></td>							<td> &nbsp<?php echo $_smarty_tpl->getVariable('lang')->value['page']['select_all'];?> &nbsp;</td>							<td class="operation">								<input type="hidden" name="action" id="action" value="" />								<a href="javascript:void(0);"><img id="del" src="../inc/templates/manage/images/operation/delete.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][0];?>" /></a>							</td>											</tr>					</table>				</td>			</tr>		</table>					</form>		<?php echo $_smarty_tpl->getVariable('mycms')->value['page'];?>		<?php if ($_smarty_tpl->getVariable('admin')->value['information']){?><div class="information rounded"><ol></ol><?php echo $_smarty_tpl->getVariable('lang')->value['page']['operation'][5];?></div><?php }?>	</div>	<?php $_template = new Smarty_Internal_Template('component_footer.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null); echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?></div></body></html>