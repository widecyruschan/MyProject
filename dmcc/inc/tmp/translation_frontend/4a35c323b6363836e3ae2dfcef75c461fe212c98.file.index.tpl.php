<?php /* Smarty version Smarty-3.0.9, created on 2015-07-16 20:47:37
         compiled from "/Users/CyrusChan/Sites/dmcc/inc/templates/frontend/cyrus/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:108683044155a7a7e93feb62-68892208%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4a35c323b6363836e3ae2dfcef75c461fe212c98' => 
    array (
      0 => '/Users/CyrusChan/Sites/dmcc/inc/templates/frontend/cyrus/index.tpl',
      1 => 1437030103,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '108683044155a7a7e93feb62-68892208',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!DOCTYPE html>
<html lang="zh-CN">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
		<title><?php echo $_smarty_tpl->getVariable('web')->value['title'];?>
</title>
		<link rel="shortcut icon" href="/favicon.ico" />
		<link rel="bookmark" href="/favicon.ico" />
		<meta name="keywords" content="<?php echo $_smarty_tpl->getVariable('web')->value['keyword'];?>
" />
		<meta name="description" content="<?php echo $_smarty_tpl->getVariable('web')->value['description'];?>
" />
		<meta name="copyright" content="2009-2011 MYCMS <?php echo $_smarty_tpl->getVariable('mycms')->value['version'];?>
" />
		<link rel="stylesheet" type="text/css" href="/inc/templates/frontend/cyrus/css/bootstrap.min.css" />
		<link rel="stylesheet" type="text/css" href="/inc/templates/frontend/cyrus/css/sytle.css" />
		<script type="text/javascript" src="/inc/templates/frontend/default/script/jquery-1.4.2.min.js"></script>
		<script type="text/javascript" src="/inc/templates/frontend/default/script/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="/inc/templates/frontend/default/script/scrolltopcontrol.js"></script>
	</head>

	<body>

		<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>

				</div>
				<div class ="nav navbar-nav pull-left"><a class="navbar-brand" href="/" style="padding: 0px;">
						<img src="<?php echo $_smarty_tpl->getVariable('web')->value['logo'];?>
" width="220" height="62" />
					</a></div>
				<div class="collapse navbar-collapse pull-right">
					<ul class="nav navbar-nav" >
						<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = channel::navigation(); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
						<li>
							<a href="#<?php echo $_smarty_tpl->tpl_vars['n']->value['titleEn'];?>
"><?php echo $_smarty_tpl->tpl_vars['n']->value['title'];?>
</a>
						</li><?php }} ?>
					</ul>
				</div>
	
			</div>
		</nav>
		<div id="HOME"></div>
		<div id="Portfolio"></div>
		<div id="Services"></div>
		<div id="About"></div>
		<div id="Contact"></div>
	</body>
<script type="text/javascript" src="/inc/templates/frontend/default/script/index.js"></script>
</html>