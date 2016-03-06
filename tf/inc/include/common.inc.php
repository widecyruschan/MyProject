<?php
$cms_start_time = explode(' ',microtime()); 
$cms_start_time = $cms_start_time[1] + $cms_start_time[0];
require_once(str_replace('\\','/',dirname(__FILE__)).'/globals.php');
defined('WEBKEY') or die('Missing files. $version.config.php');
define('CMS_URL_MODE',$config['static'] == 2 ? 2 : 1); 
define('CMS_DATE_FORMAT_LONG','Y-m-d H:i:s'); 
define('CMS_DATE_FORMAT_SHORT','d-M-Y'); 
define('CMS_TEMPLATE_CACHE_ID',substr(md5($_SERVER['QUERY_STRING'].$lang),-16)); 
define('USER_UNIQUE',DEBUGGING ? 0 : 1); 
define('USER_ID',encryption($_COOKIE['MYCMS_user_id'],'DECODE',WEBKEY)); 
define('USER_LOGIN',(encryption($_COOKIE['MYCMS_user_login'],'DECODE',WEBKEY) == 'MYCMS' && is_numeric(USER_ID)) ? true : false); 
define('WEB_TITLE',$web['title']); 
$path = CMSINC.'/language/frontend/'.$web['dir'].'/';
$html_make_mode = false;
if(isset($_GET['html_make_data'])){
	session_start();
	if($_SESSION['admin']['login']['condition'] == 'MYCMS'){
		$html_make_mode = true;
	}
}
define('HTML_MAKE_MODE',$html_make_mode);
$cl = $path.'common.lang.php';
is_file($cl) && require_once($cl);
$dl = rtrim($path.$PHP_SELF,'php').'lang.php';
is_file($dl) && require_once($dl);
$config['status'] or die($config['maintenance']);