/*
http://www.CyrusChanHK.com
*/

//具体参数见 config_basic.js 文件
CKEDITOR.editorConfig = function(config){
	config.language = 'zh-cn'; //设置语言
	config.enterMode = CKEDITOR.ENTER_BR; //回车
	config.shiftEnterMode = CKEDITOR.ENTER_P; // Shift + Enter
	//全部扩展
	//删除了：PageBreak 分页
	config.toolbar = [
		['Source','-','Save','NewPage','Preview','Templates','Cut','Copy','Paste','PasteText','PasteFromWord'],
		['TextColor','BGColor','Find','Replace','-','Print', 'SpellChecker', 'Scayt'],
		['Link','Unlink','Anchor'],
		['ShowBlocks','Maximize', '-','About'],
		'/',
		['Image','PageBreak','Flash','Table','HorizontalRule','Smiley','SpecialChar'],
		['Bold','Italic','Underline','Strike','Subscript','Superscript'],
		['NumberedList','BulletedList','Outdent','Indent','Blockquote','CreateDiv','JustifyLeft','JustifyCenter','JustifyRight','JustifyBlock'],
		['Undo','Redo'],
		'/',
		['Styles','Format','Font','FontSize'],
		['Form', 'Checkbox', 'Radio', 'TextField', 'Textarea', 'Select', 'Button', 'ImageButton', 'HiddenField'],
		['SelectAll','RemoveFormat'],
	];
	
	config.font_names = '宋体;黑体;隶书;楷体;幼圆;Arial;Comic Sans MS;Courier New;Tahoma;Times New Roman;Verdana';	
	config.extraPlugins = ''; //额外插件
	config.removePlugins = 'about'; //删除的插件
	config.skin = 'kama'; //风格
	config.uiColor = '#D9D9D9'; //背景色
	config.toolbarCanCollapse = false; //是否允许折叠工具栏
	
	config.width = 673; // 编辑器宽
	config.height = 350; // 编辑器高
	
	// 对应的表情图片 plugins/smiley/plugin.js
    config.smiley_images = [
		'1.gif','2.gif','3.gif','4.gif','5.gif','6.gif','7.gif','8.gif','9.gif','10.gif',
		'11.gif','12.gif','13.gif','14.gif','15.gif','16.gif','17.gif','18.gif','19.gif','20.gif',
		'21.gif','22.gif','23.gif','24.gif','25.gif','26.gif','27.gif','28.gif','29.gif','30.gif',
		'31.gif','32.gif','33.gif','34.gif','35.gif','36.gif','37.gif','38.gif','39.gif','40.gif',
		'41.gif','42.gif','43.gif','44.gif','45.gif','46.gif','47.gif','48.gif','49.gif','50.gif',
		'51.gif','52.gif','53.gif','54.gif','55.gif','56.gif','57.gif','58.gif','59.gif','60.gif',
		'61.gif','62.gif','63.gif','64.gif'
	];
		
	// 可选的表情替代字符 plugins/smiley/plugin.js
    // config.smiley_descriptions = [':)','(:'];		

    // 表情的地址 plugins/smiley/plugin.js
    // config.smiley_path = '/inc/images/smiley/';	
	
	// 整合ckfinder
	config.filebrowserBrowseUrl = '../inc/tools/ckeditor/ckfinder.html';
	config.filebrowserImageBrowseUrl = '../inc/tools/ckeditor/ckfinder.html?Type=Images';
	config.filebrowserFlashBrowseUrl = '../inc/tools/ckeditor/ckfinder.html?Type=Flash';
	config.filebrowserUploadUrl = '../inc/tools/ckeditor/core/connector/php/connector.php?command=QuickUpload&type=Files';
	config.filebrowserImageUploadUrl = '../inc/tools/ckeditor/core/connector/php/connector.php?command=QuickUpload&type=Images';
	config.filebrowserFlashUploadUrl = '../inc/tools/ckeditor/core/connector/php/connector.php?command=QuickUpload&type=Flash';
};
