<?php /* Smarty version Smarty-3.0.9, created on 2015-06-29 11:56:39
         compiled from "/Users/CyrusChan/Sites/dmcc/inc/templates/manage/member_manage.dwt" */ ?>
<?php /*%%SmartyHeaderCode:8995654355590c1f7e4b340-57936657%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f84984c45592fa4cd7603d4d7cc7a3728a9534c1' => 
    array (
      0 => '/Users/CyrusChan/Sites/dmcc/inc/templates/manage/member_manage.dwt',
      1 => 1401765801,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '8995654355590c1f7e4b340-57936657',
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
<script type="text/javascript" src="../inc/script/jquery.alerts.js"></script>
<script type="text/javascript" src="../inc/templates/manage/js/common.js"></script>
<style type="text/css">
#popup_content{background:url(../inc/templates/manage/images/alerts/money_bag.png) no-repeat 10px 40px;} /* 变更 Prompt 侧面图 */
</style>
<script type="text/javascript">
function check(){
	var key = $('#word').val();
	if(key == '' || key == "<?php echo $_smarty_tpl->getVariable('lang')->value['page']['keyword'];?>
"){
		alert("<?php echo $_smarty_tpl->getVariable('lang')->value['page']['enter_keywords'];?>
");
		return false;		
	} else {
		return true;	
	}
}
$(function(){
	//绑定事件
	mycms.alternately('list');
	mycms.keysubmit('search_form','search','check()');
	mycms.acsubmit('manage','allow','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['determine_changes'];?>
','ban',false);
	mycms.acsubmit('manage','ban','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['determine_changes'];?>
','allow',false);
	mycms.acsubmit('manage','del','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['determine_delete'];?>
','del',false);
	mycms.acsubmit('manage','audit','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['audit'][6];?>
','audit',false);
	mycms.acsubmit('manage','unaudit','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['audit'][5];?>
','unaudit',false);
	mycms.acsubmit('manage','change_level','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['determine_mobile'];?>
','change_level',true);
});

// Prompt
function recharge(usernamd,id){
	jPrompt2(<?php echo $_smarty_tpl->getVariable('lang')->value['page']['jPrompt'];?>
, function(r){
		if(r){ 
			var an = r.split('{$mycms}');
			var amount = an[0];
			var info = an[1];
			if (isNaN(amount)){
				alert('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['determine_amount'];?>
');
				recharge(usernamd);	
			} else if (info == '' || info == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['recharge_info'];?>
'){
				alert('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['determine_info'];?>
');
				recharge(usernamd);	
			} else {
				if(confirm(<?php echo $_smarty_tpl->getVariable('lang')->value['page']['determine_recharge'];?>
)){
					location.href = '<?php echo $_smarty_tpl->getVariable('mycms')->value['ourl'];?>
&action=funds&id=' + id + '&amount=' + amount + '&info=' + info;
				}
			}
		}
	});	
}
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
		<form action="" method="get" name="search_form" id="search_form">
		<table width="100%" cellpadding="0" cellspacing="0" border="0" class="box_top">
			<tr>
				<td class="title"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['title'];?>
</td>
				<td>
					<table cellpadding="0" cellspacing="0" border="0">
						<tr>
							<td>
								<input name="level" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['level'];?>
" type="hidden" />
								<select class="select rounded" onChange="window.open(this.options[this.selectedIndex].value,'_self')" size="1">
								<option <?php if ($_smarty_tpl->getVariable('mycms')->value['level']==0){?>selected="selected"<?php }?> value="member_manage.php"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['all_levels'];?>
</option>
								<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['member_rank']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
								<option <?php if ($_smarty_tpl->getVariable('mycms')->value['level']==$_smarty_tpl->tpl_vars['n']->value['id']){?>selected="selected"<?php }?> value="member_manage.php?level=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['n']->value['rankname'];?>
</option>
								<?php }} ?>
								</select>
							</td>
							<td>
								<input type="text" class="input rounded" name="word" id="word" size="20" onfocus="if(this.value=='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['keyword'];?>
'){this.value='';}" onblur="if(this.value==''){this.value='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['keyword'];?>
';}" value="<?php if ($_smarty_tpl->getVariable('mycms')->value['get']['word']){?><?php echo $_smarty_tpl->getVariable('mycms')->value['get']['word'];?>
<?php }else{ ?><?php echo $_smarty_tpl->getVariable('lang')->value['page']['keyword'];?>
<?php }?>" />
								<input type="text" style="display:none;" /> 
							</td>
							<td><a class="button_2" href="#" id="search"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['search'];?>
</a></td>
							<td><a class="button_2" href="member_manage.php?<?php echo rand();?>
"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['refresh'];?>
</a></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		</form>
		
		<form action="" method="post" name="manage" id="manage">
		<table class="list td_align" cellpadding="0" cellspacing="1" border="0">
			<tr>
				<td class="field_head" width="30"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['select'];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('mycms')->value['sort']['id'];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('mycms')->value['sort']['name'];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('mycms')->value['sort']['money'];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('mycms')->value['sort']['scores'];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('mycms')->value['sort']['mail'];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('mycms')->value['sort']['join'];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['operating'];?>
</td>
			</tr>
			<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
			<?php $_smarty_tpl->tpl_vars['login_ip'] = new Smarty_variable(explode(',',$_smarty_tpl->tpl_vars['n']->value['loginip']), null, null);?>
			<?php if ($_smarty_tpl->getVariable('login_ip')->value[1]==''){?><?php if (!isset($_smarty_tpl->tpl_vars['login_ip']) || !is_array($_smarty_tpl->tpl_vars['login_ip']->value)) $_smarty_tpl->createLocalArrayVariable('login_ip', null, null);
$_smarty_tpl->tpl_vars['login_ip']->value[1] = $_smarty_tpl->getVariable('login_ip')->value[0];?><?php }?>
			<tr>
				<td><input name="id[]" type="checkbox" value="<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
" /></td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
</td>
				<td><a href="member_update.php?id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['n']->value['username'];?>
</a></td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['money'];?>
 (<?php echo $_smarty_tpl->tpl_vars['n']->value['usemoney'];?>
)</td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['scores'];?>
</td>
				<td><?php echo $_smarty_tpl->tpl_vars['n']->value['email'];?>
</td>
				<td><?php echo date('Y-m-d',$_smarty_tpl->tpl_vars['n']->value['jointime']);?>
</td>
				<td class="operation">
					<a href="member_update.php?id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/pencil.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['modify_data'];?>
" /></a>
					<?php if ($_smarty_tpl->tpl_vars['n']->value['audit']==0){?><a href="<?php echo $_smarty_tpl->getVariable('mycms')->value['ourl'];?>
&action=unaudit&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/member.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['audit'][0];?>
" /></a>
					<?php }elseif($_smarty_tpl->tpl_vars['n']->value['audit']==1){?><a href="<?php echo $_smarty_tpl->getVariable('mycms')->value['ourl'];?>
&action=audit&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/cut.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['audit'][1];?>
" /></a>
					<?php }else{ ?><a href="<?php echo $_smarty_tpl->getVariable('mycms')->value['ourl'];?>
&action=audit&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/cut.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['audit'][2];?>
" /></a><?php }?>
					<?php if ($_smarty_tpl->tpl_vars['n']->value['effective']==0){?><a href="<?php echo $_smarty_tpl->getVariable('mycms')->value['ourl'];?>
&action=allow&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/ban.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['state_ban'];?>
" /></a>
					<?php }else{ ?><a href="<?php echo $_smarty_tpl->getVariable('mycms')->value['ourl'];?>
&action=ban&id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/accept.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['state_allows'];?>
" /></a>
					<?php }?><a href="<?php echo $_smarty_tpl->getVariable('mycms')->value['ourl'];?>
&del=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
" onclick="return confirm('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['remove_member_data'];?>
');"><img src="../inc/templates/manage/images/operation/delete.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['delete_current'];?>
" /></a>
					<a href="javascript:recharge('<?php echo $_smarty_tpl->tpl_vars['n']->value['username'];?>
','<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
');"><img src="../inc/templates/manage/images/operation/money.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['online_recharge'];?>
" /></a>
					<a href="member_transactions.php?id=<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><img src="../inc/templates/manage/images/operation/shopping.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['logs'];?>
" /></a>
				</td>
			</tr>
			<?php }} else { ?><tr><td colspan="8" class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['no_data'];?>
</td></tr>
			<?php } ?>
		</table>
		<table class="table top_line">
			<tr>
				<td>
					<table cellpadding="0" cellspacing="0" border="0">
						<tr>
							<td class="all_action"><input name="all" id="all" type="checkbox" onclick="mycms.select_all(this.form);" /></td>
							<td> &nbsp<?php echo $_smarty_tpl->getVariable('lang')->value['page']['select_all'];?>
 &nbsp;</td>
							<td class="operation">
								<input type="hidden" name="action" id="action" value="" />
								<a href="javascript:void(0);"><img id="ban" src="../inc/templates/manage/images/operation/accept.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['allow_logon'];?>
" /></a>
								<a href="javascript:void(0);"><img id="allow" src="../inc/templates/manage/images/operation/ban.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['prohibition_sign'];?>
" /></a>
								<a href="javascript:void(0);"><img id="del" src="../inc/templates/manage/images/operation/delete.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['delete_member_data'];?>
" /></a>
								<a href="javascript:void(0);"><img id="unaudit" src="../inc/templates/manage/images/operation/cut.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['audit'][4];?>
" /></a>
								<a href="javascript:void(0);"><img id="audit" src="../inc/templates/manage/images/operation/member.png" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['audit'][3];?>
" /></a>
							</td>					
							<td> &nbsp;
								<select class="select rounded" name="change_level" id="change_level">
									<option value="" selected="selected"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['mobile_rating'];?>
</option>
									<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['member_rank']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
									<option value="<?php echo $_smarty_tpl->tpl_vars['n']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['n']->value['rankname'];?>
</option>
									<?php }} ?>
								</select>
							</td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		</form>
		<?php echo $_smarty_tpl->getVariable('mycms')->value['page'];?>

	</div>
	<?php $_template = new Smarty_Internal_Template('component_footer.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</div>
</body>
</html>