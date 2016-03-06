<?php

defined('ADMIN_PATH') or die('Access Denied.');

// @后台页面语言包（简体中文）

$language['page'] = array(
	'title' => '注册会员管理',
	'operating' => '操作',
	
	'id' => 'ID',
	'username' => '登录用户名',
	'money' => '余额 (已消费金额)',
	'scores' => '积分',
	'mail' => 'E-Mail',
	'join' => '注册时间',
	'remove_member' => '删除注册会员',
	'change_status' => '修改会员登录状态',
	'change_level' => '修改会员等级',
	'recharge' => '会员充值',
	'keyword' => '关键字',
	'select_all' => '全选/取消',
	
	'jPrompt' => '\'给会员名为 <font color="#FF0000">\'+usernamd+\'</font> 的用户充值：\', \'充值金额(元)，允许负数(扣款或借贷){$mycms}请在这里填写充值或捐款原因\', \'会员在线充值\'',
	
	'enter_keywords' => '请输入搜索关键字。',
	'determine_changes' => '确定修改选中会员的状态？',
	'determine_delete' => '确定删除所有选中的会员及相关数据吗？',
	'determine_mobile' => '确定要移动所有选中会员的等级吗？',
	'determine_amount' => '金额必须为数字。',
	'determine_info' => '请填写充值原因。',
	'determine_recharge' => '\'确定给 \' + usernamd + \' 充值 \' + amount + \' 元？\'',
	'overflow' => '充值金额超出范围。',
	'recharge_info' => '请在这里填写充值或捐款原因',
	
	'all_levels' => '全部会员',
	'modify_data' => '修改会员资料/查看会员详细信息',
	'state_allows' => '已经允许该用户登录，点击禁止登录',
	'state_ban' => '已经禁止该用户登录，点击允许登录',
	'online_recharge' => '在线充值',
	'logs' => '查看该会员交易日志及充值记录',
	
	'remove_member_data' => '确定删除该会员及所有相关数据吗？',
	'delete_current' => '删除该会员及所有相关数据',
	'allow_logon' => '允许所有选中的用户登录',
	'prohibition_sign' => '禁止所有选中的用户登录',
	'delete_member_data' => '删除所有选中的会员资料及相关数据',
	'mobile_rating' => '将选中的会员移到以下等级中',
	
	'no_data' => '没有相关数据',
	'audit' => array('已通过验证，点击取消验证','等待用户邮件验证，点击通过验证','等待后台管理员手工验证，点击通过验证','验证所有选中的会员','取消验证','确定将选中的会员设置为已验证状态？','确定取消会员注册验证？','修改会员注册验证状态'),

);