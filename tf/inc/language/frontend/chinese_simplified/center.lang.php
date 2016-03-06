<?php

defined('CMSROOT') or die('Access Denied.');

$language['page'] = array(
	'title' => '会员中心首页',
	'home' => '首页',
	'center' => '会员中心',
	'location' => '您的位置：',	
	'subject' => array('会员基本信息','我的资料信息','最近交易记录'),
	'notdata' => '没在交易记录',
	
	'field' => array(
		0 => '会员帐号：',
		1 => '帐户可用资金（元）：',
		2 => '会员级别：',
		3 => '已消费金额（元）：',
		4 => '我的积分：',
		5 => '登录次数：',
		6 => '注册IP：',
		7 => '注册时间：',
		8 => '上次登录IP：',
		9 => '上次登录时间：',
	),

	'menu' => array(
		0 => '会员中心首页',
		1 => '修改图像',
		2 => '修改会员资料',
		3 => '我的订单管理',
		4 => '在线充值',
		5 => '操作日志及交易记录',
		6 => '修改注册邮箱及密码',
		7 => '安全退出',
	),
	
	'info' => array(
		0 => '注册邮箱：',
		1 => '腾讯QQ：',
		2 => '昵称：',
		3 => array(
			0 => '女',
			1 => '男',
			2 => '保密',
			3 => '性别：',
		),
		4 => '联系电话：',
		5 => '传真号码：',
		6 => '公司名称：',
		7 => '公司网址：',
		8 => '公司地址：',
	),
	
	'th' => array(
		0 => '订单号/发生时间',
		1 => '类型/金额',
		2 => '事件',
		3 => '结果',
	),
	
	'type' => array(
		1 => '在线充值',
		2 => '管理员手动充值',
		3 => '购买商品',
		4 => '提交或变更订单',
		5 => '购买浏览权限',
		6 => '操作日志',
	),
	
	'result' => array(
		0 => '操作失败、未结束或交易出现异常的记录',
		1 => '操作成功或交易已经结束的记录',
	),
	
);