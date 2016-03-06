<?php
defined('CMSROOT') or die('Access Denied.');
class tag{
	public static function data(){
		$args = func_get_args();
		global $db;
		$sql = "SELECT * FROM `{$db->prefix}tag` WHERE `lang` = '".LANG."' ";
		!empty($args[1]) && $sql .= is_numeric($args[1]) ? "&& `module` = 'MO00{$args[1]}x' " : "&& `module` = '{$args[1]}' ";
		switch($args[0]){ 
			case 0 : $sql .= "ORDER BY `lasttime` DESC,`id` DESC "; break;
			case 1 : $sql .= "ORDER BY `lasttime` ASC,`id` ASC "; break;
			case 2 : $sql .= "ORDER BY `firsttime` DESC,`id` DESC "; break;
			case 3 : $sql .= "ORDER BY `firsttime` ASC,`id` ASC "; break;
			case 4 : $sql .= "ORDER BY `click` DESC,`id` DESC "; break;
			case 5 : $sql .= "ORDER BY `click` ASC,`id` ASC "; break;
			case 6 : $sql .= "ORDER BY `total` DESC,`id` DESC "; break;
			case 7 : $sql .= "ORDER BY `total` ASC,`id` ASC "; break;
			case 8 : $sql .= "ORDER BY `id` DESC "; break;
			case 9 : $sql .= "ORDER BY `id` ASC "; break;
			default: $sql .= "ORDER BY `lasttime` DESC,`id` DESC "; break;
		}
		$start = is_int($args[3]) ? $args[3] : 0;
		$limit = $args[2] != 0 ? $args[2] : 20;
		$sql .= "LIMIT {$start},{$limit}";
		$result = $db->query($sql);
		foreach($result as &$n){
			switch($n['module']){
				case 'MO001x' : $type = 1; break;	
				case 'MO002x' : $type = 2; break;	
				case 'MO003x' : $type = 3; break;	
				case 'MO004x' : $type = 4; break;
				default: $type = 1; break;
			}
			$n['URL'] = 'search.php?type='.$type.'&tag='.rawurlencode($n['title']);
			$n['firsttime'] = date(CMS_DATE_FORMAT_SHORT,$n['firsttime']);
			$n['lasttime'] = date(CMS_DATE_FORMAT_SHORT,$n['lasttime']);
			isset($args[5]) or $args[5] = ' ...';
			$args[4] != 0 && $n['title'] = cut_str($n['title'],$args[4],$args[5]); 
		}
		return $result;
	}
	public static function update($tag,$module){
		global $db,$gmt_time;
		foreach($tag as $n){
			empty($n) or $db->execute("INSERT INTO `{$db->prefix}tag` (`lang`,`title`,`module`,`click`,`total`,`firsttime`,`lasttime`) values ('".LANG."','{$n}','{$module}',0,1,'".$gmt_time."','".$gmt_time."') ON DUPLICATE KEY UPDATE `total` = (`total` + 1),`lasttime` = '".$gmt_time."'");
		}
		return true;		
	}
	public static function modify($tag_old,$tag_new,$module){
		global $db,$gmt_time;
		self::update(array_diff($tag_new,$tag_old),$module);
		self::delete(array_diff($tag_old,$tag_new),$module);
	}
	public static function delete($tag,$module){
		global $db,$gmt_time;
		foreach($tag as $n){
			$count = $db->query("SELECT `id`,`total` FROM `{$db->prefix}tag` WHERE `lang` = '".LANG."' && `module` = '{$module}' && `title` = '{$n}' LIMIT 1",1);
			if($count['total'] > 1){ 
				$db->execute("UPDATE `{$db->prefix}tag` SET `total` = (`total` - 1) WHERE `id` = '{$count['id']}';");
			} else { 
				$db->execute("DELETE FROM `{$db->prefix}tag` WHERE `id` = '{$count['id']}'");
			}
		}
		return true;
	}	
}