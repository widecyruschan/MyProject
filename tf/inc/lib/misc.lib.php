<?php
defined('CMSROOT') or die('Access Denied.');
class misc{
	public static function email($to_address,$to_name,$title,$content,$attachment = ''){
		global $config,$web;
		$cfg = $config['mail']; 
		$mail = new PHPMailer();
		$mail->CharSet = 'utf-8'; 
		$mail->Encoding = 'base64'; 
		$mail->ContentType = 'text/html';
		$mail->SetFrom($cfg['frommail'],$cfg['fromname']); 
		$mail->Subject = $title; 
		$mail->MsgHTML($content);
		$mail->AddAddress($to_address,$to_name); 
		is_email($web['email'][0]) && $mail->AddReplyTo($web['email'][0],'merchant'); 
		if($attachment != ''){ 
			$attachment = explode(',',$attachment);
			foreach($attachment as $n){
				empty($n) or $mail->AddAttachment($n);  
			}
		}
		if($cfg['mailer'] != 'smtp' && $cfg['mailer'] != 'gmail'){
			$cfg['mailer'] == 'sendmail' ? $mail->IsSendmail() : $mail->IsMail();
		} else {
			$mail->IsSMTP();
			$mail->SMTPDebug = 0; 
			$mail->SMTPAuth = $cfg['smtpauth'] == '1' ? true : false; 
			$mail->SMTPSecure = $cfg['starttls']; 
			$mail->Host = $cfg['smtphost']; 
			$mail->Port = $cfg['smptport']; 
			$mail->Username = $cfg['smtpuser']; 
			$mail->Password = $cfg['smtppass']; 
		}
		if($mail->Send() === true) {
			return true;
		} else {
			return $mail->ErrorInfo;
		}
	}
	public static function url($page,$param = '',$dynamic = 'auto'){
		$dynamic == 'auto' && ($dynamic = CMS_URL_MODE == 1 ? true : false);
		switch ($page){
			case 'tag'		: $u = $dynamic ? 'tag.php' : (LANG == 1 ? 'html/tag.html' : 'html/tag_'.LANG.'.html'); break;
			case 'login'	: $u = $dynamic ? 'member/login.php' : (LANG == 1 ? 'html/login.html' : 'html/login_'.LANG.'.html'); break;
			case 'register'	: $u = $dynamic ? 'member/register.php' : (LANG == 1 ? 'html/register.html' : 'html/register_'.LANG.'.html'); break;
			case 'links'	: $u = $dynamic ? 'links.php' : (LANG == 1 ? 'html/links.html' : 'html/links_'.LANG.'.html'); break;
			case 'guestbook': $u = $dynamic ? 'guestbook.php' : (LANG == 1 ? 'html/guestbook.html' : 'html/guestbook_'.LANG.'.html'); break;
			case 'feedback': $u = $dynamic ? 'feedback.php' : (LANG == 1 ? 'html/feedback.html' : 'html/feedback_'.LANG.'.html'); break;
			default: die('Undefined Options.$Id:misc.lib.php url()'); break;
		}
		return $u;
	}
	public static function get_url($type = 0,$module = 1,$id = 0){
		global $db;
		$ids = explode(',',$id); 
		$id = $ids[LANG - 1];
		is_numeric($id) or $id = $ids[0];
		$id = numeric($id);
		switch ($module){
			case 1 : $table = $db->prefix.'article'; $php_file = array('article.php','list.php','view.php'); break; 
			case 2 : $table = $db->prefix.'product'; $php_file = array('product.php','category.php','detail.php'); break;
			case 3 : $table = $db->prefix.'picture'; $php_file = array('photo.php','slide.php','show.php'); break;
			case 4 : $table = $db->prefix.'download'; $php_file = array('download.php','soft.php','down.php'); break;
			default : die('Undefined Options.$Id:misc.lib.php get_url()'); break;
		}
		switch ($type){
			case 'channel' :
				if(CMS_URL_MODE == 2){ 
					$sql = "SELECT `id`,`pathhome` FROM `{$db->prefix}channel` WHERE `module` = 'MO00".$module."x' && `lang` = '".LANG."' ";
					$id > 0 && $sql .= "&& `id` = '".$id."' ";
					$sql .= "ORDER BY `sort` ASC,`id` ASC LIMIT 1";
					$pd = $db->query($sql,1);
					$sp = empty($pd['pathhome']) ? 'html/{PID}/index.html' : $pd['pathhome'];
					return str_replace(array('{L}','{PID}'),array(LANG,$pd['id']),$sp);
				} else { 
					if($id > 0){
						return $php_file[0].'?pid='.$id;
					} else { 
						$sql = "SELECT `id` FROM `{$db->prefix}channel` WHERE `module` = 'MO00".$module."x' && `lang` = '".LANG."' ORDER BY `sort` ASC,`id` ASC LIMIT 1";
						$pd = $db->query($sql,1);
						return $php_file[0].'?pid='.$pd['id'];
					}
				}
			break;
			case 'classify' :
				if(CMS_URL_MODE == 2){
					$sql = "SELECT a.`id`,a.`channel`,b.`pathcategory` FROM `{$db->prefix}category` a,`{$db->prefix}channel` b WHERE a.`lang` = '".LANG."' && a.`module` = 'MO00".$module."x' && a.`channel` = b.`id` ";
					$id > 0 && $sql .= "&& a.`id` = '".$id."' ";
					$sql .= "ORDER BY a.`sort` ASC,a.`id` ASC LIMIT 1";
					$cd = $db->query($sql,1);
					$sp = empty($cd['pathcategory']) ? 'html/{PID}/{CID}.html' : $cd['pathcategory'];
					return str_replace(array('{L}','{PID}','{CID}'),array(LANG,$cd['channel'],$cd['id']),$sp);
				} else {
					if($id > 0){
						return $php_file[1].'?cid='.$id;
					} else {
						$sql = "SELECT `id` FROM `{$db->prefix}category` WHERE `lang` = '".LANG."' && `module` = 'MO00".$module."x' ORDER BY `sort` ASC,`id` ASC LIMIT 1";
						$cd = $db->query($sql,1);
						return $php_file[1].'?cid='.$cd['id'];
					}
				}
			break;
			case 'content' :
				if(CMS_URL_MODE == 2){
					$sql = "SELECT a.`id`,a.`filename`,a.`channel`,a.`category`,a.`addtime`,b.`pathcontent` FROM `{$table}` a,`{$db->prefix}channel` b WHERE a.`lang` = '".LANG."' && a.`channel` = b.`id` ";
					$id > 0 && $sql .= "&& a.`id` = '".$id."' ";
					$sql .= "ORDER BY a.`id` ASC LIMIT 1";
					$nd = $db->query($sql,1);
					$sp = empty($nd['filename']) ? (empty($nd['pathcontent']) ? 'html/{PID}/{Y}{M}/{ID}.html' : $nd['pathcontent']) : $nd['filename'];
					return str_replace(array('{L}','{PID}','{CID}','{ID}','{Y}','{M}','{D}'),array(LANG,$nd['channel'],category::cut($nd['category'],0),$nd['id'],date('Y',$nd['addtime']),date('m',$nd['addtime']),date('d',$nd['addtime'])),$sp);					
				} else {
					if($id > 0){
						return $php_file[2].'?id='.$id;
					} else {
						$sql = "SELECT `id` FROM `{$table}` WHERE `lang` = '".LANG."' ORDER BY `id` ASC LIMIT 1";
						$nd = $db->query($sql,1);
						return $php_file[2].'?id='.$nd['id'];
					}
				}
			break;
			default : return self::url($type); break;
		}
	}
	private static function dynamic_url($type = 0,$module = 1,$id = 0){
		switch ($type){
			case 1 :
			break;
		}
	}
	public static function html2txt($string,$length = 0,$dot = ' ...'){
		$search = array(
			'@<script[^>]*?>.*?</script>@si', 
			'@<style[^>]*?>.*?</style>@si', 
			'@<[\\/\\!]*?[^<>]*?>@si', 
			'@<![\\s\\S]*?--[ \\t\\n\\r]*>@', 
			"'([\r\n])[\s]+'", 
			"'&(quot|#34);'i", 
			"'&(amp|#38);'i",
			"'&(lt|#60);'i",
			"'&(gt|#62);'i",
			"'&(nbsp|#160);'i",
			"'&(iexcl|#161);'i",
			"'&(cent|#162);'i",
			"'&(pound|#163);'i",
			"'&(copy|#169);'i",
			'/[\f\n\r\t]/', 
		);
		$string = preg_replace($search,'',$string);
		$length && $string = cut_str($string,$length,$dot); 
		return $string;
	}
	public static function content_page($content,$html_path = ''){
		global $_GET,$MYCMS;
		$content = preg_split('/<div id="cms_page_break"[\s|\S]*?<\/div>/',$content,-1,PREG_SPLIT_NO_EMPTY); 
		$page_data['total_page'] = count($content); 
		$page_data['page'] = is_numeric($_GET['page']) ? $_GET['page'] : 1;
		$page_data['page'] > $page_data['total_page'] && $page_data['page'] = $page_data['total_page'];	
		$page_data['page'] < 1 && $page_data['page'] = 1;
		$start = $args[1] * ($page_data['page'] - 1);
		$span = 2;
		$x = $page_data['page'] - $span;
		$y = $page_data['page'] + $span;
		if($x < 1){$y += 1-$x; $x = 1;}
		if($y > $page_data['total_page']){$x -= $y - $page_data['total_page']; $y = $page_data['total_page'];}
		$x < 1 && $x = 1;
		if (HTML_MAKE_MODE){ 
			$html_file = substr($html_path,0,-5); 
			$page_data['start_url'] = $html_path; 
			$page_data['first_url'] = $page_data['page'] > 2 ? ($html_file.'-'.($page_data['page'] - 1).'.html') : $html_path; 
			$page_data['next_url'] = $html_file.'-'.($page_data['page'] + 1).'.html';  
			$page_data['end_url'] = $html_file.'-'.$page_data['total_page'].'.html'; 
			for($i = $x; $i <= $y; $i++){
				$page_data['number'][$i] = $i > 1 ? ($html_file.'-'.$i.'.html') : $html_path;
			}		
		} else { 
			$page_data['start_url'] = durl('page',1,NULL); 
			$page_data['first_url'] = durl('page',$page_data['page'] > 2 ? ($page_data['page'] - 1) : 1,NULL); 
			$page_data['next_url'] = durl('page',($page_data['page'] + 1) < $page_data['total_page'] ? ($page_data['page'] + 1) : $page_data['total_page'],NULL);  
			$page_data['end_url'] = durl('page',$page_data['total_page'],NULL); 
			for($i = $x; $i <= $y; $i++){
				$page_data['number'][$i] = durl('page',$i,NULL);
			}
		}
		$MYCMS->assign('page_data',$page_data); 
		return $content[$page_data['page'] - 1];
	}
	public static function content_add_page_break($content,$page_size = 2000){
		if($content == '') return $content;
		$page_break = '<div id="cms_page_break" style="page-break-after:always;"><span style="display:none;">&nbsp;</span></div>';
		$content = preg_replace('/<div id=\\\"cms_page_break\\\"[\s|\S]*?<\/div>/','',$content);
		$html = array('div', 'span', 'p', 'a', 'h', 'ul', 'ol', 'li', 'table', 'form', 'script', 'strong', 'dl', 'dt', 'dd');
		$ar_content = explode('<', $content);
		$data = array();
		$i = $show_time = 0;
		if(is_array($ar_content)){
			foreach($ar_content as $y => $c){
				if($y == 0){
					$data[$i] = $c;
					if(strlen(strip_tags($c)) >= $page_size){ $i++; }
					continue;
				}
				$data[$i] .= '<'.$c;
				if($tag == '' && $show_time == 0){
					foreach($html as $h){
						if(strpos($c,$h) === 0){
							$tag = $h;
							$show_time++;
							break;
						}
					}
				} elseif ($show_time && $tag){
					if(strpos($c, $tag) === 0){
						$show_time++;
					}
					if(strpos($c, '/'.$tag) === 0){
						$show_time--;
						$show_time == 0 && $tag = '';
					}
				}
				if(strlen(strip_tags($data[$i])) >= $page_size && $show_time == 0){
					$i++;
				}
			}
		}
		$data = implode($page_break,$data);
		return $data;
	}
	public static function links($limit = 10,$type = 2,$ispage = false){
		global $db,$MYCMS,$_GET;
		$sql = "SELECT * FROM `{$db->prefix}links` WHERE `lang` = '".LANG."' && `audit` = 1 ";
		$type == 2 or $sql .= "&& `type` = '{$type}' ";
		if($ispage){
			$page_data['total'] = $db->query(str_replace('*','count(*)',$sql),1,0);
			$page_data['total'] = $page_data['total'][0];
			$page_data['total_page'] = ceil($page_data['total'] / $limit); 
			$page_data['page'] = is_numeric($_GET['page']) ? $_GET['page'] : 1;
			$page_data['page'] > $page_data['total_page'] && $page_data['page'] = $page_data['total_page'];	
			$page_data['page'] < 1 && $page_data['page'] = 1;
			$p = 2;
			$x = $page_data['page'] - $p;
			$y = $page_data['page'] + $p;
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
			$start = $limit * ($page_data['page'] - 1);
			$page_data['limit'] = $limit; 
			$MYCMS->assign('page_data',$page_data); 
		} else { 
			$start = 0; 
		}
		$sql .= "ORDER BY `sort` ASC,`id` ASC LIMIT {$start},{$limit}";
		$result = $db->query($sql);
		return $result;	
	}
	public static function sql($sql,$shift=0,$retype=1){
		global $db;
		$sql = str_replace(array('{prefix}','{lang}'),array($db->prefix,LANG),$sql);
		return $db->query($sql,$shift,$retype);
	}
}