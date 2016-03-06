<?php
defined('CMSROOT') or die('Access Denied.');
class avatar{
	public $input = array(); 
	public function swf_param($uid,$reg_date = 201101) {
		global $config;
		$uid = intval($uid);
		$input = 'uid='.$uid.'&reg_date='.$reg_date.'&agent='.md5($_SERVER['HTTP_USER_AGENT'])."&time=".time();
		$input = urlencode(encryption($input,'ENCODE',WEBKEY));
		$swf_param = 'inajax=1&appid=1&input='.$input.'&agent='.md5($_SERVER['HTTP_USER_AGENT']).'&ucapi='.urlencode($config['url'].'member').'&avatartype=virtual';
		return $swf_param;
	}
	public function init_input($getagent = '') {
		$input = $_GET['input'];
		if($input) {
			$input = encryption($input,'DECODE',WEBKEY);
			parse_str($input,$this->input); 
			$agent = $getagent ? $getagent : $this->input['agent'];
			if(($getagent && $getagent != $this->input['agent']) || (!$getagent && md5($_SERVER['HTTP_USER_AGENT']) != $agent)) {
				exit('Access denied for agent changed');
			} elseif($this->time - $this->input['time'] > 3600) {
				exit('Authorization has expired');
			}
		}
		if(empty($this->input)) {
			exit('Invalid input');
		}
	}
	public function onuploadavatar() {
		@header("Expires: 0");
		@header("Cache-Control: private, post-check=0, pre-check=0, max-age=0", FALSE);
		@header("Pragma: no-cache");
		$this->init_input($_GET['agent']);
		$uid = $this->input['uid'];
		if(empty($uid)) {
			return -1;
		}
		if(empty($_FILES['Filedata'])) {
			return -3;
		}
		list($width, $height, $type, $attr) = getimagesize($_FILES['Filedata']['tmp_name']);
		$imgtype = array(1 => '.gif', 2 => '.jpg', 3 => '.png');
		$filetype = $imgtype[$type];
		$tmpavatar = CMSINC.'/tmp/other/member_'.$uid.$filetype; 
		file_exists($tmpavatar) && @unlink($tmpavatar);
		if(@copy($_FILES['Filedata']['tmp_name'], $tmpavatar) || @move_uploaded_file($_FILES['Filedata']['tmp_name'], $tmpavatar)) {
			@unlink($_FILES['Filedata']['tmp_name']);
			list($width, $height, $type, $attr) = getimagesize($tmpavatar);
			if($width < 10 || $height < 10 || $type == 4) {
				@unlink($tmpavatar);
				return -2;
			}
		} else {
			@unlink($_FILES['Filedata']['tmp_name']);
			return -4;
		}
		global $config;
		$avatarurl = $config['url'].'inc/tmp/other/member_'.$uid.$filetype; 
		return $avatarurl;
	}
	public function onrectavatar() {
		@header("Expires: 0");
		@header("Cache-Control: private, post-check=0, pre-check=0, max-age=0", FALSE);
		@header("Pragma: no-cache");
		header("Content-type: application/xml; charset=utf-8");
		$this->init_input($_GET['agent']);
		$uid = $this->input['uid'];
		if(empty($uid)) {
			return '<root><message type="error" value="-1" /></root>';
		}
		$avatar_dir = CMSINC.'/uploads/avatar/'.$this->input['reg_date'].'/'; 
		if(!is_dir($avatar_dir)){ 
			@mkdir($avatar_dir,0777);
			@file_put_contents($avatar_dir.'index.html','');
		}
		$bigavatarfile = $avatar_dir.$uid.'_big.jpg';
		$middleavatarfile = $avatar_dir.$uid.'_middle.jpg';
		$smallavatarfile = $avatar_dir.$uid.'_small.jpg';
		$bigavatar = $this->flashdata_decode($_POST['avatar1']);
		$middleavatar = $this->flashdata_decode($_POST['avatar2']);
		$smallavatar = $this->flashdata_decode($_POST['avatar3']);
		if(!$bigavatar || !$middleavatar || !$smallavatar) {
			return '<root><message type="error" value="-2" /></root>';
		}
		$success = 1;
		$fp = @fopen($bigavatarfile, 'wb');
		@fwrite($fp, $bigavatar);
		@fclose($fp);
		$fp = @fopen($middleavatarfile, 'wb');
		@fwrite($fp, $middleavatar);
		@fclose($fp);
		$fp = @fopen($smallavatarfile, 'wb');
		@fwrite($fp, $smallavatar);
		@fclose($fp);
		$biginfo = @getimagesize($bigavatarfile);
		$middleinfo = @getimagesize($middleavatarfile);
		$smallinfo = @getimagesize($smallavatarfile);
		if(!$biginfo || !$middleinfo || !$smallinfo || $biginfo[2] == 4 || $middleinfo[2] == 4 || $smallinfo[2] == 4) {
			file_exists($bigavatarfile) && unlink($bigavatarfile);
			file_exists($middleavatarfile) && unlink($middleavatarfile);
			file_exists($smallavatarfile) && unlink($smallavatarfile);
			$success = 0;
		}
		@unlink(CMSINC.'/tmp/other/member_'.$uid.'.jpg'); 
		if($success) {
			return '<?xml version="1.0" ?><root><face success="1"/></root>';
		} else {
			return '<?xml version="1.0" ?><root><face success="0"/></root>';
		}
	}
	public function flashdata_decode($s) {
		$r = '';
		$l = strlen($s);
		for($i=0; $i<$l; $i=$i+2) {
			$k1 = ord($s[$i]) - 48;
			$k1 -= $k1 > 9 ? 7 : 0;
			$k2 = ord($s[$i+1]) - 48;
			$k2 -= $k2 > 9 ? 7 : 0;
			$r .= chr($k1 << 4 | $k2);
		}
		return $r;
	}
}