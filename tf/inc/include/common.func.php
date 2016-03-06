<?php
defined('CMSROOT') or die('Access Denied.');
function msgbox($msg = '',$event = 'BACK',$die = 1){
	global $PHP_SELF;
	$script = $msg ? 'alert("'.$msg.'");' : NULL;
	switch($event){
		case 'BACK' : $script .= 'history.back(-1);'; break;
		case 'NOT' : break;
		case 'CLOSE' : $script .= 'window.opener=null; window.open("","_self"); window.close();'; break;
		case 'CURRENT' : $script .= 'location = "'.$PHP_SELF.'";'; break;
		case 'CURRENTS' : $script .= 'location = "'.get_url().'";'; break;
		default : $script .= 'location = "'.$event.'";'; break;
	}
	if(!empty($script)){
		echo '<script type="text/javascript">'.$script.'</script> ';
	}
	$die && exit();
}
function get_ip(){
	if(!empty($_SERVER["HTTP_CLIENT_IP"])){
		$cip = $_SERVER["HTTP_CLIENT_IP"];
	}else if(!empty($_SERVER["HTTP_X_FORWARDED_FOR"])){
		$cip = $_SERVER["HTTP_X_FORWARDED_FOR"];
	}else if(!empty($_SERVER["REMOTE_ADDR"])){
		$cip = $_SERVER["REMOTE_ADDR"];
	}else{
		$cip = '';
	}
	preg_match("/[\d\.]{7,15}/",$cip,$cips);
	$cip = isset($cips[0]) ? $cips[0] : 'unknown';
	unset($cips);
	return $cip;
}
function get_url(){
	if(!empty($_SERVER['REQUEST_URI'])){
		$scriptName = $_SERVER['REQUEST_URI'];
		$nowurl = $scriptName;
	} else {
		$scriptName = $_SERVER['PHP_SELF'];
		if(empty($_SERVER['QUERY_STRING'])){
			$nowurl = $scriptName;
		} else {
			$nowurl = $scriptName.'?'.$_SERVER['QUERY_STRING'];
		}
	}
	return $nowurl;
}
function durl($name = '',$value = '',$del = 'action,id'){
	global $_GET,$PHP_SELF;
	$del = explode(',',$del);
	$result = $PHP_SELF.'?';
	foreach($_GET as $i => $n){
		if($i != $name && !in_array($i,$del) && $n != '' && $i != ''){
			$result .= $i.'='.rawurlencode($n).'&';
		}
	}
	if(empty($name)){
		$result = rtrim($result,'&');
	} else {
		$result .= $name.'='.rawurlencode($value);
	}
	return $result;	
}
function numeric($num){
	return (is_numeric($num) && $num > 0) ? $num : 0;
}
function cut_str($string,$length,$dot=' ...',$charset='utf-8'){
	if(strlen($string) <= $length) {
		return $string;
	}
	$str = str_replace(array('&amp;','&quot;','&lt;','&gt;','&nbsp;'), array('&','"','<','>',' '),$string);
	$strcut = '';
	if(strtolower($charset) == 'utf-8') {
		$n = $tn = $noc = 0;
		while($n < strlen($str)) {
			$t = ord($str[$n]);
			if($t == 9 || $t == 10 || (32 <= $t && $t <= 126)){
				$tn = 1; $n++; $noc++;
			} elseif(194 <= $t && $t <= 223) {
				$tn = 2; $n += 2; $noc += 2;
			} elseif(224 <= $t && $t <= 239) {
				$tn = 3; $n += 3; $noc += 2;
			} elseif(240 <= $t && $t <= 247) {
				$tn = 4; $n += 4; $noc += 2;
			} elseif(248 <= $t && $t <= 251) {
				$tn = 5; $n += 5; $noc += 2;
			} elseif($t == 252 || $t == 253) {
				$tn = 6; $n += 6; $noc += 2;
			} else {
				$n++;
			}
			if($noc >= $length) {
				break;
			}
		}
		if($noc > $length) {
			$n -= $tn;
		}
		$strcut = substr($str,0,$n);
	} else {
		for($i = 0; $i < $length; $i++) {
			$strcut .= ord($str[$i]) > 127 ? $str[$i].$str[++$i] : $str[$i];
		}
	}
	$strcut = str_replace(array('"','<','>'),array('&quot;','&lt;','&gt;'),$strcut);
	$strcut != $string && $strcut .= $dot;
	return $strcut;
}
//function sqlstring(){
		//return true;;
