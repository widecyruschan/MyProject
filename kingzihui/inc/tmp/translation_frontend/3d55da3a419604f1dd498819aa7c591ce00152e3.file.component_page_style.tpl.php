<?php /* Smarty version Smarty-3.0.9, created on 2012-08-14 17:06:09         compiled from "E:/website/mambo/inc/templates/frontend/default/component_page_style.tpl" */ ?><?php /*%%SmartyHeaderCode:1162502a15012b8998-81675542%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');$_smarty_tpl->decodeProperties(array (  'file_dependency' =>   array (    '3d55da3a419604f1dd498819aa7c591ce00152e3' =>     array (      0 => 'E:/website/mambo/inc/templates/frontend/default/component_page_style.tpl',      1 => 1331479928,      2 => 'file',    ),  ),  'nocache_hash' => '1162502a15012b8998-81675542',  'function' =>   array (  ),  'has_nocache_code' => false,)); /*/%%SmartyHeaderCode%%*/?><?php if ($_smarty_tpl->getVariable('page_data')->value['total_page']>1){?><div class="page_style">	<?php if ($_smarty_tpl->getVariable('page_data')->value['page']>1){?>	<ol class="effective"><a href="<?php echo $_smarty_tpl->getVariable('page_data')->value['start_url'];?>"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['start'];?></a></ol>	<ol class="effective"><a href="<?php echo $_smarty_tpl->getVariable('page_data')->value['first_url'];?>"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['first'];?></a></ol>	<?php }else{ ?>	<ol class="invalid"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['start'];?></ol>	<ol class="invalid"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['first'];?></ol>	<?php }?>	<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable; $_from = $_smarty_tpl->getVariable('page_data')->value['number']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}if ($_smarty_tpl->_count($_from) > 0){    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){ $_smarty_tpl->tpl_vars['i']->value = $_smarty_tpl->tpl_vars['n']->key;?>		<?php if ($_smarty_tpl->tpl_vars['i']->value!=$_smarty_tpl->getVariable('page_data')->value['page']){?><ol class="numeric"><a href="<?php echo $_smarty_tpl->tpl_vars['n']->value;?>"><?php echo $_smarty_tpl->tpl_vars['i']->value;?></a></ol>		<?php }else{ ?><ol class="numeric current"><?php echo $_smarty_tpl->tpl_vars['i']->value;?></ol><?php }?>	<?php }} ?>		<?php if ($_smarty_tpl->getVariable('page_data')->value['page']<$_smarty_tpl->getVariable('page_data')->value['total_page']){?>	<ol class="effective"><a href="<?php echo $_smarty_tpl->getVariable('page_data')->value['next_url'];?>"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['next'];?></a></ol>	<ol class="effective"><a href="<?php echo $_smarty_tpl->getVariable('page_data')->value['end_url'];?>"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['end'];?></a></ol>	<?php }else{ ?>	<ol class="invalid"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['next'];?></ol>	<ol class="invalid"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['end'];?></ol>	<?php }?></div><?php }?>