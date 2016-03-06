<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$lang['page']['title']:}</title>

<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/member.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
<script type="text/javascript" src="inc/script/swfobject.js"></script>
<script type="text/javascript">
$(function(){swfobject.embedSWF('inc/images/camera.swf?{:$mycms['swf_param']:}','avatar','451','253','7','',{},{bgcolor:'#EEEEEE'});});
function updateavatar(){window.location.reload();} // 上传成功执行函数
//function updateavatar(){location = 'member/avatar.php?{:time():}';}
</script>
</head>
<body>
{:include file='component_header.tpl':}
<div class="box">
	<div class="frame_side">
		{:include file='component_manage.tpl':}
	</div>
	<div class="frame_main">
		<div class="titlebar">
			<ol class="title">{:$lang['page']['title']:}</ol>
			<ol class="location">
				{:$lang['page']['location']:}<a href="./">{:$lang['page']['home']:}</a> &gt;&gt;
				<a href="member/center.php">{:$lang['page']['center']:}</a> &gt;&gt;
				{:$lang['page']['title']:}
			</ol>
		</div>
				
		<div class="heading">{:$lang['page']['current']:}</div>
		<div class="explain">{:$lang['page']['current_explain']:}</div>
		<div class="avatar_img">
			<ol><img src="{:member::get_avatar($mycms['user']['id'],3,$mycms['user']['jointime']):}" /></ol>
			<ol><img src="{:member::get_avatar($mycms['user']['id'],2,$mycms['user']['jointime']):}" /></ol>
			<ol><img src="{:member::get_avatar($mycms['user']['id'],1,$mycms['user']['jointime']):}" /></ol>
		</div>
		
		<div class="caption timeline">
			<ol class="heading">{:$lang['page']['newimage']:}</ol>
		</div>
		<div class="explain">{:$lang['page']['newimage_explain']:}</div>
		<div class="avatar_swf"><ol id="avatar"></ol></div>
		{:include file='component_page_style.tpl':}
	</div>
</div>
{:include file='component_footer.tpl':}
</body>
</html>