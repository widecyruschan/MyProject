<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$pic['title']:}</title>

<meta name="keywords" content="{:$pic['keyword']:}" />
<meta name="description" content="{:$pic['introduction']:}" />
<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/photo.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
<script type="text/javascript" src="inc/script/hd_pics.js"></script>
<script type="text/javascript">
var PICS_FILE = {:$pic['img_jsstring']:}; var PICS_DESCRIPTION = {:$pic['des_jssering']:};
</script>
</head>
<body class="show_body">
<div class="show_top">
	<ol class="logo"><img src="{:$web['logo']:}" height="35" /></ol>
	<ol class="location">{:$lang['page']['location']:}<a href="./">{:$lang['page']['home']:}</a> &gt;&gt; <a href="{:misc::get_url('channel',3,$mycms['channel_id']):}">{:$pic['channel']:}</a> &gt;&gt; {:category::cid2name($pic['category_id'],' &gt;&gt; ',true):} &gt;&gt; {:$lang['page']['main']:}</ol>
	<ol class="right">
		<a href="./">{:$lang['page']['home']:}</a> |
		{:if $mycms['is_login']:}<a href="member/center.php">{:$mycms['user']['username']:}</a> | <a href="member/login.php?action=logout">{:$lang['common']['logout']:}</a>
		{:else:}<a href="{:misc::url('login'):}">{:$lang['common']['login']:}</a> |	<a href="{:misc::url('register'):}">{:$lang['common']['register']:}</a>{:/if:}
		{:foreach category::data(3,$pic['channel_id'],0,1) as $n:} | <a href="{:$n['URL']:}">{:$n['title']:}</a>{:/foreach:}
	</ol>
</div>
<div class="show_title">{:$pic['title']:}</div>
<table class="show_misc">
	<tr>
		<td>{:$lang['page']['tips']:}</td>
		<td>{:$lang['page']['hits']:}<script type="text/javascript" src="app.php?a=hits&type=2&id={:$pic['id']:}&show=1"></script></td>
		<td>{:$lang['page']['published']|cat:$pic['addtime']:}</td>
		<td class="show_number"><span class="index_current">1</span>/{:count($pic['picture']):}</td>
	</tr>
</table>
<table align="center" class="show_display">
	<tr>
		<td align="center" colspan="2" class="image_td">
			<img id="index_img" src="{:$pic['picture'][1]:}" usemap="#map" border="0" /><a href="javascript:mycms.pics.click_left()"><img id="arrow_left" src="{:$web['path']:}images/arrow_left.png" onfocus="this.blur()" border="0" /></a><a href="javascript:mycms.pics.click_right()"><img id="arrow_right" src="{:$web['path']:}images/arrow_right.png" onfocus="this.blur()" border="0" /></a>
			<map name="map" id="map">
				<area shape="rect" coords="0,0,400,300" id="map_left" href="javascript:mycms.pics.click_left()" onfocus="this.blur()" />
				<area id="map_right" shape="rect" coords="400,0,800,300" href="javascript:mycms.pics.click_right()" onfocus="this.blur()" />
			</map>
		</td>
	</tr>
	<tr>
		<td id="index_description"></td>
		<td class="show_number"><span class="index_current">1</span>/{:count($pic['picture']):}</td>
	</tr>
</table>
<div class="show_content">
	<ol class="content">{:$pic['content']:}</ol>
	<ol class="related">
		{:$lang['page']['similar_prev']:}{:if $pic['data_prev']['title']:}<a href="{:$pic['data_prev']['URL']:}" title="{:$pic['data_prev']['title']:}">{:$pic['data_prev']['title']:}</a>{:else:}<em>NULL</em>{:/if:}<br />
		{:$lang['page']['similar_next']:}{:if $pic['data_next']['title']:}<a href="{:$pic['data_next']['URL']:}" title="{:$pic['data_next']['title']:}">{:$pic['data_next']['title']:}</a>{:else:}<em>NULL</em>{:/if:}
	</ol>
</div>
<div class="show_footer">
	Copyright © 2010-2011 MYCMS. All Rights Reserved.<br />
	<a target="_blank" href="http://www.CyrusChanHK.com">Powered by MYCMS {:$mycms['version']:} {:$mycms['edition']:}</a>
</div>
</body>
</html>