<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$web['title']:}</title>

<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/search.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
</head>
<body>
<div class="top{:if $mycms['search_keyword'] == '':} nosearch{:/if:}">
	<div class="logo"><img src="{:$web['logo']:}" /></div>
	<div class="form">
		<div class="type">
			<a href="{:$mycms['search_type_url']:}1"{:if $mycms['search_type'] == 1:} class="current"{:/if:}>{:$lang['page']['type'][0]:}</a>　
			<a href="{:$mycms['search_type_url']:}2"{:if $mycms['search_type'] == 2:} class="current"{:/if:}>{:$lang['page']['type'][1]:}</a>　
			<a href="{:$mycms['search_type_url']:}3"{:if $mycms['search_type'] == 3:} class="current"{:/if:}>{:$lang['page']['type'][2]:}</a>　
			<a href="{:$mycms['search_type_url']:}4"{:if $mycms['search_type'] == 4:} class="current"{:/if:}>{:$lang['page']['type'][3]:}</a>
		</div>
		<div class="input">
		<form name="search" method="get" action="">
			<ol class="word"><input type="text" name="word" value="{:$mycms['search_keyword']:}" maxlength="30" /></ol>
			<ol class="submit"><input type="submit" name="" value="{:$lang['page']['submit']:}" /><input type="hidden" name="type" value="{:$mycms['search_type']:}" /></ol>
		</form>
		</div>
	</div>
	<div class="login">
		<a href="./">{:$lang['page']['home']:}</a>&nbsp;&nbsp;|&nbsp;
		{:nocache:}{:if $mycms['is_login']:}<a href="member/center.php">{:$mycms['user']['username']:}</a>&nbsp;&nbsp;|&nbsp;&nbsp;<a href="member/login.php?action=logout">{:$lang['page']['logout']:}</a>{:else:}<a href="{:misc::url('login'):}">{:$lang['page']['login']:}</a>{:/if:}{:/nocache:}
	</div>
</div>
{:foreach $mycms['search_data'] as $i => $n:}
<div class="data">
	{:if file_exists($n['picture'][0]):}<div class="image"><ol><a target="_blank" href="{:$n['URL']:}" title="{:$n['title']:}"><img src="{:$n['picture'][0]:}" width="100" height="75" onload="mycms.img_auto_size(this)" alt="{:$n['title']:}" /></a></ol></div>{:/if:}
	<div class="cntent">
		<ol class="title"><a target="_blank" href="{:$n['URL']:}" title="{:$n['title']:}">{:$n['title_format']:}</a></ol>
		<ol class="text{:if $n['picture'][0] == '':} nophoto{:/if:}">{:$n['content_format']:}</ol>
		<ol class="url">{:$n['URL']:} &nbsp;&nbsp;&nbsp; {:$n['addtime']:} &nbsp;&nbsp;&nbsp; Hits:{:$n['click']:} {:if $mycms['search_is_tag']:}&nbsp;&nbsp;&nbsp; TAG:{:$n['tag']:}{:/if:}</ol>
	</div>
</div>
{:foreachelse:}
{:if $mycms['search_keyword'] != '':}<div class="notdata">{:str_replace('{#keyword}',$mycms['search_keyword'],$lang['page']['no_data']):}</div>{:/if:}
{:/foreach:}
{:if $mycms['search_data']:}{:include file='component_page_style.tpl':}{:/if:}
<div class="footer" {:if $mycms['search_keyword'] == '':}style="text-align:center;"{:/if:}>
	Copyright © 2010 <a target="_blank" href="http://www.CyrusChanHK.com">MYCMS</a>. All Rights Reserved.<br />
	{:nocache:}Processed in {:page_run_time():} second(s), {:db_query_count():} queries<br />{:/nocache:}
</div>
{:if $mycms['search_keyword'] != '' && count($mycms['search_data']) == $page_data['limit']:}<div class="ad">{:ad::show('search_right'):}</div>{:/if:}{:*<!--//// 当搜索结果满一页并且有搜索字符时显示广告 -->*:}
</body>
</html>