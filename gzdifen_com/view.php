<?phpinclude_once "lib/class.template.php";include_once "lib/class.mysql.php";	include_once "data/config.php";include_once "data/config_db.php";include_once "lib/public.php";include_once "lib/module.php";include_once "lib/check.php";include_once "lib/class.page.php";$id = verify_null(verify_id($_GET['id']),'参数');$strSql="SELECT * FROM {$DB_dbprefix}content WHERE id =$id";$db->query($strSql);	if($db->next_record())		{			$cid      	= $db->Record["cid"];			$title  	= $db->Record["title"];			$subtitle  	= $db->Record["subtitle"];			$keywords  	= $db->Record["keywords"];			$description  	= $db->Record["description"];			$permute  	= $db->Record["permute"];			$columns_name=stride('title','columns','id',$cid);			$time=date('Y-m-d H:i:s',$db->Record["time"]);//2011-1-10 17:16:17		    $time2=date('r',$db->Record["time"]);//Thu, 21 Dec 2000 16:01:07 +0200		    $time3=date('Y-m-d',$db->Record["time"]);//2011-1-10			$module     = stride("module","columns",'id',$cid);			if($module==2){$tablename="products";}else{$tablename="articles";};			$products_recommend     = stride("recommend","z_".$tablename,'bid',$db->Record["id"]);			$products_pic     = stride("pic","z_".$tablename,'bid',$db->Record["id"]);			//$templates  = stride("{$DB_dbprefix}columns","templates",$db->Record["columnsname"]);			//$columnsname= namezh("{$DB_dbprefix}columns","columnsname",$db->Record["columnsname"]);			//$columnsdesc= namezh("{$DB_dbprefix}columns","description",$db->Record["columnsname"]);			//$columnsid 	= $db->Record["columnsname"];			$bid=stride('bid','columns','id',$cid);			if($bid==0){			      $superiors='<a href="'.classlink($id).'">'.$title.$columns_name.'</a>';		    }else{		          $superiors='<a href="'.classlink($bid).'">'.stride('title','columns','id',$bid).'</a>';	     	}			$templates=stride('templates','columns','id',$cid);			$hits 	="<span id=\"PHPCMShits\">正在读取</span>";			$hits .="<script type=\"text/javascript\" src=\"".$web_dir."data/ajaxrequest.js\"></script>";			$hits .="<script language=\"javascript\" type=\"text/javascript\">";			$hits .="var ajax=new AJAXRequest({\n";			$hits .="url: \"".$web_dir."data/hits.php?type=show&id=".$id."\",";			$hits .="method: \"GET\",";			$hits .="oncomplete: showhits,";			$hits .="charset: \"utf-8\"";			$hits .="});";			$hits .="ajax.get();";			$hits.="function showhits(obj)";			$hits.="{";			$hits.="document.getElementById(\"PHPCMShits\").innerHTML=obj.responseText;";			$hits.="}";			$hits.="</script>";			/*view_module_start*/			            /*view_module_end*/		}else{		echo "<script language=javascript>alert(\"对不起！没有您要找的信息或是该信息已经删除！\");window.location='".$web_dir."index.php'</script>";		exit;		}$location=location('view',$id);define('IN' , true);$tpl_refresh_time =  $skin_cache;$tpl_default_dir =  dirname(__FILE__)."/templates/".$skin_dir."";$t = new template;$t->tpl_default_dir = $tpl_default_dir;$t->tpl_refresh_time = $tpl_refresh_time;if($templates==""){	$module_skin='view_'.stride('alias','module','id',stride('module','columns','id',$cid));	include $t->tpl($module_skin);}else{    include $t->tpl('view_'.$templates);} echo "\n<!--PHP CMS栏目访问统计--><script language=\"javascript\" type=\"text/javascript\" src=\"".$web_dir."data/hits.php?type=stat&id=".$id."\"></script>\n";?>