<?phpfunction editall( ){				echo "<table width=\"98%\" border=\"1\" align=\"center\" cellpadding=\"5\" cellspacing=\"0\" class=\"table\">\r\n <form action=\"Admin_Content.php?Action=alledit\" method=\"post\" name=\"form\">\r\n <input name=\"id\" type=\"hidden\" value=\"";				echo implode( ",", $_POST['id'] );				echo "\" />\r\n  <tr>\r\n    <td width=\"10%\">初始点击数：</td>\r\n    <td><input name=\"hits\" id=\"hits\" size=\"10\" maxlength=\"255\" />\r\n      次</td></tr>\r\n  <tr>\r\n    <td>文档属性：</td>\r\n    <td><input name=\"rec\" type=\"checkbox\" value=\"1\"/>\r\n      推荐文档\r\n        <input name=\"hot\" type=\"checkbox\" value=\"1\"/>\r\n      热门文档\r\n   </td> \r\n  </tr>\r\n    <tr>\r\n    <td colspan=\"2\" align=\"center\"><input name=\"url\" type=\"hidden\" value=\"";				echo $_SERVER['HTTP_REFERER'];				echo "\"><input type=\"submit\" name=\"submita\" value=\"修改\" /></td>\r\n  </tr>\r\n  </form>\r\n</table>\r\n";}include( "inc/header.php" );login_check();echo "\r\n<body>\r\n";switch ( $_REQUEST['Action'] ){case "editall" :				editall( );				break;case "alledit" :				extract( $_POST );				@$rec = @intval( $rec );				@$hot = @intval( $hot );				$strSql = "UPDATE {$DB_dbprefix}content SET ";				if ( $_POST['columnsname'] && $_POST['columnsname'] != "请选择栏目" )				{								$strSql .= "columnsname='".$_POST['columnsname']."',";				}				if ( $_POST['hits'] )				{								$strSql .= "hits=".$_POST['hits'].",";				}				if ( $rec )				{								$strSql .= "rec=".$rec.",";				}else{					            $strSql .= "rec=0,";				}				if ( $hot )				{								$strSql .= "hot=".$hot.",";				}else{					            $strSql .= "hot=0,";				}				$strSql = substr( $strSql, 0, -1 );				$strSql .= " WHERE id IN (".$_POST['id'].")";				$db1->query( $strSql );				addlog( "修改文档", $_SESSION['user_name'] );				admin_showerr( "<li>修改文档成功</li>", $_POST['url'], 1 );				break;case "del" :				if ( isset( $_POST['id'] ) )				{								$chid = implode( ",", $_POST['id'] );				}				else				{								$chid = $_GET['id'];				}				$db->query( "SELECT id,photo,addtime FROM {$DB_dbprefix}content where id IN (".$chid.")" );				while ( $db->next_record( ) )				{								switch ( $webhtmlname )								{								case 1 :												@unlink( "../".$webhtmldir."view_".$db->Record['id'].".".$webmode );												break;								case 2 :												@unlink( "../".$webhtmldir.@date( "Ymdgis", $db->Record['addtime'] ).".".$webmode );												break;								case 3 :												@deldir( "../".$webhtmldir.$db->Record['id']."/" );								}								@unlink( "../".$upfile.$db->Record['photo'] );				}				$db->query( "DELETE FROM {$DB_dbprefix}content WHERE id IN (".$chid.")" );				$db->query( "DELETE FROM {$DB_dbprefix}download WHERE bid IN (".$chid.")" );				$db->query( "DELETE FROM {$DB_dbprefix}hr WHERE bid IN (".$chid.")" );				$db->query( "DELETE FROM {$DB_dbprefix}products WHERE bid IN (".$chid.")" );				addlog( "删除文档", $_SESSION['user_name'] );				admin_showerr( "<li>删除文档成功</li>", $_SERVER['HTTP_REFERER'], 1 );				break;case "rec" :case "hot" :				$db->query( "UPDATE {$DB_dbprefix}content set ".$_GET['Action']."={$_GET['value']} WHERE id={$_GET['id']}" );				addlog( "修改文档属性", $_SESSION['user_name'] );				@header( "Location:".$_SERVER['HTTP_REFERER'] );				break;default :				@$intPerpage = 20;				if ( $_GET['PB_page'] )				{								$offset = ( $_GET['PB_page'] - 1 ) * $intPerpage;				}				else				{								$offset = 0;				}				if ( $_GET['keyword'] != "" )				{								$strSql = "SELECT * FROM {$DB_dbprefix}content WHERE title like '%".trim( $_GET['keyword'] )."%'";								$execc = "SELECT id FROM {$DB_dbprefix}content WHERE title like '%".trim( $_GET['keyword'] )."%'";				}				else if ( $_GET['Action'] == "columns" )				{								$strSql = "SELECT * FROM {$DB_dbprefix}content WHERE columnsname =".$_GET['columnsname'];								$execc = "SELECT id FROM {$DB_dbprefix}content WHERE columnsname =".$_GET['columnsname'];				}				else				{								$strSql = "SELECT * FROM {$DB_dbprefix}content";								$execc = "SELECT id FROM {$DB_dbprefix}content";				}				if ( isset( $_GET['Attribute'] ) )				{								$strSql .= " where ".$_GET['Attribute']."=1";								$execc .= " where ".$_GET['Attribute']."=1";				}				if ( empty( $_GET['Sorting'] ) )				{								$strSql .= " Order by id desc limit ".$offset.",{$intPerpage}";				}				else				{								$strSql .= " Order by ".$_GET['Sorting']." desc limit {$offset},{$intPerpage}";				}				$resultc = mysql_query( $execc );				$intNum = mysql_num_rows( $resultc );				$db->query( $strSql );				echo "<table width=\"98%\" border=\"1\" align=\"center\" cellpadding=\"5\" cellspacing=\"0\" class=\"table\">\r\n  <tr width=\"10%\" >\r\n<form action=\"Admin_Content.php\" method=\"get\"> \r\n   <td align=\"right\"> \r\n<strong>文档搜索</strong>：</td>\r\n   <td width=\"44%\"><input name=\"keyword\" type=\"text\" style=\"width: 200px\" />\r\n     <input name=\"Submit\" type=\"submit\" id=\"Submit\" value=\"开始搜索\"></td>\r\n</form>\r\n   <td><strong>查看方式</strong>:       \r\n     <a href=\"Admin_Content.php?Sorting=id\">文档ID</a> |  \r\n     <a href=\"Admin_Content.php?Sorting=sequence\">人工排序</a> | \r\n     <a href=\"Admin_Content.php?Sorting=addtime\">加入时间</a> | \r\n     <a href=\"Admin_Content.php?Sorting=hits\">点击次数</a> | \r\n     <a href=\"Admin_Content.php?Attribute=rec\">推荐</a> | \r\n     <a href=\"Admin_Content.php?Attribute=hot\">热门</a> \r\n       </td>\r\n  </tr>\r\n</table>\r\n<br />\r\n<table width=\"98%\" border=\"1\" align=\"center\" cellpadding=\"5\" cellspacing=\"0\" class=\"table\">\r\n<form  name=\"forms\" action=\"Admin_Content.php\" method=\"post\">\r\n  <tr>\r\n    <td width=\"3%\">&nbsp;</td>\r\n    <td width=\"5%\" align=\"center\"><strong>ID</strong></td>\r\n    <td align=\"center\"><strong>文档名称</strong></td>\r\n    <td align=\"center\"><strong>文档标题</strong></td>\r\n    <td width=\"10%\" align=\"center\"><strong>所属栏目</strong></td>\r\n   \r\n    <td width=\"5%\" align=\"center\"><strong>推荐</strong></td>\r\n    <td width=\"5%\" align=\"center\"><strong>热门</strong></td>\r\n       <td width=\"12%\" align=\"center\"><strong>操作</strong></td>\r\n  </tr>\r\n";				while ( $db->next_record( ) )				{								echo "  <tr onmouseover=\"this.bgColor='#D3EDFC'\" onmouseout=\"this.bgColor='#eff7fd'\">\r\n    <td><input name=\"id[]\" type=\"checkbox\" id=\"id\" value=\"";								echo $db->Record['id'];								echo "\" /></td>\r\n    <td align=\"center\">";								echo $db->Record['id'];								echo "</td>\r\n    <td>";								echo $db->Record['title'];								echo "</td>\r\n   <td>";								echo $db->Record['subtitle'];								echo "</td>\r\n    <td align=\"center\">";								echocolumns( "{$DB_dbprefix}columns", "columnsname", $db->Record['columnsname'] );								echo "</td>\r\n    <td  align=\"center\">\r\n\t";								if ( $db->Record['rec'] == 0 )								{												echo "<a href=\"Admin_Content.php?Action=rec&id=".$db->Record['id']."&value=1\"><img src=\"images/icon_02.gif\" border=\"0\" /></a>";								}								else								{												echo "<a href=\"Admin_Content.php?Action=rec&id=".$db->Record['id']."&value=0\"><img src=\"images/icon_01.gif\" border=\"0\" /></a>";								}								echo "</td>\r\n    <td  align=\"center\">\r\n\t";								if ( $db->Record['hot'] == 0 )								{												echo "<a href=\"Admin_Content.php?Action=hot&id=".$db->Record['id']."&value=1\"><img src=\"images/icon_02.gif\" border=\"0\" /></a>";								}								else								{												echo "<a href=\"Admin_Content.php?Action=hot&id=".$db->Record['id']."&value=0\"><img src=\"images/icon_01.gif\" border=\"0\" /></a>";								}								echo "</td>\r\n    <td align=\"center\"><a href=\"";								echomodule($db->Record['columnsname']);								echo $db->Record['id'];								echo "&columnsname=";								echo $db->Record['columnsname'];								echo "\">修改</a> ｜ <a href=\"Admin_Content.php?Action=del&id=";								echo $db->Record['id'];								echo "\"onClick=\"delcfm()\">删除</a></td>\r\n  </tr>\r\n";				}				echo "  <tr>\r\n    <td><input name=\"chkall\" type=\"checkbox\" id=\"chkall\" value=\"checkbox\" onClick=\"CheckAll(document.forms.chkall.checked);\"/></td>\r\n    <td colspan=\"8\"><input name=\"Action\" type=\"hidden\" value=\"\">\r\n\t  <input type=\"button\"  name=\"del\" value=\"批量删除\"  onClick=\"document.forms.Action.value='del';{if(chkCheckBoxChs('id')==false){alert('请至少选择一个文档！');return;}};{if(confirm('确定删除您所选择的文档吗？')){this.document.forms.submit();return true;}}\">\r\n      <input type=\"button\" name=\"editall\" value=\"批量修改所选文档\" onClick=\"document.forms.Action.value='editall';{if(chkCheckBoxChs('id')==false){alert('请至少选择一个文档！');return;}};this.document.forms.submit();\"></td>\r\n  </tr>\r\n</form>\r\n  <tr>\r\n    <td colspan=\"9\">";				require_once( "../inc/class.page.php" );				class mypage extends page				{								function show( )								{												$_showpage = "<div class=\"pagenavi\" id=\"lopage\">";												$_showpage .= $this->first_page( )." ";												$_showpage .= $this->nowbar( "", "curr" );												$_showpage .= "<span class=\"break\">...</span>";												$_showpage .= $this->last_page( );												$_showpage .= "   (总计<span class=\"num\">".$this->totalpage."</span>页 <span class=\"num\">".$this->total."</span>条记录)</div>";												$_showpage .= "</div>";												return $_showpage;								}				}				$page = new mypage( array(								"total" => $intNum,								"perpage" => $intPerpage				) );				echo $page->show( );}echo "</td>\r\n  </tr>\r\n</table>\r\n<script language=\"javascript\">\r\nfunction CheckAll(v)\r\n\t{\r\n\t\tvar i;\r\n\t\tfor (i=0;i<document.forms.elements.length;i++)\r\n\t\t{\r\n\t\t\tvar e = document.forms.elements[i];\r\n\t\t        e.checked = v;\r\n\t\t}\r\n}\r\n\r\nfunction setid(number,url,format,datalist)\r\n{\r\nvar str='';\r\nif(!document.getElementById(number).value)\r\ndocument.getElementById(number).value=1;\r\nfor(i=1;i<=document.getElementById(number).value;i++)\r\n{\r\nif (str!=\"\")\r\n{\r\nstr+='\\r';\r\n}\r\nif(document.getElementById(number).value<10)\r\n{\r\nstr+=document.getElementById(url).value+'0'+i+''+document.getElementById(format).value;\r\n}  \r\nelse if(document.getElementById(number).value<100)\r\n{\r\n\tif(i<10)\r\n\t{\r\n\tstr+=document.getElementById(url).value+''+'0'+i+''+document.getElementById(format).value;\r\n\t}\r\n\telse\r\n\t{\r\n\tstr+=document.getElementById(url).value+''+i+''+document.getElementById(format).value;\r\n\t}\r\n} \r\nelse if(document.getElementById(number).value<1000)\r\n{\r\n\tif(i<10)\r\n\t{\r\n\tstr+=document.getElementById(url).value+''+'00'+i+''+document.getElementById(format).value;\r\n \t} \r\nelse if(i<100)\r\n\t{\r\n\tstr+=document.getElementById(url).value+''+'0'+i+''+document.getElementById(format).value;\r\n \t}\r\n\telse\r\n\t{\r\n\tstr+=document.getElementById(url).value+''+i+''+document.getElementById(format).value;\r\n\t}\r\n}\r\n}\r\ndocument.getElementById(datalist).value=''+str+'';\r\n}\r\n\r\nfunction showcheckbox(cname,dname)\r\n{\r\nif(document.getElementById(cname).checked==true)\r\n{\r\nshowThumbnail_RateOrSize(1,dname)\r\n}\r\nelse\r\n{\r\nshowThumbnail_RateOrSize(0,dname)\r\n}\r\n}\r\n";echo "function showThumbnail_RateOrSize(param,pname)\r\n{\r\n\tif(param==1)\r\n\t{\r\n\t\tdocument.getElementById(pname).style.display=\"block\";\r\n\t}else\r\n\t{\r\n\t\tdocument.getElementById(pname).style.display=\"none\";\r\n\t}\r\n}\r\n\r\nfunction chkCheckBoxChs(objNam){\r\nvar obj = document.getElementsByName(objNam);\r\nvar objLen= obj.length;\r\nvar objYN;\r\nvar i;\r\nobjYN=false;\r\nfor (i = 0;i< objLen;i++){\r\nif (obj [i].checked==true) {\r\nobjYN= true;\r\nbreak;\r\n}\r\n}\r\nreturn objYN;\r\n}\r\n  </script>\r\n</body>\r\n</html>";?>