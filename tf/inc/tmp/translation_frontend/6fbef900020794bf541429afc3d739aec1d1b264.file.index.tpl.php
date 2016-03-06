<?php /* Smarty version Smarty-3.0.9, created on 2014-05-20 11:12:14
         compiled from "/Library/WebServer/Documents/tf/inc/templates/frontend/default/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:774645822537ac80eee4c81-80988473%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '6fbef900020794bf541429afc3d739aec1d1b264' => 
    array (
      0 => '/Library/WebServer/Documents/tf/inc/templates/frontend/default/index.tpl',
      1 => 1400431647,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '774645822537ac80eee4c81-80988473',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
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
<link rel="stylesheet" type="text/css" href="/inc/templates/frontend/default/style/tg_index.css" />
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
<!--<script language="javascript">
function is_mobile() { 
var s=navigator.userAgent.toLowerCase();
 if( s.match(/android/i)
 || s.match(/webos/i)
 || s.match(/iphone/i)
 || s.match(/ipad/i)
 || s.match(/ipod/i)
 || s.match(/blackberry/i)
 || s.match(/windows phone/i)
 || s.match(/opera mini/i)
 || s.match(/opera mobile/i)
 || s.match(/applewebkit.*mobile/i)
 || s.match(/ mobile /i)
 ){
    return true;
  }
 else {
    return false;
  }
}
	var is_mob=is_mobile();
	if(is_mob){
		 window.location="/app.php?a=lang&i=2"
		}
</script>-->

</head>
<body>
<div class="zpConFullScreen"></div>
<div class="topHeader">
  <div id="header">
    <div class="top_nav" id="menuNav"><?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;
 $_from = channel::navigation(); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
 $_smarty_tpl->tpl_vars['i']->value = $_smarty_tpl->tpl_vars['n']->key;
?><a <?php if ($_smarty_tpl->tpl_vars['i']->value==3){?>style="margin-left: 165px;"<?php }?> href="<?php echo $_smarty_tpl->tpl_vars['n']->value['URL'];?>
"><?php echo $_smarty_tpl->tpl_vars['n']->value['title'];?>

      </a><?php }} ?></div>
  </div>
</div>
<div id="focusBar" > <a href="javascript:void(0)" class="arrL" onclick="prePage()">&nbsp;</a><a href="javascript:void(0)" class="arrR" onclick="nextPage()">&nbsp;</a><?php $_smarty_tpl->tpl_vars['i'] = new Smarty_variable(1, null, null);?>
  <ul class="mypng"><?php  $_smarty_tpl->tpl_vars['pic'] = new Smarty_Variable;
 $_from = photo::data(2,10,0,35); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['pic']->key => $_smarty_tpl->tpl_vars['pic']->value){
?>
    <li id="focusIndex<?php echo $_smarty_tpl->getVariable('i')->value;?>
">
      <div class="focusL"><a href="<?php echo $_smarty_tpl->tpl_vars['pic']->value['sourceurl'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['pic']->value['picture'][0];?>
" width="900" height="350" /></a></div>
      <div class="focusR"><a href="<?php echo $_smarty_tpl->tpl_vars['pic']->value['sourceurl'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['pic']->value['picture'][1];?>
" width="900" height="350" /></a></div>
      <?php $_smarty_tpl->tpl_vars['i'] = new Smarty_variable($_smarty_tpl->getVariable('i')->value+1, null, null);?>
    </li><?php }} ?>
  </ul>
</div>

<div class="indexprolist"><div class="indelist"><div class="box" id="flash1"><div class="listtitle" id="til1"></div>
  <div class="indexsub"><?php  $_smarty_tpl->tpl_vars['a'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;
 $_from = article::data(2,5,0,25); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['a']->key => $_smarty_tpl->tpl_vars['a']->value){
 $_smarty_tpl->tpl_vars['i']->value = $_smarty_tpl->tpl_vars['a']->key;
?>
      
          <h3><a href="<?php echo $_smarty_tpl->tpl_vars['a']->value['URL'];?>
"><?php echo $_smarty_tpl->tpl_vars['a']->value['title'];?>
</a></h3>
          <?php echo $_smarty_tpl->tpl_vars['a']->value['introduction'];?>

        <div class="newsDate"><?php echo $_smarty_tpl->tpl_vars['a']->value['addtime'];?>
</div>
      </li>
<?php }} ?>

  </p>
  </div>
</div><div class="box" id="flash2"><div class="listtitle" id="til2"></div>
  <div class="indexsub"><marquee onMouseOver="this.stop()" onMouseOut="this.start()" direction="up" scrollamount=2 behavior="scroll"><img src="/inc/uploads/ckeditor/index.png" width="270px"></marquee></div>
</div><div class="box" id="flash3"><div class="listtitle" id="til3"></div>
  <div class="indexsub">电话：020-37304859<br />
    邮箱：teamfront@163.com <br />
    地址：广州市天河区珠江新城华强路2号富力盈丰大厦1013室 </div>
</div></div></div><script type="text/javascript" src="/inc/templates/frontend/default/script/index.js"></script>
<?php $_template = new Smarty_Internal_Template('component_footer.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>




</body>
</html>