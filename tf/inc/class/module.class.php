<?php
defined('CMSROOT') or die('Access Denied.');
class module{
	public function __construct(){
	}
	public static function get_list(){
		global $db,$_GET;
		$sql = "SELECT * FROM `{$db->prefix}module` ORDER BY `id` ASC ";
		$limit = $_SESSION['admin']['limit'];
		is_numeric($limit) or $limit = 20; 
		$total = $db->query(str_replace('*','count(*)',$sql),1,0);
		$total = $total[0];		
		$total_page = ceil($total / $limit);		
		$page = is_numeric($_GET['page']) ? $_GET['page'] : 1;
		$page > $total_page && $page = $total_page;	
		$page < 1 && $page = 1;
		$start = $limit * ($page - 1);
		$sql .= "LIMIT {$start},{$limit}";
		$data = $db->query($sql);
		$result = array(
			'page' => $page, 
			'limit' => $limit, 
			'total' => $total, 
			'total_page' => $total_page, 
			'data' => $data, 
		);
		return $result;
	}
	public static function install($dir){
		global $db,$gmt_time,$install_info;
		$sql = "INSERT INTO `{$db->prefix}module`(`modcode`,`modname`,`installpath`,`type`,`files`,`develop`,`info`,`addtime`)";
		$sql .= "VALUES('{$install_info['modcode']}','{$install_info['modname']}','{$install_info['install_path']}','{$install_info['type']}','".(is_array($install_info['files']) ? implode(',',$install_info['files']) : '')."','{$install_info['develop']}','{$install_info['other']}','{$gmt_time}') ";
		if(!$db->execute($sql)) return 2;
		@include_once(CMSROOT.'/'.dirname($data['installpath']).'/setup.php');
		return 1;
	}
	public static function uninst($modcode){
		global $db,$web,$config;
		$data = $db->query("SELECT * FROM `{$db->prefix}module` WHERE `modcode` = '{$modcode}'",1);
		if(empty($data)) return 2;
		for($i=1; $i<=$config['lang_total']; $i++){
			require_once(CMSINC.'/templates/frontend/'.$web['all_data'][$i]['template'].'/config.default.php');
			$template_info_module = explode(',',$template_info['module']);
			if(in_array($modcode,$template_info_module)) return 3;
		}
		$mod = $db->query("SELECT `id` FROM  `{$db->prefix}channel` WHERE `module` = '{$modcode}' LIMIT 1",1);
		if($mod['id'] > 0){
			return 4;	
		}
		if(!empty($data['files']) && self::delete($data['files']) == false) return 2;
		$db->execute("DELETE FROM `{$db->prefix}module` WHERE `modcode` = '{$modcode}'");
		@include_once(CMSROOT.'/'.dirname($data['installpath']).'/uninst.php');
		return 1;
	}
	private static function delete($files){
		global $config;
		$result = true;
		$files = explode(',',$files);
		foreach($files as &$n){
			$n = '../'.str_replace('{admin}',$config['admin_dir'],$n);
			is_dir($n) && $result = @remove_dir($n);
			is_file($n) && $result = @unlink($n);
			if($result !== true) return false;
		}
		return $result;
	}
	public static function get_module($type=0){
		global $db;
		$sql = $type == 0 ? "SELECT * FROM `{$db->prefix}module` ORDER BY `id` ASC" : "SELECT * FROM `{$db->prefix}module` WHERE `type` = '{$type}' ORDER BY `id` ASC";
		$data = $db->query($sql);
		return $data;
	}
}