<?php /* Smarty version Smarty-3.0.9, created on 2012-08-08 17:26:43
         compiled from "E:/website/mambo/inc/templates/manage/member_update.dwt" */ ?>
<?php /*%%SmartyHeaderCode:2206502230d3b9e525-40708426%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5d71307ee5b8eb888429316b2b3c592c17e22a57' => 
    array (
      0 => 'E:/website/mambo/inc/templates/manage/member_update.dwt',
      1 => 1344393623,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2206502230d3b9e525-40708426',
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
function detect(){
	if(document.update.password.value != document.update.password_confirm.value){
		alert('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['password_inconsistency'];?>
');
		return false;	
	}
	if(document.update.password.value != '' && document.update.password.value.length < 6 ){
		alert('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['password_short'];?>
');
		return false;			
	}
	return true;
}
$(function(){
	mycms.alternately('list');
	mycms.title2div('title2div');
	mycms.keysubmit('update','submit','detect()');
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
</td>
			</tr>
		</table>	
		<form action="" method="post" name="update" id="update">
		<table class="list" cellpadding="0" cellspacing="1">
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['username'];?>
</td>
				<td><input type="text" class="input rounded" size="30" name="username" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['user']['username'];?>
" /></td>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['type'];?>
</td>
				<td>
					<input name="type" type="radio" value="0" <?php if ($_smarty_tpl->getVariable('mycms')->value['user']['type']==0){?>checked<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['personal'];?>
 &nbsp;
					<input name="type" type="radio" value="1" <?php if ($_smarty_tpl->getVariable('mycms')->value['user']['type']==1){?>checked<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['enterprise'];?>

				</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['password'];?>
</td>
				<td>
					<input type="password" class="input rounded" size="30" name="password" value="" onclick="this.select();" />
					<img src="../inc/templates/manage/images/operation/help.png" width="16" height="16" border="0" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['password_title'];?>
" class="title2div" />
				</td>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['sex'];?>
</td>
				<td>
					<input name="sex" type="radio" value="0" <?php if ($_smarty_tpl->getVariable('mycms')->value['user']['sex']==0){?>checked<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['female'];?>
 &nbsp;
					<input name="sex" type="radio" value="1" <?php if ($_smarty_tpl->getVariable('mycms')->value['user']['sex']==1){?>checked<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['male'];?>
 &nbsp;
					<input name="sex" type="radio" value="2" <?php if ($_smarty_tpl->getVariable('mycms')->value['user']['sex']==2){?>checked<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['secrecy'];?>
 
				</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['password_confirm'];?>
</td>
				<td>
					<input type="password" class="input rounded" size="30" name="password_confirm" value="" onclick="this.select();" />
					<img src="../inc/templates/manage/images/operation/help.png" width="16" height="16" border="0" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['password_title'];?>
" class="title2div" />
				</td>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['money'];?>
</td>
				<td>
					<input type="text" class="input rounded" size="8" name="money" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['user']['money'];?>
" />
					<img src="../inc/templates/manage/images/operation/help.png" width="16" height="16" border="0" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['proposed_changes'];?>
" class="title2div" />
				</td>
			</tr>
		
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['email'];?>
</td>
				<td><input type="text" class="input rounded" size="30" name="email" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['user']['email'];?>
" /></td>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['usemoney'];?>
</td>
				<td><input type="text" class="input rounded" size="8" name="usemoney" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['user']['usemoney'];?>
" /></td>
			</tr><tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['qq'];?>
</td>
				<td><input type="text" class="input rounded" size="30" name="qq" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['user']['qq'];?>
" /></td>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['scores'];?>
</td>
				<td><input type="text" class="input rounded" size="8" name="scores" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['user']['scores'];?>
" /></td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['problem'];?>
</td>
				<td><input type="text" class="input rounded" size="30" name="problem" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['user']['problem'];?>
" /></td>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['nickname'];?>
</td>
				<td><input type="text" class="input rounded" size="16" name="nickname" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['user']['nickname'];?>
" /></td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['answer'];?>
</td>
				<td><input type="text" class="input rounded" size="30" name="answer" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['user']['answer'];?>
" /></td>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['level'];?>
</td>
				<td>
					<select name="level" class="select rounded">
					<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['member_rank']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
					<option <?php if ($_smarty_tpl->getVariable('mycms')->value['user']['level']==$_smarty_tpl->tpl_vars['n']->value['id']){?>selected="selected"<?php }?> value="<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['n']->value['rankname'];?>
</option>
					<?php }} ?>
					</select>		
				</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['companyname'];?>
</td>
				<td><input type="text" class="input rounded" size="30" name="companyname" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['user']['companyname'];?>
" /></td>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['phone'];?>
</td>
				<td><input type="text" class="input rounded" size="16" name="phone" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['user']['phone'];?>
" /></td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['companyweb'];?>
</td>
				<td><input type="text" class="input rounded" size="30" name="companyweb" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['user']['companyweb'];?>
" /></td>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['fax'];?>
</td>
				<td><input type="text" class="input rounded" size="16" name="fax" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['user']['fax'];?>
" /></td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['companyaddress'];?>
</td>
				<td><input type="text" class="input rounded" size="30" name="companyaddress" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['user']['companyaddress'];?>
" /></td>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['frequency'];?>
</td>
				<td><input type="text" class="input rounded" size="8" name="frequency" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['user']['frequency'];?>
" /></td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['loginip'];?>
</td>
				<td><input type="text" class="input rounded" size="30" name="loginip" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['user']['loginip'];?>
" /></td>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['jointime'];?>
</td>
				<td><?php echo $_smarty_tpl->getVariable('mycms')->value['user']['jointime'];?>
</td>		
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['logintime'];?>
</td>
				<td><?php echo $_smarty_tpl->getVariable('mycms')->value['user']['logintime'];?>
</td>	
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['joinip'];?>
</td>
				<td><input type="text" class="input rounded" size="16" name="joinip" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['user']['joinip'];?>
" /></td>	
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['register_audit'][0];?>
</td>
				<td>
					<input name="audit" type="radio" value="0" <?php if ($_smarty_tpl->getVariable('mycms')->value['user']['audit']==0){?>checked<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['register_audit'][1];?>
 &nbsp;
					<input name="audit" type="radio" value="1" <?php if ($_smarty_tpl->getVariable('mycms')->value['user']['audit']==1){?>checked<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['register_audit'][2];?>
 &nbsp;
					<input name="audit" type="radio" value="2" <?php if ($_smarty_tpl->getVariable('mycms')->value['user']['audit']==2){?>checked<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['register_audit'][3];?>

				</td>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['effective'];?>
</td>
				<td>
					<input name="effective" type="radio" value="1" <?php if ($_smarty_tpl->getVariable('mycms')->value['user']['effective']==1){?>checked<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['ban'];?>
 &nbsp;
					<input name="effective" type="radio" value="0" <?php if ($_smarty_tpl->getVariable('mycms')->value['user']['effective']==0){?>checked<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['allow'];?>

				</td>
			</tr>
		</table>
		<table class="table top_line">
			<tr>
				<td align="right" height="60"><a id="submit" class="submit" href="#"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['submit'];?>
</a></td>
				<td width="80">&nbsp;</td>
				<td><a class="submit reset" href="javascript:update.reset();"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['reset'];?>
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
