<?phpout();$id=verify_id($_GET['id']);$column=verify_id($_POST['column']);$title=str_check($_POST['title']);$pic=str_check($_POST['pic']);$thumbnail=str_check($_POST['thumbnail']);$url=str_check($_POST['url']);$permute=str_check($_POST['permute']);$note=str_check($_POST['note']);$ids=str_check($_POST['ids']);$type=verify_id($_POST['type']);if($action=='edit_column'){$db->query( "UPDATE  `{$DB_dbprefix}links_columns` SET  `title` =  '$title',`note` =  '$note' WHERE  `id` =$id; ");addlog( "修改幻灯栏目$id",$_SESSION['admin_user'] );done('修改成功','navNewsLi','closeCurrent');}if($action=='del_column'){$db->query( "DELETE FROM {$DB_dbprefix}links_columns WHERE id=$id; ");addlog( "删除幻灯$id",$_SESSION['admin_user'] );done('删除成功','navNewsLi','closeCurrent');}if($action=='alldel'){$db->query("DELETE  FROM  `{$DB_dbprefix}links` WHERE  `id` in ($ids) ");addlog( "批量删除友情链接",$_SESSION['admin_user'] );done('修改成功','','');exit();}if($action=='add'){$db->query( "INSERT INTO `{$DB_dbprefix}links` (`id`, `title`, `column`, `type`, `pic`, `permute`, `note`, `url`) VALUES (NULL, '$title', '$column', '$type', '$pic', '$permute','$note', '$url');");addlog( "添加幻灯片",$_SESSION['admin_user'] );done('操作成功','navNewsLi','closeCurrent');}if($action=='edit'){$db->query( "UPDATE  `{$DB_dbprefix}links` SET  `title` =  '$title',`column` =  '$column',`type` =  '$type',`pic` =  '$pic',`note` =  '$note',`permute` = '$permute',`url` =  '$url' WHERE  `id` =$id;");addlog( "修改幻灯片",$_SESSION['admin_user'] );done('操作成功','navNewsLi','closeCurrent');}if($action=='del'){$db->query( "DELETE FROM {$DB_dbprefix}links WHERE id=$id; ");addlog( "删除幻灯$id",$_SESSION['admin_user'] );done('删除成功','','');}if($action=='add_column'){$db->query( "INSERT INTO  `{$DB_dbprefix}links_columns` (`title`,`note`)VALUES ('$title','$note');");addlog( "添加幻灯片栏目",$_SESSION['admin_user'] );done('操作成功','navNewsLi','closeCurrent');}?>