<?php /* Smarty version Smarty-3.0.9, created on 2014-06-06 11:39:44
         compiled from "/Library/WebServer/Documents/dmcc/inc/templates/frontend/default/component_footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:83376617553913800d406f9-90035852%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5372aef8b41c3267a118e26dffa8609a8e6691c6' => 
    array (
      0 => '/Library/WebServer/Documents/dmcc/inc/templates/frontend/default/component_footer.tpl',
      1 => 1401765437,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '83376617553913800d406f9-90035852',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>

<div class="footer">
  <div class="main">
    <div id="footerLogo"><img src="/inc/templates/frontend/default/images/footer_logo.jpg" width="180" height="110" /></div>
    <div class="footerLinks"><span class="tit"></span>
      <div class="linksList">
        <ul><?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = misc::links(3,0); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?><li><a href="<?php echo $_smarty_tpl->tpl_vars['n']->value['weburl'];?>
" target="_blank" title="<?php echo $_smarty_tpl->tpl_vars['n']->value['webname'];?>
"><?php echo $_smarty_tpl->tpl_vars['n']->value['webname'];?>
</a></li><?php }} ?></ul>
      </div>
    </div>
    <div class="footerContact"><span class="tit">&nbsp;</span><span class="add"><?php echo $_smarty_tpl->getVariable('web')->value['address'];?>
</span> <span class="tel">&nbsp;</span> <span class="yellow"><?php echo $_smarty_tpl->getVariable('web')->value['email'][0];?>
</span></div>
  </div>
</div>


