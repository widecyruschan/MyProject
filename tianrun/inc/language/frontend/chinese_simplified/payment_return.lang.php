<?php// 支付接口通知(返回)处理语言包，日志及操作提示消息等defined('CMSROOT') or die('Access Denied.');$language['page'] = array(	'msg' => array(		0 => '交易过程中出现异常或非法提交，请与管理员联系。请求参数：', 		1 => '支付成功，更新交易记录失败，请与管理员联系。',		2 => '恭喜您，充值成功。',		3 => '支付成功，写入会员充值金额失败，请与管理员联系。',		4 => '支付失败，银行未能完成扣款，可能您的帐上余额不足',		5 => '认证签名失败，请与管理员联系。',		6 => '支付宝接口配置错误，不支持的接口方式（当前支持"即时到帐"及"担保交易"两种接口方式）',		7 => '用户已提交担保交易订单，等待支付，订单号：',		8 => '担保交易，用户已支付，等待发货，请登录支付宝修改发货状态。订单号：',		9 => '担保交易，卖家已发货，等待用户收货，或者您可以通知用户登录支付宝进行确认收货的操作。订单号：',		10 => '担保交易，买家已收货，交易完毕。订单号：',		11 => '担保交易，未知(异常)状态或变更了订单状态，订单号：',		12 => '未知(异常)状态或变更了订单状态，请登录支付宝查阅。',	),	);