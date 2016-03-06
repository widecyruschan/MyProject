<?php /* Smarty version Smarty-3.0.9, created on 2013-07-20 17:51:07
         compiled from "/Users/cgc/Sites/mlecms/inc/templates/manage/category_update.dwt" */ ?>
<?php /*%%SmartyHeaderCode:71986060551ea5d8b119978-09507628%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'ff7c14d562b54c75aa92989981aa76441a2acd7b' => 
    array (
      0 => '/Users/cgc/Sites/mlecms/inc/templates/manage/category_update.dwt',
      1 => 1344393622,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '71986060551ea5d8b119978-09507628',
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
<script type="text/javascript" src="../inc/script/jquery.js"></script>
<script type="text/javascript" src="../inc/templates/manage/js/common.js"></script>
<script type="text/javascript">
var top_error_isshow = false; //错误提示框是否已显示
function detect(){
	if($('#title').val() == ''){
		mycms.top_error('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['detect'][0];?>
');
		top_error_isshow = true;
		return false;
	}
	return true;
}
$(function(){
	mycms.alternately('list');
	mycms.title2div('title2div');
	mycms.keysubmit('category','submit','detect()');
	
	$('form input,form select,form textarea').change(function(){
		if(top_error_isshow){
			$('.top_error').fadeTo(400,0,function(){$(this).slideUp(400);});
			top_error_isshow = false;
		}
	});	
});
</script>
<style type="text/css">
.picture ol{float:left; padding:0 5px 0 0; height:30px;}
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
	<div class="rounded table">
		<table width="100%" cellpadding="0" cellspacing="0" border="0" class="box_top">
			<tr><td class="title"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['title'];?>
<?php echo $_smarty_tpl->getVariable('mycms')->value['title_lang'];?>
</td></tr>
		</table>
		<div class="error rounded top_error"><ol></ol><span></span></div>
		<form action="" method="post" name="category" id="category">
		<table class="list" cellpadding="0" cellspacing="1" border="0">
		<?php if ($_smarty_tpl->getVariable('mycms')->value['channel_show']){?>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['channel'];?>
</td>
				<td>
					<select class="select rounded" onchange="window.open(this.options[this.selectedIndex].value,'_self')" size="1"><?php echo $_smarty_tpl->getVariable('mycms')->value['category']['channel_text'];?>
</select> <span class="red">*</span>
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['channel_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
					<a href="channel_update.php"><img src="../inc/templates/manage/images/operation/add.png" width="16" height="16" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['channel_add'];?>
"></a>								
				</td>
				<td class="field">{:$mycms['category']['channel']:}</td>
			</tr>
		<?php }?>
		<?php if ($_smarty_tpl->getVariable('mycms')->value['category_show']){?>	
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['category'];?>
</td>
				<td>
					<select name="nexus" class="select rounded" style="font-family:'Courier New',Courier,monospace;"><?php echo $_smarty_tpl->getVariable('mycms')->value['category']['nexus_text'];?>
</select> 
				</td>
				<td class="field">{:$mycms['category']['nexus']:}</td>
			</tr>
		<?php }?>		
			<tr>
				<td class="name" width="150"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['category_name'];?>
</td>
				<td><input type="text" class="input rounded" name="title" id="title" size="30" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['category']['title'];?>
" /> <span class="red">*</span></td>
				<td class="field">{:$mycms['category']['title']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['seotitle'];?>
</td>
				<td>
					<input type="text" class="input rounded" name="seotitle" size="50" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['category']['seotitle'];?>
" style="width:300px;" />
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['seotitle_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$mycms['category']['seotitle']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['seokey'];?>
</td>
				<td>
					<input type="text" class="input rounded" name="seokey" size="50" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['category']['seokey'];?>
" style="width:300px;" />
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['seokey_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />				
				</td>
				<td class="field">{:$mycms['category']['seokey']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['seodescr'];?>
</td>
				<td>
					<textarea name="seodescr" class="rounded" style="width:300px; height:60px; padding:5px;"><?php echo $_smarty_tpl->getVariable('mycms')->value['category']['seodescr'];?>
</textarea> 
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['seodescr_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />				
				</td>
				<td class="field">{:$mycms['category']['seodescr']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['permission'];?>
</td>
				<td>
					<select name="permission[]" class="rounded" style="width:205px; height:80px;" multiple id="select">
						<?php echo $_smarty_tpl->getVariable('mycms')->value['category']['permission_text'];?>

					</select>
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['permission_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
					<a href="member_rank.php"><img src="../inc/templates/manage/images/operation/add.png" width="16" height="16" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['add_level'];?>
"></a>
				</td>
				<td class="field">{:$mycms['category']['permission']:}</td>
			</tr>				
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['templatelist'];?>
</td>
				<td>
					<input type="text" class="input rounded" name="templatelist" id="templatelist" size="30" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['category']['templatelist'];?>
" />
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['templatelist_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$mycms['category']['templatelist']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['templatecontent'];?>
</td>
				<td>
					<input type="text" class="input rounded" name="templatecontent" id="templatecontent" size="30" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['category']['templatecontent'];?>
" />  
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['templatecontent_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$mycms['category']['templatecontent']:}</td>
			</tr>
			
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['picture'];?>
</td>
				<td>
					<div class="picture">
					<?php if ($_smarty_tpl->getVariable('mycms')->value['category']['picture']!=''){?>
					<ol><img src="../inc/templates/manage/images/operation/picture.png" width="16" height="16" border="0" class="title2div" title="<img width='180' border='0' src='../<?php echo $_smarty_tpl->getVariable('mycms')->value['category']['picture'];?>
' />"></ol>
					<?php }?>
					<ol><input type="text" name="picture" id="picture" class="input rounded" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['category']['picture'];?>
" size="20" /></ol>
					<ol><iframe src="upload.php?dir=category&preview=upload_preview&return_id=picture" width="183" height="30" border="0" scrolling="no" frameborder="0"></iframe></ol>
					<ol><img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['picture_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" /></ol>
					</div>					
				</td>
				<td class="field"><div id="upload_preview">{:$mycms['category']['picture']:}</div></td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['introduction'];?>
</td>
				<td>
					<textarea name="introduction" class="rounded" style="width:300px; height:60px; padding:5px;"><?php echo $_smarty_tpl->getVariable('mycms')->value['category']['introduction'];?>
</textarea> 
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['introduction_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />				
				</td>
				<td class="field">{:$mycms['category']['introduction']:}</td>
			</tr>
			
			
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['sort'];?>
</td>
				<td>
					<input type="text" name="sort" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['category']['sort'];?>
" class="input rounded" size="10" />  
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['sort_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$mycms['category']['sort']:}</td>
			</tr>
		</table>
		<table class="table top_line">
			<tr>
				<td align="right" height="60"><a id="submit" class="submit" href="#"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['submit'];?>
</a></td>
				<td width="80"><input type="hidden" name="action" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['action'];?>
" /></td>
				<td><a class="submit reset" href="javascript:category.reset();"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['reset'];?>
</a></td>
			</tr>
		</table>
		</form>
		<?php if ($_smarty_tpl->getVariable('admin')->value['attention']&&$_smarty_tpl->getVariable('mycms')->value['action']=='update'){?><div class="attention rounded"><ol></ol><?php echo $_smarty_tpl->getVariable('lang')->value['page']['attention'];?>
</div><?php }?>
		<?php if ($_smarty_tpl->getVariable('admin')->value['information']){?>
		<div class="information rounded"><ol></ol>
			1、<?php echo $_smarty_tpl->getVariable('lang')->value['page']['information'][0];?>
<br />
			2、<?php echo $_smarty_tpl->getVariable('lang')->value['page']['information'][1];?>

		</div>
		<?php }?>
	</div>
	<?php $_template = new Smarty_Internal_Template('component_footer.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</div>
</body>
</html>