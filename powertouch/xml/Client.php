<?phpinclude_once "../inc/config.php";include_once "../inc/config_db.php";$db->query( "select * from `{$DB_dbprefix}client` where indexshow=1" );echo "<?xml version='1.0' encoding='utf-8' ?>";echo "<gallery>";while( $db->next_record( )){echo "<Client link=\"".$db->Record['id']."\" filename=\"".$webdir."upfile/".$db->Record['photo']."\" imgtitle=\"".$db->Record['title']."\"/>";}echo "</gallery>";?>