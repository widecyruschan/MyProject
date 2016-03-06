<?php /* Smarty version Smarty-3.0.9, created on 2014-06-08 15:07:24
         compiled from "/Users/chancyrus/Sites/dmcc/inc/templates/frontend/default/component_footer.tpl" */ ?>
<?php /*%%SmartyHeaderCode:120340826553940bac260533-39836253%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '3924f03b64032fcf1b54fbb90378be050fb09958' => 
    array (
      0 => '/Users/chancyrus/Sites/dmcc/inc/templates/frontend/default/component_footer.tpl',
      1 => 1401765437,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '120340826553940bac260533-39836253',
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


