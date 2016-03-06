<?php
defined('CMSROOT') or die('Access Denied.');
class channel{
	public static function navigation($ids=0){
		global $db,$_GET,$PHP_SELF;
		$result = $db->query("SELECT * FROM `{$db->prefix}channel` WHERE `lang` = '".LANG."' && `show` = 1 && `UpChannelID`={$ids} ORDER BY `sort` ASC,id ASC");
		$count = self::module_count($result); 
		foreach($result as &$n){
			$n['addtime'] = strtoupper(date(CMS_DATE_FORMAT_SHORT,$n['addtime'])); 
			if(CMS_URL_MODE == 1){
				switch ($n['module']){
					case 'MO001x' :
						$n['URL'] = $count['MO001x'] == 1 ? 'article.php' : 'article.php?pid='.$n['id']; 
						break;
					case 'MO002x' :
						$n['URL'] = $count['MO002x'] == 1 ? 'product.php' : 'product.php?pid='.$n['id'];
						break;
					case 'MO003x' :
						$n['URL'] = $count['MO003x'] == 1 ? 'photo.php' : 'photo.php?pid='.$n['id'];
						break;
					case 'MO004x' :
						$n['URL'] = $count['MO004x'] == 1 ? 'download.php' : 'download.php?pid='.$n['id'];
						break;
					case 0 : 
						$n['URL'] = $n['url'];
						break;
					default: break;
				}
				$n['URL'] = str_replace(array('{home}','{guestbook}','{feedback}'),array('./','guestbook.php','feedback.php'),$n['URL']);
			} else {
				if(empty($n['module'])){ 
					$n['URL'] = $n['url'];
				} else {
					$ph = empty($n['pathhome']) ? 'html/{PID}/index.html' : $n['pathhome'];
					$ph = str_replace(array('{L}','{PID}'),array(LANG,$n['id']),$ph);
					$n['URL'] = substr($ph,-11) == '/index.html' ? substr($ph,0,-11) : $ph; 
				}
				global $web;
				if(LANG == 1){
					$gb_url = 'html/guestbook.html';
					$fb_url = 'html/feedback.html';
				} else {
					$gb_url = 'html/guestbook_'.LANG.'.html';
					$fb_url = 'html/feedback_'.LANG.'.html';
				}
				$n['URL'] = str_replace(array('{home}','{guestbook}','{feedback}'),array($web['static'],$gb_url,$fb_url),$n['URL']);
			}
		}
		return $result;
	}
	private static function module_count($data){
		$result = array();
		foreach($data as $n){
			$result[$n['module']] = is_numeric($result[$n['module']]) ? $result[$n['module']] + 1 : 1;
		}
		return $result;
	}
	public static function show($module,$pid = 0){
		global $db;
		is_numeric($module) && $module = 'MO00'.$module.'x';
		$pid = numeric($pid);
		$sql = "SELECT * FROM `{$db->prefix}channel` WHERE `lang` = '".LANG."' && `module` = '{$module}' ";
		$pid != 0 && $sql .= "&& `id` = '{$pid}' ";
		$sql .= "ORDER BY `sort` ASC,`id` ASC LIMIT 1";
		return $db->query($sql,1);
	}
	
	public static function order($data){
		if(!is_array($data) || empty($data)) return array();
		$max_level = 0;
		foreach($data as $n){
			$n['level'] > $max_level && $max_level = $n['level'];
		}
		foreach($data as $i => $n){
			for($x=1; $x<=$max_level; $x++){
				$n['level'] == $x && $filter[$x][] = $n;
			}
		}
		for($i=1; $i<=$max_level; $i++){
			if(is_array($filter[$i])){
				foreach ($filter[$i] as $o => $p) {
					$x_sort[$i][$o] = $p['sort'];
				}
				array_multisort($x_sort[$i],SORT_ASC,$filter[$i]);
			}
		}
		if(is_array($filter[1])){
			foreach($filter[1] as $n){
				$result[1][] = $n;
				if(!is_array($filter[2])) break; 
				foreach($filter[2] as $y){
					stristr($y['nexus'],$n['nexus']) && $result[1][] = $y;
				}
			}
		}
		empty($filter[1]) && $result[1] = $filter[2]; 
		for($i=2; $i<$max_level; $i++){
			empty($filter[$i]) && $result[$i] = $filter[$i+1]; 
			if(is_array($result[$i-1])){
				foreach($result[$i-1] as $p){
					$result[$i][] = $p;
					if($p['level'] == $i){
						foreach($filter[$i+1] as $r){
							stristr($r['nexus'],$p['nexus']) && $result[$i][] = $r;
						}
					}
				}
			}
		}
		$result = $result[($max_level-1)]; 
		(empty($result) || $max_level == 1) && $result = $filter[1]; 
		return $result;
	}
}