<?php
require_once('../../../inc/include/common.inc.php');
require_once(CMSINC.'/plugins/payment/tenpay.class.php'); 
require_once(CMSINC.'/config/payment.config.php'); 
require_once(CMSINC.'/class/member.class.php');
require_once(CMSINC.'/language/frontend/'.$web['dir'].'/payment_return.lang.php'); 
empty($_GET['sign']) && die('Parameter Error.');
$resHandler = new PayResponseHandler();
$resHandler->setKey($payment_config['tenpay']['key']);
$oid = $resHandler->getParameter('sp_billno'); 
$uid = numeric($resHandler->getParameter('attach')); 
$amount = number_format($resHandler->getParameter('total_fee') / 100,2,'.',''); 
$goto_page = $config['url'].'member/center.php'; 
if($resHandler->isTenpaySign()){
	$pay_result = $resHandler->getParameter('pay_result');
	if('0' == $pay_result){ 
		$result = $db->query("SELECT * FROM `{$DB['prefix']}transaction` WHERE `oid` = '{$oid}' && `uid` = '{$uid}'");
		if(count($result) == 1){ 
			if($result[0]['result'] == 0){ 
				if($db->execute("UPDATE `{$DB['prefix']}transaction` SET `result` = '1',`amount` = '{$amount}' WHERE `oid` = '{$oid}' && `uid` = '{$uid}'")){
					if(member::recharge(array('id' => $uid,'amount' => $amount,'type' => 6,'log' => 0))){
						msgbox($language['page']['msg'][2],$goto_page); 
					} else { 
						member::transaction('LG',$uid,6,$amount,0,$language['page']['msg'][1]); 
						msgbox($language['page']['msg'][1],$goto_page);						
					}
				} else { 
					member::transaction('LG',$uid,6,$amount,0,$language['page']['msg'][3]); 
					msgbox($language['page']['msg'][3],$goto_page);
				}
			} else { 
				msgbox('',$goto_page); 
			}
		} else {
			member::transaction('LG',$uid,6,$amount,0,$language['page']['msg'][0].$_SERVER['QUERY_STRING']); 
			msgbox($language['page']['msg'][0].$_SERVER['QUERY_STRING'],$goto_page); 
		}
	} else { 
		$err = $language['page']['msg'][4].' ('.$resHandler->getParameter('pay_info').')'; 
		member::transaction('LG',$uid,6,$amount,0,$err); 
		msgbox($err,$config['url'].'member/recharge.php');
	}
} else { 
	member::transaction('LG',$uid,6,$amount,0,$language['page']['msg'][5]); 
	msgbox($language['page']['msg'][5],$goto_page);
}