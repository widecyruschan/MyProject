<?php /* Smarty version Smarty-3.0.9, created on 2015-05-30 22:48:10
         compiled from "E:/website/tf/inc/templates/frontend/default/links.tpl" */ ?>
<?php /*%%SmartyHeaderCode:240485569cdaab97d51-65524589%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fb6b500765605878d63433b80140b069a1cb8efd' => 
    array (
      0 => 'E:/website/tf/inc/templates/frontend/default/links.tpl',
      1 => 1418117406,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '240485569cdaab97d51-65524589',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $_smarty_tpl->getVariable('lang')->value['page']['title'];?>
</title>

<meta name="keywords" content="<?php echo $_smarty_tpl->getVariable('web')->value['keyword'];?>
" />
<meta name="description" content="<?php echo $_smarty_tpl->getVariable('web')->value['description'];?>
" />
<meta name="copyright" content="2009-2011 MYCMS <?php echo $_smarty_tpl->getVariable('mycms')->value['version'];?>
" />
<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
style/misc.css" />
<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
style/language_<?php echo $_smarty_tpl->getVariable('web')->value['lang'];?>
.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
<script type="text/javascript">
$(function(){
	// 文本域交互样式
	$('.form .input').add('textarea').focus(function(){$(this).css({'border-color':'#40B3FF','background-color':'#E5F5FF'});});
	$('.form .input').add('textarea').blur(function(){$(this).css({'border-color':'#C8C8FF','background-color':'#FFFFFF'});});
	// 表单检验
	$('#guestbook').submit(function(){
		// 非必填项初始化
		$('#logourl').val() == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][2];?>
' && $('#logourl').val('');
		$('#webmaster').val() == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][3];?>
' && $('#webmaster').val('');
		$('#contact').val() == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][4];?>
' && $('#contact').val('');
		$('#info').val() == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][5];?>
' && $('#info').val('');
		
		// 必填项检测
		var s = true;
		if($('#webname').val() == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][0];?>
' || $('#webname').val() == ''){$('#webname').css({'border-color':'#F60','background-color':'#FFF2F2','color':'#F33'}); s = false;}
		if($('#weburl').val() == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][1];?>
' || $('#weburl').val() == ''){$('#weburl').css({'border-color':'#F60','background-color':'#FFF2F2','color':'#F33'}); s = false;}
		return s;
	});
});
</script>
</head>
<body>
<?php $_template = new Smarty_Internal_Template('component_header.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
<div class="box">
	<div class="frame_main">
		<div class="titlebar">
			<ol class="title"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['title'];?>
</ol>
			<ol class="location"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['location'];?>
<a href="./"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['home'];?>
</a> &gt;&gt; <?php echo $_smarty_tpl->getVariable('lang')->value['page']['title'];?>
</ol>
		</div>
		
		<!-- LOGO 链接 -->
		<div class="logo_link">
		<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = misc::links(200,1); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
		<ol><a href="<?php echo $_smarty_tpl->tpl_vars['n']->value['weburl'];?>
" target="_blank" title="<?php echo $_smarty_tpl->tpl_vars['n']->value['webname'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['n']->value['logourl'];?>
" width="88" height="31" border="0" /></a><br /><a href="<?php echo $_smarty_tpl->tpl_vars['n']->value['weburl'];?>
" target="_blank" title="<?php echo $_smarty_tpl->tpl_vars['n']->value['webname'];?>
"><?php if ($_smarty_tpl->tpl_vars['n']->value['color']==''){?><?php echo $_smarty_tpl->tpl_vars['n']->value['webname'];?>
<?php }else{ ?><font color="<?php echo $_smarty_tpl->tpl_vars['n']->value['color'];?>
"><?php echo $_smarty_tpl->tpl_vars['n']->value['webname'];?>
</font><?php }?></a></ol>
		<?php }} else { ?><div class="notdata"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['notdata'][0];?>
</div>
		<?php } ?>
		</div>
		
		<!-- 文字链接 -->
		<div class="text_link">
		<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = misc::links(200,0); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
		<a href="<?php echo $_smarty_tpl->tpl_vars['n']->value['weburl'];?>
" target="_blank" title="<?php echo $_smarty_tpl->tpl_vars['n']->value['webname'];?>
"><?php if ($_smarty_tpl->tpl_vars['n']->value['color']==''){?><?php echo $_smarty_tpl->tpl_vars['n']->value['webname'];?>
<?php }else{ ?><font color="<?php echo $_smarty_tpl->tpl_vars['n']->value['color'];?>
"><?php echo $_smarty_tpl->tpl_vars['n']->value['webname'];?>
</font><?php }?></a>&nbsp;&nbsp;
		<?php }} else { ?><div class="notdata"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['notdata'][1];?>
</div>
		<?php } ?>
		</div>

	</div>
	<div class="frame_side">
		<div><ol class="heading"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['submitted'];?>
</ol></div>
		<div class="form">
			<form method="post" action="links.php" name="guestbook" id="guestbook">
			<ol><input type="text" class="input" name="webname" id="webname" maxlength="100" value="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][0];?>
" onfocus="if(this.value == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][0];?>
'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][0];?>
';this.style.color = '#999';}" /> <font color="#FF0000">*</font></ol>
			<ol><input type="text" class="input" name="weburl" id="weburl" maxlength="50" value="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][1];?>
" onfocus="if(this.value == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][1];?>
'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][1];?>
';this.style.color = '#999';}" /> <font color="#FF0000">*</font></ol>
			<ol><input type="text" class="input" name="logourl" id="logourl" maxlength="50" value="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][2];?>
" onfocus="if(this.value == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][2];?>
'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][2];?>
';this.style.color = '#999';}" /></ol>
			<ol><input type="text" class="input" name="webmaster" id="webmaster" maxlength="20" value="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][3];?>
" onfocus="if(this.value == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][3];?>
'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][3];?>
';this.style.color = '#999';}" /></ol>
			<ol><input type="text" class="input" name="contact" id="contact" maxlength="20" value="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][4];?>
" onfocus="if(this.value == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][4];?>
'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][4];?>
';this.style.color = '#999';}" /></ol>
			<ol><textarea name="info" id="info" onkeyup="if(value.length>200){value=value.substr(0,200);}" onfocus="if(this.value == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][5];?>
'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][5];?>
';this.style.color = '#999';}"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][5];?>
</textarea></ol>
			<ol class="submit"><input value="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][6];?>
" type="submit" /></ol>
			</form>
		</div>
	</div>
</div>
<?php $_template = new Smarty_Internal_Template('component_footer.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</body>
</html>