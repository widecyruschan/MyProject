<?php

defined('ADMIN_PATH') or die('Access Denied.');

// @后台页面语言包（简体中文）

$language['page'] = array(
	'title' => '字段管理',
	'remove_fields' => '确定删除该字段？',
	'no_data' => '当前语言站点下没有字段，请添加。',
	'content_exists' => '数据库字段类型失败，请重新提交。',
	'category_exists' => '数据库字段类型失败，请重新提交。',
	'del_fields' => '删除字段',
	'show' => '显示',
	'hide' => '隐藏',
	
	'head' => array(
		0 => 'ID',
		1 => '字段名称',
		2 => '字段标识',
		3 => '列表调用',
		4 => '类型',
		5 => '字段状态',
		6 => '操作',
	),
	
	'links' => '外部链接',
	
	'operation' => array('修改字段','删除该字段','添加字段'),
	
	'restricted' => '访问受限',
	
	'attention' => '含有分类及内容的字段无法删除，必须先删除字段下的所有栏目及内容。',
);