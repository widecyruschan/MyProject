<?php
require_once(str_replace('\\','/',dirname(__FILE__)).'/common.inc.php');
include_once(CMSINC.'/tools/smarty/Smarty.class.php');
$MYCMS = new Smarty();
$MYCMS->caching = ($config['template']['caching'] == 1 && !DEBUGGING && !HTML_MAKE_MODE) ? true : false; 
$MYCMS->force_compile = $config['template']['force_compile'] == 1 ? true : false; 
$MYCMS->cache_lifetime = $config['template']['cache_lifetime']; 
$MYCMS->template_dir = array(CMSINC.'/templates/frontend/'.$web['template'].'/'); 
$MYCMS->compile_dir = CMSINC.'/tmp/translation_frontend/'; 
$MYCMS->cache_dir  = CMSINC.'/tmp/cache_frontend/'; 
$MYCMS->left_delimiter = '{:'; 
$MYCMS->right_delimiter = ':}'; 
function __autoload($class){
	$lib = CMSINC.'/lib/'.$class.'.lib.php';
	$cls = CMSINC.'/class/'.$class.'.class.php';
	(is_file($lib) && require($lib)) or (is_file($cls) && require($cls));
}
if(function_exists('__autoload')){ 
	spl_autoload_register('__autoload'); 
}
$cms_user_info = array();
if(true === USER_LOGIN){
	$cms_user_info = $db->query("SELECT a.*,b.`id` as rank_id,b.`rankname` as rank_rankname,b.`discount` as rank_discount,b.`scores` as rank_scores,b.`money` as rank_money,b.`auto` as rank_auto,b.`enable` as rank_enable FROM `{$db->prefix}members` a,`{$db->prefix}rank` b WHERE a.`level` = b.`id` && a.`id` = '".USER_ID."' LIMIT 1",1);
	if(!isset($cms_user_info['id'])){ 
		member::logout();
		msgbox($language['common']['account_delete'],$config['url']); 
	} elseif ($cms_user_info['audit'] != 0){ 
		member::logout();
		msgbox($language['common']['account_verification'],$config['url']);
	} elseif ($cms_user_info['effective'] != 1){ 
		member::logout();
		msgbox($language['common']['account_disabled'],$config['url']); 
	} elseif ($cms_user_info['rank_enable'] != 1){	
		member::logout();
		msgbox($language['common']['rank_disabled'],$config['url']); 
	} elseif (encryption($_COOKIE['MYCMS_user_auth'],'DECODE',WEBKEY) != (USER_ID.$cms_user_info['password'].$cms_user_info['encryption'])){ 
		member::logout();
		msgbox($language['common']['abnormal'],$config['url']); 
	} elseif (USER_UNIQUE == 1 && $_COOKIE['MYCMS_user_frequency'] != $cms_user_info['frequency']){ 
		member::logout();
		msgbox($language['common']['kicked'],$config['url']); 
	} else { 
		($cms_user_info['rank_discount'] <= 0 || $cms_user_info['rank_discount'] > 10) && $cms_user_info['rank_discount'] = 10;
		$cms_user_info['rankname_format'] = explode(',',$cms_user_info['rank_rankname']);
		$cms_user_info['rankname_format'] = $cms_user_info['rankname_format'][$lang - 1];
		$cms_user_info['logintime_format'] = explode(',',$cms_user_info['logintime']);
		$cms_user_info['logintime_format'] = is_numeric($cms_user_info['logintime_format'][0]) ? date(CMS_DATE_FORMAT_LONG,$cms_user_info['logintime_format'][0]) : '';
		$cms_user_info['loginip_format'] = explode(',',$cms_user_info['loginip']);
		$cms_user_info['loginip_format'] = $cms_user_info['loginip_format'][0];
	}
}
require_once(CMSINC.'/config/captcha.config.php');
$mycms['login_captcha'] = is_array($captcha_config['open']) && in_array(2,$captcha_config['open']) ? true : false; 

?>