<?php
defined('CMSROOT') or die('Access Denied.');
class ip{
	public static function gap($type,$sec,$oid = 0,$lang = false,$delete = true){
		$delete && mt_rand(0,10) == 2 && self::delete($type,$sec,$lang);
		if(self::query($type,$sec,$oid,$lang)){
			return true;
		} else {
			self::add($type,$sec,$oid,$lang);
			return false;	
		}
	}
	public static function delete($type,$sec,$lang = false){
		global $db,$gmt_time;
		$lang = $lang ? LANG : 0;
		$deltime = $gmt_time - $sec; 
		$sql = "DELETE FROM `{$db->prefix}ipvisit` WHERE `lang` = '{$lang}' && `type` = '{$type}' && `addtime` < {$deltime}";
		return $db->execute($sql);
	}
	public static function add($type,$sec,$oid = 0,$lang = false){
		global $db,$gmt_time;
		$lang = $lang ? LANG : 0;
		$sql = "INSERT INTO `{$db->prefix}ipvisit` (`ip`,`lang`,`type`,`addtime`,`oid`) values ('".get_ip()."','{$lang}','{$type}','{$gmt_time}','{$oid}') ON DUPLICATE KEY UPDATE `addtime` = '{$gmt_time}'";
		return $db->execute($sql);
	}
	public static function query($type,$sec,$oid = 0,$lang = false,$cip = true){
		global $db,$gmt_time;
		$sql = "SELECT `addtime` FROM `{$db->prefix}ipvisit` WHERE `type` = '{$type}' ";
		$cip && $sql .= "&& `ip` = '".get_ip()."' ";
		$oid && $sql .= "&& `oid` = '{$oid}' ";
		$lang && $sql .= "&& `lang` = '".LANG."' ";
		$result = $db->query($sql.'ORDER BY `addtime` DESC LIMIT 1',1);
		return (is_numeric($result['addtime']) && ($gmt_time - $result['addtime']) < $sec) ? true : false;
	}
}