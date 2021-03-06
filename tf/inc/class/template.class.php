<?php
defined('CMSROOT') or die('Access Denied.');
class template{
	public static function get_list(){
		$path = CMSINC.'/templates/frontend/';
		$dirs = scan_dir($path);
		$result = array();
		foreach($dirs as $n){
			$pf = $path.$n.'/config.default.php';
			if(is_file($pf) && require_once($pf)){
				$template_info['dir'] = $n;
				$result[] = $template_info;
			}
		}
		return $result; 
	}
	public static function get_content_page($cid){
		$cid = trim(preg_replace('/[^\d,]/','',$cid),','); 
		if(!empty($cid)){
			global $db;
			$sql = "SELECT `templatecontent` FROM `{$db->prefix}channel` WHERE `id` in($cid) ORDER BY `level` DESC";
			$c =  $db->query($sql);
			foreach($c as $n){
				if(!empty($n['templatecontent'])){
					return $n['templatecontent'];
				}
			}
		}
		return '';
	}
}