<?php
defined('CMSROOT') or die('Access Denied.');
class article{
	public static function data(){
        global $db;
		$args = func_get_args();
		if($args[5] == 0){
			//global $db;
			$query_sql = "SELECT a.*,b.`title` as `channel_title`,b.`titleEn` as `channel_titleEn`,b.`pathcategory`,b.`pathcontent` FROM `{$db->prefix}article` a LEFT JOIN `{$db->prefix}channel` b ON a.`channel` = b.`id`";
			$count_sql = "SELECT count(*) FROM `{$db->prefix}article` a "; 
			$sql = "WHERE a.`lang` = '".LANG."' && a.`published` = 1 && a.`audit` = 1 && a.`recycle` = 0 "; 
			$sql .= $args[2] == 1 ? '&& a.`recom` = 1 ' : ($args[2] == 2 ? '&& a.`recom` = 0 ' : ''); 
			$UPchannleID="";
			if($args[3] > 0) {
						$db1=new db();
						$db2=new db();
				$GetUPchannleID=$db1->query("SELECT `id` FROM `{$db->prefix}channel` where `UpchannelID`={$args[3]}");
				foreach($GetUPchannleID as $f){
					$GetUPchannleIDs=$db2->query("SELECT `id` FROM `{$db->prefix}channel` where `UpchannelID`={$f['id']}");
					foreach($GetUPchannleIDs as $g){
					$UPchannleID .=",".$g['id'];
				 }
 					$UPchannleID .=",".$f['id'];
				 }
				  $sql .= "&& a.`channel` in ( {$args[3]}{$UPchannleID} )";
			}
			$args[14] == 1 && $sql .= "&& (a.`picture` LIKE '%/uploads/%' || a.`picture` LIKE '%http://%') ";
			$sql .= $args[10] == 1 ? "&& a.`permission` != '0' " : ($args[10] == 2 ? "&& a.`permission` = '0' " : '');
			$sql .= $args[11] == 1 ? "&& (a.`money` > 0 || a.`integral` > 0) " : ($args[11] == 2 ? "&& a.`money` = 0 && a.`integral` = 0 " : ''); 
			$page_data['limit'] = is_int($args[1]) ? $args[1] : 10; 
			if($args[9] == 1){
				global $_GET,$MYCMS;
				$page_data['total'] = $db->query($count_sql.$sql,1,0);
				$page_data['total'] = $page_data['total'][0];
				$page_data['total_page'] = ceil($page_data['total'] / $args[1]); 
				$page_data['page'] = is_numeric($_GET['page']) ? $_GET['page'] : 1;
				$page_data['page'] > $page_data['total_page'] && $page_data['page'] = $page_data['total_page'];	
				$page_data['page'] < 1 && $page_data['page'] = 1;
				$start = $args[1] * ($page_data['page'] - 1);
				$page_data['limit'] = $args[1]; 
				is_int($args[12]) or $args[12] = 5;
				$x = $page_data['page'] - $args[12];
				$y = $page_data['page'] + $args[12];
				if($x < 1){$y += 1-$x; $x = 1;}
				if($y > $page_data['total_page']){$x -= $y - $page_data['total_page']; $y = $page_data['total_page'];}
				$x < 1 && $x = 1;
				 if (HTML_MAKE_MODE){ 
					global $static_path; 
					$html_file = substr($static_path,0,-5); 
					$page_data['start_url'] = $static_path; 
					$page_data['first_url'] = $page_data['page'] > 2 ? ($html_file.'-'.($page_data['page'] - 1).'.html') : $static_path; 
					$page_data['next_url'] = $html_file.'-'.($page_data['page'] + 1).'.html';  
					$page_data['end_url'] = $html_file.'-'.$page_data['total_page'].'.html'; 
					for($i = $x; $i <= $y; $i++){
						$page_data['number'][$i] = $i > 1 ? ($html_file.'-'.$i.'.html') : $static_path;
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
			} else { 
				$start = is_int($args[8]) ? $args[8] : 0; 
			}
			switch($args[0]){ 
				case 0 : $sql .= "ORDER BY a.`sort` DESC,a.`id` DESC "; break;
				case 1 : $sql .= "ORDER BY a.`addtime` DESC,a.`id` DESC "; break;
				case 2 : $sql .= "ORDER BY a.`addtime` ASC,a.`id` ASC "; break;
				case 3 : $sql .= "ORDER BY a.`id` DESC "; break;
				case 4 : $sql .= "ORDER BY a.`id` ASC "; break;
				case 5 : $sql .= "ORDER BY a.`click` DESC,a.`id` DESC "; break;
				case 6 : $sql .= "ORDER BY a.`click` ASC,a.`id` ASC "; break;
				case 7 : $sql .= "ORDER BY a.`commenttotal` DESC,a.`id` DESC "; break;
				case 8 : $sql .= "ORDER BY a.`commenttotal` ASC,a.`id` ASC "; break;
				case 9 : $sql .= "ORDER BY RAND() "; break;
				default: $sql .= "ORDER BY a.`sort` DESC,a.`id` DESC "; break;
			}
			$sql .= "LIMIT {$start},{$page_data['limit']}";
			$result = $db->query($query_sql.$sql);
		} else {
			$result = self::single($args[5],$args[13]); 
		}
		foreach($result as &$n){
			if(isset($n['id'])){ 
				if(CMS_URL_MODE == 1){ 
					$n['URL'] = 'view.php?id='.$n['id'];
				} else { 
					$n['URL'] = empty($n['filename']) ? (empty($n['pathcontent']) ? 'html/{PID}/{Y}{M}/{ID}.html' : $n['pathcontent']) : $n['filename'];
					//$n['URL'] = str_replace(array('{L}','{PID}','{CID}','{ID}','{Y}','{M}','{D}'),array(LANG,$n['channel'],category::cut($n['category'],0),$n['id'],date('Y',$n['addtime']),date('m',$n['addtime']),date('d',$n['addtime'])),$n['URL']);					
				}
				$db1=new db();
				$GetUPchannleID=$db1->query("SELECT id FROM `{$db->prefix}channel` where `id`=(SELECT `UpchannelID` FROM `{$db->prefix}channel` where `id`={$n['channel']} )",1);
				if($GetUPchannleID['id']!=0){
				$fieldswhere=" fieldshow=1 and channelID in ({$n['channel']},{$GetUPchannleID['id']})";
				}else{
				$fieldswhere=" fieldshow=1 and channelID=".$n['channel'];
				}
				
				$vs=$db1->query("SELECT * FROM `{$db->prefix}fields` WHERE ".$fieldswhere." order by  fieldorder DESC,fid");
				if($vs){
					$db2=new db();
					$c=$db2->query("SELECT * FROM `{$db->prefix}article_field` WHERE aid=".$n['id'],1);
				foreach($vs as $f){
					$n['fieldsinfo_'.$f['fields']]=$c[$f['fields']];
				}
				}
				$n['addtime'] = strtoupper(date(CMS_DATE_FORMAT_SHORT,$n['addtime'])); 
				$n['channel_id'] = $n['channel']; 
				$n['channel'] = $n['channel_title']; 
				$n['channelEn'] = $n['channel_titleEn']; 
				$n['category_id'] = $n['channel_id']; 
				$n['category'] = $n['channel_title']; 
				$n['picture'] = explode(',',$n['picture']); 
				foreach($n['picture'] as &$pf){
					substr($pf,0,7) == 'http://' or is_file(CMSROOT.'/'.$pf) or $pf = 'inc/images/no_picture.gif';
				}			
				isset($args[7]) or $args[7] = ' ...';
				$n['title_format'] = $args[6] == 0 ? $n['title'] : cut_str($n['title'],$args[6],$args[7]); 
				if($n['bold'] == 1){
					$n['title_format'] = '<strong>'.$n['title_format'].'</strong>';
					$n['brief_format'] = '<strong>'.$n['brief_format'].'</strong>';		
				}
				if($n['color'] != ''){
					$n['title_format'] = '<font color="'.$n['color'].'">'.$n['title_format'].'</font>';	
					$n['brief_format'] = '<font color="'.$n['color'].'">'.$n['brief_format'].'</font>';	
				}
				unset($n['channel_title'],$n['channel_title']);
			}
		}
		$args[5] && $args[13] != 1 && $result = array_shift($result); 
		return $result;
	}
	private static function single($id,$related = 0){
		global $db;
		$id = numeric($id);
		if(empty($id)) { return array(); }	
		$db1=new db();
		$GetchannleDB=$db1->query("SELECT channel FROM `{$db->prefix}article` where `id`={$id}",1);
		$ChannleID=$GetchannleDB['channel'];
		$GetUPchannleID=$db1->query("SELECT id FROM `{$db->prefix}channel` where `id`=(SELECT `UpchannelID` FROM `{$db->prefix}channel` where `id`={$ChannleID} )",1);
		if($GetUPchannleID['id']!=0){
		$fieldswhere=" && channel in ({$ChannleID},{$GetUPchannleID['id']})";
		}else{
		$fieldswhere=" && channel=".$ChannleID;
		}	
		$sql_public = "SELECT a.*,b.`title` as `channel_title`,b.`titleEN` as `channel_titleEn`,b.`pathcategory`,b.`pathcontent` FROM `{$db->prefix}article` a LEFT JOIN `{$db->prefix}channel` b ON a.`channel` = b.`id` WHERE a.`lang` = '".LANG."' && a.`published` = 1 && a.`audit` = 1 && a.`recycle` = 0 "; 
		$result = $db->query($sql_public . "&& a.`id` = '{$id}' LIMIT 1");
		if($related == 1 && isset($result[0]['id'])){ 
			$result[1] = $db->query($sql_public . "&& a.`id` < '{$id}'".$fieldswhere." ORDER BY `ID` DESC LIMIT 1",1); 
			$result[2] = $db->query($sql_public . "&& a.`id` > '{$id}'".$fieldswhere." ORDER BY `ID` ASC LIMIT 1",1); 
			$result['prev'] = $result[1];
			$result['current'] = $result[0];
			$result['next'] = $result[2];
			unset($result[0],$result[1],$result[2]);
		}
		return $result;
	}
}
