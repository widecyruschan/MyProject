<?php

defined('ADMIN_PATH') or die('Access Denied.');

// @后台页面语言包（简体中文）

$language['page'] = array(
	'title' => array('添加字段','修改字段'),
	
	'add_upload' => '',
	'del_upload' => '删除图片上传',
	'section' => array('第','张','裁切：宽','× 高','添加水印','图片裁切及水印缺省值设置'),
	
	'fieldsname' => '字段名称：',
	'fields' => '字段标识：',
	'lists' => '前台列表调用：',
	'fieldstype' => '字段类型：',
	'fieldshow' => '字段状态：',
	'fieldslong' => '字段长度：',
	'fieldorder' => '自定义排序：',
	'fieldorder_title' => '越大越靠前',
	'fields_title' => '必须为英文和数字，并且只能以英文开头，长度20以内。',
	'lists_title' => '开启后，前台列表可直接读取本字段，否则只在内容页读取，列表读取字段过多会影响查询效率',
	'fieldshow_title'  => array('启用','禁用'),
	'nodata' => '数据不存在或者已经删除。',
	'detect' => array('请填写字段名称。','请填写字段标识。'),
	'notes' => array(
		'图片裁切及水印功能需 GD 2.0.1 或更高版本支持；',
		'裁切会对图片大小进行智能分析，程序将最少量切去图片边缘部分后压缩到指定大小以保证图片不失真、不变形。',
	),
);