<?phpfunction edits( ){				global $db,$DB_dbprefix;				$db->query( "select * from {$DB_dbprefix}columns WHERE id=".$_GET['id'] );				if ( $db->next_record( ) )				{								echo "<script language=\"javascript\" src=\"../inc/js.js\"></script>\r\n<table width=\"98%\" border=\"1\" align=\"center\" cellpadding=\"5\" cellspacing=\"0\" class=\"table\">\r\n <form action=\"single.php?Action=edit\" method=\"post\" name=\"form\" onSubmit=\"return Validator.Validate(this,3)\">\r\n <input name=\"id\" type=\"hidden\" value=\"";								echo $db->Record['id'];								echo "\" />\r\n<input name=\"bid\" type=\"hidden\" value=\" ";								echo $db->Record['bid'];								echo "\" />\r\n\r\n  <input name=\"columnsname\" type=\"hidden\" value=\"";								echo $db->Record['columnsname'];								echo "\"/>\r\n <input name=\"hide\" type=\"hidden\" value=\"";								echo $db->Record['hide'];								echo "\"/>\r\n <input name=\"module\" type=\"hidden\" value=\"";								echo $db->Record['module'];								echo "\" /> <td align=\"right\" width=\"10%\">外部链接地址：</td>\r\n    <td><input name=\"turl\" type=\"text\" value=\"";								echo $db->Record['turl'];								echo "\" size=\"50\" dataType=\"Require\" msg=\"请填外部链接地址\"/>(请使用http://标识),后面不要带\"/\"符号,若非外部链接，可不用填写</td>\r\n  </tr>\r\n  <input name=\"description\" type=\"hidden\" value=\"";								echo $db->Record['description'];								echo "\" />\r\n <input name=\"keywords\" type=\"hidden\" value=\"";								echo $db->Record['keywords'];								echo "\" />\r\n  <input name=\"content\" type=\"hidden\" value=\"";								echo $db->Record['content'];								echo "\" />\r\n  <input name=\"columnswith\" type=\"hidden\" value=\""; 								echo $db->Record['columnswith'];								echo "\" />\r\n<tr>\r\n    <td colspan=\"2\" align=\"center\"><input name=\"url\" type=\"hidden\" value=\"";								echo $_SERVER['HTTP_REFERER'];								echo "\"><input type=\"submit\" name=\"Submit_edit\" value=\"修改\" id=\"Submit_edit\" /></td>\r\n  </tr>\r\n </form>\r\n</table>\r\n<br>\r\n";				}}include( "../inc/header2.php" );login_check();echo "\r\n<body>\r\n";switch ( $_REQUEST['Action'] ){case "edits" :				edits( );				break;case "editall" :				editall( );				break;case "edit" :				if ( function_exists( "date_default_timezone_set" ) )				{								date_default_timezone_set( "Hongkong" );				}				$addtime = date( "Y-m-d H-i-s" );				extract( $_POST );				$db->query( "UPDATE {$DB_dbprefix}columns SET bid='".$_POST['bid']."',\r\n\t\tmodule='{$_POST['module']}',\r\n\t\tturl='{$_POST['turl']}',\r\n\t\tcolumnsname='{$_POST['columnsname']}',\r\n\t\thide='{$_POST['hide']}',\r\n\t\tdescription='{$_POST['description']}',\r\n\t\tkeywords='{$_POST['keywords']}',\r\n\t\tcolumnswith='{$_POST['columnswith']}',\r\n\t\tcontent='{$_POST['content']}'  WHERE id={$_POST['id']}" );								addlog( "修改<<".$_POST['columnsname'].">>内容", $_SESSION['user_name'] );				admin_showerr( "<li>修改内容成功</li>", $_POST['url'], 1 );				break;}?>