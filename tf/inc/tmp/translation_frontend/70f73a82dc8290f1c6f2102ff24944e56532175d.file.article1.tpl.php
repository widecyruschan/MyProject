<?php /* Smarty version Smarty-3.0.9, created on 2014-04-10 20:42:54
         compiled from "/Library/WebServer/Documents/inc/templates/frontend/default/article1.tpl" */ ?>
<?php /*%%SmartyHeaderCode:2114377502534691ce696f18-47714571%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '70f73a82dc8290f1c6f2102ff24944e56532175d' => 
    array (
      0 => '/Library/WebServer/Documents/inc/templates/frontend/default/article1.tpl',
      1 => 1392091205,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '2114377502534691ce696f18-47714571',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
  <div class="zp_list">
    <?php  $_smarty_tpl->tpl_vars['a'] = new Smarty_Variable;
 $_from = article::data(1,9,0,$_smarty_tpl->getVariable('mycms')->value['channel']['id'],1,0,0,0,0,1); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['a']->key => $_smarty_tpl->tpl_vars['a']->value){
?>
    <div class="zp_box" onclick="zpConShow('<?php echo $_smarty_tpl->tpl_vars['a']->value['URL'];?>
')">
      <div class="pop_tit"><span class="p_tit1" title="<?php echo $_smarty_tpl->tpl_vars['a']->value['title'];?>
"><?php echo $_smarty_tpl->tpl_vars['a']->value['title_format'];?>
</span><br />
        <span class="p_tit2"><?php echo $_smarty_tpl->tpl_vars['a']->value['channelEn'];?>
</span></div>
     <img src="<?php echo $_smarty_tpl->tpl_vars['a']->value['picture'][0];?>
"/></div>
      <?php }} ?>
  </div>
<?php $_template = new Smarty_Internal_Template('component_page_style.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>