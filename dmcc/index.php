<?php define('CMSROOT',dirname(__FILE__));
require_once(CMSROOT.'/inc/include/header.php');
if($config['static'] == 2 && empty($_GET)){ header("Location:{$web['all_data'][LANG]['static']}"); exit(); } 
if($config['home'] != 'index.php' && empty($_GET)){	header("Location:{$config['home']}"); exit(); }
$mycms['channel_id'] = 1; 
require_once(CMSINC.'/include/footer.php');
if(HTML_MAKE_MODE){
	$html = new html();
	$html->make($MYCMS->fetch($template_file),empty($web['static']) ? (LANG.'/index.html') : $web['static']);
}?>
