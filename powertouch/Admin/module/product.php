<?phpfunction adds( ){				echo "<script language=\"javascript\" src=\"../inc/js.js\"></script>\r\n<table width=\"98%\" border=\"1\" align=\"center\" cellpadding=\"5\" cellspacing=\"0\" class=\"table\">\r\n<form action=\"product.php?Action=add\" method=\"post\" name=\"form\" onSubmit=\"return Validator.Validate(this,3)\">\r\n  <tr>\r\n   <td width=\"15%\" align=\"right\">所属栏目：</td>\r\n   <td>\r\n   ";				echo" <select  name=\"columnsname\" dataType=\"Require\" msg=\"请选择内容\">";                echo"<option value=\"0\">-----顶级分类-----</option>";            	dafenglei_select(0,0,"".$_GET['id']."");	            echo"</select>";				//echo "</td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"right\">客户：</td>\r\n    <td>";				//echo" <select  name=\"ClientID\" dataType=\"Require\" msg=\"请选择内容\">";            	//Client_select(0,0,0);	            //echo"</select>";								echo "</td>\r\n  </tr>  \r\n<tr>\r\n    <td align=\"right\">项目标题：</td>\r\n    <td><input name=\"subtitle\" type=\"text\" size=\"50\" /></td>\r\n  </tr><tr>\r\n    <td align=\"right\">项目名称：</td>\r\n    <td><input name=\"title\" type=\"text\" size=\"50\" /></td>\r\n  </tr><tr>\r\n    <td align=\"right\">英文名称：</td>\r\n    <td><input name=\"Entitle\" type=\"text\" size=\"50\" /></td>\r\n  </tr> \r\n <tr>\r\n    <td align=\"right\">关键字：</td>\r\n    <td><input name=\"keywords\" type=\"text\" size=\"50\"/></td>\r\n  </tr>   <tr>\r\n    <td align=\"right\">初始点击数：</td>\r\n    <td>\r\n      <input size=\"10\" value=\"1\" name=\"hits\" dataType=\"Integer\" msg=\"请填初始点击数\"/>次</td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"right\">执行时间：</td>\r\n    <td><input name=\"actor\" type=\"text\" size=\"50\" /></td>\r\n  </tr><tr>\r\n    <td align=\"right\">推广周期：</td>\r\n    <td><input name=\"size\" type=\"text\" size=\"50\" /></td>\r\n  </tr><tr>\r\n    <td align=\"right\">项目预算：</td>\r\n    <td><input name=\"price\" type=\"text\" size=\"50\"/></td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"right\">图片地址：</td>\r\n    <td><input name=\"photo\" type=\"text\" size=\"50\"/></td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"right\">上传图片：</td>\r\n    <td><iframe src=\"../Upload.php\" width=\"400\" height=\"20\" frameborder=\"0\" scrolling=\"no\"></iframe></td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"right\">案例属性：</td>\r\n    <td><span style=\"float:left; width:260px;\"><input name=\"rec\" type=\"checkbox\" value=1 />\r\n      推荐案例\r\n         \r\n      <input name=\"hot\" type=\"checkbox\" value=1 />\r\n      热门案例\r\n    </span</tr><tr>\r\n    <td align=\"right\"valign=\"top\">案例导读：</td>\r\n    <td><textarea name=\"description\" cols=\"60\" rows=\"5\"></textarea></td>\r\n  </tr>   <tr>\r\n    <td align=\"right\" valign=\"top\">案例介绍：</td>\r\n    <td>";?><textarea cols="80" id="editor_kama" name="content" rows="5" cols="10"></textarea><script type="text/javascript">//<![CDATA[CKEDITOR.replace('content', { "filebrowserBrowseUrl": "ckfinder\/ckfinder.html", "filebrowserImageBrowseUrl": "ckfinder\/ckfinder.html?type=Images", "filebrowserFlashBrowseUrl": "ckfinder\/ckfinder.html?type=Flash", "filebrowserUploadUrl": "ckfinder\/core\/connector\/php\/connector.php?command=QuickUpload&type=Files", "filebrowserImageUploadUrl": "ckfinder\/core\/connector\/php\/connector.php?command=QuickUpload&type=Images", "filebrowserFlashUploadUrl": "ckfinder\/core\/connector\/php\/connector.php?command=QuickUpload&type=Flash" });//]]></script><?php				echo "</td>\r\n  </tr>\r\n<tr> <td width=\"15%\" align=\"right\">排序：</td><td><input name=\"sequence\" id=\"sequence\" value=\"0\" size=\"10\" dataType=\"Integer\" msg=\"请填案例排序\"/>\r\n[ 请添加数字,数值越大排序越前 ]</td></td></tr>  <tr>\r\n    <td colspan=\"2\" align=\"center\"><input type=\"submit\" name=\"Submit_add\" value=\"添加\" /></td>\r\n  </tr>\r\n</form>\r\n</table>\r\n";}function edits( ){				global $db,$DB_dbprefix;				$db->query( "select * from {$DB_dbprefix}content WHERE id=".$_GET['id'] );				if ( $db->next_record( ) )				{								echo "<script language=\"javascript\" src=\"../inc/js.js\"></script>\r\n<table width=\"98%\" border=\"1\" align=\"center\" cellpadding=\"5\" cellspacing=\"0\" class=\"table\">\r\n <form action=\"product.php?Action=edit\" method=\"post\" name=\"form\" onSubmit=\"return Validator.Validate(this,3)\">\r\n <input name=\"id\" type=\"hidden\" value=\"";								echo $db->Record['id'];								echo "\" />\r\n  <tr>\r\n    <td width=\"15%\" align=\"right\">所属栏目：</td>\r\n    <td>\r\n   ";								echo" <select  name=\"columnsname\" dataType=\"Require\" msg=\"请选择内容\">";								echo"<option value=\"0\">-----顶级分类-----</option>";            	                dafenglei_select(0,0,"".$_GET['columnsname']."");	                            echo"</select>";				//echo "</td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"right\">客户：</td>\r\n    <td>";				//echo" <select  name=\"ClientID\" dataType=\"Require\" msg=\"请选择内容\">";            	//Client_select(0,0,$db->Record['ClientID']);	            //echo"</select>";								echo "</td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"right\">项目标题：</td>\r\n    <td><input name=\"subtitle\" type=\"text\" value=\"";								echo $db->Record['subtitle'];								echo "\" size=\"50\" dataType=\"Require\" msg=\"请填项目标题\"/></td>\r\n  </tr>\r\n<tr>\r\n    <td align=\"right\">项目名称：</td>\r\n    <td><input name=\"title\" type=\"text\" value=\"";								echo $db->Record['title'];								echo "\" size=\"50\" dataType=\"Require\" msg=\"请填案例名称\"/></td>\r\n  </tr>\r\n <tr>\r\n    <td align=\"right\">英文名称：</td>\r\n    <td><input name=\"Entitle\" type=\"text\" value=\"";								echo $db->Record['Entitle'];								echo "\" size=\"50\" dataType=\"Require\" msg=\"请填英文名称\"/></td>\r\n  </tr>\r\n <tr>\r\n    <td align=\"right\">关键字：</td>\r\n    <td><input name=\"keywords\" value=\"";								echo $db->Record['keywords'];							    echo"\" type=\"text\" size=\"50\"/></td>\r\n  </tr>   <tr>\r\n    <td align=\"right\">初始点击数：</td>\r\n    <td><input name=\"hits\" id=\"hits\" value=\"";								echo $db->Record['hits'];								echo "\" size=\"10\" dataType=\"Integer\" msg=\"请填初始点击数\"/>\r\n      次</td></tr>\r\n  <tr>\r\n    <td align=\"right\">执行时间：</td>\r\n    <td><input name=\"actor\" type=\"text\" value=\"";								echo $db->Record['actor'];								echo "\" size=\"50\"/></td>\r\n  </tr>\r\n<tr>\r\n    <td align=\"right\">推广周期：</td>\r\n    <td><input name=\"size\" type=\"text\" value=\"";								relevant("".$db->Record['id']."",products,size);								echo "\" size=\"50\"/></td>\r\n  </tr>\r\n <tr>\r\n    <td align=\"right\">项目预算：</td>\r\n    <td><input name=\"price\" type=\"text\" value=\"";								relevant("".$db->Record['id']."",products,price);								echo "\" size=\"50\" /></td>\r\n  </tr>\r\n   <tr>\r\n    <td align=\"right\">图片地址：</td>\r\n    <td><input name=\"photo\" type=\"text\" value=\"";								echo $db->Record['photo'];								echo "\"  size=\"50\"/></td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"right\">上传图片：</td>\r\n    <td><iframe src=\"../Upload.php\" width=\"400\" height=\"20\" frameborder=\"0\" scrolling=\"no\"></iframe></td>\r\n  </tr>\r\n  <tr>\r\n    <td align=\"right\">案例属性：</td>\r\n    <td><span style=\"float:left; width:260px;\">\r\n    <input name=\"rec\" type=\"checkbox\" value=\"1\" ";								if ( $db->Record['rec'] ? 1 : 0 )								{												echo "checked";								}								echo " />\r\n      推荐案例\r\n        <input name=\"hot\" type=\"checkbox\" value=\"1\" ";								if ( $db->Record['hot'] ? 1 : 0 )								{												echo "checked";								}								echo " />\r\n      热门案例\r\n </span></td>\r\n  </tr>\r\n  \r\n  \r\n <tr>\r\n    <td align=\"right\"valign=\"top\">案例导读：</td>\r\n    <td><textarea name=\"description\" cols=\"60\" rows=\"5\">";								echo $db->Record['description'];								echo "</textarea></td>\r\n  </tr>    <tr>\r\n    <td align=\"right\" valign=\"top\">案例内容：</td>\r\n    <td>";?><textarea cols="80" id="editor_kama" name="content" rows="5" cols="10"><?=$db->Record['content']?></textarea><script type="text/javascript">//<![CDATA[CKEDITOR.replace('content', { "filebrowserBrowseUrl": "ckfinder\/ckfinder.html", "filebrowserImageBrowseUrl": "ckfinder\/ckfinder.html?type=Images", "filebrowserFlashBrowseUrl": "ckfinder\/ckfinder.html?type=Flash", "filebrowserUploadUrl": "ckfinder\/core\/connector\/php\/connector.php?command=QuickUpload&type=Files", "filebrowserImageUploadUrl": "ckfinder\/core\/connector\/php\/connector.php?command=QuickUpload&type=Images", "filebrowserFlashUploadUrl": "ckfinder\/core\/connector\/php\/connector.php?command=QuickUpload&type=Flash" });//]]></script><?php								echo "</td>\r\n  </tr>\r\n  <tr> <td width=\"15%\" align=\"right\">排序：</td><td><input name=\"sequence\" id=\"sequence\" value=\"";								echo $db->Record['sequence'];								echo "\" size=\"10\" dataType=\"Integer\" msg=\"请填案例排序\"/>\r\n[ 请添加数字,数值越大排序越前 ]</td></td></tr> <tr>\r\n    <td colspan=\"2\" align=\"center\"><input name=\"url\" type=\"hidden\" value=\"";								echo $_SERVER['HTTP_REFERER'];								echo "\"><input type=\"submit\" name=\"Submit_edit\" value=\"修改\" id=\"Submit_edit\" /></td>\r\n  </tr>\r\n </form>\r\n</table>\r\n<br>\r\n";				}}include( "../inc/header2.php" );login_check();$Client_arr=array();$class_arr=array();$sql = "select * from `{$DB_dbprefix}columns` order by columnswith desc,id asc";$query = $db -> query($sql);while($row=mysql_fetch_assoc($query)){              $class_arr[] = array($row['id'],$row['columnsname'],$row['bid'],$row['sort']);		}$sql = "select * from `{$DB_dbprefix}client` order by id asc";$query = $db -> query($sql);while($row=mysql_fetch_assoc($query)){              $Client_arr[] = array($row['id'],$row['title'],0);		}		echo "\r\n<body>\r\n";switch ( $_REQUEST['Action'] ){case "adds" :				adds( );				break;case "add" :				if ( function_exists( "date_default_timezone_set" ) )				{								date_default_timezone_set( "Hongkong" );				}				$addtime = date( "Y-m-d H-i-s" );				extract( $_POST );				if ($_POST['description']=="")				{					$description=cnsubstr(uh($_POST['content']),100);;                }else{					$description=$_POST['description'];				}				@$rec = @intval( $rec );				@$hot = @intval( $hot );				$db->query( "INSERT INTO {$DB_dbprefix}content (columnsname,title,Entitle,subtitle,keywords,description,hits,actor,photo,rec,hot,content,sequence,addtime) VALUES ('".$_POST['columnsname']."','{$_POST['title']}','{$_POST['Entitle']}','{$_POST['subtitle']}','{$_POST['keywords']}','{$description}',{$_POST['hits']},'{$_POST['actor']}','{$_POST['photo']}',{$rec},{$hot},'{$_POST['content']}','{$_POST['sequence']}','{$addtime}')" );				$tun2Id = mysql_insert_id( );	            $db->query( "INSERT INTO {$DB_dbprefix}products (bid,size,price) VALUES ({$tun2Id},'{$_POST['size']}','{$_POST['price']}')" );				addlog( "添加案例<<".$_POST['title'].">>", $_SESSION['user_name'] );				admin_showerr( "<li>添加案例成功</li>", "../Admin_Content.php", 1 );				break;case "edits" :				edits( );				break;case "edit" :				if ( function_exists( "date_default_timezone_set" ) )				{								date_default_timezone_set( "Hongkong" );				}				$addtime = date( "Y-m-d H-i-s" );				extract( $_POST );				@$rec = @intval( $rec );				@$hot = @intval( $hot );				$db->query( "UPDATE {$DB_dbprefix}content SET columnsname='".$_POST['columnsname']."',\r\n\t\ttitle='{$_POST['title']}',\r\n\t\tEntitle='{$_POST['Entitle']}',\r\n\t\tsubtitle='{$_POST['subtitle']}',\r\n\t\tkeywords='{$_POST['keywords']}',\r\n\t\tdescription='{$_POST['description']}',\r\n\t\thits={$_POST['hits']},\r\n\t\tActor='{$_POST['actor']}',\r\n\t\tphoto='{$_POST['photo']}',\r\n\t\trec={$rec},\r\n\t\thot={$hot},\r\n\t\tcontent='{$_POST['content']}',\r\n\t\tsequence='{$_POST['sequence']}',\r\n\t\taddtime='{$addtime}' WHERE id={$_POST['id']}" );				$db->query( "UPDATE {$DB_dbprefix}products SET size='{$_POST['size']}',\r\n\t\tprice='{$_POST['price']}' WHERE bid={$_POST['id']}" );				addlog( "修改案例<<".$_POST['title'].">>", $_SESSION['user_name'] );				admin_showerr( "<li>修改案例成功</li>", $_POST['url'], 1 );				break;}echo "</td>\r\n  </tr>\r\n</table>\r\n<script language=\"javascript\">\r\nfunction CheckAll(v)\r\n\t{\r\n\t\tvar i;\r\n\t\tfor (i=0;i<document.forms.elements.length;i++)\r\n\t\t{\r\n\t\t\tvar e = document.forms.elements[i];\r\n\t\t        e.checked = v;\r\n\t\t}\r\n}\r\n\r\nfunction setid(number,url,format,datalist)\r\n{\r\nvar str='';\r\nif(!document.getElementById(number).value)\r\ndocument.getElementById(number).value=1;\r\nfor(i=1;i<=document.getElementById(number).value;i++)\r\n{\r\nif (str!=\"\")\r\n{\r\nstr+='\\r';\r\n}\r\nif(document.getElementById(number).value<10)\r\n{\r\nstr+=document.getElementById(url).value+'0'+i+''+document.getElementById(format).value;\r\n}  \r\nelse if(document.getElementById(number).value<100)\r\n{\r\n\tif(i<10)\r\n\t{\r\n\tstr+=document.getElementById(url).value+''+'0'+i+''+document.getElementById(format).value;\r\n\t}\r\n\telse\r\n\t{\r\n\tstr+=document.getElementById(url).value+''+i+''+document.getElementById(format).value;\r\n\t}\r\n} \r\nelse if(document.getElementById(number).value<1000)\r\n{\r\n\tif(i<10)\r\n\t{\r\n\tstr+=document.getElementById(url).value+''+'00'+i+''+document.getElementById(format).value;\r\n \t} \r\nelse if(i<100)\r\n\t{\r\n\tstr+=document.getElementById(url).value+''+'0'+i+''+document.getElementById(format).value;\r\n \t}\r\n\telse\r\n\t{\r\n\tstr+=document.getElementById(url).value+''+i+''+document.getElementById(format).value;\r\n\t}\r\n}\r\n}\r\ndocument.getElementById(datalist).value=''+str+'';\r\n}\r\n\r\nfunction showcheckbox(cname,dname)\r\n{\r\nif(document.getElementById(cname).checked==true)\r\n{\r\nshowThumbnail_RateOrSize(1,dname)\r\n}\r\nelse\r\n{\r\nshowThumbnail_RateOrSize(0,dname)\r\n}\r\n}\r\n";echo "function showThumbnail_RateOrSize(param,pname)\r\n{\r\n\tif(param==1)\r\n\t{\r\n\t\tdocument.getElementById(pname).style.display=\"block\";\r\n\t}else\r\n\t{\r\n\t\tdocument.getElementById(pname).style.display=\"none\";\r\n\t}\r\n}\r\n\r\nfunction chkCheckBoxChs(objNam){\r\nvar obj = document.getElementsByName(objNam);\r\nvar objLen= obj.length;\r\nvar objYN;\r\nvar i;\r\nobjYN=false;\r\nfor (i = 0;i< objLen;i++){\r\nif (obj [i].checked==true) {\r\nobjYN= true;\r\nbreak;\r\n}\r\n}\r\nreturn objYN;\r\n}\r\n  </script>\r\n</body>\r\n</html>";?>