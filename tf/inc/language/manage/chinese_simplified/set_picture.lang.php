<?php

defined('ADMIN_PATH') or die('Access Denied.');

// @后台页面语言包（简体中文）

$language['page'] = array(
	'title' => '图片裁切及水印参数设置',
	'modname' => array(
		'第','张图片：','裁切：','宽','× 高','Px','添加水印','<em>同上</em>',
		'第1张图片通常只作为缩略图用，这取决于你的模板<br />一般将第1张图片裁切至你模板需要的规格<br />超过 4 张以上的将采用第 4 张的参数作为缺省值<br />该设置只是对图片处理默认值进行设置<br />具体裁切及水印参数也可在内容发布时重新设置',
	),
	
	'cut' => array(
		'图片裁切条件：','图片宽度大于','并且图片高度大于','Px',
		'上传图片小于该规格将不进行裁切(压缩)处理',
		'保存质量：','最佳','高','中','低','差',
		'保存质量越高,文件越大。只对JPG格式有效',
	),
	
	'watermark' => array(
		'水印添加条件：','上传图片小于该规格将不添加水印',
		'水印类型：','图片水印','文字水印','文字水印需 FreeType 支持',
		'水印文件：','水印添加位置：',
		'1.顶部居左','2.顶部居中','3.顶部居右','4.左边居中','5.图片中心','6.右边居中','7.底部居左','8.底部居中','9.底部居右',
		'水印位于图片上的位置 (3x3，共 9 个位置可选)',
		'水印偏移调整：','横向','纵向','Px','调节水印偏移位置，可以填写负数',
		'水印文字字体：','位于 fonts 目录下的字体文件',
		'水印文字颜色：','字体颜色',
		'水印文字：','如果含有中文请选择支持中文的字体文件',
		'字体大小：','设置文字水印字体大小',
		'文字旋转角度：','设置文字水印旋转角度',
	),
	
	'failure' => '操作失败，无法更新配置文件！\r请确认您是否有相应文件的写入权限：\rinc/config/picture.config.php',
	'update_page' => '修改图片处理参数',	
	
	'error' => array(
		'程序尝试生成水印预览图片失败，请检测环境配置及设置参数是否正确。',
		'您的服务器环境不支持GD库，无法使用使用图片裁切及水印功能。',
	),
	
	'information' => array(
		'1、图片水印：建议使用png格式的图片作为水印文件，以达到最佳效果，将文字或Logo做成png格式的半透明图片上传。',
		'2、文字水印：由于中文字体库比较大(如微软雅黑 20M 以上)，系统自带的字体库只支持英文字符，如果您的水印文字含有中文或者需要更换字体，请将字体库文件上传至 inc/fonts/ 目录下。',
		'3、文字水印需 FreeType 支持。当前服务器 FreeType：',
		'4、图片裁切及水印功能需 GD 2.0.1 或更高版本支持；当前服务器 GD 版本：',
		'5、该功能不对编辑器内部上传的图片进行处理。',
		'支持','不支持',
	),
);