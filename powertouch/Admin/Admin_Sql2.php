<?phpinclude( "inc/header.php" );login_check();echo "\r\n<body>\r\n<table width=\"98%\" border=\"1\" align=\"center\" cellpadding=\"5\" cellspacing=\"0\" class=\"table\">\r\n  <tr>\r\n    <td><font color=red size=3>*请谨慎操作，若您不了解此功能，切莫使用该功能。</font><br/><a href=\"Admin_Sql.php\">返回数据库操作首页</a> ｜ <a href=\"Admin_Sql2.php?Action=back\">立即备份新的数据库</a></td>\r\n  </tr>\r\n</table><br>\r\n";if ( $_GET['Action'] == "backin" ){				$file_name = "dbback/".$_GET['file'];				set_time_limit( 0 );				if ( !( $fp = @fopen( $file_name, "r" ) ) )				{								exit( "不能打开SQL文件 ".$file_name );				}				if ( !mysql_connect( $DB_Host, $DB_User, $DB_Password ) )				{								exit( "不能连接数据库 ".$DB_Host );				}				$sql = "DROP DATABASE IF EXISTS `".$DB_Database."`";				mysql_query( $sql );				$sql = "CREATE DATABASE `".$DB_Database."`";				mysql_query( $sql );				if ( !mysql_select_db( $DB_Database ) )				{								exit( "不能打开数据库 ".$DB_Database );				}				echo "<table align=\"center\" width=\"98%\" border=\"1\" cellpadding=\"5\" cellspacing=\"0\" class=\"table\"><tr><td>正在执行导入操作<br>";				while ( $SQL = getnextsql( ) )				{								if ( !mysql_query( $SQL ) )								{												echo "<font color=red>执行出错：".mysql_error( )."</font><br>";												echo "SQL语句为：<br>".$SQL."<br>";								}				}				echo "导入完成</td></tr></table><br>";				if ( !fclose( $fp ) )				{								exit( "Can't close file ".$file_name );				}				mysql_close( );}else if ( $_GET['Action'] == "back" ){				backdatebase( );				addlog( "备份数据库", $_SESSION['user_name'] );				admin_showerr( "<li>数据库备份成功</li>", "Admin_Sql2.php", 1 );}else if ( $_GET['Action'] == "delback" ){				unlink( "dbback/".$_GET['file'] );				addlog( "删除数据库", $_SESSION['user_name'] );				admin_showerr( "<li>数据库删除成功</li>", "Admin_Sql2.php", 1 );}echo "<table width=\"98%\" border=\"1\" align=\"center\" cellpadding=\"5\" cellspacing=\"0\" class=\"table\">\r\n  <tr>\r\n    <td colspan=\"4\"><strong>已备份数据库</strong></td>\r\n  </tr>\r\n  <tr>\r\n    <td width=\"4%\">ID</td>\r\n    <td>文件名 [<span class=\"Attention\"> 文件名为备份的日期与时间 </span>]</td>\r\n    <td width=\"12%\" align=\"center\">操作</td>\r\n  </tr>\r\n";								$CurrentPath = $_GET['path'] ? $_GET['path'] : false;				if ( $CurrentPath === false )				{								$CurrentPath = "dbback";				}				$fso = @opendir( $CurrentPath );				while ( false !== ( $file = @readdir( $fso ) ) )				{								$fullpath = "{$CurrentPath}/{$file}";								$is_dir = @is_dir( $fullpath );								if ( $is_dir == "1" )								{												if ( $file != ".." && $file != "." )												{																echo "<tr onmouseover=\"this.bgColor='#D3EDFC'\" onmouseout=\"this.bgColor='#eff7fd'\">\n";																echo "  <td colspan=\"4\"><img src=\"images/dir.gif\"> <a href=\"?path=".$CurrentPath."/".$file.( "\">".$file."</a></td>\n" );																echo "</tr>\n";												}								}				}				@closedir( $fso );				$i = 0;				$fso = @opendir( $CurrentPath );				while ( $file = @readdir( $fso ) )				{																$fullpath = "{$CurrentPath}/{$file}";								$is_dir = @is_dir( $fullpath );								if ( $is_dir == "0" )								{$i += 1;												$lastsave = @date( "Y-n-d H:i:s", @filemtime( "{$CurrentPath}/{$file}" ) );												echo "<tr onmouseover=\"this.bgColor='#D3EDFC'\" onmouseout=\"this.bgColor='#eff7fd'\">\n";												echo "<td> ".$i."</td>\n";												echo "<td>".$file."</td>\n";												$file_types = explode( ".", $file );												$file_type = $file_types[count( $file_types ) - 1];												if ( strtolower( $file_type ) != "jpg" & strtolower( $file_type ) != "gif" & strtolower( $file_type ) != "bmp" & strtolower( $file_type ) != "png" )												{							  echo "<td align=\"center\"><a href=\"Admin_Sql2.php?Action=backin&file=".$file."\">导入</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href=\"Admin_Sql2.php?Action=delback&file=".$file."\">删除</a> </td>\n" ;												}																								echo "</tr>\n";								}				}				@closedir( $fso );echo "  </table>\r\n</body>\r\n</html>\r\n";?>