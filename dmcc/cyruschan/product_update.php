<?php
require_once(dirname(__FILE__).'/header.php');
$language['page']['title'] = is_numeric($_GET['id']) ? $language['page']['title'][1] : $language['page']['title'][0]; 
$mycms['channel_show'] = true;
$mycms['channelID']=isset($_GET['channel']) ? $_GET['channel'] :0; 
if(!is_numeric($_GET['id'])){
	$mycms['action'] = 'add'; 
	$mycms['product'] = array(); 
	$mycms['product']['items_'] = 2; 
	$sql = "SELECT * FROM `{$DB['prefix']}channel` WHERE `module` != '0' && `module` = 'MO002x' && `lang` = '".LANG."' ORDER BY `sort` ASC";
	$cat = $db->query($sql);
	if(count($cat) == 1){ 
		$mycms['channel_show'] = false;
		if(!isset($_GET['channel'])){
			header('Location: product_update.php?channel='.$cat[0]['id']);
			exit();
		}
	}	
	$mycms['product']['channel_text'] = empty($_GET['channel']) ? '<option selected="selected" value="">'.$language['page']['select_channel'].'</option>' : '<option value="product_update.php?channel=0">'.$language['page']['select_channel'].'</option>';
	foreach($cat as $n){
		$mycms['product']['channel_text'] .= $_GET['channel'] != $n['id'] ? '<option value="product_update.php?channel='.$n['id'].'">'.$n['title'].'</option>' : '<option selected="selected" value="">'.$n['title'].'</option>';
	}
	$mycms['product']['nexus_text'] = is_numeric($_GET['category']) ? '<option selected="selected" value="">'.$language['page']['select_category'].'</option>' : '<option value="">'.$language['page']['select_category'].'</option>';
	if(is_numeric($_GET['channel'])){
		$sql = "SELECT * FROM `{$DB['prefix']}category` WHERE `lang` = '".LANG."' && `channel` = '{$_GET['channel']}'";	
		$cat = category::order($db->query($sql));
		foreach($cat as $n){
			$inden = $n['level'] > 1 ? '├'.str_repeat('────',$n['level']-1) : '';
			$mycms['product']['nexus_text'] .= $_GET['category'] == $n['id'] ? '<option selected="selected" value="'.$n['nexus'].'">'.$inden.$n['title'].'</option>' : '<option value="'.$n['nexus'].'">'.$inden.$n['title'].'</option>';
		}
	}		
	$member_rank = member::rank();		
	$mycms['product']['permission_text'] = '<option value="0" selected>'.$language['page']['unlimited'].'</option>';
	foreach ($member_rank as $n){
		$mycms['product']['permission_text'] .= '<option value="'.$n['id'].'">'.$n['rankname'].'</option>';
	}
	require_once(CMSINC.'/config/picture.config.php');
	$mycms['product']['picture_config_js'] = $mycms['product']['picture_js'] = '';
	for($i=0; $i<30; $i++){ 
		if($i > 0){
			$mycms['product']['picture_config_js'] .= ',';
			$mycms['product']['picture_js'] .= ',';
		}
		$mycms['product']['picture_config_js'] .= '['.implode(',',$picture_config['MO002x'][($i>3 ? 3 : $i)]).']'; 
		$mycms['product']['picture_js'] .= "''"; 
	}
	$mycms['product']['bold'] = $mycms['product']['page'] = $mycms['product']['recom'] = $mycms['product']['permission'] = $mycms['product']['money'] = 
	$mycms['product']['integral'] = $mycms['product']['sort'] = $mycms['product']['market'] = $mycms['product']['price'] = $mycms['product']['inventory'] = 
	$mycms['product']['sales'] = $mycms['product']['favorite'] = $mycms['product']['page'] = $mycms['product']['virtual'] = 0;
	$mycms['product']['published'] = $mycms['product']['comment'] = $mycms['product']['audit'] = $mycms['product']['status'] = 1;
	$mycms['product']['click'] = rand(0,1000);
	$mycms['product']['addtime'] = date('Y-m-d',$gmt_time);
} else {
	$mycms['action'] = 'update'; 
	$mycms['product'] = array(); 
	$mycms['channel_show'] = false;
	$sql = "SELECT * FROM `{$DB['prefix']}product` WHERE `lang` = '".LANG."' && `id` = '{$_GET['id']}' LIMIT 1";
	if(!$mycms['product'] = $db->query($sql,1)){
		msgbox($language['page']['nodata'],'BACK');	
	}
	$mycms['product']['content'] = html_chars($mycms['product']['content']);
	$mycms['product']['nexus_text'] = '<option value="">'.$language['page']['select_category'].'</option>';
	$sql = "SELECT * FROM `{$DB['prefix']}category` WHERE `lang` = '".LANG."' && `channel` = '{$mycms['product']['channel']}'";	
	$cat = category::order($db->query($sql));
	foreach($cat as $n){
		$inden = $n['level'] > 1 ? '├'.str_repeat('────',$n['level']-1) : '';
		$mycms['product']['nexus_text'] .= $mycms['product']['category'] == $n['nexus'] ? '<option selected="selected" value="'.$n['nexus'].'">'.$inden.$n['title'].'</option>' : '<option value="'.$n['nexus'].'">'.$inden.$n['title'].'</option>';
	}
	$member_rank = member::rank();	
	$mycms['product']['permission_text'] = empty($mycms['product']['permission']) ? '<option value="0" selected>'.$language['page']['unlimited'].'</option>' : '<option value="0">'.$language['page']['unlimited'].'</option>';
	$darr = explode(',',$mycms['product']['permission']);
	foreach ($member_rank as $n){
		$mycms['product']['permission_text'] .= in_array($n['id'],$darr) ? '<option selected value="'.$n['id'].'">'.$n['rankname'].'</option>' : '<option value="'.$n['id'].'">'.$n['rankname'].'</option>';
	}
	require_once(CMSINC.'/config/picture.config.php');
	$mycms['product']['picture_config_js'] = $mycms['product']['picture_js'] = '';
	$mycms['product']['picture'] = explode(',',$mycms['product']['picture']); 
	$mycms['product']['items_'] = count($mycms['product']['picture']); 
	for($i=0; $i<30; $i++){ 
		if($i > 0){
			$mycms['product']['picture_config_js'] .= ',';
			$mycms['product']['picture_js'] .= ',';
		}
		$picture_config['MO002x'][$i][0] = $picture_config['MO002x'][$i][3] = 0; 
		$mycms['product']['picture_config_js'] .= '['.implode(',',$picture_config['MO002x'][($i>3 ? 3 : $i)]).']'; 
		$mycms['product']['picture_js'] .= "'".$mycms['product']['picture'][$i]."'"; 
	}	
	is_numeric($mycms['product']['addtime']) && $mycms['product']['addtime'] = date('Y-m-d',$mycms['product']['addtime']);	
}
if($action == 'add'){
	is_numeric($_GET['channel']) or msgbox($language['page']['select_channel'],'BACK'); 
	$content = $_POST['content']; 
	$_POST = html_chars($_POST); 
	$picture = is_array($_POST['picture_url']) ? implode(',',$_POST['picture_url']) : ''; 
	$permission = is_array($_POST['permission']) ? (in_array('0',$_POST['permission']) ? '0' : implode(',',$_POST['permission'])) : 0; 
	$page_size = $_POST['page'] == 2 ? numeric($_POST['page_size']) : numeric($_POST['page']);
	$page_size >= 2 && $content = misc::content_add_page_break($content,$page_size); 
	$_POST['tag'] = str_replace('，',',',trim($_POST['tag'])); 
	$sql = "INSERT INTO `{$DB['prefix']}product`(`lang`,`channel`,`category`,`title`,`brief`,`color`,`bold`,`market`,`price`,`units`,`inventory`,`sales`,`brand`,`virtual`,
		`model`,`coding`,`speci`,`optional`,`status`,`favorite`,`tag`,`keyword`,`introduction`,`content`,`template`,`comment`,`picture`,`recom`,`published`,`audit`,
		`permission`,`filename`,`click`,`money`,`integral`,`buyuser`,`page`,`sort`,`publisher`,`addtime`) VALUES ('".LANG."','{$_GET['channel']}','{$_POST['category']}',
		'{$_POST['title']}','{$_POST['brief']}','{$_POST['color']}','".($_POST['bold'] == 1 ? 1 : 0)."','".(is_numeric($_POST['market']) ? $_POST['market'] : 0)."',
		'".(is_numeric($_POST['price']) ? $_POST['price'] : 0)."','{$_POST['units']}','".(is_numeric($_POST['inventory']) ? $_POST['inventory'] : 0)."',
		'".(is_numeric($_POST['sales']) ? $_POST['sales'] : 0)."','{$_POST['brand']}','".numeric($_POST['virtual'])."','{$_POST['model']}','{$_POST['coding']}','{$_POST['speci']}',
		'{$_POST['optional']}','".(is_numeric($_POST['status']) ? $_POST['status'] : 0)."','".(is_numeric($_POST['favorite']) ? $_POST['favorite'] : 0)."',
		'{$_POST['tag']}','{$_POST['keyword']}','{$_POST['introduction']}','{$content}','{$_POST['template']}','".($_POST['comment'] == 0 ? 0 : 1)."',
		'{$picture}','".($_POST['recom'] == 1 ? 1 : 0)."','".($_POST['published'] == 0 ? 0 : 1)."',	'".($_POST['audit'] == 1 ? 1 :0)."','{$permission}',
		'{$_POST['filename']}','".(is_numeric($_POST['click']) ? $_POST['click'] : 0)."','".(is_numeric($_POST['money']) ? $_POST['money'] : 0)."',
		'".(is_numeric($_POST['integral']) ? $_POST['integral'] : 0)."','{$_POST['buyuser']}','{$page_size}','".(is_numeric($_POST['sort']) ? $_POST['sort'] : 0)."',
		'{$_SESSION['admin']['login']['username']}','".date2time($_POST['addtime'])."');";
	if($db->execute($sql)){
		$id = $db->get_last_id();
		tag::update(explode(',',$_POST['tag']),'MO002x');
		$pic_info = '';
		foreach((array)$_POST['picture_url'] as $i => $n){
			$pics = new picture();
			$url = '../'.$n;
			if(is_file($url)){
				if($_POST['picture_cut'][$i] == 1){
					$pics->cut['file'] = $url;
					$pics->cut['width'] = $_POST['picture_width'][$i];
					$pics->cut['save_name'] = false;
					$pics->cut['height'] = $_POST['picture_height'][$i];
					$pics->cut() === true or $pic_info = $pics->info;	
				}
				if($_POST['picture_watermark'][$i] == 1){
					$pics->watermark['file'] = $url;
					$pics->watermark() === true or $pic_info = $pics->info;
				}
			}
		}
		admin::logs(2,$language['page']['title']."，{$language['common']['successful']}(id:{$id}){$pic_info}"); 
		$config['static'] == 2 && $_POST['make_html'] == '1' && admin::make_html(2,$id,'product_manage.php'); 
		msgbox($language['common']['successful'].($pic_info == '' ? '' : '，'.$pic_info),'product_manage.php'); 
	} else { 
		admin::logs(2,$language['page']['title']."，{$language['common']['failed']}"); 
		msgbox($language['common']['failed'],'BACK'); 
	}
}
if($action == 'update' && is_numeric($_GET['id'])){
	$content = $_POST['content']; 
	$_POST = html_chars($_POST); 
	$picture = is_array($_POST['picture_url']) ? implode(',',$_POST['picture_url']) : ''; 
	$permission = is_array($_POST['permission']) ? (in_array('0',$_POST['permission']) ? '0' : implode(',',$_POST['permission'])) : 0; 
	$page_size = $_POST['page'] == 2 ? numeric($_POST['page_size']) : numeric($_POST['page']);
	$page_size >= 2 && $content = misc::content_add_page_break($content,$page_size); 
	$_POST['tag'] = str_replace('，',',',trim($_POST['tag'])); 
	$sql = "UPDATE `{$DB['prefix']}product` SET `category` = '{$_POST['category']}',`title` = '{$_POST['title']}',`brief` = '{$_POST['brief']}',
		`color` = '{$_POST['color']}',`bold` = '".($_POST['bold'] == 1 ? 1 : 0)."',`market` = '".(is_numeric($_POST['market']) ? $_POST['market'] : 0)."',
		`price` = '".(is_numeric($_POST['price']) ? $_POST['price'] : 0)."',`units` = '{$_POST['units']}',`inventory` = '".(is_numeric($_POST['inventory']) ? $_POST['inventory'] : 0)."',
		`sales` = '".(is_numeric($_POST['sales']) ? $_POST['sales'] : 0)."',`brand` = '{$_POST['brand']}',`virtual` = '".numeric($_POST['virtual'])."',`model` = '{$_POST['model']}',`coding` = '{$_POST['coding']}',
		`speci` = '{$_POST['speci']}',`optional` = '{$_POST['optional']}',`status` = '".(is_numeric($_POST['status']) ? $_POST['status'] : 0)."',
		`favorite` = '".(is_numeric($_POST['favorite']) ? $_POST['favorite'] : 0)."',`tag` = '{$_POST['tag']}',`keyword` = '{$_POST['keyword']}',
		`introduction` = '{$_POST['introduction']}',`content` = '{$content}',`template` = '{$_POST['template']}',`comment` = '".($_POST['comment'] == 0 ? 0 : 1)."',
		`picture` = '{$picture}',`recom` = '".($_POST['recom'] == 1 ? 1 :0)."',`published` = '".($_POST['published'] == 0 ? 0 : 1)."',`audit` = '".($_POST['audit'] == 1 ? 1 : 0)."',
		`permission` = '{$permission}',`filename` = '{$_POST['filename']}',`click` = '".(is_numeric($_POST['click']) ? $_POST['click'] : 0)."',
		`money` = '".(is_numeric($_POST['money']) ? $_POST['money'] : 0)."',`integral` = '".(is_numeric($_POST['integral']) ? $_POST['integral'] : 0)."',`buyuser` = '{$_POST['buyuser']}',
		`page` = '{$page_size}',`sort` = '".(is_numeric($_POST['sort']) ? $_POST['sort'] : 0)."',`publisher` = '{$_SESSION['admin']['login']['username']}',
		`addtime` = '".date2time($_POST['addtime'])."' WHERE `id` = '{$_GET['id']}';";
	if($db->execute($sql)){
		tag::modify(explode(',',$mycms['product']['tag']),explode(',',$_POST['tag']),'MO002x');
		$pic_info = '';
		foreach((array)$_POST['picture_url'] as $i => $n){
			$pics = new picture();
			$url = '../'.$n;
			if(is_file($url)){
				if($_POST['picture_cut'][$i] == 1){
					$pics->cut['file'] = $url;
					$pics->cut['width'] = $_POST['picture_width'][$i];
					$pics->cut['save_name'] = false;
					$pics->cut['height'] = $_POST['picture_height'][$i];
					$pics->cut() === true or $pic_info = $pics->info;	
				}
				if($_POST['picture_watermark'][$i] == 1){
					$pics->watermark['file'] = $url;
					$pics->watermark() === true or $pic_info = $pics->info;
				}
			}
		}
				$fieldswhere=" fieldshow=1 and channelID=".$_GET['channel'];
		$v=$db->query("SELECT fields,fieldstype FROM `{$DB['prefix']}fields` WHERE ".$fieldswhere." order by  fieldorder DESC,fid;");
		$ii=0;
		if($v){
		foreach($v as $f){
			if($ii!=0){
				if($f['fieldstype']=='int'){
					 $detail.=','.$f['fields'].'='.$_POST[$f['fields']];	
				}
				elseif($f['fieldstype']=='time'){
					$detail.=','.$f['fields'].'=\''.strtotime($_POST[$f['fields']]).'\'';
				}else
				{
					$detail.=','.$f['fields'].'=\''.$_POST[$f['fields']].'\'';
				}
			}else{
				if($f['fieldstype']=='int'){
					 $detail=$f['fields'].'='.$_POST[$f['fields']];	
				}
				elseif($f['fieldstype']=='time'){
					$detail=$f['fields'].'=\''.strtotime($_POST[$f['fields']]).'\'';
				}else
				{
					$detail=$f['fields'].'=\''.$_POST[$f['fields']].'\'';
				}
			}
      $ii++;
		}
		$sqls ="UPDATE `{$DB['prefix']}product_field` set $detail where aid=".$id.";";
		$db1=new db();
		if($db1->execute($sqls)){
			admin::logs(3,$language['page']['title']."，{$language['common']['successful']}(id:{$id})"); 
			$config['static'] == 2 && $_POST['make_html'] == '1' && admin::make_html(2,$_GET['id'],'product_manage.php'); 
			msgbox($language['common']['successful'],'product_manage.php'); 
		} else {
			admin::logs(3,$language['page']['title']."，{$language['common']['failed']}"); 
			msgbox($language['common']['failed'],'BACK'); 
		}
		} else {
					admin::logs(3,$language['page']['title']."，{$language['common']['successful']}(id:{$id})"); 
					$config['static'] == 2 && $_POST['make_html'] == '1' && admin::make_html(1,$id,'article_manage.php'); 
					msgbox($language['common']['successful'],'article_manage.php'); 
		}
	} else {
		admin::logs(3,$language['page']['title']."，{$language['common']['failed']}"); 
		msgbox($language['common']['failed'],'BACK'); 
	}	
}
$mycms['units_often'] = $db->query("SELECT `units` FROM `{$DB['prefix']}product` WHERE `lang` = '".LANG."' && `units` != '' GROUP BY `units` ORDER BY COUNT(`units`) DESC LIMIT 0,20");
require_once(ADMIN_PATH.'/footer.php'); 
