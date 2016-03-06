<?php /* Smarty version Smarty-3.0.9, created on 2014-04-10 22:11:31
         compiled from "/Library/WebServer/Documents/inc/templates/frontend/default_wap/component_footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:325212655346a693955f10-00455936%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'f88521320c5c3d37e8a4a0005b5c00121e0e4494' => 
    array (
      0 => '/Library/WebServer/Documents/inc/templates/frontend/default_wap/component_footer.tpl',
      1 => 1390381859,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '325212655346a693955f10-00455936',
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


