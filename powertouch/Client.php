<?php@include_once "inc/config.php";@include_once "inc/config_db.php";@include_once "inc/linb.php";@include_once "inc/template.php";@include_once "inc/class.page.php";if ($_GET['clientid']==''){	echo "提交的参数非法!";	exit();}$id=1;$clientid=$_GET['clientid'];		$module="Client";		$templates="Client";		$turl="";$tid=$templates;//$location=Location('class',"$_GET[id]");define('IN' , true);$tpl_refresh_time = $skincache;$tpl_default_dir =  dirname(__FILE__)."/templates/".$skindir."";$t = new template;$t->tpl_default_dir = $tpl_default_dir;$t->tpl_refresh_time = $tpl_refresh_time;$strSql = "SELECT * FROM {$DB_dbprefix}client WHERE id =".$clientid;$db->query( $strSql );if ( $db->next_record( ) ){				$keywords     = $db->Record['keywords'];				$description  = $db->Record['description'];				$columnsname  = $db->Record['columnsname'];				$content      = $db->Record['content'];				}else{				echo "<script language=javascript>alert(\"对不起！没有您要找的栏目或是该栏目已经删除！\");window.location='".$webdir."index.php'</script>";				exit( );}$page=verify_id(@$_GET['PB_page']);$classid=verify_id(1);include $t->tpl($tid);?>