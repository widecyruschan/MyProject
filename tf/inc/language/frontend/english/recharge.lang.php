<?php

defined('CMSROOT') or die('Access Denied.');

$language['page'] = array(

	'title' => 'Online Recharge',
	'home' => 'Home',
	'center' => 'Member Center',
	'location' => 'You Are Here:',
	'pay_name' => 'Member Recharge', // 支付项目名称，支付中的商品名称
	
	'latest' => array(
		0 => 'Tenpay',
		1 => 'Alipay',
	),
	
	'bank' => array(
		0 => 'ICBC',
		1 => 'BOC',
		2 => 'CCB',
		3 => 'ABC',
		4 => 'COMM',
		5 => 'CITIC',
		6 => 'GDB',
		7 => 'CMB',
		8 => 'CMB',
		9 => 'PSBC-DEBIT',
		10 => 'CMBC',
		11 => 'CIB',
		12 => 'SPABANK',
		13 => 'CEBBANK',
		14 => 'HXB',
		15 => 'SHBANK',
		16 => 'SDB',
		17 => 'SPDB',
		18 => 'BJBANK',
		19 => 'PSBC-DEBIT',
		20 => 'Tenpay',
		21 => 'NBBANK',
		22 => 'HZCB',
		23 => 'BJRCB',
		24 => 'fdb101',
		25 => 'Alipay',
	),
	
	'misc' => array(
		0 => '借记',
		1 => '信用',
		2 => '广东',
		3 => '网汇',
		4 => '企业',
		5 => 'Charging Amount:',
		6 => 'Immediate Pay',
		7 => '',
	),
	
	'msg' => array(
		0 => 'Please enter the recharge amount.',
		1 => 'Recharge Amount entered incorrectly.',
		2 => 'The minimum recharge Amount is 0.01 Yuan.',
		3 => 'Please select the recharge or bank used by the platform.',
		4 => 'You choose the online payment platform is not installed.',
		5 => 'Operation failed, unable to record the order transaction information.',
		6 => 'Tenpay interface parameter setting error, or has been disabled, please contact your administrator.',
		7 => 'Alipay interface parameter setting error, or has been disabled, please contact your administrator.',
	),
	
	'log_info' => '会员在线充值，支付平台及银行代码为：',

	'menu' => array(
		0 => 'Member Center',
		1 => 'Avatar Control Panel',
		2 => 'Edit Profile',
		3 => 'Order Management',
		4 => 'Online Recharge',
		5 => 'Transaction Log',
		6 => 'Change Password',
		7 => 'Logout',
	),
);