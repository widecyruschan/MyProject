<?phpinclude( "inc/header.php" );login_check();echo "<link href=\"style/default.css\" rel=\"stylesheet\" type=\"text/css\" />\r\n<style type=\"text/css\">\r\n<!--\r\nbody { margin:0px;background-color: #eff7fd;}\r\n-->\r\n</style>\r\n";if ( !isset( $_GET['action'] ) ){				$GLOBALS['_GET']['action'] = "up";}if ( $_GET['action'] == "read" ){				$savePath = "../Slide/";				if ( function_exists( "date_default_timezone_set" ) )				{								date_default_timezone_set( "Hongkong" );				}				$pic = date( "YmdHis" );				$str = $pic;				if ( $_FILES['file']['name'] != "" )				{								$tmp_file = $_FILES['file']['tmp_name'];								$file_types = explode( ".", $_FILES['file']['name'] );								$file_type = $file_types[count( $file_types ) - 1];								if ( strtolower( $file_type ) != "jpg" & strtolower( $file_type ) != "gif" & strtolower( $file_type ) != "bmp" & strtolower( $file_type ) != "png" )								{												echo "格式错误请重新上传<a href=# onclick=history.go(-1);>[返回]</a>";												exit( );								}								$file_name = $str.".".$file_type;								if ( !copy( $tmp_file, $savePath.$file_name ) )								{												$meg = $file_name."上传错误请重试！！";								}								else								{												$meg = $file_name;												echo "<font color=red>上传成功</font><script>parent.document.form.images.value=\"Slide/".$meg."\"</script>";								}				}				else				{								echo "<font color=red>请选择需要上传的文件<a href=# onclick=history.go(-1);>[返回]</a></font>";				}}if ( $_GET['action'] == "up" ){				echo "<form action=\"UploadS.php?action=read\" method=\"post\" enctype=\"multipart/form-data\">\r\n<input name=\"file\" type=\"file\"  size=\"40\"> \r\n<input name=\"Submit\" type=\"submit\" value=\"上传\">\r\n</form>\r\n";}?>