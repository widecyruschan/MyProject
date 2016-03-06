<?php
header("Content-type:text/html; charset=utf-8"); 
define('CMSINC',str_replace('\\','/',substr(dirname(__FILE__),0,-8)));
defined('CMSROOT') or define('CMSROOT',str_replace('\\','/',substr(CMSINC,0,-4)));
define('TEMPLATE_SUFFIX','.tpl');
define('STRING_DELIMITED','{I~N!T@E#R$V%A^L}');
function daddslashes(&$svar){
	if(@!get_magic_quotes_gpc()){
		if(is_array($svar)){
			foreach($svar as $i => $n){
				$svar[$i] = daddslashes($n);
			}
		}else{
			$svar = addslashes($svar);
		}
	}
	return $svar;
}
foreach(array('_GET','_POST','_COOKIE') as $_request){
	foreach($$_request as $i => &$n){
		${$i} = daddslashes($n);
	}
}
unset($n,$i); 
require_once(CMSINC.'/config/globals.config.php');
define('DEBUGGING',$config['debugging'] == 1 ? 1 : 0); 
DEBUGGING ? error_reporting(E_ALL & ~E_NOTICE) : error_reporting(0);
require_once(CMSINC.'/include/common.func.php');
$PHP_SELF = $mycms['PHP_SELF'] = basename(htmlspecialchars($_SERVER['SCRIPT_FILENAME'] ? $_SERVER['SCRIPT_FILENAME'] : ($_SERVER['SCRIPT_NAME'] ? $_SERVER['SCRIPT_NAME'] : $_SERVER['PHP_SELF'])));
is_file($PHP_SELF) or die("Can't get the file name.");
if(PHP_VERSION > '5.1'){ 
	date_default_timezone_set('Etc/GMT'.($config['zone'] > 0 ? '-' : '+').(abs($config['zone'])));
	$gmt_time = time();
} else {
	$gmt_time = time() + ($config['zone'] * 3600); 
}
$SESS_SAVE_PATH = CMSINC.'/tmp/sessions/';
is_writeable($SESS_SAVE_PATH) && is_readable($SESS_SAVE_PATH) && session_save_path($SESS_SAVE_PATH);
$lang = is_numeric($_COOKIE['MYCMS_global_language']) ? $_COOKIE['MYCMS_global_language'] : $config['lang_default'];
$lang = $lang > $config['lang_total'] ? $config['lang_total'] : ($lang < 1 ? 1 : $lang);
$lang = (int)($lang);
define('LANG',$lang);
isset($_COOKIE['MYCMS_global_language']) or setcookie('MYCMS_global_language',$lang,$gmt_time + 86400,'/'); 
require_once(CMSINC.'/config/db.config.php');
require_once(CMSINC.'/class/db.class.php');
$db = new db();
$messy_lang = $db->query("SELECT * FROM `{$DB['prefix']}website` ORDER BY `lang` ASC LIMIT 0,".$config['lang_total']); 
$all_lang = array();
foreach($messy_lang as $n){ 
	$all_lang[$n['lang']] = $n;
}
$web = $all_lang[$lang]; 
$web['email'] = explode(',',$web['email']); 
$web['qq'] = explode(',',$web['qq']);
$web['msn'] = explode(',',$web['msn']);
$web['phone'] = explode(',',$web['phone']);
$web['fax'] = explode(',',$web['fax']);
$web['all_data'] = $all_lang; 
$web['path'] = 'inc/templates/frontend/'.$web['template'].'/'; 
unset($n,$template_file,$all_lang); 
include_once(CMSINC.'/config/version.config.php');
?>