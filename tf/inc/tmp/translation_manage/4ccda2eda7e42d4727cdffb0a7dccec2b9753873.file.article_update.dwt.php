<?php /* Smarty version Smarty-3.0.9, created on 2012-08-08 15:33:40
         compiled from "E:/website/mambo/inc/templates/manage/article_update.dwt" */ ?>
<?php /*%%SmartyHeaderCode:135225022165461b649-97149226%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '4ccda2eda7e42d4727cdffb0a7dccec2b9753873' => 
    array (
      0 => 'E:/website/mambo/inc/templates/manage/article_update.dwt',
      1 => 1344393622,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '135225022165461b649-97149226',
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
var items = <?php echo $_smarty_tpl->getVariable('mycms')->value['article']['items_'];?>
; //图片张数
//图片配置缺省值，PHP字串转Js数组
var picture = new Array(<?php echo $_smarty_tpl->getVariable('mycms')->value['article']['picture_config_js'];?>
); 
//修改时，多图片URL转成js数组
var picture_url = new Array(<?php echo $_smarty_tpl->getVariable('mycms')->value['article']['picture_js'];?>
);
// 多图上传及裁切设置
// var ,1减，2加，其它参数没有变化
function sheets(val){
	items = (val==1 && items > 1) ? items - 1 : ((val == 2 && items <= 30) ? items + 1 : items);
	var upload = '';
	var cut = '';
	for(i=0; i<items; i++){
		upload += '<div class="upload"><ul>';
		//添加图片上传数量时保留原上传的表单数据
		if($('#picture'+i).val() != undefined) picture_url[i] = $('#picture'+i).val();

		<?php if ($_smarty_tpl->getVariable('mycms')->value['action']=='update'){?>
		if (picture_url[i] != ''){
			upload += '<li class="upload_pre"><img src="../inc/templates/manage/images/operation/picture.png" width="16" height="16" class="title2div" title="<img width=180 src=../'+  picture_url[i] +' />" /></li>';
		} else {
			upload += '<li class="upload_pre"><img src="../inc/templates/manage/images/operation/disabled.png" width="16" height="16" /></li>';
		}
		<?php }?>
		
		upload += '<li><input type="text" title="" class="input rounded" name="picture_url[]" id="picture'+ i +'" size="20" value="'+ picture_url[i] +'" /></li>';
		upload += '<li><iframe src="upload.php?dir=article&preview=upload_preview&return_id=picture'+ i +'" width="183" height="30" border="0" scrolling="no" frameborder="0"></iframe></li><li>';
		if(i == 0){
			upload += '<a href="javascript:sheets(2);"><img src="../inc/templates/manage/images/operation/add_2.png" width="16" height="16" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['add_upload'];?>
" /></a>&nbsp;';
			upload += '<a href="javascript:sheets(1);"><img src="../inc/templates/manage/images/operation/cut_2.png" width="16" height="16" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['del_upload'];?>
" /></a>';
		}
		upload += '</li></ul></div>';
		
		//裁切及水印参数
		cut += '<div class="upload"><ul><li><?php echo $_smarty_tpl->getVariable('lang')->value['page']['section'][0];?>
 '+ (i+1) +' <?php echo $_smarty_tpl->getVariable('lang')->value['page']['section'][1];?>
&nbsp;</li>';
		cut += picture[i][0] == 1 ? '<li><input name="picture_cut['+i+']" type="checkbox" checked value="1" /> ' : '<li><input name="picture_cut['+i+']" type="checkbox" value="1" /> ';
		cut += '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['section'][2];?>
 <input name="picture_width['+i+']" type="text" value="'+ picture[i][1] +'" size="5" /> <?php echo $_smarty_tpl->getVariable('lang')->value['page']['section'][3];?>
 <input name="picture_height['+i+']" type="text" value="'+ picture[i][2] +'" size="5" /> Px&nbsp;</li>';
		cut += picture[i][3] == 1 ? '<li><input name="picture_watermark['+i+']" type="checkbox" checked value="1" /> ' : '<li><input name="picture_watermark['+i+']" type="checkbox" value="1" /> ';
		cut += '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['section'][4];?>
&nbsp;</li><li>';
		if(i == 0) cut += '<a target="_blank" href="set_picture.php"><img src="../inc/templates/manage/images/operation/hammer_screwdriver.png" width="16" height="16" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['section'][5];?>
" /></a>';
		cut += '</li></ul></div>';	
	}
	$('#items').html(upload);
	$('#cut').html(cut);
	if(val != 0) $('.upload_pre').hide(); //点击增、减按钮隐藏图片预览图标
}
var top_error_isshow = false;
function detect(){
	if($('#category').val() == ''){
		mycms.top_error('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['detect'][0];?>
');
		top_error_isshow = true;
		return false;
	}
	
	if($('#title').val() == ''){
		mycms.top_error('<?php echo $_smarty_tpl->getVariable('lang')->value['page']['detect'][1];?>
');
		top_error_isshow = true;
		return false;
	}
		
	return true;
}

$(function(){
	sheets(0);
	mycms.alternately('list');
	mycms.keysubmit('form_article','submit','detect()');
	mycms.title2div('title2div');	
	<?php if ($_smarty_tpl->getVariable('mycms')->value['action']=='add'){?>$('#tag').change(function(){$('#keyword').val($(this).val())	});<?php }?>
	mycms.option();
	CKEDITOR.replace('content');
	$("#addtime").datepicker();
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
				<td>
					<table cellpadding="0" cellspacing="0" border="0">
						<tr>
							<td><a href="javascript:void(0);" class="basic_button"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['basic'];?>
</a></td>
							<td><a href="javascript:void(0);" class="advanced_button"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['advanced'];?>
</a></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
		<div class="error rounded top_error hide"><ol></ol><span></span></div>
		<form name="form_article" id="form_article" action="" method="post">
		<div id="basic">
		<table class="list" cellpadding="0" cellspacing="1" border="0">
			<?php if ($_smarty_tpl->getVariable('mycms')->value['channel_show']){?>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['channel'];?>
</td>
				<td><input type="hidden" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['channelID'];?>
" name="channelID"/>
					<select class="select rounded" onchange="window.open(this.options[this.selectedIndex].value,'_self')" size="1"><?php echo $_smarty_tpl->getVariable('mycms')->value['article']['channel_text'];?>
</select> <span class="red">*</span>
					<a href="channel_update.php"><img src="../inc/templates/manage/images/operation/add.png" width="16" height="16" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['channel_add'];?>
"></a>								
				</td>
				<td class="field">{:$a['channel']:}、{:$a['channel_id']:}</td>			
			</tr>
			<?php }?>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['full_title'];?>
</td>
				<td>
					<input type="text" name="title" id="title" class="input rounded rule" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['article']['title'];?>
" size="58" maxlength="255" /> <span class="red">*</span>
				</td>
				<td class="field">{:$a['title']:}、{:$a['title_format']:}</td>			
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['brief'];?>
</td>
				<td>
					<input type="text" name="brief" class="input rounded rule" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['article']['brief'];?>
" size="40" maxlength="50" />
					<img src="../inc/templates/manage/images/operation/help.png" width="16" height="16" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['brief_title'];?>
">
				</td>
				<td class="field">{:$a['brief']:}、{:$a['brief_format']:}</td>			
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['attribute'];?>
</td>
				<td>
					<?php echo $_smarty_tpl->getVariable('lang')->value['page']['color'];?>
 <input id="mycolor" name="color" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['article']['color'];?>
" size="7" maxlength="7" class="input rounded iColorPicker" style="text-transform:uppercase;" /> &nbsp;&nbsp;&nbsp;
					<input name="bold" type="checkbox" value="1" <?php if ($_smarty_tpl->getVariable('mycms')->value['article']['bold']){?>checked="checked"<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page']['bold'];?>
 &nbsp;
				</td>
				<td class="field">{:$a['color']:}、{:$a['bold']:}</td>			
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['tag'];?>
</td>
				<td>
					<input name="tag" id="tag" type="text" class="input rounded" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['article']['tag'];?>
" size="40" maxlength="100" />
					<img src="../inc/templates/manage/images/operation/help.png" width="16" height="16" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['tag_title'];?>
">
				</td>
				<td class="field">{:$a['tag']:}</td>			
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['upload'];?>
</td>
				<td id="items"></td>
				<td class="field"><div id="upload_preview">{:$a['picture'][n]:} <?php echo $_smarty_tpl->getVariable('lang')->value['page']['upload_title'];?>
</div></td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['cut'];?>
</td>
				<td id="cut"></td>
				<td class="field"><em>NULL</em></td>
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['keyword'];?>
</td>
				<td><input name="keyword" id="keyword" type="text" class="input rounded" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['article']['keyword'];?>
" size="40" maxlength="100" /></td>
				<td class="field">{:$a['keyword']:}</td>			
			</tr>			
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['introduction'];?>
</td>
				<td>
					<textarea class="rounded" name="introduction" style="width:300px; height:50px; padding:5px;"><?php echo $_smarty_tpl->getVariable('mycms')->value['article']['introduction'];?>
</textarea>
					<img src="../inc/templates/manage/images/operation/help.png" width="16" height="16" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['introduction_title'];?>
">
				</td>
				<td class="field">{:$a['introduction']:}</td>			
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['make'][0];?>
</td>
				<td><input name="make_html" type="checkbox" value="1" <?php if ($_smarty_tpl->getVariable('config')->value['static']==2){?>checked<?php }else{ ?>disabled="disabled"<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page']['make'][1];?>
</td>
				<td class="field">{:$a['make_html']:}</td>			
			</tr>
            <?php echo fieldsinfo();?>

			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['page'][0];?>
</td>
				<td>
					<input name="page" type="radio" value="0" <?php if ($_smarty_tpl->getVariable('mycms')->value['article']['page']=='0'){?>checked<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['page'][1];?>
 &nbsp;&nbsp;  
					<input name="page" type="radio" value="1" <?php if ($_smarty_tpl->getVariable('mycms')->value['article']['page']=='1'){?>checked<?php }?> /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['page'][2];?>
 &nbsp;&nbsp;
					<input name="page" type="radio" value="2" <?php if ($_smarty_tpl->getVariable('mycms')->value['article']['page']>1){?>checked<?php }?> id="auto_page" /><?php echo $_smarty_tpl->getVariable('lang')->value['page']['page'][3];?>

					<input name="page_size" type="text" maxlength="5" onclick="$('#auto_page').attr('checked','checked')" value="<?php if ($_smarty_tpl->getVariable('mycms')->value['article']['page']>1){?><?php echo $_smarty_tpl->getVariable('mycms')->value['article']['page'];?>
<?php }else{ ?>2000<?php }?>" size="5" />
					<img src="../inc/templates/manage/images/operation/help.png" width="16" height="16" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['page_title'];?>
">
				</td>
				<td class="field">{:$a['page']:}</td>			
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['content'];?>
</td>
                <td>
               
					<textarea id="content" name="content"><?php echo $_smarty_tpl->getVariable('mycms')->value['article']['content'];?>
</textarea></td>
                    
                    <td class="field">{:$a['content']:}</td>
				</td>
			</tr>
		</table>
		</div>
		<div id="advanced" style="display:none;">
		<table class="list" cellpadding="0" cellspacing="1" border="0">
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['author'];?>
</td>
				<td><input name="author" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['article']['author'];?>
" size="40" class="input rounded" maxlength="50" /></td>
				<td class="field">{:$a['author']:}</td>			
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['source'];?>
</td>
				<td><input name="source" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['article']['source'];?>
" size="40" class="input rounded" maxlength="50" /></td>
				<td class="field">{:$a['source']:}</td>			
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['sourceurl'];?>
</td>
				<td><input name="sourceurl" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['article']['sourceurl'];?>
" size="40" class="input rounded" maxlength="50" /></td>
				<td class="field">{:$a['sourceurl']:}</td>			
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['template'];?>
</td>
				<td>
					<input name="template" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['article']['template'];?>
" size="20" class="input rounded" maxlength="50" />
					<img src="../inc/templates/manage/images/operation/help.png" width="16" height="16" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['template_title'];?>
">
				</td>
				<td class="field">{:$a['template']:}</td>			
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['comment'][0];?>
</td>
				<td>
					<input name="comment" type="radio" value="1" <?php if ($_smarty_tpl->getVariable('mycms')->value['article']['comment']=='1'){?>checked<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page']['comment'][1];?>
 &nbsp;&nbsp;  
					<input name="comment" type="radio" value="0" <?php if ($_smarty_tpl->getVariable('mycms')->value['article']['comment']=='0'){?>checked<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page']['comment'][2];?>

				</td>
				<td class="field">{:$a['comment']:}</td>			
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['recom'][0];?>
</td>
				<td>
					<input name="recom" type="radio" value="1" <?php if ($_smarty_tpl->getVariable('mycms')->value['article']['recom']=='1'){?>checked<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page']['recom'][1];?>
 &nbsp;&nbsp;  
					<input name="recom" type="radio" value="0" <?php if ($_smarty_tpl->getVariable('mycms')->value['article']['recom']=='0'){?>checked<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page']['recom'][2];?>
				
				</td>
				<td class="field">{:$a['recom']:}</td>			
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['published'][0];?>
</td>
				<td>
					<input name="published" type="radio" value="1" <?php if ($_smarty_tpl->getVariable('mycms')->value['article']['published']=='1'){?>checked<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page']['published'][1];?>
 &nbsp;&nbsp;  
					<input name="published" type="radio" value="0" <?php if ($_smarty_tpl->getVariable('mycms')->value['article']['published']=='0'){?>checked<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page']['published'][2];?>
				
				</td>
				<td class="field">{:$a['published']:}</td>			
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['audit'][0];?>
</td>
				<td>
					<input name="audit" type="radio" value="1" <?php if ($_smarty_tpl->getVariable('mycms')->value['article']['audit']=='1'){?>checked<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page']['audit'][1];?>
 &nbsp;&nbsp;  
					<input name="audit" type="radio" value="0" <?php if ($_smarty_tpl->getVariable('mycms')->value['article']['audit']=='0'){?>checked<?php }?> /> <?php echo $_smarty_tpl->getVariable('lang')->value['page']['audit'][2];?>
				
				</td>
				<td class="field">{:$a['audit']:}</td>			
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['permission'];?>
</td>
				<td>
					<select name="permission[]" class="rounded" style="width:205px; height:80px;" multiple id="select"><?php echo $_smarty_tpl->getVariable('mycms')->value['article']['permission_text'];?>
</select>				
					<img src="../inc/templates/manage/images/operation/help.png" width="16" height="16" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['permission_title'];?>
">
				</td>
				<td class="field">{:$a['permission']:}</td>			
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['filename'];?>
</td>
				<td>
					<input name="filename" class="input rounded" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['article']['filename'];?>
" size="20" maxlength="50" />
					<img src="../inc/templates/manage/images/operation/help.png" width="16" height="16" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['filename_title'];?>
">
				</td>
				<td class="field">{:$a['filename']:}</td>			
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['click'];?>
</td>
				<td><input name="click" class="input rounded" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['article']['click'];?>
" size="20" maxlength="10" /></td>
				<td class="field">{:$a['click']:}</td>			
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['money'];?>
</td>
				<td>
					<input name="money" class="input rounded" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['article']['money'];?>
" size="20" maxlength="10" />
					<img src="../inc/templates/manage/images/operation/help.png" width="16" height="16" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['money_title'];?>
">
				</td>
				<td class="field">{:$a['money']:}</td>			
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['integral'];?>
</td>
				<td>
					<input name="integral" class="input rounded" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['article']['integral'];?>
" size="20" maxlength="10" />
					<img src="../inc/templates/manage/images/operation/help.png" width="16" height="16" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['integral_title'];?>
">
				</td>
				<td class="field">{:$a['integral']:}</td>			
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['buyuser'];?>
</td>
				<td>
					<textarea name="buyuser" style="width:300px; height:40px; padding:5px;" class="rounded"><?php echo $_smarty_tpl->getVariable('mycms')->value['article']['buyuser'];?>
</textarea>
					<img src="../inc/templates/manage/images/operation/help.png" width="16" height="16" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['buyuser_title'];?>
">
				</td>
				<td class="field">{:$a['buyuser']:}</td>			
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['sort'];?>
</td>
				<td>
					<input name="sort" class="input rounded" type="text" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['article']['sort'];?>
" size="20" maxlength="10" />
					<img src="../inc/templates/manage/images/operation/help.png" width="16" height="16" class="title2div" title="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['sort_title'];?>
">
				</td>
				<td class="field">{:$a['sort']:}</td>			
			</tr>
			<tr>
				<td class="name"><?php echo $_smarty_tpl->getVariable('lang')->value['page']['addtime'];?>
</td>
				<td><input name="addtime" type="text" class="input rounded" id="addtime" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['article']['addtime'];?>
" size="20" readonly="readonly" maxlength="10" /></td>
				<td class="field">{:$a['addtime']:}</td>			
			</tr>
		</table>
		</div>
		<table class="table top_line">
			<tr>
				<td align="right" height="60"><a id="submit" class="submit" href="#"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['submit'];?>
</a></td>
				<td width="80"><input type="hidden" name="action" value="<?php echo $_smarty_tpl->getVariable('mycms')->value['action'];?>
" /></td>
				<td><a class="submit reset" href="javascript:form_article.reset();"><?php echo $_smarty_tpl->getVariable('lang')->value['common']['reset'];?>
</a></td>
			</tr>
		</table>		
		</form>
		<?php if ($_smarty_tpl->getVariable('admin')->value['information']){?>
			<div class="information rounded"><ol></ol>
				1、<?php echo $_smarty_tpl->getVariable('lang')->value['page']['notes'][0];?>
<br />
				2、<?php echo $_smarty_tpl->getVariable('lang')->value['page']['notes'][1];?>

			</div>
		<?php }?>
	</div>
	<?php $_template = new Smarty_Internal_Template('component_footer.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null);
 echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?>
</div>
</body>
</html>