<?phpfunction edits( ){				global $db,$DB_dbprefix;				$db->query( "select * from {$DB_dbprefix}columns WHERE id=".$_GET['id'] );				if ( $db->next_record( ) )				{								echo "<script language=\"javascript\" src=\"../inc/js.js\"></script>\r\n<table width=\"98%\" border=\"1\" align=\"center\" cellpadding=\"5\" cellspacing=\"0\" class=\"table\">\r\n <form action=\"single.php?Action=edit\" method=\"post\" name=\"form\" onSubmit=\"return Validator.Validate(this,3)\">\r\n <input name=\"id\" type=\"hidden\" value=\"";								echo $db->Record['id'];								echo "\" />\r\n<input name=\"bid\" type=\"hidden\" value=\" ";								echo $db->Record['bid'];								echo "\" />\r\n\r\n  <tr>\r\n    <td align=\"right\" width=\"15%\">标题：</td>\r\n    <td><input name=\"columnsname\" type=\"text\" value=\"";								echo $db->Record['columnsname'];								echo "\" size=\"50\" dataType=\"Require\" msg=\"请填栏目名称\"/></td>\r\n  </tr>  \r\n <tr>\r\n    <td align=\"right\">关键字：</td>\r\n    <td><input name=\"keywords\" value=\"";								echo $db->Record['keywords'];							    echo"\" type=\"text\" size=\"50\"/></td>\r\n  </tr>  <tr>\r\n    <td align=\"right\"valign=\"top\">文章导读：</td>\r\n    <td><textarea name=\"description\" cols=\"60\" rows=\"5\">";								echo $db->Record['description'];								echo "</textarea></td>\r\n  </tr> \r\n <input name=\"hide\" type=\"hidden\" value=\"";								echo $db->Record['hide'];								echo "\" /><input name=\"module\" type=\"hidden\" value=\"";								echo $db->Record['module'];								echo "\" /><input name=\"turl\" type=\"hidden\" value=\"";								echo $db->Record['turl'];								echo "\" />\r\n  <tr>\r\n    <td align=\"right\" valign=\"top\">文章内容：</td>\r\n    <td>";?><textarea cols="80" name="content" rows="5" cols="10"><?=$db->Record['content']?></textarea><script type="text/javascript">//<![CDATA[CKEDITOR.replace('content', { "filebrowserBrowseUrl": "ckfinder\/ckfinder.html", "filebrowserImageBrowseUrl": "ckfinder\/ckfinder.html?type=Images", "filebrowserFlashBrowseUrl": "ckfinder\/ckfinder.html?type=Flash", "filebrowserUploadUrl": "ckfinder\/core\/connector\/php\/connector.php?command=QuickUpload&type=Files", "filebrowserImageUploadUrl": "ckfinder\/core\/connector\/php\/connector.php?command=QuickUpload&type=Images", "filebrowserFlashUploadUrl": "ckfinder\/core\/connector\/php\/connector.php?command=QuickUpload&type=Flash" });//]]></script><?php								echo "</td>\r\n  </tr>\r\n   <input name=\"columnswith\" type=\"hidden\" value=\""; 								echo $db->Record['columnswith'];								echo "\" />\r\n<tr>\r\n    <td colspan=\"2\" align=\"center\"><input name=\"url\" type=\"hidden\" value=\"";								echo $_SERVER['HTTP_REFERER'];								echo "\"><input type=\"submit\" name=\"Submit_edit\" value=\"修改\" id=\"Submit_edit\" /></td>\r\n  </tr>\r\n </form>\r\n</table>\r\n<br>\r\n";				}}include( "../inc/header2.php" );login_check();echo "\r\n<body>\r\n";switch ( $_REQUEST['Action'] ){case "edits" :				edits( );				break;case "editall" :				editall( );				break;case "edit" :				if ( function_exists( "date_default_timezone_set" ) )				{								date_default_timezone_set( "Hongkong" );				}				$addtime = date( "Y-m-d H-i-s" );				extract( $_POST );				$db->query( "UPDATE {$DB_dbprefix}columns SET bid='".$_POST['bid']."',\r\n\t\tmodule='{$_POST['module']}',\r\n\t\tturl='{$_POST['turl']}',\r\n\t\tcolumnsname='{$_POST['columnsname']}',\r\n\t\thide='{$_POST['hide']}',\r\n\t\tdescription='{$_POST['description']}',\r\n\t\tkeywords='{$_POST['keywords']}',\r\n\t\tcolumnswith='{$_POST['columnswith']}',\r\n\t\tcontent='{$_POST['content']}'  WHERE id={$_POST['id']}" );								addlog( "修改<<".$_POST['columnsname'].">>内容", $_SESSION['user_name'] );				admin_showerr( "<li>修改内容成功</li>", $_POST['url'], 1 );				break;}?>