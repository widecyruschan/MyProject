<?phprequire_once(dirname(__FILE__).'/header.php');$attach_dir = '../inc/uploads/'; $mycms['view'] = $view == 2 ? 2 : 1; $dir1 = $dir2 = NULL;!empty($_GET['dir1']) && is_dir($attach_dir.$_GET['dir1']) && $dir1 = $_GET['dir1']; !empty($dir1) && !empty($_GET['dir2']) && is_dir($attach_dir.$dir1.'/'.$_GET['dir2']) && $dir2 = $_GET['dir2']; $attach_path = empty($dir1) ? $attach_dir : (empty($dir2) ? $attach_dir.$dir1.'/' : $attach_dir.$dir1.'/'.$dir2.'/'); if(is_array($filename)){	$result = 0; 	foreach($filename as $n){		$f = $attach_path.$n;		if(is_file($f)){			@unlink($f) && $result ++;			} elseif (is_dir($f)){			@rmdir($f) && $result ++;		}	}	if($result > 0){		admin::logs(4,$language['page'][12].'，'.$language['common']['successful'].'(Total:'.$result.')'); 		msgbox($language['page'][13].$result,'CURRENTS'); 		} else {		admin::logs(4,$language['page'][12].'，'.$language['common']['failed']);		msgbox($language['page'][14],'CURRENTS'); 			}	}$mycms['file_list'] = array();$file_list = scan_dir($attach_path); $total = count($file_list); $limit = $_SESSION['admin']['limit'];is_numeric($limit) or $limit = 20; $total_page = ceil($total / $limit); $page = is_numeric($_GET['page']) ? $_GET['page'] : 1;$page > $total_page && $page = $total_page;	$page < 1 && $page = 1;$mycms['page'] = admin::page($total,$page,$limit,$total_page,($mycms['view'] == 1 ? 5 : 0),50);for($i=0; $i<$limit; $i++){	$xi = (($page - 1) * $limit) + $i;	$n = $file_list[$xi]; 	if(($total % $limit != 0 && $page >= $total_page && $i >= $total % $limit) || $total == 0 || $xi > $total) break;	$f = $attach_path.$n; 	$mycms['file_list'][$i]['name'] = $n;	$time = @filectime($f);	is_numeric($time) or $time = @filemtime($f);	$mycms['file_list'][$i]['time'] = date('Y-m-d H:i:s',$time);	if(is_dir($f)){ 		$mycms['file_list'][$i]['url'] = empty($dir1) ? "attachment_manage.php?view={$mycms['view']}&dir1={$n}" : "attachment_manage.php?view={$mycms['view']}&dir1={$dir1}&dir2={$n}"; 		$size = get_size($f); 		$mycms['file_list'][$i]['icon'] = '../inc/templates/manage/images/filetype/dir.png';		$mycms['file_list'][$i]['type'] = 'dir'; 	} else { 		$mycms['file_list'][$i]['url'] = $f;		$size = filesize($f); 		$f_suffix = pathinfo($n,PATHINFO_EXTENSION);		if(in_array($f_suffix,array('jpge','jpg','png','gif','bmp'))){			$mycms['file_list'][$i]['icon'] = $f;			$mycms['file_list'][$i]['type'] = 'image';		} elseif (in_array($f_suffix,array('rar','zip','gz','7-zip','cab'))){			$mycms['file_list'][$i]['icon'] = '../inc/templates/manage/images/filetype/rar.png';			$mycms['file_list'][$i]['type'] = 'file';		} elseif (in_array($f_suffix,array('swf','fla'))){			$mycms['file_list'][$i]['icon'] = '../inc/templates/manage/images/filetype/swf.png';			$mycms['file_list'][$i]['type'] = 'file';		} elseif (in_array($f_suffix,array('doc','docx','txt'))){			$mycms['file_list'][$i]['icon'] = '../inc/templates/manage/images/filetype/doc.png';			$mycms['file_list'][$i]['type'] = 'file';		} elseif ($f_suffix == 'xls' || $f_suffix == 'xlsx'){			$mycms['file_list'][$i]['icon'] = '../inc/templates/manage/images/filetype/xls.png';			$mycms['file_list'][$i]['type'] = 'file';		} elseif (in_array($f_suffix,array('flv','wmv','rmvb','rm','avi','mpg','wma','mp3','mp4'))){			$mycms['file_list'][$i]['icon'] = '../inc/templates/manage/images/filetype/video.png';			$mycms['file_list'][$i]['type'] = 'file';		} elseif (in_array($f_suffix,array('html','htm','php','asp','aspx','asax','shtml','xml','js','cgi'))){			$mycms['file_list'][$i]['icon'] = '../inc/templates/manage/images/filetype/html.png';			$mycms['file_list'][$i]['type'] = 'file';		} else {			$mycms['file_list'][$i]['icon'] = '../inc/templates/manage/images/filetype/unknown.png';			$mycms['file_list'][$i]['type'] = 'file';		}	}	if($mycms['view'] == 2){		$mycms['file_list'][$i]['icon'] = $mycms['file_list'][$i]['type'] == 'image' ? '../inc/templates/manage/images/filetype/image.gif' : str_replace('.png','.gif',$mycms['file_list'][$i]['icon']);	}	$mycms['file_list'][$i]['size'] = $size > 1048576 ? number_format($size/1048576,2,'.','').' MB' : number_format($size/1024,2,'.','').' KB';}$mycms['dir1'] = $dir1;$mycms['dir2'] = $dir2;require_once(ADMIN_PATH.'/footer.php'); 