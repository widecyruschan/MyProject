<?php
define('FULL_ACCESS','MYCMS'); 
require_once(dirname(__FILE__).'/header.php');
if($action == 'logout'){
	admin::logout();
	header('Location: login.php');
	exit();
}
require_once(CMSINC.'/config/captcha.config.php');
$mycms['captcha'] = is_array($captcha_config['open']) && in_array(6,$captcha_config['open']) ? true : false; 
if($_SESSION['admin']['login']['condition'] == 'MYCMS'){
	header('Location: index.php');
	exit();	
} 
$username = trim($username); 
$password = trim($password);
if($action == 'login' && !empty($username) && !empty($password)){
	$captcha = true;
	if($mycms['captcha']){
		$img = new captcha();
		$captcha = $img->check($_POST['captcha']);
	}
	if($captcha !== true){	
			admin::logs(1,$language['page']['verify_error']); 
			msgbox($language['page']['verify_error'],'CURRENTS');
	} else {
		$login_attempts = array();
		$number = 0; 
		$time_expired = true; 
		$interval = 5; 
		$ctime = 30; 
		$ip = get_ip(); 
		$log_file = CMSINC.'/tmp/other/login_attempts.php';
		@is_readable($log_file) && include_once($log_file);
		foreach($login_attempts as $i => &$n){
			if($n[0] == $ip){
				$number = $n[1]++; 
				($gmt_time - $n[2]) > ($ctime*60) && $time_expired = false; 
				$time_expired or $number = $n[1] = 0; 
			}
			if(($gmt_time - $n[2]) > ($ctime*60)){
				unset($login_attempts[$i]);
				$login_attempts = array_values($login_attempts); 
			}
		}
		if($number < $interval || $time_expired === false){ 	
			$login = admin::login($username,$password);
			if($login === 1){ 
				admin::logs(1,'['.$username.'] '.$language['page']['login_succe']); 
				if(DEBUGGING == 0 && $_SESSION['admin']['login']['frequency'] > 3){
					$disable = array('admin','management','manage','admin888','manages','MYCMS','myadmin','user','users','member','members'); 
					in_array(strtolower($config['admin_dir']),$disable) && msgbox($language['page']['admin_dir'],'set_globals.php?tip=admin_dir'); 
					in_array(strtolower($username),$disable) && msgbox($language['page']['username_tip'],'admin_manage.php'); 
				}
				msgbox('',empty($_GET['goto']) ? 'index.php' : rawurldecode($_GET['goto']));
			} else { 
				$number == 0 && $login_attempts[] = array($ip,1,$gmt_time);
				$result = array2php($login_attempts,'login_attempts',$log_file);	
				$login_failed = str_replace('#n',$interval-$number,$language['page']['login_failed']);
				admin::logs(1,'['.$username.'] '.$login_failed); 
				$result ? msgbox($login_failed,'CURRENTS') : msgbox($language['page']['create_file_failed'],'CURRENTS'); 
			}
		} else { 
			msgbox(str_replace('#n',$ctime,$language['page']['try_frequency_exceed']),'CURRENTS');
		}
	}
}
require_once(ADMIN_PATH.'/footer.php'); 