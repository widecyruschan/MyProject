<?php
defined('CMSROOT') or die('Access Denied.');
class search{
	public $word = ''; 
	public $tag = 0; 
	public $type = 1; 
	public $limit = 10; 
	public $channel = 0; 
	public $category = 0; 
	public $max_limit = 10000; 
	public $sort = 0; 
	public $fulltext = false; 
	public $title_length = 0; 
	public $content_length = 100; 
	public $numeric_page = 5; 
	public $word_css = 'search_keyword'; 
	public $page_data = array();
	public $keyword; 
	public $is_tag = false; 
	public function __construct(){
	}
	public function data(){
		global $db,$_GET,$MYCMS;
		$trim_str = ' .,;[]|+-=_`~!@#$%^&*()<>?{}';
		empty($this->type) && $this->type = 1;
		$this->type = $this->type < 1 ? 1 : ($this->type > 4 ? 4 : $this->type);			
		$this->word = trim(preg_replace('/[\'\"\\\\\/]/','',$this->word),$trim_str);
		$this->tag = trim(preg_replace('/[\'\"\\\\\/]/','',$this->tag),$trim_str);
		if(empty($this->word) && empty($this->tag)) return array();		
		$type_data = $this->get_type();
		$table = $db->prefix.$type_data['table'];
		$sql = "SELECT a.*,b.`pathcontent` FROM `{$table}` a LEFT JOIN `{$db->prefix}channel` b ON a.`channel` = b.`id` WHERE a.`lang` = '".LANG."' && a.`audit` = 1 && a.`recycle` = 0 "; 
		$this->type <= 2 && $sql .= "&& a.`published` = 1 "; 
		$this->channel != 0 && $sql .= "&& a.`channel` = '{$this->channel}' "; 
		$this->category != 0 && $sql .= "&& a.`category` LIKE '%,{$this->category},%' "; 
		if(empty($this->tag)){
			$keyword = explode(' ',$this->word); 
			foreach($keyword as $w){
				if($this->fulltext){ 
					$sql .= "&& (a.`title` LIKE '%{$w}%' || a.`tag` LIKE '%{$w}%' || a.`keyword` LIKE '%{$w}%' || a.`content` LIKE '%{$w}%') ";
				} else {
					$sql .= "&& (a.`title` LIKE '%{$w}%' || a.`tag` LIKE '%{$w}%' || a.`keyword` LIKE '%{$w}%') ";
				}
			}
			$this->keyword = $this->word; 
			$this->is_tag = false; 
		} else { 
			$sql .= "&& (a.`tag` LIKE '%,{$this->tag}' || a.`tag` LIKE '{$this->tag},%' || a.`tag` LIKE '%,{$this->tag},%' || a.`tag` = '{$this->tag}') ";
			isset($_GET['page']) or $db->execute("UPDATE `{$db->prefix}tag` SET `click` = (`click` + 1) WHERE `lang` = '".LANG."' && `module` = '{$type_data['module']}' && `title` = '{$this->tag}' LIMIT 1");
			$this->keyword = $this->tag; 
			$this->is_tag = true; 
		}
		$page_data['limit'] = $this->limit; 
		$page_data['total'] = $db->query(str_replace('a.*,b.`pathcontent`','count(*)',$sql),1,0);
		$page_data['total'] = $page_data['total'][0] < $this->max_limit ? $page_data['total'][0] : $this->max_limit; 
		$page_data['total_page'] = ceil($page_data['total'] / $this->limit); 
		$page_data['page'] = is_numeric($_GET['page']) ? $_GET['page'] : 1;
		$page_data['page'] > $page_data['total_page'] && $page_data['page'] = $page_data['total_page'];	
		$page_data['page'] < 1 && $page_data['page'] = 1;
		$start = $this->limit * ($page_data['page'] - 1);
		$page_data['limit'] = $this->limit; 
		$x = $page_data['page'] - $this->numeric_page;
		$y = $page_data['page'] + $this->numeric_page;
		if($x < 1){$y += 1-$x; $x = 1;}
		if($y > $page_data['total_page']){$x -= $y - $page_data['total_page']; $y = $page_data['total_page'];}
		$x < 1 && $x = 1;
		$page_data['start_url'] = durl('page',1,NULL); 
		$page_data['first_url'] = durl('page',$page_data['page'] > 2 ? ($page_data['page'] - 1) : 1,NULL); 
		$page_data['next_url'] = durl('page',($page_data['page'] + 1) < $page_data['total_page'] ? ($page_data['page'] + 1) : $page_data['total_page'],NULL);  
		$page_data['end_url'] = durl('page',$page_data['total_page'],NULL); 
		for($i = $x; $i <= $y; $i++){
			$page_data['number'][$i] = durl('page',$i,NULL);
		}
		$MYCMS->assign('page_data',$page_data); 
		switch($this->sort){ 
			case 1 : $sql .= "ORDER BY a.`title` LIKE '%{$this->word}%' DESC,a.`id` DESC "; break;
			case 2 : $sql .= "ORDER BY a.`title` LIKE '%{$this->word}%' DESC,a.`id` ASC "; break;
			case 3 : $sql .= "ORDER BY a.`title` LIKE '%{$this->word}%' DESC,a.`addtime` DESC,a.`id` DESC "; break;
			case 4 : $sql .= "ORDER BY a.`title` LIKE '%{$this->word}%' DESC,a.`addtime` ASC,a.`id` ASC "; break;
			default: $sql .= "ORDER BY a.`title` LIKE '%{$this->word}%' DESC,a.`id` DESC "; break;
		}
		$sql .= "LIMIT {$start},{$page_data['limit']}";
		$result = $db->query($sql);
		foreach($result as &$n){
			if(CMS_URL_MODE == 1){ 
				$n['URL'] = $type_data['urlfile'].'?id='.$n['id'];
			} else { 
				$n['URL'] = empty($n['filename']) ? (empty($n['pathcontent']) ? 'html/{PID}/{Y}{M}/{ID}.html' : $n['pathcontent']) : $n['filename'];
				$n['URL'] = str_replace(array('{L}','{PID}','{CID}','{ID}','{Y}','{M}','{D}'),array(LANG,$n['channel'],category::cut($n['category'],0),$n['id'],date('Y',$n['addtime']),date('m',$n['addtime']),date('d',$n['addtime'])),$n['URL']);					
			}
			$n['title_format'] = $this->format($n['title'],$this->title_length); 
			$n['content_format'] = empty($n['introduction']) ? $this->format($n['content'],$this->content_length) : $this->format($n['introduction'],$this->content_length); 
			$n['tag'] = $this->format($n['tag']);
			$n['addtime'] = strtoupper(date(CMS_DATE_FORMAT_SHORT,$n['addtime'])); 
			$n['picture'] = explode(',',$n['picture']); 
			$n['picture'][0] = is_file($n['picture'][0]) ? $n['picture'][0] : ''; 
		}
		$this->page_data = $page_data;
		return $result;		
	}
	private function get_type(){
		switch($this->type){
			case 1 : $result = array('table' => 'article','urlfile' => 'view.php','module' => 'MO001x'); break;
			case 2 : $result = array('table' => 'product','urlfile' => 'detail.php','module' => 'MO002x'); break;
			case 3 : $result = array('table' => 'picture','urlfile' => 'show.php','module' => 'MO003x'); break;
			case 4 : $result = array('table' => 'download','urlfile' => 'down.php','module' => 'MO004x'); break;
			default : $result = array('table' => 'article','urlfile' => 'view.php','module' => 'MO001x'); break;
		}
		return $result;
	}
	private function format($content,$length = 0){
		$content = misc::html2txt($content,$length,' ...'); 
		$keyword = explode(' ',$this->keyword); 
		foreach($keyword as $w){
			$content = str_replace($w,'<span class="'.$this->word_css.'">'.$w.'</span>',$content);
		}
		return $content;		
	}
}