<?php@header( "Content-Type:text/html;charset=utf8" );set_time_limit( 0 );session_start( );include_once( "../inc/config.php" );include_once( "../inc/config_db.php" );include_once( "inc/function.php" );login_check();$UpUrl = file_get_contents( "http://www.tun2.com/Update/Php/".$_GET['UpVersion']."/Update_text.asp" );$UpUrl = explode( "\n", $UpUrl );$UpName = explode( "|", $UpUrl[$_GET['Upmun']] );$a = file_get_contents( "http://www.tun2.com/Update/Php/".$_GET['UpVersion']."/".$UpName[0] );wfile( $UpName[1], $a );if ( $UpUrl[count( $UpUrl ) - 1] == 1 ){				echo ( $_GET['Upmun'] + 1 )."|".round( $_GET['Upmun'] / count( $UpUrl ) * 100 )."|1";				echo ( $_GET['Upmun'] + 1 )."|".round( $_GET['Upmun'] / ( count( $UpUrl ) - 2 ) * 100 )."|0";}else if ( count( $UpUrl ) - $_GET['Upmun'] == 2 ){				$db->query( "update {$DB_dbprefix}config set Version='".$_GET['UpVersion']."' where id=1" );}echo "   ";?>