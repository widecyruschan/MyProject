<?php
require_once(dirname(__FILE__).'/header.php');
$language['page']['title'] = is_numeric($_GET['fid']) ? $language['page']['title'][1]:$language['page']['title'][0]; 
$mycms['channel_show'] = true; 
$mycms['id']=$_GET['id'];
$mycms['fid']=$_GET['fid'];
$action=$_POST['action'];
$mycms['fields']['items_'] = 2; 
if(!is_numeric($_GET['fid'])){
	$mycms['action'] = 'add'; 
	$mycms['fields'] = array(); 
} else {
	$mycms['action'] = 'update'; 
	$mycms['fields'] = array(); 
	$mycms['channel_show'] = false;
	$sql = "SELECT * FROM `{$DB['prefix']}fields` WHERE `fid` = {$_GET['fid']} LIMIT 1";
	if(!$mycms['fields'] = $db->query($sql,1)){
		msgbox($language['page']['nodata'],'BACK');	
	}
}

if($action == 'add'){
	is_numeric($_GET['id']) or msgbox($language['page']['select_channel'],'BACK'); 
	$thenewfields = array(
			'channelID' => $_GET['id'],
			'fieldsname' => $_POST['fieldsname'],
			'fields' => $_POST['fields'],
			'fieldstype' => $_POST['fieldstype'],
			'fieldslong' => $_POST['fieldslong'],
			'selects' => $_POST['selects'],
			'fieldshow' => is_numeric($_POST['fieldshow']) ? $_POST['fieldshow']:1,
			'fieldorder' => $_POST['fieldorder'],
			'issubmit' => is_numeric($_POST['issubmit']) ? $_POST['issubmit']:1,
			'lists' => is_numeric($_POST['lists']) ? $_POST['lists']:1 ,
			'types' => '',
		);
		$TableName=getCLassTable($thenewfields['channelID']);
		if(!$db->execute("SELECT * FROM {$DB['prefix']}fields WHERE `fields` = '".$thenewfields['fields']."'")){
			msgbox('字段标识'.$thenewfields['fields'].'已存在，请重新输入，可在字段后加数字区别','BACK'); 
		}else{
		$fsql="ALTER TABLE {$DB['prefix']}".$TableName."_field ADD ".$thenewfields['fields']." ";
		$fsql.=characterStype($thenewfields['fieldstype'],$thenewfields['fieldslong']);
		if($thenewfields['fieldstype']!="varchar"){$thenewfields['fieldslong']=0;}
		if($thenewfields['fieldstype']!="select" && $thenewfields['fieldstype']!="checkbox"){$thenewfields['selects']='';}
		$db1 = new db();
		if(!$db1->execute($fsql)){msgbox("字段入库失败，请手工删除 {$DB['prefix']}".$TableName."_field 表下的".$thenewfields['fields']."字段后重新提交",'BACK'); }
		}
		$sql = "INSERT INTO `{$DB['prefix']}fields`(`channelID`,`fieldorder`,`fields`,`fieldshow`,`fieldslong`,`fieldsname`,`fieldstype`,`issubmit`,`lists`,`selects`,`types`) VALUES ({$thenewfields['channelID']},{$thenewfields['fieldorder']},'{$thenewfields['fields']}',{$thenewfields['fieldshow']},{$thenewfields['fieldslong']},'{$thenewfields['fieldsname']}','{$thenewfields['fieldstype']}',{$thenewfields['issubmit']},{$thenewfields['lists']},'{$thenewfields['selects']}','{$thenewfields['types']}');";

	if($db->execute($sql)){
		msgbox($language['common']['successful'].($pic_info == '' ? '' : '，'.$pic_info),'fields_manage.php?id='.$mycms['id']); 
	} else { 
		msgbox($language['common']['failed'],'BACK'); 
	}
}
if($_POST['action'] == 'update' && is_numeric($_GET['fid'])){
	is_numeric($_GET['id']) or msgbox($language['page']['select_channel'],'BACK'); 
	$thenewfields = array(
			'channelID' => $_GET['id'],
			'FID' => $_GET['fid'],
			'fieldsname' => $_POST['fieldsname'],
			'oldfields' => $_POST['oldfields'],
			'fields' => $_POST['fields'],
			'fieldstype' => $_POST['fieldstype'],
			'fieldslong' => $_POST['fieldslong'],
			'selects' => $_POST['selects'],
			'fieldshow' => is_numeric($_POST['fieldshow']) ? $_POST['fieldshow']:1,
			'fieldorder' => $_POST['fieldorder'],
			'issubmit' => is_numeric($_POST['issubmit']) ? $_POST['issubmit']:1,
			'lists' => is_numeric($_POST['lists']) ? $_POST['lists']:1 ,
			'types' => '',
		);
		$TableName=getCLassTable($thenewfields['channelID']);
		if(!$db->execute("SELECT * FROM {$DB['prefix']}fields WHERE `fields` = '".$thenewfields['fields']."'")){
			msgbox('字段标识'.$thenewfields['fields'].'已存在，请重新输入，可在字段后加数字区别','BACK'); 
		}else{
				$fsql="ALTER TABLE {$DB['prefix']}".$TableName."_field change ".$thenewfields['oldfields']." ".$thenewfields['fields']." ";
				$fsql.=characterStype($thenewfields['fieldstype'],$thenewfields['fieldslong']);
				if($thenewfields['fieldstype']!="varchar"){$thenewfields['fieldslong']=0;}
				if($thenewfields['fieldstype']!="select" && $thenewfields['fieldstype']!="checkbox"){$thenewfields['selects']='';}
				$db1 = new db();
				if(!$db1->execute($fsql)){msgbox("字段入库失败，请手工删除 {$DB['prefix']}".$TableName."_field 表下的".$thenewfields['oldfields']."字段后重新提交",'BACK');}
		}
		$sql = "UPDATE `{$DB['prefix']}fields` set `channelID`={$thenewfields['channelID']},`fieldorder`={$thenewfields['fieldorder']},`fields`='{$thenewfields['fields']}',`fieldshow`={$thenewfields['fieldshow']},`fieldslong`={$thenewfields['fieldslong']},`fieldsname`='{$thenewfields['fieldsname']}',`fieldstype`='{$thenewfields['fieldstype']}',`issubmit`={$thenewfields['issubmit']},`lists`={$thenewfields['lists']},`selects`='{$thenewfields['selects']}',`types`='{$thenewfields['types']}' where fid={$thenewfields['FID']}";

	if($db->execute($sql)){
		msgbox($language['common']['successful'],"fields_manage.php?id={$thenewfields['channelID']}"); 
	} else { 
		msgbox($language['common']['failed'],'BACK'); 
	}
}
function characterStype($fieldstype,$fieldslong){
	
	switch ($fieldstype) {
					case 'varchar':
						$fieldstype="VARCHAR(".$fieldslong.") CHARACTER SET utf8 default NULL";
						break;
					case 'text':
						$fieldstype="TEXT CHARACTER SET utf8 default NULL";
						break;
					case 'int':
						$fieldstype="INT(10) DEFAULT '0' NOT NULL";
						break;
					case 'decimal':
						$fieldstype="DECIMAL(10,2) UNSIGNED DEFAULT '0.00' NOT NULL";
						break;
					case 'time':
						$fieldstype="INT(10) DEFAULT '0' NOT NULL";
						break;
					case 'files':
						$fieldstype="CHAR(255) CHARACTER SET utf8 default NULL";
						break;
					case 'fileall':
						$fieldstype="TEXT CHARACTER SET utf8 default NULL";
						break;
					case 'select':
						$fieldstype="CHAR(30) CHARACTER SET utf8 default NULL";
						break;
					case 'checkbox':
						$fieldstype="CHAR(200) CHARACTER SET utf8 default NULL";
						break;
				}
				return $fieldstype;
}
require_once(ADMIN_PATH.'/footer.php'); 
