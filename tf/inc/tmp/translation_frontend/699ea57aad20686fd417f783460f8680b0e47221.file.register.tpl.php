<?php /* Smarty version Smarty-3.0.9, created on 2015-02-04 18:10:00
         compiled from "E:/website/tf/inc/templates/frontend/default/register.tpl" */ ?>
<?php /*%%SmartyHeaderCode:936854d1eff8d8ed49-69466598%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '699ea57aad20686fd417f783460f8680b0e47221' => 
    array (
      0 => 'E:/website/tf/inc/templates/frontend/default/register.tpl',
      1 => 1418117408,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '936854d1eff8d8ed49-69466598',
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

<meta name="copyright" content="2009-2011 MYCMS <?php echo $_smarty_tpl->getVariable('mycms')->value['version'];?>
" />
<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
style/register.css" />
<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
style/language_<?php echo $_smarty_tpl->getVariable('web')->value['lang'];?>
.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
<script type="text/javascript" src="inc/script/register.js"></script>
<script type="text/javascript">	
$(function(){
	<?php if ($_smarty_tpl->getVariable('mycms')->value['strictly']){?>	mycms.register.bind('#username','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['strictly_username'];?>
','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['username_exists_js'];?>
',true);
	<?php }else{ ?>mycms.register.bind('#username','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['general_username'];?>
','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['username_exists_js'];?>
',false);<?php }?> 
	mycms.register.bind('#email','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['mail_error'];?>
','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['email_exists_js'];?>
');
	mycms.register.bind('#password','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['pwd_error'];?>
');
	mycms.register.bind('#password2','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['pwd_contrast'];?>
');
	<?php if ($_smarty_tpl->getVariable('mycms')->value['captcha']){?>mycms.register.bind('#captcha','<?php echo $_smarty_tpl->getVariable('lang')->value['page']['fill_captcha'];?>
');<?php }else{ ?>mycms.register.captcha = true;<?php }?>  
	mycms.register.rank(<?php echo $_smarty_tpl->getVariable('lang')->value['page']['pwd_rank'];?>
); 
});
</script>
</head>
<body>
<?php $_template = new Smarty_Internal_Template('component_header.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
<div class="box list">
	<div class="titlebar">
		<ol class="title"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['title'];?>
</ol>
		<ol class="location"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['location'];?>
<a href="./"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['home'];?>
</a> &gt;&gt; <?php echo $_smarty_tpl->getVariable('lang')->value['page']['title'];?>
</ol>
	</div>
	<div class="form">
		<form name="register" id="register_form" action="member/register.php" method="post">
		<ul class="head">
			<?php echo $_smarty_tpl->getVariable('lang')->value['page']['tips'][0];?>
<?php if ($_smarty_tpl->getVariable('mycms')->value['email_auth']){?><br /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['tips'][1];?>
<?php }?>
		</ul>
		<ul>
			<li class="field"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['username'];?>
</li>
			<li class="entry"><input class="rounded" type="text" name="username" id="username" value="" tabindex="1" /></li>
			<li class="info">
				<ol class="attention rounded"><?php if ($_smarty_tpl->getVariable('mycms')->value['strictly']){?><?php echo $_smarty_tpl->getVariable('lang')->value['page']['tips'][2];?>
<?php }else{ ?><?php echo $_smarty_tpl->getVariable('lang')->value['page']['tips'][3];?>
<?php }?></ol>
				<ol class="error rounded"></ol>
				<ol class="ok rounded"></ol>
				<ol class="loading"><img src="inc/images/loading.gif" width="16" height="16" /></ol>
			</li>
		</ul>
		<ul>
			<li class="field"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['email'];?>
</li>
			<li class="entry"><input class="rounded" type="text" name="email" id="email" value="" tabindex="2" /></li>
			<li class="info">
				<ol class="attention rounded"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['tips'][4];?>
</ol>
				<ol class="error rounded"></ol>
				<ol class="ok rounded"></ol>
				<ol class="loading"><img src="inc/images/loading.gif" width="16" height="16" /></ol>
			</li>
		</ul>
		<ul>
			<li class="field"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['password'];?>
</li>
			<li class="entry"><input class="rounded" type="password" name="password" id="password" value="" tabindex="3" /></li>
			<li class="info">
				<ol class="attention rounded"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['tips'][5];?>
</ol>
				<ol class="error rounded"></ol>
				<ol class="ok rounded"></ol>
			</li>
		</ul>
		<ul>
			<li class="field"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['strength'];?>
</li>
			<li class="rank_image" id="rank_image"></li>
			<li class="rank_score" id="rank_score"></li>
			<li class="rank_text" id="rank_text"></li>
		</ul>
		<ul>
			<li class="field"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['confirm'];?>
</li>
			<li class="entry"><input class="rounded" type="password" name="password2" id="password2" value="" tabindex="4" /></li>
			<li class="info">
				<ol class="attention rounded"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['tips'][6];?>
</ol>
				<ol class="error rounded"></ol>
				<ol class="ok rounded"></ol>
			</li>
		</ul>
		<?php if ($_smarty_tpl->getVariable('mycms')->value['captcha']){?>
		<ul class="captcha">
			<li class="field"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['captcha'];?>
</li>
			<li class="entry"><input class="rounded" type="text" name="captcha" id="captcha" value="" tabindex="5" onfocus="document.getElementById('siimage').style.display='block';" onchange="document.getElementById('siimage').style.display='none'" /></li>
			<li class="image"><span><a href="#" onClick="document.getElementById('siimage').src = 'inc/include/captcha.php?sid=' + Math.random(); return false;"><img id="siimage" src="inc/include/captcha.php?sid=<?php echo time();?>
" /></a></span></li>
			<li class="info">
				<ol class="attention rounded"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['fill_captcha'];?>
</ol>
				<ol class="error rounded"></ol>
				<ol class="ok rounded"></ol>				
			</li>
		</ul>
		<?php }?>
		<ul class="agreement">
			<li class="field"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['agreement'];?>
</li>
			<li class="entry rounded"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['agreement_content'];?>
</li>
		</ul>
		<ul class="submit">
			<input name="act" value="register" type="hidden" />
			<input name="" value="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['button'];?>
" type="submit" id="submit" tabindex="6" />
		</ul>
		</form>
	</div>
</div>
<?php $_template = new Smarty_Internal_Template('component_footer.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</body>
</html>