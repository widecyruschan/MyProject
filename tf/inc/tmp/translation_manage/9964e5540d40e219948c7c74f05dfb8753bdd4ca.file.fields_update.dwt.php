<?php /* Smarty version Smarty-3.0.9, created on 2013-07-09 16:31:27
         compiled from "/Users/cgc/Sites/mlecms/inc/templates/manage/fields_update.dwt" */ ?>
<?php /*%%SmartyHeaderCode:37465239751dbca5f1e8350-52646525%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '9964e5540d40e219948c7c74f05dfb8753bdd4ca' => 
    array (
      0 => '/Users/cgc/Sites/mlecms/inc/templates/manage/fields_update.dwt',
      1 => 1344393622,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '37465239751dbca5f1e8350-52646525',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"><head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $_smarty_tpl->getVariable('lang')->value['common']['web_title'];?>
</title>
<link rel="stylesheet" type="text/css" href="../inc/templates/manage/css/common_<?php echo $_smarty_tpl->getVariable('admin')->value['theme'];?>
.css" />
<link rel="stylesheet" type="text/css" href="../inc/templates/manage/css/datepicker.css" />
<script type="text/javascript" src="../inc/script/jquery.js"></script>
<script type="text/javascript" src="../inc/templates/manage/js/common.js"></script>
<script type="text/javascript" src="../inc/script/color_select.js"></script>
<script type="text/javascript" src="../inc/tools/ckeditor/ckeditor.js"></script>
<script type="text/javascript" src="../inc/templates/manage/js/datepicker.js"></script>
<script type="text/javascript">
var items = 2; //图片张数
function sheets(val){
	items = (val==1 && items > 1) ? items - 1 : ((val == 2 && items <= 30) ? items + 1 : items);
}
var top_error_isshow = false;

function detect(){
	if($('#fieldsname').val() == ''){
		mycms.top_error('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['detect'][1];?>
');
		top_error_isshow = true;
		return false;
	}
	
	if($('#title').val() == ''){
		mycms.top_error('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['detect'][0];?>
');
		top_error_isshow = true;
		return false;
	}
		
	return true;
}


$(function(){
	sheets(0);
	mycms.alternately('list');
	mycms.keysubmit('form_fields','submit','detect()');
	mycms.option();
	$('form input,form select,form textarea').change(function(){
		if(top_error_isshow){$('.top_error').fadeTo(400,0,function(){$(this).slideUp(400);}); top_error_isshow = false;	}
	});		
})
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
		<form name="form_fields" id="form_fields" action="?id=<?php echo $_smarty_tpl->getVariable('mycms')->value['id'];?>
&fid=<?php echo $_smarty_tpl->getVariable('mycms')->value['fid'];?>
" method="post">
		<div id="basic">
		<table class="list" cellpadding="0" cellspacing="1" border="0">
			<?php if ($_smarty_tpl->getVariable('mycms')->value['channel_show']){?>
			<?php }?>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['fieldsname'];?>
</td>
				<td><input type="text" name="fieldsname" id="fieldsname" class="input rounded rule" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['fields']['fieldsname'];?>
" size="58" maxlength="255" /> <span class="red">*</span>
				</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['fields'];?>
</td>
				<td><input type="hidden" name="oldfields" id="oldfields"  value="<?php echo $_smarty_tpl->getVariable('mycms')->value['fields']['fields'];?>
" />
					<input type="text" name="fields" class="input rounded rule" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['fields']['fields'];?>
" size="40" maxlength="50" />
					<img src="../inc/templates/manage/images/operation/help.png" width="16" height="16" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['fields_title'];?>
">
				</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['lists'];?>
</td>
				<td>
					<input <?php if (($_smarty_tpl->getVariable('mycms')->value['fields']['lists']==0||$_smarty_tpl->getVariable('mycms')->value['fields']['lists']=='')){?>checked="checked"<?php }?> name="lists" type="radio" value="0" />关闭 <input <?php if ($_smarty_tpl->getVariable('mycms')->value['fields']['lists']==1){?>checked="checked"<?php }?> name="lists" type="radio" value="1" />开启 <img src="../inc/templates/manage/images/operation/help.png" width="16" height="16" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['lists_title'];?>
"></td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['fieldstype'];?>
</td>
				<td>
					<table width="100%">
        <tr>
          <td><input <?php if (($_smarty_tpl->getVariable('mycms')->value['fields']['fieldstype']=='varchar'||$_smarty_tpl->getVariable('postgo')->value=='add')){?>checked="checked"<?php }?> type="radio" name="fieldstype" id="varchar" value="varchar" /><label for="varchar">中小型文本varchar</label>： 最大长度<input name="fieldslong" type="text" style="width:30px; padding:2px;"  value="<?php if ($_smarty_tpl->getVariable('mycms')->value['fields']['fieldslong']!=0){?><?php echo $_smarty_tpl->getVariable('mycms')->value['fields']['fieldslong'];?>
<?php }else{ ?>255<?php }?>" maxlength="5"/> 中小型文本，小于等于255显示单行输入框，大于255显示多行输入框</td>
        </tr>
      <tr>
        <td><input <?php if ($_smarty_tpl->getVariable('mycms')->value['fields']['fieldstype']=='text'){?>checked="checked"<?php }?> type="radio" name="fieldstype" id="text" value="text" /><label for="text">大型文本</label>：输入框带编辑器大型文本输入框，如文章内容等。</td>
        </tr>
      <tr>
        <td><input <?php if ($_smarty_tpl->getVariable('mycms')->value['fields']['fieldstype']=='int'){?>checked="checked"<?php }?> type="radio" name="fieldstype" id="int" value="int" /><label for="int">整数</label>：正负整数类型字段，不含小数部分。如123456789，如需要使用非货币小数类型，请选择小型文本。</td>
        </tr>
      <tr>
        <td><input <?php if ($_smarty_tpl->getVariable('mycms')->value['fields']['fieldstype']=='decimal'){?>checked="checked"<?php }?> type="radio" name="fieldstype" id="decimal" value="decimal" /><label for="decimal">货币</label>：价格类型字段。如1.02</td>
        </tr>
      <tr>
        <td><input <?php if ($_smarty_tpl->getVariable('mycms')->value['fields']['fieldstype']=='time'){?>checked="checked"<?php }?> type="radio" name="fieldstype" id="time" value="time" /><label for="time">日期格式</label>：使用日期选择框输入日期。</td>
      </tr>
        <<?php ?>?php }?<?php ?>>
    </table>
				</td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['fieldorder'];?>
</td>
				<td><input name="fieldorder" id="fieldorder" type="text" class="input rounded" value="<?php if (isset($_smarty_tpl->getVariable('mycms',null,true,false)->value['fields']['fieldorder'])){?><?php echo $_smarty_tpl->getVariable('mycms')->value['fields']['fieldorder'];?>
 <?php }else{ ?>0<?php }?>" size="5"/></td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['fieldshow'];?>
</td>
				<td><input <?php if ((!isset($_smarty_tpl->getVariable('mycms',null,true,false)->value['fields']['fieldshow'])||$_smarty_tpl->getVariable('mycms')->value['fields']['fieldshow']!='0')){?>checked="checked"<?php }?> name="fieldshow" type="radio" value="1" />启用 <input <?php if ($_smarty_tpl->getVariable('mycms')->value['fields']['fieldshow']=='0'){?>checked="checked"<?php }?> name="fieldshow" type="radio" value="0" />禁用</td>
			</tr>
		</table>
		</div>
		
		<table class="table top_line">
			<tr>
				<td align="right" height="60"><a id="submit" class="submit" href="#"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['submit'];?>
</a></td>
				<td width="80"><input type="hidden" name="action" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['action'];?>
" /></td>
				<td><a class="submit reset" href="javascript:form_fields.reset();"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['reset'];?>
</a></td>
			</tr>
		</table>		
		</form>
	</div>
	<?php $_template = new Smarty_Internal_Template('component_footer.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</div>
</body>
</html>