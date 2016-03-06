<?php /* Smarty version Smarty-3.0.9, created on 2014-05-10 11:12:35
         compiled from "/Library/WebServer/Documents/tf/inc/templates/manage/channel_update.dwt" */ ?>
<?php /*%%SmartyHeaderCode:1689353303536d9923b2e1c9-30803257%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'a08d902e1d6dbddc4038f44581d7a1f6c4790133' => 
    array (
      0 => '/Library/WebServer/Documents/tf/inc/templates/manage/channel_update.dwt',
      1 => 1374981360,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '1689353303536d9923b2e1c9-30803257',
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
<style type="text/css">
<?php if ($_smarty_tpl->getVariable('mycms')->value['channel']['module']=='0'){?>.internal{display:none;}<?php }?> /* 修改频道且该频道为外部链接时隐藏内部频道独有项 */
<?php if ($_smarty_tpl->getVariable('mycms')->value['action']=='add'||$_smarty_tpl->getVariable('mycms')->value['channel']['module']!='0'){?>.external{display:none;}<?php }?> /* 添加频道或当前修改的频道为内部频道时隐藏外部频道独有项 */
</style>
<script type="text/javascript">
var top_error_isshow = false; //错误提示框是否已显示
function detect(){
	if($('#title').val() == ''){
		mycms.top_error('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['detect'][0];?>
');
		top_error_isshow = true;
		return false;
	}
	if($('input[@name=tmp_px][checked]').val() != '1'){ //内部链接
		if($('#module').val() == ''){
			mycms.top_error('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['detect'][1];?>
');
			top_error_isshow = true;
			return false;			
		}
	} else {
		if($('#url').val() == ''){
			mycms.top_error('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['detect'][3];?>
');
			top_error_isshow = true;
			return false;			
		}	
	}
		
	return true;
}
$(function(){
	mycms.alternately('list');
	mycms.title2div('title2div');
	mycms.keysubmit('channel','submit','detect()');
	$('input[name="tmp_px"]').click(function(){
		if($(this).val() == 0){
			$('.internal').fadeIn(600);
			$('.external').fadeOut(600);
		} else {
			$('.internal').fadeOut(600);
			$('.external').fadeIn(600);
		}
	});
	
	$('form input,form select,form textarea').change(function(){
		if(top_error_isshow){
			$('.top_error').fadeTo(400,0,function(){$(this).slideUp(400);});
			top_error_isshow = false;
		}
	});
});
</script>
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
			<tr>
				<td class="title"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['title'];?>
<?php echo $_smarty_tpl->getVariable('mycms')->value['title_lang'];?>
</td>
			</tr>
		</table>
		<div class="error rounded top_error hide"><ol></ol><span></span></div>
		<form action="" method="post" name="channel" id="channel">
		<table class="list" cellpadding="0" cellspacing="1" border="0">
			<tr>
				<td class="name" width="120"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['UpChannelID'];?>

                
                </td>
				<td><select name="UpChannelID" id="UpChannelID" class="select rounded"><?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['UpChannelID_text'];?>
</select> <span class="red">*</span></td>
				<td class="field">{:$mycms['channel']['title']:}</td>
			</tr><tr>
				<td class="name" width="120"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['channel_name'];?>
</td>
				<td><input name="title" id="title" class="input rounded" size="30" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['title'];?>
" type="text" /> <span class="red">*</span></td>
				<td class="field">{:$mycms['channel']['title']:}</td>
			</tr><tr>
				<td class="name" width="120"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['channel_nameEn'];?>
</td>
				<td><input name="titleEn" id="titleEn" class="input rounded" size="30" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['titleEn'];?>
" type="text" /> <span class="red">*</span></td>
				<td class="field">{:$mycms['channel']['titleEn']:}</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['type'];?>
</td>
				<td>
					<input name="tmp_px" type="radio" value="0" <?php if ($_smarty_tpl->getVariable('mycms')->value['channel']['module']!='0'||$_smarty_tpl->getVariable('mycms')->value['action']=='add'){?>checked<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['internal'];?>
 &nbsp;
					<input name="tmp_px" type="radio" value="1" <?php if ($_smarty_tpl->getVariable('mycms')->value['channel']['module']=='0'){?>checked<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['external'];?>

					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['external_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field"></td>
			</tr>
			<tr class="external">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['external_link'];?>
</td>
				<td>
					<input type="text" name="url" id="url" class="input rounded" size="30" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['url'];?>
" /> 
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['external_link_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$mycms['channel']['url']:}</td>
			</tr>
			<tr class="external">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['target'];?>
</td>
				<td>
					<input name="target" type="radio" value="_blank" <?php if ($_smarty_tpl->getVariable('mycms')->value['action']=='add'||$_smarty_tpl->getVariable('mycms')->value['channel']['target']=='_blank'){?>checked<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['blank'];?>
 &nbsp;
					<input name="target" type="radio" value="_self" <?php if ($_smarty_tpl->getVariable('mycms')->value['channel']['target']=='_self'){?>checked<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['self'];?>
 
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['target_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$mycms['channel']['url']:}</td>
			</tr>
			<tr class="internal">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['module'];?>
</td>
				<td>
					<select name="module" id="module" class="select rounded"><?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['module_text'];?>
</select> <span class="red">*</span>
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['select_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
					<a href="module_manage.php"><img src="../inc/templates/manage/images/operation/add.png" width="16" height="16" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['add_module'];?>
"></a>
				</td>
				<td class="field">{:$mycms['channel']['module']:}</td>
			</tr>
			<tr class="internal">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['permission'];?>
</td>
				<td>
					<select name="permission[]" class="rounded" style="width:205px; height:80px;" multiple id="select">
						<?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['permission_text'];?>

					</select>
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['permission_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
					<a href="member_rank.php"><img src="../inc/templates/manage/images/operation/add.png" width="16" height="16" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['add_level'];?>
"></a>
				</td>
				<td class="field">{:$mycms['channel']['permission']:}</td>
			</tr>			
			<tr class="internal">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['pathhome'];?>
</td>
				<td>
					<input type="text" name="pathhome" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['pathhome'];?>
" size="30" class="input rounded" /> 
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['pathhome_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$mycms['channel']['pathhome']:}</td>
			</tr>
			<tr class="internal">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['pathcategory'];?>
</td>
				<td>
					<input type="text" name="pathcategory" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['pathcategory'];?>
" size="30" class="input rounded" /> 
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['pathcategory_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$mycms['channel']['pathcategory']:}</td>
			</tr>
			<tr class="internal">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['pathcontent'];?>
</td>
				<td>
					<input type="text" name="pathcontent" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['pathcontent'];?>
" size="30" class="input rounded" /> 
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['pathcontent_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$mycms['channel']['pathcontent']:}</td>
			</tr>			
			<tr class="internal">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['seotitle'];?>
</td>
				<td>
					<input type="text" name="seotitle" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['seotitle'];?>
" size="30" class="input rounded" style="width:300px;" /> 
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['seotitle_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$mycms['channel']['seotitle']:}</td>
			</tr>
			<tr class="internal">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['seokey'];?>
</td>
				<td>
					<input type="text" name="seokey" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['seokey'];?>
" class="input rounded" style="width:300px;" /> 
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['seokey_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$mycms['channel']['seokey']:}</td>
			</tr>
			<tr class="internal">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['seodescr'];?>
</td>
				<td>
					<textarea name="seodescr" class="rounded" style="width:300px; height:60px; padding:5px;"><?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['seodescr'];?>
</textarea> 
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['seodescr_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$mycms['channel']['seodescr']:}</td>
			</tr>
			<tr class="internal">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['template'];?>
</td>
				<td>
					<input type="text" name="template" id="template" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['template'];?>
" class="input rounded" size="30" />
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['template_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$mycms['channel']['template']:}</td>
			</tr>


			<tr class="internal">
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['templatecontent'];?>
</td>
				<td>
					<input type="text" name="templatecontent" id="templatecontent" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['templatecontent'];?>
" class="input rounded" size="30" />
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['template_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$mycms['channel']['templatecontent']:}</td>
			</tr>


			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['show'];?>
</td>
				<td>
					<input name="show" type="radio" value="1" <?php if ($_smarty_tpl->getVariable('mycms')->value['channel']['show']=='1'||$_smarty_tpl->getVariable('mycms')->value['action']=='add'){?>checked<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['whether'][0];?>
 &nbsp;
					<input name="show" type="radio" value="0" <?php if ($_smarty_tpl->getVariable('mycms')->value['channel']['show']=='0'){?>checked<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['whether'][1];?>
  
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['hide_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$mycms['channel']['show']:}</td>
			</tr>			
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['sort'];?>
</td>
				<td>
					<input type="text" name="sort" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['channel']['sort'];?>
" class="input rounded" size="10" />  
					<img title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['sort_title'];?>
" class="title2div" src="../inc/templates/manage/images/operation/help.png" width="16" height="16" />
				</td>
				<td class="field">{:$mycms['channel']['sort']:}</td>
			</tr>
		</table>
		<table class="table top_line">
			<tr>
				<td align="right" height="60"><a id="submit" class="submit" href="#"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['submit'];?>
</a></td>
				<td width="80"><input type="hidden" name="action" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['action'];?>
" /></td>
				<td><a class="submit reset" href="javascript:channel.reset();"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['reset'];?>
</a></td>
			</tr>
		</table>		
		</form>
		<?php if ($_smarty_tpl->getVariable('admin')->value['information']){?><div class="information rounded"><ol></ol><?php echo $_smarty_tpl->getVariable('lang')->value['page']['information'];?>
</div><?php }?>

	</div>
	<?php $_template = new Smarty_Internal_Template('component_footer.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</div>
</body>
</html>