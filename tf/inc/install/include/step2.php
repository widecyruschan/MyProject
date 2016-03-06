<?php
/*
* @Multi-Language Enterprise Content Management System
*/
defined('CMSROOT') or die('Access Denied');
$check_result = true; 
$func_items = array('mysql_connect','file_get_contents','xml_parser_create');
$check_file = array(
	'inc/config',
	'inc/config/db.config.php',
	'inc/config/version.config.php',
	'inc/config/globals.config.php',
	'inc/tmp',
	'inc/tmp/cache_frontend',
	'inc/tmp/other',
	'inc/tmp/sessions',
	'inc/tmp/translation_frontend',
	'inc/tmp/translation_manage',
	'inc/uploads',
	'inc/uploads/ad',
	'inc/uploads/article',
	'inc/uploads/avatar',
	'inc/uploads/category',
	'inc/uploads/ckeditor',
	'inc/uploads/download',
	'inc/uploads/links',
	'inc/uploads/other',
	'inc/uploads/picture',
	'inc/uploads/product',
	//'inc/tools/smartys/Smarty.class.php',
);
function is__writable($path){
    if($path{strlen($path)-1} == '/'){
        return is__writable($path.uniqid(mt_rand()).'.tmp');
	} elseif (is_dir($path)){
        return is__writable($path.'/'.uniqid(mt_rand()).'.tmp');
	}
	$fm = file_exists($path);
    $f = @fopen($path,'a');
    if($f === false){
        return false;
	}
    fclose($f);
    $fm or @unlink($path);
    return true;
}
function status($is = 1){
	global $check_result;
	if($is == 1){
		$img = 'ok.png';
		$alt = '可以安装';
	} elseif ($is == 2){
		$img = 'tips.png';
		$alt = '可以安装，但部分功能会受到影响';
	} else {
		$img = 'not.png';
		$alt = '无法运行MYCMS，必须修正';
		$check_result = false;
	}
	echo '<img src="images/'.$img.'" width="14" border="0" alt="'.$alt.'" title="'.$alt.'" />';
}
if(function_exists('gd_info') && extension_loaded('gd')){
	$gd_version = gd_info();
	$gd_version = preg_replace('/[^0-9.]/','',$gd_version['GD Version']);
} else {
	$gd_version = false; 
}
function func_exists($fun){
	$ds = explode(',',get_cfg_var('disable_functions'));
	return function_exists($fun) && !in_array($fun,$ds);
}
?>
<br />
<strong> 1、服务器环境检测</strong>
<table width="100%" cellpadding="0" cellspacing="1" bgcolor="#DDDDDD" border="0">
	<tr>
		<th bgcolor="#EEEEEE" height="28">检测项目</th>
		<th bgcolor="#EEEEEE">所需配置</th>
		<th bgcolor="#EEEEEE">推荐配置</th>
		<th bgcolor="#EEEEEE">当前服务器</th>
		<th bgcolor="#EEEEEE">结果</th>
	</tr>
	<tr>
		<td bgcolor="#FFFFFF" align="center" height="28">操作系统</td>
		<td bgcolor="#FFFFFF" align="center">不限制</td>
		<td bgcolor="#FFFFFF" align="center">类Unix</td>
		<td bgcolor="#FFFFFF" align="center"><?php echo PHP_OS;?></td>
		<td bgcolor="#FFFFFF" align="center"><?php status(1);?></td>
	</tr>
	<tr>
		<td bgcolor="#FFFFFF" align="center" height="28">PHP版本</td>
		<td bgcolor="#FFFFFF" align="center">5.0 +</td>
		<td bgcolor="#FFFFFF" align="center">5.2 +</td>
		<td bgcolor="#FFFFFF" align="center"><?php echo PHP_VERSION;?></td>
		<td bgcolor="#FFFFFF" align="center"><?php PHP_VERSION < 5.0 ? status(0) : status(1);?></td>
	</tr>
	<tr>
		<td bgcolor="#FFFFFF" align="center" height="28">附件上传</td>
		<td bgcolor="#FFFFFF" align="center">不限制</td>
		<td bgcolor="#FFFFFF" align="center">2M</td>
		<td bgcolor="#FFFFFF" align="center"><?php echo @ini_get('upload_max_filesize'); ?></td>
		<td bgcolor="#FFFFFF" align="center"><?php status(1);?></td>
	</tr>
	<tr>
		<td bgcolor="#FFFFFF" align="center" height="28">GD 库</td>
		<td bgcolor="#FFFFFF" align="center">2.0.1 +</td>
		<td bgcolor="#FFFFFF" align="center">2.0.34</td>
		<td bgcolor="#FFFFFF" align="center"><?php echo $gd_version ? $gd_version : '不支持';?></td>
		<td bgcolor="#FFFFFF" align="center"><?php round($gd_version) >= 2 ? status(1) : status(2);?></td>
	</tr>
	<tr>
		<td bgcolor="#FFFFFF" align="center" height="28">函数依赖性检测</td>
		<td bgcolor="#FFFFFF" colspan="4">&nbsp;&nbsp;<?php foreach ($func_items as $f){ echo $f.'()&nbsp;'; func_exists($f) ? status(1) : status(0); echo '&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;';} ?></td>
	</tr>
	<tr>
		<td bgcolor="#FFFFFF" align="center" height="28">&nbsp;服务器禁用的函数&nbsp;</td>
		<td bgcolor="#FFFFFF" colspan="4" style="word-break:break-all; width:480px; padding:0 5px;"><?php $disFuns = get_cfg_var('disable_functions'); echo empty($disFuns) ? '无' : $disFuns; ?></td>
	</tr>
</table>
<br />
<strong>2、目录、文件权限检测</strong>
<table width="100%" cellpadding="0" cellspacing="1" bgcolor="#DDDDDD" border="0">
	<tr>
		<th bgcolor="#EEEEEE" height="28">文件或目录</th>
		<th bgcolor="#EEEEEE" width="70">写入权限</th>
	</tr>
	<?php foreach($check_file as $n){?>
	<tr>
		<td bgcolor="#FFFFFF" height="28">&nbsp;&nbsp;&nbsp;<?php echo $n;?></td>
		<td bgcolor="#FFFFFF" align="center"><?php echo is__writable(CMSROOT.'/'.$n) ? status(1) : status(0);?></td>
	</tr>
	<?php }?>
</table>
<table width="100%"><tr>
<td width="80" height="80">&nbsp;</td>
<td align="center"><a href="index.php?step=1" onfocus="this.blur()"><img src="images/button_prev.png" width="112" height="35" /></a></td>
<td align="center">
	<?php if($check_result){?><a href="index.php?step=3" onfocus="this.blur()"><img src="images/button_next.png" width="112" height="35" /></a>
	<?php } else {?><a href="index.php?step=2&<?php echo time();?>" onfocus="this.blur()"><img src="images/button_refresh.png" width="112" height="35" /></a><?php }?>
</td>
<td width="80">&nbsp;</td>
</tr></table>