<?phpout();$id=verify_id($_POST['id']);$web_url =  str_check($_POST['web_url']);$web_name =  str_check($_POST['web_name']);$web_logo =  str_check($_POST['web_logo']);$web_keywords =  str_check($_POST['web_keywords']);$web_description =  str_check($_POST['web_description']);$PHPCMS_key =  str_check($_POST['PHPCMS_key']);$tel =  str_check($_POST['tel']);$editor_style =  str_check($_POST['editor_style']);$address =  str_check($_POST['address']);$icp =  str_check($_POST['icp']);$web_html_mode =  str_check($_POST['web_html_mode']);$skin_dir =  str_check($_POST['skin_dir']);$skin_cache =  str_check($_POST['skin_cache']);$web_html_dir =  str_check($_POST['web_html_dir']);$web_html_name =  str_check($_POST['web_html_name']);$web_dir =  str_check($_POST['web_dir']);$upfile =  str_check($_POST['upfile']);delindexhtml( $id,$web_html_mode );$db->query("UPDATE  `{$DB_dbprefix}config` SET  `web_url` =  '{$web_url}',`web_name` =  '{$web_name}',`web_logo` =  '{$web_logo}',`web_keywords` =  '{$web_keywords}',`web_description` =  '{$web_description}',`PHPCMS_key` =  '{$PHPCMS_key}',`tel` =  '{$tel}',`icp` =  '{$icp}',`web_html_mode` =  '{$web_html_mode}',`skin_dir` =  '{$skin_dir}',`skin_cache` =  '{$skin_cache}',`web_html_dir` =  '{$web_html_dir}',`web_html_name` =  '{$web_html_name}',`web_dir` =  '{$web_dir}',`upfile` =  '{$upfile}',`editor_style` =  '{$editor_style}',`address` =  '{$address}' WHERE  `{$DB_dbprefix}config`.`id` =$id ;");addlog( "修改网站配置",$_SESSION['admin_user'] );done('操作成功','','');?>