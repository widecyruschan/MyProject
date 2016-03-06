<?php
defined('CMSROOT') or die('Access Denied.');
class html{
	public $buffer_time = 0;
	private $html_tmp_dir;
    private $chmod_files = 0777;	
    private $chmod_folders = 0755;
	private $project_index = 0; 
	private $list_index = 0; 
	private $count_success = 0; 
	public $count_failure = 0; 
	public $count_jump = 0; 
	public $back_page = ''; 
	public $language = array();
	public function __construct(){
		$this->html_tmp_dir = CMSINC.'/tmp/html_make/';
		require(CMSINC.'/language/manage/chinese_simplified/html.class.lang.php');
		$this->language = $language['page'];
		$d = explode(',',$_GET['html_make_data']);
		$this->project_index = isset($d[0]) ? numeric($d[0]) : -1;
		$this->list_index = isset($d[1]) ? numeric($d[1]) : -1;
		$this->count_success = numeric($d[2]);
		$this->count_failure = numeric($d[3]);
		$this->count_jump = numeric($d[4]);
		empty($d[5]) or $this->back_page = $d[5];
	}
	public function next_page(){
		$tmp = $this->get_tmp_file(); 
		$count_tmp = count($tmp); 
		$html_url_head = ''; 
		$df = $this->html_tmp_dir.$tmp[$this->project_index];
		if(is_file($df)){
			require($df);
		} else {
			$this->ending(); 
		}
		$next_url = $html_make_file[$this->list_index + 1]; 
		if(empty($next_url)){ 
			$this->list_index = 0;
			if($this->project_index >= ($count_tmp-1)){ 
				$this->ending(); 
			} else { 
				$this->project_index ++;
				require($this->html_tmp_dir.$tmp[$this->project_index]);
				$next_url = $html_make_file[0]; 
			}
		}  else {
			$this->list_index ++; 
		}
		$next_url = $html_url_head.$next_url;
		$next_url .= stristr($next_url,'?') ? '&' : '?';
		$next_url .= 'html_make_data='.$this->project_index.','.$this->list_index.','.$this->count_success.','.$this->count_failure.','.$this->count_jump;
		empty($this->back_page) or $next_url .= ','.$this->back_page; 
		die('<meta http-equiv="refresh" content="'.$this->buffer_time.';URL='.$next_url.'" />');	
	}	
	public function make($content,$path){
		member::logout(); 
		shopping::del_cart(0,true); 
		$this->count_success ++; 
		if(empty($this->back_page)){
			$info .= '<div class=\"current_make_info\">'.str_replace('{n}','<span>'.($this->count_success + $this->count_jump).'</span>',$this->language[0]).'<br />'.$path.'</div>';
			echo '<script type="text/javascript">parent.document.getElementById(\'html_make_info\').innerHTML = "'.$info.'";</script>';
		}
		$dir = dirname(CMSROOT.'/'.$path);
		if(!file_exists($dir) && !$this->mkpath($dir)){ 
			$info = $this->language[1].'<br />'.str_replace('\\','\/',$dir);
			$this->ending($info);
		}
		if(@file_put_contents(CMSROOT.'/'.$path,$content)){ 
			$this->next_page();
		} else { 
			$info = $this->language[2].'<br />'.$path;
			$this->ending($info);			
		}
	}
	public function ending($error = ''){
		$this->clear_tmp(); 
		if(empty($this->back_page)){ 
			if($error == ''){
				$info = '<div class=\"current_make_info\">'.$this->language[3].'<br />';
				$info .= str_replace('{n}','<span>'.($this->count_success + $this->count_failure).'</span>',$this->language[4]);
				$this->count_jump > 0 && $info .= str_replace('{n}','<span>'.$this->count_jump.'</span>',$this->language[5]); 
				$info .= '<br /><a href=\"html_make.php\" target=\"_parent\" class=\"submit\">'.$this->language[6].'</a></div>';
			} else {
				$info = '<div class=\"make_error_info\">'.$error.'</div>';	
			}
			die('<script type="text/javascript">window.parent.clear_time(); parent.document.getElementById(\'html_make_action\').style.display=\'none\'; parent.document.getElementById(\'html_make_info\').innerHTML = "'.$info.'";</script>');
		} else { 
			echo '<script type="text/javascript">';
			if(!empty($error)){ echo 'alert("'.str_replace('<br />','\r\n',$error).'");'; }
			echo 'parent.location.href = "'.$this->back_page.'";';
			die('</script>');
		}
	}
	private function get_tmp_file(){
		$fa = scan_dir($this->html_tmp_dir,0);
		$fb = array();
		foreach($fa as $n){
			$fc = pathinfo($n);
			$fc['extension'] == 'php' && $fb[] = $n;
		}
		return $fb;
	}
	public function mkpath($dir,$mode = 0777){
		if(!is_dir($dir)) {
			$this->mkpath(dirname($dir));
			if(@mkdir($dir,$mode)){
				@touch($dir.'/index.html');
				@chmod($dir.'/index.html',0777);
			} else {
				return false;	
			}
		}
		return true;
	}
	public function clear_tmp(){
		$result = true;
		foreach ($this->get_tmp_file() as $n){
			@unlink($this->html_tmp_dir.$n) or $result = false;
		}
		return $result;
	}
	public function create_tmp($html_make_file,$file_name_head = '0',$html_url_head = 'weburl'){
		global $gmt_time,$config;
		if(is_array($html_make_file) && count($html_make_file) >= 1){
			$html_url_head == 'weburl' && $html_url_head = $config['url'];
			$php = '<?php'."\r\n";
			$php .= '$html_url_head = \''.$html_url_head.'\';'."\r\n";
			$php .= '$html_make_file = '.var_export($html_make_file,true).';';
			
			$tmp = $this->html_tmp_dir.$file_name_head.$gmt_time.random(10,0).'.php';
			@file_put_contents($tmp,$php) or msgbox($this->language[7].$this->html_tmp_dir,'CURRENT');
		}
	} 
	public function channel_tmp($module = 0,$pid = 0){
		global $db;
		$file_data = array();
		$sql = "SELECT `id`,`module` FROM `{$db->prefix}channel` WHERE `lang` = '".LANG."' && `module` != '0' ";
		empty($module) or $sql .= "&& `module` = '{$module}' ";
		empty($pid) or $sql .= "&& `id` = '{$pid}' ";
		$p = $db->query($sql);
		foreach($p as $n){
			switch($n['module']){
				case 'MO001x' : $file_data[] = 'article.php?pid='.$n['id']; break;
				case 'MO002x' : $file_data[] = 'product.php?pid='.$n['id']; break;
				case 'MO003x' : $file_data[] = 'photo.php?pid='.$n['id']; break;
				case 'MO004x' : $file_data[] = 'download.php?pid='.$n['id']; break;
				case 'MO005x' : $file_data[] = 'job.php?pid='.$n['id']; break;
				default : return false; break;
			}
		}
		return $this->create_tmp($file_data,2);
	}
	public function category_tmp($module = 0,$pid = 0,$cid = 0){
		global $db;
		$file_data = array();
		$sql = "SELECT `id`,`module` FROM `{$db->prefix}category` WHERE `lang` = '".LANG."' ";
		empty($module) or $sql .= "&& `module` = '{$module}' ";
		empty($pid) or $sql .= "&& `channel` = '{$pid}' ";
		empty($cid) or $sql .= "&& `id` = '{$cid}' ";
		$p = $db->query($sql);
		foreach($p as $n){
			switch($n['module']){
				case 'MO001x' : $file_data[] = 'list.php?cid='.$n['id']; break;
				case 'MO002x' : $file_data[] = 'category.php?cid='.$n['id']; break;
				case 'MO003x' : $file_data[] = 'slide.php?cid='.$n['id']; break;
				case 'MO004x' : $file_data[] = 'soft.php?cid='.$n['id']; break;
				case 'MO005x' : $file_data[] = 'joblist.php?cid='.$n['id']; break;
				default : return false; break;
			}
		}
		return $this->create_tmp($file_data,3);
	}
	public function content_tmp($module,$pid = 0,$cid = 0,$id = 0,$start_time = 0,$end_time = 0,$start_id = 0,$end_id = 0){
		global $db,$config;
		$file_data = array();
		switch($module){
			case 'MO001x' : $table = 'article'; $phpfile = 'view.php'; break;
			case 'MO002x' : $table = 'product'; $phpfile = 'detail.php'; break;
			case 'MO003x' : $table = 'picture'; $phpfile = 'show.php'; break;
			case 'MO004x' : $table = 'download'; $phpfile = 'down.php'; break;
			case 'MO005x' : $table = 'recruitment'; $phpfile = 'job.php'; break;
			default : return false; break;
		}
		$table = $db->prefix.$table;
		$sql = "SELECT `id` FROM `{$table}` WHERE `lang` = '".LANG."' && `audit` = 1 && `recycle` = 0 ";
		in_array($module,array('MO001x','MO002x')) && $sql .= "&& `published` = 1 "; 
		empty($pid) or $sql .= "&& `channel` = '{$pid}' ";
		empty($cid) or $sql .= "&& `category` LIKE '%{$category}%' ";
		empty($id) or $sql .= "&& `id` = '{$id}' ";
		($start_time > 0 && $end_time > 0) && $sql .= "&& `addtime` >= '{$start_time}' && `addtime` <= '{$end_time}' ";
		($start_id > 0 && $end_id > 0) && $sql .= "&& `id` >= '{$start_id}' && `id` <= '{$end_id}' ";
		$p = $db->query($sql);
		foreach($p as $n){
			$file_data[] = $n['id'];
		}
		$h = $config['url'].$phpfile.'?id=';
		return $this->create_tmp($file_data,4,$h);
	}
	public function limit2php($durl){
		return '<meta http-equiv="refresh" content="0;URL='.$durl.'" />'."\r\n".'<!-- 当前页有访问限制，转向至动态页访问 -->';
	}
}