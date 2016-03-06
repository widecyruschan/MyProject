<?php
/*
* @Multi-Language Enterprise Content Management System
*/
error_reporting(E_ERROR | E_WARNING | E_PARSE);
header("Content-type:text/html; charset=utf-8"); 
define('CMSROOT',str_replace('\\','/',substr(dirname(__FILE__),0,-12)));
define('CMSINC',CMSROOT.'/inc');
define('DEBUGGING',0); 
version_compare(phpversion(),'5','<') && die('本系统必须 PHP 5.0 或以上版本支持。<a href="phpinfo.php" target="_blank">查看当前服务器版本</a>');
@set_time_limit(1000);
require_once(CMSROOT.'/inc/config/db.config.php');
require_once(CMSROOT.'/inc/class/db.class.php');
require_once(CMSROOT.'/inc/include/common.func.php');
$step = numeric($_GET['step']);
($step < 1 || $step > 7) && $step = 1;
?> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link rel="stylesheet" type="text/css" href="images/style.css" />
<script type="text/javascript" src="images/script.js"></script>
<title>MYCMS 安装向导</title>
</head>
<body>
<div class="header"></div>
<div class="box">
	<div class="sidebar">
		<div class="logo"></div>
		<div class="step">
			<?php if($step > 1){ echo '<ul class="ok">'; } elseif ($step == 1){ echo '<ul class="current">'; } else { echo '<ul>'; }?>
				<li class="imge"></li>
				<li class="name">1、软件使用授权许可协议</li>
			</ul>
			<?php if($step > 2){ echo '<ul class="ok">'; } elseif ($step == 2){ echo '<ul class="current">'; } else { echo '<ul>'; }?>
				<li class="imge"></li>
				<li class="name">2、环境以及文件目录权限检查</li>
			</ul>
			<?php if($step > 3){ echo '<ul class="ok">'; } elseif ($step == 3){ echo '<ul class="current">'; } else { echo '<ul>'; }?>
				<li class="imge"></li>
				<li class="name">3、数据库连接参数设置</li>
			</ul>
			<?php if($step > 4){ echo '<ul class="ok">'; } elseif ($step == 4){ echo '<ul class="current">'; } else { echo '<ul>'; }?>
				<li class="imge"></li>
				<li class="name">4、执行数据库安装</li>
			</ul>
			<?php if($step > 5){ echo '<ul class="ok">'; } elseif ($step == 5){ echo '<ul class="current">'; } else { echo '<ul>'; }?>
				<li class="imge"></li>
				<li class="name">5、安装系统模块及附加数据</li>
			</ul>
			<?php if($step > 6){ echo '<ul class="ok">'; } elseif ($step == 6){ echo '<ul class="current">'; } else { echo '<ul>'; }?>
				<li class="imge"></li>
				<li class="name">6、创建管理员及系统配置</li>
			</ul>
			<?php if($step >= 7){ echo '<ul class="ok">'; } else { echo '<ul>'; }?>
				<li class="imge"></li>
				<li class="name">7、更新设置，完成安装</li>
			</ul>
		</div>
	</div>
	<div class="main">
		<div class="bg_center">
			<div class="bg_left">
				<div class="bg_right">
					<div class="content"><?php require_once("include/step{$step}.php"); ?></div>
				</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>