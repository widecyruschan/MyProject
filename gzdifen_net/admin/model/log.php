<?phpout();$action=verify_action($_GET['action']);if($action=='del'){$now = time();$t = strtotime("-7 days",$now);$db->query( "DELETE FROM {$DB_dbprefix}log WHERE time<'".$t."'");addlog( "删除全部日志",$_SESSION['admin_user'] );done('删除成功','','');}?>