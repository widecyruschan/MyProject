<?phpout();$sql = "select * from `{$DB_dbprefix}columns` order by permute desc,id asc";$query = $db ->query($sql);while($row=mysql_fetch_assoc($query)){$arr[] = array($row['id'],$row['title'],$row['bid'],$row['module']);}$str = '';function lmfl2($id){global $arr,$str;if($id >= count($arr)) return false;$str .= "<ul>";lmfl($id);$str .= "</ul>";}function lmfl($id){global $arr,$str;for($i=0;$i<count($arr);$i++){if($arr[$i][2]==$id){$str .= "<li><a href=\"?controller=content&id=".$arr[$i][0]."&module=".$arr[$i][3]."\" target=\"navTab\" rel=\"view".$arr[$i][0]."\">";$str .= $arr[$i][1];$str .= "</a>";lmfl2($arr[$i][0]);$str .= "</li>";}}}lmfl(0);$list=str_replace('<ul></ul>','',$str);function str_len($str){$length = strlen(preg_replace('/[\x00-\x7F]/','',$str));if ($length){return strlen($str) -$length +intval($length / 3) * 2;}else{return strlen($str);}}?>