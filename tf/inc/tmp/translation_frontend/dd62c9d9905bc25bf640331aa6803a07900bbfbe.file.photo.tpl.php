<?php /* Smarty version Smarty-3.0.9, created on 2015-02-04 18:10:00
         compiled from "E:/website/tf/inc/templates/frontend/default/photo.tpl" */ ?>
<?php /*%%SmartyHeaderCode:1574354d1eff8690406-50147364%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'dd62c9d9905bc25bf640331aa6803a07900bbfbe' => 
    array (
      0 => 'E:/website/tf/inc/templates/frontend/default/photo.tpl',
      1 => 1418117407,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1574354d1eff8690406-50147364',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['seotitle'];?>
</title>

<meta name="keywords" content="<?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['seokey'];?>
" />
<meta name="description" content="<?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['seodescr'];?>
" />
<meta name="copyright" content="2009-2011 MYCMS <?php echo $_smarty_tpl->getVariable('mycms')->value['version'];?>
" />
<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
style/photo.css" />
<link rel="stylesheet" type="text/css" href="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
style/language_<?php echo $_smarty_tpl->getVariable('web')->value['lang'];?>
.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
<script type="text/javascript" src="inc/script/focus_ent.js"></script>
</head>
<body>
<?php $_template = new Smarty_Internal_Template('component_header.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
<div class="classify"><?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = category::data(3,$_smarty_tpl->getVariable('mycms')->value['channel']['id'],0,1); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?><a href="<?php echo $_smarty_tpl->tpl_vars['n']->value['URL'];?>
"><?php echo $_smarty_tpl->tpl_vars['n']->value['title'];?>
</a><?php if ($_smarty_tpl->tpl_vars['n']->value['next_level']){?>&nbsp;|&nbsp;<?php }?><?php }} ?></div>
<div class="box">
	<div class="parallel">
		<!-- 焦点图 begin 525 x 225px -->
		<?php $_smarty_tpl->tpl_vars['pic'] = new Smarty_variable(photo::data(0,0,0,0,0,'photo_focus'), null, null);?>
		<div id="ifocus">
			<div id="ifocus_pic">
				<div id="ifocus_piclist">
					<ul>
						<?php  $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['i']->value = 0;
  if ($_smarty_tpl->getVariable('i')->value<4){ for ($_foo=true;$_smarty_tpl->getVariable('i')->value<4; $_smarty_tpl->tpl_vars['i']->value++){
?>
						<?php if (!isset($_smarty_tpl->tpl_vars['p']) || !is_array($_smarty_tpl->tpl_vars['p']->value)) $_smarty_tpl->createLocalArrayVariable('p', null, null);
$_smarty_tpl->tpl_vars['p']->value[$_smarty_tpl->tpl_vars['i']->value] = explode("\r\n",$_smarty_tpl->getVariable('pic')->value['description'][$_smarty_tpl->tpl_vars['i']->value]);?>
						<li><a href="<?php echo $_smarty_tpl->getVariable('p')->value[$_smarty_tpl->tpl_vars['i']->value][0];?>
" target="_blank"><img src="<?php echo $_smarty_tpl->getVariable('pic')->value['picture'][$_smarty_tpl->tpl_vars['i']->value];?>
" alt="<?php echo $_smarty_tpl->getVariable('p')->value[$_smarty_tpl->tpl_vars['i']->value][1];?>
" /></a></li>
						<?php }} ?>
					</ul>
				</div>
				<div id="ifocus_opdiv"></div>
				<div id="ifocus_tx">
					<ul>
						<?php  $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['i']->value = 0;
  if ($_smarty_tpl->getVariable('i')->value<4){ for ($_foo=true;$_smarty_tpl->getVariable('i')->value<4; $_smarty_tpl->tpl_vars['i']->value++){
?><li class="<?php if ($_smarty_tpl->tpl_vars['i']->value>0){?>normal<?php }else{ ?>current<?php }?>"><?php echo $_smarty_tpl->getVariable('p')->value[$_smarty_tpl->tpl_vars['i']->value][1];?>
</li><?php }} ?>
					</ul>
				</div>
			</div>
			<div id="ifocus_btn">
				<ul>
					<?php  $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['i']->value = 0;
  if ($_smarty_tpl->getVariable('i')->value<4){ for ($_foo=true;$_smarty_tpl->getVariable('i')->value<4; $_smarty_tpl->tpl_vars['i']->value++){
?><li class="<?php if ($_smarty_tpl->tpl_vars['i']->value>0){?>normal<?php }else{ ?>current<?php }?>"><img src="<?php echo $_smarty_tpl->getVariable('pic')->value['picture'][$_smarty_tpl->tpl_vars['i']->value];?>
" alt="<?php echo $_smarty_tpl->getVariable('p')->value[$_smarty_tpl->tpl_vars['i']->value][1];?>
" /></li><?php }} ?>
				</ul>
			</div>
		</div>
		<!-- 焦点图 end -->

		<!-- 最新发布 begin -->
		<div class="caption"><ol class="heading"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['title'][1];?>
</ol></div>
		<div class="data">
			<?php  $_smarty_tpl->tpl_vars['pic'] = new Smarty_Variable;
 $_from = photo::data(1,12,0,$_smarty_tpl->getVariable('mycms')->value['channel']['id']); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['pic']->key => $_smarty_tpl->tpl_vars['pic']->value){
?>
			<ul>
				<li class="pic"><a href="<?php echo $_smarty_tpl->tpl_vars['pic']->value['URL'];?>
" title="<?php echo $_smarty_tpl->tpl_vars['pic']->value['title'];?>
" target="_blank"><img src="<?php echo $_smarty_tpl->tpl_vars['pic']->value['picture'][0];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['pic']->value['title'];?>
" width="135" height="90" border="0" onload="mycms.img_auto_size(this)" /></a></li>
				<li class="txt"><a href="<?php echo $_smarty_tpl->tpl_vars['pic']->value['URL'];?>
" title="<?php echo $_smarty_tpl->tpl_vars['pic']->value['title'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['pic']->value['title_format'];?>
</a></li>
			</ul>
			<?php }} ?>
		</div>
		<!-- 最新发布 end -->		
	</div>
	
	<div class="block">
	
		<!-- 搜索 -->
		<div class="search">
			<form name="searchform" method="get" target="_blank" action="search.php">
			<span class="left"></span>
			<input class="word" type="text" name="word" id="word" tabindex="5" maxlength="50" value="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['enter_keywords'];?>
" onfocus="if(this.value == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['enter_keywords'];?>
'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['enter_keywords'];?>
';this.style.color = '#999';}" />
			<input class="button" type="submit" name="" tabindex="6" value="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['search'];?>
" onclick="if(document.getElementById('word').value == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['enter_keywords'];?>
'){ alert('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['enter_keywords_msg'];?>
');return false;}" />
			<input type="hidden" name="type" value="3" />
			</form>
		</div>		

		<!-- TAG -->
		<div class="caption">
			<ol class="heading"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['tag'];?>
</ol>
			<ol class="more"><a href="<?php echo misc::url('tag');?>
"><img src="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
images/more.gif" width="42" height="20" /></a></ol>
		</div>
		<div class="tag">
		<?php  $_smarty_tpl->tpl_vars['t'] = new Smarty_Variable;
 $_from = tag::data(0,3,50); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['t']->key => $_smarty_tpl->tpl_vars['t']->value){
?>
			<?php if ($_smarty_tpl->tpl_vars['t']->value['total']>30){?><a target="_blank" href="<?php echo $_smarty_tpl->tpl_vars['t']->value['URL'];?>
" class="hot1"><?php echo $_smarty_tpl->tpl_vars['t']->value['title'];?>
</a>
			<?php }elseif($_smarty_tpl->tpl_vars['t']->value['click']>50){?><a target="_blank" href="<?php echo $_smarty_tpl->tpl_vars['t']->value['URL'];?>
" class="top1"><?php echo $_smarty_tpl->tpl_vars['t']->value['title'];?>
</a>
			<?php }elseif($_smarty_tpl->tpl_vars['t']->value['total']>15){?><a target="_blank" href="<?php echo $_smarty_tpl->tpl_vars['t']->value['URL'];?>
" class="hot2"><?php echo $_smarty_tpl->tpl_vars['t']->value['title'];?>
</a>
			<?php }elseif($_smarty_tpl->tpl_vars['t']->value['click']>30){?><a target="_blank" href="<?php echo $_smarty_tpl->tpl_vars['t']->value['URL'];?>
" class="top2"><?php echo $_smarty_tpl->tpl_vars['t']->value['title'];?>
</a>
			<?php }elseif($_smarty_tpl->tpl_vars['t']->value['total']>5){?><a target="_blank" href="<?php echo $_smarty_tpl->tpl_vars['t']->value['URL'];?>
" class="hot3"><?php echo $_smarty_tpl->tpl_vars['t']->value['title'];?>
</a>
			<?php }elseif($_smarty_tpl->tpl_vars['t']->value['click']>10){?><a target="_blank" href="<?php echo $_smarty_tpl->tpl_vars['t']->value['URL'];?>
" class="top3"><?php echo $_smarty_tpl->tpl_vars['t']->value['title'];?>
</a>
			<?php }else{ ?><a target="_blank" href="<?php echo $_smarty_tpl->tpl_vars['t']->value['URL'];?>
" class="gen"><?php echo $_smarty_tpl->tpl_vars['t']->value['title'];?>
</a><?php }?>
		<?php }} ?>
		</div>	
	
		<!-- 推荐图集 begin -->
		<div class="caption"><ol class="heading"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['title'][0];?>
</ol></div>
		<div class="well">
			<?php  $_smarty_tpl->tpl_vars['pic'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;
 $_from = photo::data(0,8,1,$_smarty_tpl->getVariable('mycms')->value['channel']['id']); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['pic']->key => $_smarty_tpl->tpl_vars['pic']->value){
 $_smarty_tpl->tpl_vars['i']->value = $_smarty_tpl->tpl_vars['pic']->key;
?>
			<ul>
				<li class="num"><?php echo $_smarty_tpl->tpl_vars['i']->value+1;?>
</li>
				<li class="title"><a href="<?php echo $_smarty_tpl->tpl_vars['pic']->value['URL'];?>
" title="<?php echo $_smarty_tpl->tpl_vars['pic']->value['title'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['pic']->value['title_format'];?>
</a></li>
			</ul>
			<?php }} ?>
		</div>
		<!-- 推荐图集 end -->
		
		<!-- 热点 -->
		<div class="caption"><ol class="heading"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['title'][2];?>
</ol></div>
		<div class="well">
			<?php  $_smarty_tpl->tpl_vars['pic'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;
 $_from = photo::data(5,8,0,$_smarty_tpl->getVariable('mycms')->value['channel']['id']); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['pic']->key => $_smarty_tpl->tpl_vars['pic']->value){
 $_smarty_tpl->tpl_vars['i']->value = $_smarty_tpl->tpl_vars['pic']->key;
?>
			<ul>
				<li class="num"><?php echo $_smarty_tpl->tpl_vars['i']->value+1;?>
</li>
				<li class="title"><a href="<?php echo $_smarty_tpl->tpl_vars['pic']->value['URL'];?>
" title="<?php echo $_smarty_tpl->tpl_vars['pic']->value['title'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['pic']->value['title_format'];?>
</a></li>
			</ul>
			<?php }} ?>
		</div>		
	</div>
	
</div>

<!-- 中部通栏广告位（930*100px） -->
<div class="photo_banner"><?php echo ad::show('photo_banner');?>
</div>

<!-- 分类 -->
<?php  $_smarty_tpl->tpl_vars['c'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;
 $_from = category::data(3,$_smarty_tpl->getVariable('mycms')->value['channel']['id'],0,1); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['c']->key => $_smarty_tpl->tpl_vars['c']->value){
 $_smarty_tpl->tpl_vars['i']->value = $_smarty_tpl->tpl_vars['c']->key;
?>
<div class="cat">
	<div class="caption">
			<ol class="heading"><?php echo $_smarty_tpl->tpl_vars['c']->value['title'];?>
</ol>
			<ol class="more"><a href="<?php echo $_smarty_tpl->tpl_vars['c']->value['URL'];?>
"><img src="<?php echo $_smarty_tpl->getVariable('web')->value['path'];?>
images/more.gif" width="42" height="20" /></a></ol>
		</div>
	<div class="data">
		<?php  $_smarty_tpl->tpl_vars['pic'] = new Smarty_Variable;
 $_from = photo::data(0,12,0,$_smarty_tpl->getVariable('mycms')->value['channel']['id'],$_smarty_tpl->tpl_vars['c']->value['id']); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['pic']->key => $_smarty_tpl->tpl_vars['pic']->value){
?><!-- 调用数可修改成6或12(两行) -->
		<ul>
			<li class="pic"><a href="<?php echo $_smarty_tpl->tpl_vars['pic']->value['URL'];?>
" title="<?php echo $_smarty_tpl->tpl_vars['pic']->value['title'];?>
" target="_blank"><img src="<?php echo $_smarty_tpl->tpl_vars['pic']->value['picture'][0];?>
" alt="<?php echo $_smarty_tpl->tpl_vars['pic']->value['title'];?>
" width="135" height="90" border="0" onload="mycms.img_auto_size(this)" /></a></li>
			<li class="txt"><a href="<?php echo $_smarty_tpl->tpl_vars['pic']->value['URL'];?>
" title="<?php echo $_smarty_tpl->tpl_vars['pic']->value['title'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['pic']->value['title_format'];?>
</a></li>
		</ul>
		<?php }} ?>
	</div>
</div>
<?php }} ?>
<?php $_template = new Smarty_Internal_Template('component_footer.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</body>
</html>