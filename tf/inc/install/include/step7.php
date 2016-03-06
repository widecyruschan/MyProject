<?php
/*
* @Multi-Language Enterprise Content Management System
*/
defined('CMSROOT') or die('Access Denied');
require_once(CMSROOT.'/inc/config/globals.config.php');
?>
<div class="unresult" id="unresult">
	正在删除安装文件，请稍候 …<br />
	如果长时间没有反应，请手动删除安装目录：inc/install<br />
	在没有删除安装目录前您将无法访问网站。<br />
	网站首页访问地址：<a target="_blank" href="../../"><?php echo $config['url']; ?></a><br />
	系统后台登录地址：<a target="_blank" href="../../admin"><?php echo $config['url']; ?>admin/</a>	
</div>
<!-- 安装文件删除成功消息内容 -->
<div class="hide" id="success">
	<strong>恭喜您，MYCMS 安装成功。</strong><br />
	接下来可以开始您愉快的建站之旅了。<br />
	网站首页访问地址：<a target="_blank" href="../../"><?php echo $config['url']; ?></a><br />
	系统后台登录地址：<a target="_blank" href="../../admin"><?php echo $config['url']; ?>admin/</a>
</div>
<!-- 安装文件删除失败消息内容 -->
<div class="hide" id="failure">
	<font color="#FF0000">程序尝试删除安装数据失败，请手动删除安装目录：inc/install</font><br />
	在没有删除安装目录前您将无法访问网站。<br />
	网站首页访问地址：<a target="_blank" href="../../"><?php echo $config['url']; ?></a><br />
	系统后台登录地址：<a target="_blank" href="../../admin"><?php echo $config['url']; ?>admin/</a>
</div>
<script type="text/javascript">
<?php
if(@remove_dir(MLEINC.'/install')){
	echo 'document.getElementById(\'unresult\').innerHTML = document.getElementById(\'success\').innerHTML;';
} else {
	echo 'document.getElementById(\'unresult\').innerHTML = document.getElementById(\'failure\').innerHTML;';
}
?>
</script>