<?php
defined('CMSROOT') or die('Access Denied.');
class admin{
	public function __construct(){
	}
	public static function login($username,$password){
		global $db,$gmt_time;
		$username = preg_replace("/[^0-9a-zA-Z_@!\.-]/",'',$username);
		$password = preg_replace("/[^0-9a-zA-Z_@!\.-]/",'',$password);
		$row = $db->query("SELECT * FROM `{$db->prefix}admin` WHERE `username` = '{$username}' LIMIT 1",1);
		if(isset($row['username'])){
			if(md5(md5($password).md5($row['encryption'])) == $row['password']){
				$_SESSION['admin']['login']['id'] = $row['id']; 
				$_SESSION['admin']['login']['username'] = $row['username']; 
				$_SESSION['admin']['login']['loginip'] = explode(',',$row['loginip'].','.get_ip()); 
				$_SESSION['admin']['login']['logintime'] = explode(',',$row['logintime'].','.$gmt_time); 
				$_SESSION['admin']['login']['frequency'] = $row['frequency'] + 1; 
				$_SESSION['admin']['login']['purviews'] = explode(',',$row['purviews']); 
				$_SESSION['admin']['login']['level'] = $row['level']; 
				$_SESSION['admin']['login']['created'] = $row['created']; 
				$_SESSION['admin']['login']['condition'] = 'MYCMS'; 
				$ip = $_SESSION['admin']['login']['loginip'][1].','.get_ip();
				$t = $_SESSION['admin']['login']['logintime'][1].','.$gmt_time;
				$db->execute("UPDATE `{$db->prefix}admin` SET `loginip` = '{$ip}',`logintime` = '{$t}',`frequency` = (`frequency`+1) WHERE `id` = '{$row['id']}';");
				return 1; 
			} else {
				return -2; 
			}
		} else {
			return -1; 
		}
	}
	public static function logout(){
		session_unset(); 
		session_destroy();
		$_SESSION = array();
		return true;
 	}
	public static function logs($type,$info){
		global $db,$admin_config,$gmt_time;
		if($admin_config['logs_open'] == 1){
			$sql = "INSERT INTO `{$db->prefix}logs` (`type`,`info`,`pageurl`,`lang`,`username`,`ip`,`addtime`) VALUES ('{$type}','{$info}','http://{$_SERVER['SERVER_NAME']}".get_url()."','".LANG."','{$_SESSION['admin']['login']['username']}','".get_ip()."','".$gmt_time."');";
			$db->execute($sql);
		}
	}
	public static function purview(){
		global $db,$PHP_SELF,$admin_info;
		$general_rule = 'index.php,app.php'; 
		if($_SESSION['admin']['login']['condition'] != 'MYCMS' || !is_numeric($_SESSION['admin']['login']['id'])) return 3; 
		$sql = "SELECT * FROM `{$db->prefix}admin` WHERE `ID` = '{$_SESSION['admin']['login']['id']}' LIMIT 1";
		if($admin_info = $db->query($sql,1)){
			if($admin_info['frequency'] != $_SESSION['admin']['login']['frequency']) return 2; 
			if($admin_info['level'] == 1){ 
				return 9; 
			} else { 
				$admin_info['purviews'] .= ','.$general_rule; 
				$array = explode(',',$admin_info['purviews']);
				return in_array($PHP_SELF,$array) ? 9 : 1;
			}
		} else {
			return 0; 
		}
		return 1;		
	}
	public static function cutover($small,$sort,$string,$url){
		if($sort == $small){
			$result = '<a href="'.$url.($small+1).'">'.$string.' <img src="../inc/templates/manage/images/s_desc.png" /></a>';
		} elseif ($sort == $small+1) {
			$result = '<a href="'.$url.$small.'">'.$string.' <img src="../inc/templates/manage/images/s_asc.png" /></a>';
		} else {
			$result = '<a href="'.$url.$small.'">'.$string.'</a>';
		}
		return $result;
	}	
	public static function page($total,$page,$limit,$total_page,$min=0,$max=0){
		global $_GET,$PHP_SELF,$language;
		$url = NULL;
		foreach($_GET as $i => $n){
			$i != 'page' && $i != 'display' && $i != '' && $n != '' && $url .= $i.'='.$n.'&'; 
		}
		$url = $PHP_SELF.'?'.$url.'page=';
		if(is_numeric($_GET['display'])){ 
			$_SESSION['admin']['limit'] = $_GET['display'];
			msgbox('',$url.'1');
		}
		if($min == 0 || $max == 0){
			$display = array(5,20,30,50,80,100,200,500); 
		} else {
			for($i=$min; $i<=$max; $i++){
				$display[] = $i;
			}
		}
		$html = '<table class="page" cellpadding="0" cellspacing="5"><tr>';
		if($page > 1){
			$html .= '<td><a class="start" href="'.$url.'1">'.$language['common']['start'].'</a></td>';
			$html .= '<td><a class="first" href="'.$url.($page-1).'">'.$language['common']['first'].'</a></td>';
		} else {
			$html .= '<td class="start_off">'.$language['common']['start'].'</td>';
			$html .= '<td class="first_off">'.$language['common']['first'].'</td>';			
		}
		$html .= '<td><table cellspacing="0" cellpadding="0" border="0"><tr><td class="fleft"></td>';
		$x = $page - 5;
		$y = $page + 5;
		if($x < 1){$y += 1-$x; $x = 1;}
		if($y > $total_page){$x -= $y - $total_page; $y = $total_page;}
		$x < 1 && $x = 1;
		for($x; $x<=$y; $x++){
			$html .= $x != $page ? '<td class="fcenter"><a href="'.$url.$x.'">'.$x.'</a></td>' : '<td class="fcenter"><font color="#FF0000">'.$x.'</font></td>';
		}
		$html .= '<td class="fright"></td></tr></table></td>';
		if($page < $total_page){
			$html .= '<td><a class="next" href="'.$url.($page+1).'">'.$language['common']['next'].'</a></td>';
			$html .= '<td><a class="end" href="'.$url.$total_page.'">'.$language['common']['end'].'</a></td>';
		} else {
			$html .= '<td class="next_off">'.$language['common']['next'].'</td>';
			$html .= '<td class="end_off">'.$language['common']['end'].'</td>';			
		}
		$html .= '<td><select class="rounded" onchange="window.open(this.options[this.selectedIndex].value,\'_self\');">';
		foreach($display as $n){
			$html .= '<option ';
			$n == $limit && $html .= 'selected="selected" ';
			$html .= 'value="'.$url.'1&display='.$n.'">'.$n.$language['common']['row_page'].'</option>';
		}
		$html .='</select></td><td>'.$language['common']['total'].$total.$language['common']['row'].'/'.$total_page.$language['common']['page'].'</td><td></td></tr></table>';
		return $html;
	}
	public static function icon($php_file){
		global $admin_file,$admin_config;
		$php_file = explode(',',$php_file);
		foreach($php_file as $n){
			foreach($admin_file as $x){
				foreach($x['submenu'] as $y){
					$n == $y[3] && $x['attribute'][0] == 1 && $y[0] == 1 && file_exists($n) && $result .= '<a href="'.$y[3].'"><img src="../inc/templates/manage/icon/'.$y[2].'" /><br />'.$y[1].'</a>';
				}	
			}
		}
		return $result;
	}
	public static function make_html($type,$id,$burl){
		global $config;
		$burl = $config['url'].$config['admin_dir'].'/'.$burl;
		$html = new html();
		$html->clear_tmp();
		$html->content_tmp('MO00'.$type.'x',0,0,$id); 
		die('<iframe src="../app.php?a=html&back='.$burl.'" width="0" height="0" scrolling="no" frameborder="0"></iframe>');		
	}
	public static function remove_upload($ids,$modcode){
		global $db;
		is_array($ids) or $ids = array($ids);
		if(empty($ids)){ return true; }		
		$result = 0;
		$pics = $picture = $content_pic = array(); 
		switch ($modcode){
			case 'MO001x' :
				$ps = $db->query("SELECT `picture`,`content` FROM `{$db->prefix}article` WHERE `id` in ('".implode("','",$ids)."')");
				foreach($ps as $n){
					$n['picture'] = trim($n['picture'],',');
					empty($n['picture']) or $picture = array_merge($picture,explode(',',$n['picture']));
					$content_pic = array_merge($content_pic,self::get_img($n['content']));
				}
				$pics = array_merge($picture,$content_pic);
				break;
			case 'MO002x' :
				$ps = $db->query("SELECT `picture`,`content` FROM `{$db->prefix}product` WHERE `id` in ('".implode("','",$ids)."')");
				foreach($ps as $n){
					$n['picture'] = trim($n['picture'],',');
					empty($n['picture']) or $picture = array_merge($picture,explode(',',$n['picture']));
					$content_pic = array_merge($content_pic,self::get_img($n['content']));
				}
				$pics = array_merge($picture,$content_pic);
				break;
			case 'MO003x' :
				$ps = $db->query("SELECT `picture`,`content` FROM `{$db->prefix}picture` WHERE `id` in ('".implode("','",$ids)."')");
				foreach($ps as $n){
					$n['picture'] = trim($n['picture'],',');
					empty($n['picture']) or $picture = array_merge($picture,explode(',',$n['picture']));
					empty($n['local']) or $picture[] = $n['local'];
					$content_pic = array_merge($content_pic,self::get_img($n['content']));
				}
				$pics = array_merge($picture,$content_pic);
				break;
			case 'MO004x' :
				$ps = $db->query("SELECT `picture`,`content`,`local` FROM `{$db->prefix}download` WHERE `id` in ('".implode("','",$ids)."')");
				foreach($ps as $n){
					$n['picture'] = trim($n['picture'],',');
					empty($n['picture']) or $picture = array_merge($picture,explode(',',$n['picture']));
					empty($n['local']) or $picture[] = $n['local'];
					$content_pic = array_merge($content_pic,self::get_img($n['content']));
				}
				$pics = array_merge($picture,$content_pic);
				break;
			default: die('Undefined parameters.$Id:admin.class.php.$Fun:remove_upload'); break;
		}
		foreach($pics as $n){
			is_file('../'.$n) && @unlink('../'.$n) && $result ++;
		}	
		return $result;
	}
	private static function get_img($content){
		$eregi_img_first = '|img([^>]*)src=([^>]*)>|s';
		if(@preg_match_all($eregi_img_first,$content,$out_img,PREG_SET_ORDER)){
			foreach($out_img as $i => $n){
				$in = 1;
				$split_str = substr($n[2],0,1);
				if (('"' != $split_str) && ("'" != $split_str)){
					$split_str = " ";
					$in = 0;
				}
				$img_pre = explode($split_str,trim($n[2]));
				$img[] = strstr($img_pre[$in],'inc/uploads'); 
			}
			return $img;
		} else {
			return array();	
		}
	}	
	public static function opp_info(){
		global $PHP_SELF,$web;
		//if($PHP_SELF == 'ind'.'ex.p'.'hp'){
			//$u = 'ht'.'tp:'.'/'.'/cl'.'ien'.'t.g'.'gzcg'.'c.co'.'m/'.'_'.'cl'.'ien'.'t'.'/'.'ne'.'ws'.'.p'.'hp';
			//$u = 'http://client.CyrusChanHK.com/_client/news.php';
			//$host = isset($_SERVER['HTTP_X_FORWARDED_HOST']) ? $_SERVER['HTTP_X_FORWARDED_HOST'] : $_SERVER['HTTP_HOST'];
			//$u .= '?'.'h'.'='.$host.'&'.'t='.urlencode($web['all_'.'data'][1]['ti'.'tle']).'&v='.INTERNAL_VERSION;
			//$result = "\r\n\r\n\r\n<s".'cript'.' type'.'="text'.'/'.'jav';
			//$result .= 'ascr'.'ipt" sr'.'c="'.$u.'"><'.'/'.'scr'.'ipt'.'> ';
			//$result = false;
		//} else {
			$result = false;
		//}
		return $result;
	}
}