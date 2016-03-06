<?php /* Smarty version Smarty-3.0.9, created on 2014-12-09 17:05:05
         compiled from "/Users/CyrusChan/Sites/zjbg/inc/templates/frontend/default/guestbook.tpl" */ ?>
<?php /*%%SmartyHeaderCode:20672010415486bb41575a46-88972998%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'c841e7ae459a774a576f67cce7884f88a695a99f' => 
    array (
      0 => '/Users/CyrusChan/Sites/zjbg/inc/templates/frontend/default/guestbook.tpl',
      1 => 1418115903,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '20672010415486bb41575a46-88972998',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<?php $_smarty_tpl->tpl_vars['a'] = new Smarty_variable(array_shift(article::data(2,1,0,$_smarty_tpl->getVariable('mycms')->value['channel']['id'])), null, null);?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $_smarty_tpl->getVariable('web')->value['title'];?>
</title>
<meta name="keywords" content="<?php echo $_smarty_tpl->getVariable('web')->value['keyword'];?>
" />
<meta name="description" content="<?php echo $_smarty_tpl->getVariable('web')->value['description'];?>
" />
<meta name="copyright" content="2009-2011 MYCMS <?php echo $_smarty_tpl->getVariable('mycms')->value['version'];?>
" />
<link rel="stylesheet" type="text/css" href="/inc/templates/frontend/default/style/tg_style.css" />
<link rel="stylesheet" type="text/css" href="/inc/templates/frontend/default/style/tg_sub.css" />
<link rel="stylesheet" type="text/css" href="/inc/templates/frontend/default/style/news.css" />
<!--[if IE 6]>
<script src="/inc/templates/frontend/default/script/DD_belatedPNG_0.0.8a-min.js"></script>
<script>
DD_belatedPNG.fix('a.arrL,a.arrR');
</script>
<![endif]-->

<script type="text/javascript" src="/inc/templates/frontend/default/script/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/inc/templates/frontend/default/script/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="/inc/templates/frontend/default/script/scrolltopcontrol.js"></script>

<style type="text/css">
.mypng img {
azimuth: expression( this.pngSet?this.pngSet=true:(this.nodeName == "IMG" && this.src.toLowerCase().indexOf('.png')>-1?(this.runtimeStyle.backgroundImage = "none", this.runtimeStyle.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + this.src + "', sizingMethod='image')", this.src = "transparent.gif"):(this.origBg = this.origBg? this.origBg :this.currentStyle.backgroundImage.toString().replace('url("', '').replace('")', ''), this.runtimeStyle.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + this.origBg + "', sizingMethod='crop')", this.runtimeStyle.backgroundImage = "none")), this.pngSet=true);
}
</style>
<script type="text/javascript">
$(function(){
	// 文本域交互样式
	$('.form .input').add('textarea').focus(function(){$(this).css({'border-color':'#40B3FF','background-color':'#E5F5FF'});});
	$('.form .input').add('textarea').blur(function(){$(this).css({'border-color':'#C8C8FF','background-color':'#FFFFFF'});});
	// 表单检验
	$('#guestbook').submit(function(){
		// 非必填项初始化
		$('#phone').val() == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][4];?>
' && $('#phone').val('');
		$('#fax').val() == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][5];?>
' && $('#fax').val('');
		$('#company').val() == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][6];?>
' && $('#company').val('');
		$('#address').val() == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][7];?>
' && $('#address').val('');
		$('#qq').val() == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][8];?>
' && $('#qq').val('');
		
		// 必填项检测
		var s = true;
		if($('#title').val() == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][0];?>
' || $('#title').val() == ''){$('#title').css({'border-color':'#F60','background-color':'#FFF2F2','color':'#F33'}); s = false;}
		if($('#content').val() == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][1];?>
' || $('#content').val() == ''){$('#content').css({'border-color':'#F60','background-color':'#FFF2F2','color':'#F33'}); s = false;}
		if($('#nickname').val() == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][2];?>
' || $('#nickname').val() == ''){$('#nickname').css({'border-color':'#F60','background-color':'#FFF2F2','color':'#F33'}); s = false;}
		if($('#email').val().match(/^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$/) == null){$('#email').css({'border-color':'#F60','background-color':'#FFF2F2','color':'#F33'}); s = false;}
		<?php if ($_smarty_tpl->getVariable('mycms')->value['msg_captcha']){?>if($('#captcha').val() == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][9];?>
' || $('#captcha').val() == ''){$('#captcha').css({'border-color':'#F60','background-color':'#FFF2F2','color':'#F33'}); s = false;}<?php }?>
		return s;
	});
});
</script>
</head>
<body>
<?php $_template = new Smarty_Internal_Template('component_header.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
<div id="focusBar" > <a href="javascript:void(0)" class="arrL" onclick="prePage()">&nbsp;</a><a href="javascript:void(0)" class="arrR" onclick="nextPage()">&nbsp;</a><?php $_smarty_tpl->tpl_vars['i'] = new Smarty_variable(1, null, null);?>
  <ul class="mypng"><?php  $_smarty_tpl->tpl_vars['pic'] = new Smarty_Variable;
 $_from = photo::data(2,10,0,36); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['pic']->key => $_smarty_tpl->tpl_vars['pic']->value){
?>
    <li id="focusIndex<?php echo $_smarty_tpl->getVariable('i')->value;?>
">
      <div class="focusL"><a href="<?php echo $_smarty_tpl->tpl_vars['pic']->value['sourceurl'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['pic']->value['picture'][0];?>
" width="900" height="180" /></a></div>
      <div class="focusR"><a href="<?php echo $_smarty_tpl->tpl_vars['pic']->value['sourceurl'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['pic']->value['picture'][1];?>
" width="900" height="180" /></a></div>
      <?php $_smarty_tpl->tpl_vars['i'] = new Smarty_variable($_smarty_tpl->getVariable('i')->value+1, null, null);?>
    </li><?php }} ?>
  </ul>
</div>
<div class="frame_main">
		<div class="content_top"></div>
		<div class="content_common"><div class="content_menu"><div class="classify"><div class="left_title"><?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['titleEn'];?>
</div><?php if ($_smarty_tpl->getVariable('mycms')->value['channel']['UpChannelID']==0){?><?php $_smarty_tpl->tpl_vars['UpChannelIDs'] = new Smarty_variable($_smarty_tpl->getVariable('mycms')->value['channel']['id'], null, null);?>
        <?php }else{ ?><?php $_smarty_tpl->tpl_vars['UpChannelIDs'] = new Smarty_variable($_smarty_tpl->getVariable('mycms')->value['channel']['UpChannelID'], null, null);?><?php }?>
        <?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = channel::navigation($_smarty_tpl->getVariable('UpChannelIDs')->value); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?> <a href="<?php echo $_smarty_tpl->tpl_vars['n']->value['URL'];?>
" target="<?php echo $_smarty_tpl->tpl_vars['n']->value['target'];?>
" ><?php echo $_smarty_tpl->tpl_vars['n']->value['title'];?>
</a> 
        <?php  $_smarty_tpl->tpl_vars['s'] = new Smarty_Variable;
 $_from = channel::navigation($_smarty_tpl->tpl_vars['n']->value['id']); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['s']->key => $_smarty_tpl->tpl_vars['s']->value){
?><div class="h2_cat" onmouseover="this.className='h2_cat active_cat'" onmouseout="this.className='h2_cat'"> <a href="<?php echo $_smarty_tpl->tpl_vars['s']->value['URL'];?>
" target="<?php echo $_smarty_tpl->tpl_vars['s']->value['target'];?>
"  >&nbsp;&nbsp;&nbsp;&nbsp;<?php echo $_smarty_tpl->tpl_vars['s']->value['title'];?>
</a> 
        <div class="h3_cat">
<div class="shadow">
<div class="shadow_border">
<ul><?php  $_smarty_tpl->tpl_vars['k'] = new Smarty_Variable;
 $_from = channel::navigation($_smarty_tpl->tpl_vars['s']->value['id']); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['k']->key => $_smarty_tpl->tpl_vars['k']->value){
?>
<li><a href="<?php echo $_smarty_tpl->tpl_vars['k']->value['URL'];?>
" target="<?php echo $_smarty_tpl->tpl_vars['k']->value['target'];?>
"><?php echo $_smarty_tpl->tpl_vars['k']->value['title'];?>
</a></li> <?php }} ?> 
</ul>
</div>
</div>
</div></div>
        
        <?php }} ?> 
        
        <?php }} ?> </div></div>
		<div class="titlebar">
			<ol class="title"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['title'];?>
</ol>
			<ol class="location"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['location'];?>
<a href="./"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['home'];?>
</a> &gt;&gt; <?php echo $_smarty_tpl->getVariable('lang')->value['page']['title'];?>
</ol>
		</div>
		<?php  $_smarty_tpl->tpl_vars['msg'] = new Smarty_Variable;
 $_from = msg_data(5); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['msg']->key => $_smarty_tpl->tpl_vars['msg']->value){
?>
		<div class="data rounded">
			<ul class="notbg">
				<li class="title"><?php echo $_smarty_tpl->tpl_vars['msg']->value['title'];?>
</li>
				<li class="icon"><img src="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
images/time.png" width="16" height="16" border="0" /></li>
				<li class="time verdana"><?php echo date('Y-m-d H:i:s',$_smarty_tpl->tpl_vars['msg']->value['addtime']);?>

			</ul>
			<ul>
				<li class="icon"><!-- 性别图标 -->
					<?php if ($_smarty_tpl->tpl_vars['msg']->value['sex']==0){?><img src="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
images/gender_female.png" width="16" height="16" border="0" />
					<?php }elseif($_smarty_tpl->tpl_vars['msg']->value['sex']==1){?><img src="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
images/gender_male.png" width="16" height="16" border="0" />
					<?php }else{ ?><img src="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
images/gender_privacy.png" width="16" height="16" border="0" /><?php }?>
				</li>
				<li class="name"><?php echo $_smarty_tpl->tpl_vars['msg']->value['nickname'];?>
</li>			
				<li class="icon"><img src="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
images/qq.png" width="16" height="16" border="0" /></li>
				<li class="qq"><?php if ($_smarty_tpl->tpl_vars['msg']->value['qq']!=''){?><a href="tencent://message/?uin=<?php echo $_smarty_tpl->tpl_vars['msg']->value['qq'];?>
&Menu=yes" class="verdana"><?php echo $_smarty_tpl->tpl_vars['msg']->value['qq'];?>
</a><?php }else{ ?><em>NULL</em><?php }?></li>
				<li class="icon"><img src="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
images/mail.png" width="16" height="16" border="0" /></li>
				<li class="mail"><a href="mailto:<?php echo $_smarty_tpl->tpl_vars['msg']->value['email'];?>
" class="verdana"><?php echo $_smarty_tpl->tpl_vars['msg']->value['email'];?>
</a></li>
				<li class="icon"><img src="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
images/ip.png" width="16" height="16" border="0" /></li>
				<li class="time verdana" id="i<?php echo $_smarty_tpl->tpl_vars['msg']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['msg']->value['ip'];?>
</li>
			</ul>
			<ul class="content">
				<li class="icon"><img src="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
images/hint.png" width="16" height="16" border="0" /></li>
				<li class="text"><?php if ($_smarty_tpl->tpl_vars['msg']->value['visible']!=1){?><?php echo nl2br($_smarty_tpl->tpl_vars['msg']->value['content']);?>
<?php }else{ ?><font color="#999"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['private'];?>
</font><?php }?></li>
			</ul>
			<?php if ($_smarty_tpl->tpl_vars['msg']->value['reply']!=''){?>
			<ul class="content">
				<li class="icon"><img src="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
images/status_online.png" width="16" height="16" border="0" /></li>
				<li class="text reply">
					<?php echo $_smarty_tpl->getVariable('lang')->value['page']['admin'];?>
<?php echo nl2br($_smarty_tpl->tpl_vars['msg']->value['reply']);?>
<br />
					<em><?php echo date('Y-m-d H:i:s',$_smarty_tpl->tpl_vars['msg']->value['replytime']);?>
</em>
				</li>
			</ul>
			<?php }?>
		</div>
		<script type="text/javascript">mycms.ip('<?php echo $_smarty_tpl->tpl_vars['msg']->value['ip'];?>
','i<?php echo $_smarty_tpl->tpl_vars['msg']->value['id'];?>
',1);</script>
		<?php }} else { ?>
		<div class="notdata"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['notdata'];?>
</div>
		<?php } ?>
		<?php $_template = new Smarty_Internal_Template('component_page_style.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
	</div>
	<div class="frame_side">
		<div><ol class="heading"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['submitted'];?>
</ol></div>
		<div class="form">
			<form method="post" action="guestbook.php" name="guestbook" id="guestbook">
			<ol><input type="text" class="input" name="title" id="title" maxlength="100" value="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][0];?>
" onfocus="if(this.value == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][0];?>
'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][0];?>
';this.style.color = '#999';}" /> <font color="#FF0000">*</font></ol>
			<ol><textarea name="content" id="content" onkeyup="if(value.length>1000){value=value.substr(0,1000);}" onfocus="if(this.value == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][1];?>
'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][1];?>
';this.style.color = '#999';}"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][1];?>
</textarea> <font color="#FF0000">*</font></ol>
			<ol><input type="text" class="input" name="nickname" id="nickname" maxlength="50" value="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][2];?>
" onfocus="if(this.value == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][2];?>
'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][2];?>
';this.style.color = '#999';}" /> <font color="#FF0000">*</font></ol>
			<ol>
				<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][10];?>
<input name="sex" type="radio" value="0" checked /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][11];?>
&nbsp;&nbsp;
				<input name="sex" type="radio" value="1" /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][12];?>
&nbsp;&nbsp;
				<input name="sex" type="radio" value="2" /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][13];?>

			</ol>			
			<ol><input type="text" class="input" name="email" id="email" maxlength="50" value="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][3];?>
" onfocus="if(this.value == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][3];?>
'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][3];?>
';this.style.color = '#999';}" /> <font color="#FF0000">*</font></ol>
			<ol><input type="text" class="input" name="phone" id="phone" maxlength="20" value="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][4];?>
" onfocus="if(this.value == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][4];?>
'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][4];?>
';this.style.color = '#999';}" /></ol>
			<ol><input type="text" class="input" name="fax" id="fax" maxlength="20" value="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][5];?>
" onfocus="if(this.value == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][5];?>
'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][5];?>
';this.style.color = '#999';}" /></ol>
			<ol><input type="text" class="input" name="company" id="company" maxlength="50" value="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][6];?>
" onfocus="if(this.value == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][6];?>
'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][6];?>
';this.style.color = '#999';}" /></ol>
			<ol><input type="text" class="input" name="address" id="address" maxlength="255" value="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][7];?>
" onfocus="if(this.value == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][7];?>
'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][7];?>
';this.style.color = '#999';}" /></ol>
			<ol><input type="text" class="input" name="qq" id="qq" maxlength="20" value="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][8];?>
" onfocus="if(this.value == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][8];?>
'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][8];?>
';this.style.color = '#999';}" /></ol>
			<ol>
				<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][14];?>
<input name="visible" type="radio" value="1" /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][15];?>
&nbsp;&nbsp;
				<input name="visible" type="radio" value="0" checked /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][16];?>

			</ol>
			<ul>
				<?php if ($_smarty_tpl->getVariable('mycms')->value['msg_captcha']){?>
				<li class="captcha">
					<input type="text" class="input" name="captcha" id="captcha" maxlength="12" value="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][9];?>
" onfocus="if(this.value == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][9];?>
'){this.value = '';this.style.color = '#000';}; document.getElementById('siimage_div').style.display='block';" onblur="if(this.value==''){this.value='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][9];?>
';this.style.color = '#999';}" onchange="document.getElementById('siimage_div').style.display='none'" /> <font color="#FF0000">*</font>
					<span id="siimage_div"><a href="#" onClick="document.getElementById('siimage').src = 'inc/include/captcha.php?sid=' + Math.random(); return false;"><img id="siimage" src="inc/include/captcha.php?sid=<?php echo time();?>
" /></a></span>
				</li>
				<?php }?>
				<li class="submit"><input value="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['form'][17];?>
" type="submit" /></li>
			</ul>
			</form>
		</div>
	</div>
</div>
<?php $_template = new Smarty_Internal_Template('component_footer.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</body>
</html>