//}
function cut_content($str,$star,$end = '',$flag = 1){
	switch ($flag){
		case 0:  
			$content = substr($str,0,strrpos($str,$end) + strlen($end));
			break;
		case 1:  
			$content = substr($str,strrpos($str,$star) + strlen($star));
			$content = substr($content,0,strrpos($content,$end));
			break;
		case 2:  
			$content = strstr($str,$star);
			$content = substr($content,0,strrpos($content,$end) + strlen($end));
			break;
		case 3:  
			$content = substr($str,strrpos($str,$star) + strlen($star));
			break;
		case 4:  
			$content = strstr($str,$star); 
			break;
		break;
			default: $content = '';
			break;
	}
	return $content;
}
function get_size($path){
	if(is_dir($path)){
		$dir = opendir($path);
		while($file = readdir($dir)){
			is_file($path.'/'.$file) && $size += filesize($path.'/'.$file);
			is_dir($path.'/'.$file) && $file != '.' && $file != '..' && $size += get_size($path.'/'.$file);
		}
		return $size;
	} elseif (is_file($path)){
		return filesize($path);
	} else {
		return 0;	
	}
}
function remove_dir($path){
	$result = true;
	if (substr($path, -1, 1) != "/") $path .= "/"; 
	foreach (glob($path."*") as $file){ 
		if (is_file($file)){ 
			if(!@unlink($file)) $result = false; 
		} elseif (is_dir($file)){ 
			remove_dir($file); 
		} 
	} 
	if (is_dir($path)){ 
		if(!@rmdir($path)) $result = false; 
	}
	return $result;
}
function copy_dir($srcdir,$dstdir,$overwrite = true) {
	$num = 0;
	if(!is_dir($dstdir)) mkdir($dstdir);
	if($curdir = opendir($srcdir)) {
		while($file = readdir($curdir)) {
			if($file != '.' && $file != '..') {
				$srcfile = $srcdir . '\\' . $file;
				$dstfile = $dstdir . '\\' . $file;
				if(is_file($srcfile)){
					if(!is_file($dstfile) || $overwrite) {
						if(copy($srcfile,$dstfile)) {
							$num++;
						} else {
							return false;
						}
					}                  
				} else if(is_dir($srcfile)) {
					$num += copydir($srcfile,$dstfile,$overwrite);
				}
			}
		}
		closedir($curdir);
	}
	return $num;
}
function html_chars(&$array,$quote=ENT_QUOTES){
	if(is_array($array)){
		foreach ($array as $key => $value) {
			$array[$key] = html_chars($value,$quote);
		}
	} else {
		$array = htmlspecialchars($array,$quote);
	}
	return $array;
}
function unslashes(&$var){
	if(is_array($var)){
		foreach($var as $i => $n){
			$var[$i] = unslashes($n);
		}
	} else {
		$var = stripcslashes($var);
	}
	return $var;
}
function array2php($array,$arrname,$path='',$head="CMSROOT"){
	$array = unslashes($array); 
	$head = empty($head) ? NULL : "defined('".$head."') or die('Access Denied.');\r\n";
	$phpcode = "<?php\r\n".$head.'$'.$arrname.' = '.var_export($array,true).';';
	return @file_put_contents($path,$phpcode);
}
function scan_dir($path='./',$order=0){
	$path = opendir($path);
	$array = array();
	while(false !== ($filename = readdir($path))){
		$filename != '.' && $filename != '..' && $array[] = $filename;
	}
	$order == 0 ? sort($array) : rsort($array);
	closedir($path);
	return $array;
}
function is_email($email) {
	return strlen($email) > 6 && preg_match("/^[\w\-\.]+@[\w\-\.]+(\.\w+)+$/",$email);
}
function is_webaddr($webaddr){ 
	return preg_match("/^http:\/\/[_a-zA-Z0-9-]+(.[_a-zA-Z0-9-]+)*$/",$webaddr); 
} 
function encryption($string,$operation = 'DECODE',$key = '',$expiry = 0,$ckey_length = 12){
	$key = md5($key);
	$keya = md5(substr($key,0,16));
	$keyb = md5(substr($key,16,16));
	$keyc = $ckey_length ? ($operation == 'DECODE' ? substr($string,0,$ckey_length): substr(md5(microtime()),-$ckey_length)) : '';
	$cryptkey = $keya.md5($keya.$keyc);
	$key_length = strlen($cryptkey);
	$string = $operation == 'DECODE' ? base64_decode(substr($string,$ckey_length)) : sprintf('%010d',$expiry ? $expiry + time() : 0).substr(md5($string.$keyb),0,16).$string;
	$string_length = strlen($string);
	$result = '';
	$box = range(0,255);
	$rndkey = array();
	for($i = 0; $i <= 255; $i++){
		$rndkey[$i] = ord($cryptkey[$i % $key_length]);
	}
	for($j = $i = 0; $i < 256; $i++){
		$j = ($j + $box[$i] + $rndkey[$i]) % 256;
		$tmp = $box[$i];
		$box[$i] = $box[$j];
		$box[$j] = $tmp;
	}
	for($a = $j = $i = 0; $i < $string_length; $i++){
		$a = ($a + 1) % 256;
		$j = ($j + $box[$a]) % 256;
		$tmp = $box[$a];
		$box[$a] = $box[$j];
		$box[$j] = $tmp;
		$result .= chr(ord($string[$i]) ^ ($box[($box[$a] + $box[$j]) % 256]));
	}
	if($operation == 'DECODE') {
		if((substr($result,0,10) == 0 || substr($result,0,10) - time() > 0) && substr($result,10,16) == substr(md5(substr($result,26).$keyb),0,16)){
			return substr($result,26);
		} else {
			return '';
		}
	} else {
		return $keyc.str_replace('=','',base64_encode($result));
	}
}
function date2time($date){
	global $gmt_time;
	if($date){
		list($year,$month,$day) = explode('-',$date);
		$result = checkdate($month,$day,$year) ? strtotime($date) : $gmt_time;
	} else {
		$result = $gmt_time;
	}
	return $result;
}
function random($length=32,$numeric=0) {
	$seed = '0123456789';
	$numeric or $seed .= 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
	$max = strlen($seed) - 1;
	$result = '';
	while($length --> 0){
		$result .= $seed{mt_rand(0,$max)};
	}
	return $result;
}
function error($code){
	if(HTML_MAKE_MODE === true) return false; 
	switch ($code){
		case 404 :
			$file_404 = CMSROOT.'/404.html';
			file_exists($file_404) ? include($file_404) : die('<!DOCTYPE HTML PUBLIC "-//IETF//DTD HTML 2.0//EN"><html><head><title>404 Not Found</title></head><body><h1>Not Found</h1><p>The requested URL '.get_url().' was not found on this server.</p></body></html>');
			exit();
			break;
		default: die('Undefined type of error.'); break;
	}
}