<?php

defined('ADMIN_PATH') or die('Access Denied.');

// @后台页面语言包（简体中文）

$language['page'] = array(

	'title' => '栏目及分类管理',
	'sub_exist' => '该栏目下有子类别存在，无法删除。',
	'content_exist' => '该栏目下(或回收站)有内容存在，无法删除。',
	'delete_section' => '删除栏目',
	
	'restricted' => '访问受限',
	'add_root' => '添加一级栏目',
	'modify_channel' => '修改频道信息',
	'ok_delete' => '确定要删除该频道吗？',
	'delete_channel' => '删除频道',
	'add_category' => '添加子类',
	'modify_columns' => '修改栏目信息。',
	'delete_category' => '删除分类',
	'ok_delete_category' => '确定要删除该类别吗？',
	'information' => '点击频道可以展开或隐藏当前频道下的栏目。',
	'operation' => array('发布内容','添加产品(商品)','添加图片','添加下载资源','添加友情链接'),
);