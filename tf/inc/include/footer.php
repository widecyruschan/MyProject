<?php
defined('CMSROOT') or die('Access Denied.');
$MYCMS->assign('config',$config);
$MYCMS->assign('web',$web); 
$MYCMS->assign('lang',$language); 
$template_variable = array(
	'get' => $_GET, 
	'cookie' => $_COOKIE, 
	'edition' => MYCMS_EDITION, 
	'version' => MYCMS_VERSION, 
	'release' => MYCMS_RELEASE, 
	'dynamic_mode' => CMS_URL_MODE == 1 ? true : false, 
	'is_login' =>  USER_LOGIN, 
	'user' => $cms_user_info, 
);
//$MYCMS->assign('mycms',array_merge($mycms,$template_variable));
$MYCMS->assign('mycms',$mycms);

empty($template_file) && $template_file = basename($PHP_SELF,'.php');
$template_file .= TEMPLATE_SUFFIX;
$fp = $MYCMS->template_dir[0].$template_file;
if(HTML_MAKE_MODE && !is_file($fp)){
	$MYCMS->template_dir = array(CMSINC.'/data/'); 
	$template_file = 'not_template.tpl';
} else {
	is_file($fp) or (DEBUGGING ? die($language['common']['not_found_template'] .$fp) : die());
}
if(!HTML_MAKE_MODE){
	if($config['static'] != 3){
		$MYCMS->display($template_file);
	} else { 
		$content = $MYCMS->fetch($template_file,CMS_TEMPLATE_CACHE_ID);
		$pattern = array(
			'/\"(article|product|photo|download)\.php\?pid\=([0-9]+)&page\=([0-9]+)\"/i',
			'/\"(article|product|photo|download)\.php\?pid\=([0-9]+)\"/i',
			'/\"(article|product|photo|download)\.php\?page\=([0-9]+)\"/i',
			'/\"(list|category|slide|soft)\.php\?cid\=([0-9]+)&page\=([0-9]+)\"/i',
			'/\"(list|category|slide|soft)\.php\?cid\=([0-9]+)\"/i',
			'/\"(view|detail|show|down)\.php\?id\=([0-9]+)&page\=([0-9]+)\"/i',
			'/\"(view|detail|show|down)\.php\?id\=([0-9]+)\"/i',
			'/\"member\/(.*?)\.php\"/',
			'/\"(article|product|photo|download|cart|tag|guestbook|feedback|search|app)\.php/i', 
		);
		$replacement = array(
			'"$1-$2-$3.html"',
			'"$1-$2.html"',
			'"$1--$2.html"',
			'"$1-$2-$3.html"',
			'"$1-$2.html"',
			'"$1-$2-$3.html"',
			'"$1-$2.html"',
			'"member/$1.html"',	
			'"$1.html',
		);
		$content = preg_replace($pattern,$replacement,$content);
		echo $content;
	}
	unset($LANGUAGE,$mycms,$language,$config,$web,$cms_user_info);
	is_object($db) && $db->close();
}
function db_query_count(){
	global $db;
	return $db->query_count;	
}
function page_run_time(){
	global $cms_start_time;
	$mtime = explode(' ',microtime());
	return number_format(($mtime[1] + $mtime[0] - $cms_start_time),6);
}