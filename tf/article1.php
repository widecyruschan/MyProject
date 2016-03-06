<?php
defined('MODCODE') or define('MODCODE','MO001x'); 
require_once(dirname(__FILE__).'/inc/include/header.php');
$page_limit = false; 
$channel = channel::show(MODCODE,$_GET['pid']); 
isset($channel['id']) or error(404);
$template_file = "article1"; 
if(!empty($channel['permission'])){
	switch(member::browse($channel['id'])){
		case 2 : break; 
		case 0 : HTML_MAKE_MODE ? ($page_limit = true) : msgbox($language['page']['logged'],$config['url'].'member/login.php?goto='.base64_encode($_SEfRVER['REQUEST_URI'])); break; 
		case 1 : HTML_MAKE_MODE ? ($page_limit = true) : msgbox($language['page']['permissions'],$config['url']); break; 
		default: die('Undefined Options.'); break;
	}
}
$mycms['channel'] = $channel;
$mycms['channel_id'] = $channel['id']; 
$mycms['channel_title'] = $channel['title']; 
require_once(CMSINC.'/include/footer.php');
if(HTML_MAKE_MODE){
	$html = new html();
	$static_path = empty($channel['pathhome']) ? 'html/{PID}/index.html' : $channel['pathhome'];
	$static_path = str_replace(array('{L}','{PID}'),array(LANG,$channel['id']),$static_path);
	if($page_limit === false){
		$content = $MYCMS->fetch($template_file); 
		$page_data = $MYCMS->getTemplateVars('page_data');	
		
		if(is_numeric($page_data['total_page']) && $page_data['total_page'] > 1){
			if($page_data['page'] == 1){
				$html_url_head = $config['url'].$PHP_SELF.'?pid='.$channel['id'].'&page=';
				$html_make_file = array();
				for($i=2; $i<=$page_data['total_page']; $i++){ $html_make_file[] = $i; }
				$html->create_tmp($html_make_file,9,$html_url_head);
			}
			$page_data['page'] > 1 && $static_path = substr($static_path,0,-5).'-'.$page_data['page'].'.html'; 
		}
	} else {
		$content = $html->limit2php($config['url'].$PHP_SELF.'?pid='.$channel['id']);
	}
	$html->make($content,$static_path);
}