<?php /* Smarty version Smarty-3.0.9, created on 2013-07-20 10:33:59
         compiled from "/Users/cgc/Sites/mlecms/inc/templates/manage/attachment_manage.dwt" */ ?>
<?php /*%%SmartyHeaderCode:208701460251e9f717856c02-99537787%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '595b7275ca03c68b302ff293032f279772dcc75d' => 
    array (
      0 => '/Users/cgc/Sites/mlecms/inc/templates/manage/attachment_manage.dwt',
      1 => 1344393622,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '208701460251e9f717856c02-99537787',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $_smarty_tpl->getVariable('lang')->value['common']['web_title'];?>
</title>
<link rel="stylesheet" type="text/css" href="../inc/templates/manage/css/common_<?php echo $_smarty_tpl->getVariable('admin')->value['theme'];?>
.css" />
<link rel="stylesheet" type="text/css" href="../inc/tools/highslide/highslide.css" />
<script type="text/javascript" src="../inc/script/jquery.js"></script>
<script type="text/javascript" src="../inc/templates/manage/js/common.js"></script>
<script type="text/javascript" src="../inc/tools/highslide/highslide-with-gallery.js"></script>
<script type="text/javascript">
var selected = true;
function checkAll() {
	var el = document.getElementsByTagName('input');
	var len = el.length;
	for(var i=0; i<len; i++) {
		el[i].checked = selected;
	}
	selected = selected ? false : true;
} 

function delok(){
	return confirm('<?php echo $_smarty_tpl->getVariable('lang')->value['page'][5];?>
');	
}

$(function(){
	mycms.alternately('list');
	mycms.title2div('title2div');
	mycms.keysubmit('form','submit','delok()');
});
hs.graphicsDir = '../inc/tools/highslide/graphics/';
</script>
<style type="text/css">
.rhumbnail{padding:20px 0 0 0;}
.rhumbnail div{float:left; width:150px; text-align:center; padding:5px 0;}
.rhumbnail div .f_icon{width:120px; height:100px; overflow:hidden; margin:0 auto; border:1px #C0C0C0 solid;}
.rhumbnail div .f_name{width:150px; height:35px; padding:5px 0 0 0; word-break:break-all; text-align:center; overflow:hidden;}
.rhumbnail div ol img{height:100px; width:120px;}
</style>
</head>
<body>
<?php $_template = new Smarty_Internal_Template('component_header.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
<div id="body_box">
	<table cellpadding="0" cellspacing="0" border="0" class="icon">
		<tr><td><?php echo $_smarty_tpl->getVariable('mycms')->value['icon'];?>
</td></tr>
	</table>
	<table cellpadding="0" cellspacing="0" border="0" class="table">
		<tr>
			<td valign="top" align="right">
				<table cellpadding="0" cellspacing="5" border="0">
					<tr>
						<td><img src="../inc/templates/manage/images/operation/folder.png" width="16" height="16" border="0" /></td>
						<td>
							<a href="attachment_manage.php?view=<?php echo $_smarty_tpl->getVariable('mycms')->value['view'];?>
"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][0];?>
</a>
							<?php if ($_smarty_tpl->getVariable('mycms')->value['dir1']!=''){?><span class="roman"> &gt;&gt; </span> <a href="attachment_manage.php?view=<?php echo $_smarty_tpl->getVariable('mycms')->value['view'];?>
&dir1=<?php echo $_smarty_tpl->getVariable('mycms')->value['dir1'];?>
"><?php echo $_smarty_tpl->getVariable('mycms')->value['dir1'];?>
</a><?php }?>
							<?php if ($_smarty_tpl->getVariable('mycms')->value['dir2']!=''){?><span class="roman"> &gt;&gt; </span> <a href="attachment_manage.php?view=<?php echo $_smarty_tpl->getVariable('mycms')->value['view'];?>
&dir1=<?php echo $_smarty_tpl->getVariable('mycms')->value['dir1'];?>
&dir2=<?php echo $_smarty_tpl->getVariable('mycms')->value['dir2'];?>
"><?php echo $_smarty_tpl->getVariable('mycms')->value['dir2'];?>
</a><?php }?>
						</td>
					</tr>
				</table>
			</td>
		</tr>
	</table>	
	<div class="rounded table">
		<table width="100%" cellpadding="0" cellspacing="0" border="0" class="box_top">
			<tr>
				<td class="title"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][0];?>
</td>
				<td>
					<table cellpadding="0" cellspacing="0" border="0">
						<tr>
							<td><a href="attachment_manage.php?dir1=<?php echo $_smarty_tpl->getVariable('mycms')->value['dir1'];?>
&dir2=<?php echo $_smarty_tpl->getVariable('mycms')->value['dir2'];?>
&view=1" class="basic_button" <?php if ($_smarty_tpl->getVariable('mycms')->value['view']==2){?>style="background:none;"<?php }?>><?php echo $_smarty_tpl->getVariable('lang')->value['page'][1];?>
</a></td>
							<td><a href="attachment_manage.php?dir1=<?php echo $_smarty_tpl->getVariable('mycms')->value['dir1'];?>
&dir2=<?php echo $_smarty_tpl->getVariable('mycms')->value['dir2'];?>
&view=2" class="advanced_button" <?php if ($_smarty_tpl->getVariable('mycms')->value['view']==2){?>style="background:url(../inc/templates/manage/images/switch_bg.png);"<?php }?>><?php echo $_smarty_tpl->getVariable('lang')->value['page'][2];?>
</a></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		
		<form action="" method="post" name="form" id="form">
		<?php if ($_smarty_tpl->getVariable('mycms')->value['view']==1){?>
		<table class="table">
			<tr>
				<td class="rhumbnail">
				<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['file_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
					<div>
						<ol class="f_icon rounded">
							<?php if ($_smarty_tpl->tpl_vars['n']->value['type']=='image'){?>
							<a href="<?php echo $_smarty_tpl->tpl_vars['n']->value['url'];?>
" onclick="return hs.expand(this);"><img title="Click to enlarge" src="<?php echo $_smarty_tpl->tpl_vars['n']->value['icon'];?>
" border="0" /></a>
							<?php }elseif($_smarty_tpl->tpl_vars['n']->value['type']=='dir'){?>
							<a href="<?php echo $_smarty_tpl->tpl_vars['n']->value['url'];?>
"><img src="<?php echo $_smarty_tpl->tpl_vars['n']->value['icon'];?>
" border="0" /></a>
							<?php }else{ ?>
							<a href="<?php echo $_smarty_tpl->tpl_vars['n']->value['url'];?>
" target="_blank"><img src="<?php echo $_smarty_tpl->tpl_vars['n']->value['icon'];?>
" border="0" /></a>
							<?php }?>
						</ol>
						<ol class="f_name"><?php if ($_smarty_tpl->getVariable('mycms')->value['dir1']!=''){?><input name="filename[]" type="checkbox" value="<?php echo $_smarty_tpl->tpl_vars['n']->value['name'];?>
" /> <?php }?><?php echo $_smarty_tpl->tpl_vars['n']->value['name'];?>
</ol>
					</div>
				<?php }} else { ?>
				<br /><center><b><?php echo $_smarty_tpl->getVariable('lang')->value['page'][10];?>
</b></center><br /><br />
				<?php } ?>
				</td>
			</tr>
		</table>
		<?php }else{ ?>
		<table class="list" cellpadding="0" cellspacing="1" border="0">
			<tr>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][6];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][7];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][8];?>
</td>
				<td class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][9];?>
</td>
			</tr>
			<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['file_list']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
?>
			<tr>
				<td>
					<img src="<?php echo $_smarty_tpl->tpl_vars['n']->value['icon'];?>
" border="0" />
					<?php if ($_smarty_tpl->tpl_vars['n']->value['type']=='image'){?>
					<a href="<?php echo $_smarty_tpl->tpl_vars['n']->value['url'];?>
" onclick="return hs.expand(this);" title="Click to enlarge"><?php echo $_smarty_tpl->tpl_vars['n']->value['name'];?>
</a>
					<?php }elseif($_smarty_tpl->tpl_vars['n']->value['type']=='dir'){?>
					<a href="<?php echo $_smarty_tpl->tpl_vars['n']->value['url'];?>
"><?php echo $_smarty_tpl->tpl_vars['n']->value['name'];?>
</a>
					<?php }else{ ?>
					<a href="<?php echo $_smarty_tpl->tpl_vars['n']->value['url'];?>
" target="_blank"><?php echo $_smarty_tpl->tpl_vars['n']->value['name'];?>
</a>
					<?php }?>				
				</td>
				<td align="center"><?php echo $_smarty_tpl->tpl_vars['n']->value['time'];?>
</td>
				<td align="center"><?php echo $_smarty_tpl->tpl_vars['n']->value['size'];?>
</td>
				<td align="center"><?php if ($_smarty_tpl->getVariable('mycms')->value['dir1']==''){?><input name="filename[]" type="checkbox" disabled="disabled" value="<?php echo $_smarty_tpl->tpl_vars['n']->value['name'];?>
" /><?php }else{ ?><input name="filename[]" type="checkbox" value="<?php echo $_smarty_tpl->tpl_vars['n']->value['name'];?>
" /><?php }?></td>
			</tr>
			<?php }} else { ?>
			<tr><td colspan="4" class="field_head"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][10];?>
</td></tr>
			<?php } ?>
		</table>
		<?php }?>
		<?php if ($_smarty_tpl->getVariable('mycms')->value['dir1']!=''){?>
		<table class="table top_line">
			<tr>
				<td align="right" height="60"><a class="submit" href="#" onclick="checkAll(); return false;"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][4];?>
</a></td>
				<td width="80"><input type="hidden" name="action" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['action'];?>
" /></td>
				<td><a id="submit" class="submit" href="#" onclick="return false"><?php echo $_smarty_tpl->getVariable('lang')->value['page'][3];?>
</a></td>
			</tr>
		</table>
		<?php echo $_smarty_tpl->getVariable('mycms')->value['page'];?>

		<?php }?>		
		</form>
		<?php if ($_smarty_tpl->getVariable('admin')->value['information']){?>
			<div class="information rounded"><ol></ol><?php echo $_smarty_tpl->getVariable('lang')->value['page'][11];?>
</div>
		<?php }?>		
	</div>
	<?php $_template = new Smarty_Internal_Template('component_footer.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</div>
</body>
</html>