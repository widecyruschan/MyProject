<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$web['title']:}</title>

<meta name="keywords" content="{:$web['keyword']:}" />
<meta name="description" content="{:$web['description']:}" />
<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<!--<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/home.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
-->
<link rel="stylesheet" type="text/css" href="/inc/templates/frontend/default/style/home.css" />
<link rel="stylesheet" type="text/css" href="/inc/templates/frontend/default/style/language_1.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
</head>
<body>
<div class="header box">
	{:nocache:}
	<div class="top">
		<div class="left">
			<ol class="logo"><a href="./"><img src="{:$web['logo']:}" border="0" /></a></ol>
			<ol class="weather">{:ad::show('weather'):}</ol>
		</div>
		<div class="right">
			<div class="rtop">
				<ul>
					<li>
						{:for $i=1; $i<=$config['lang_total']; $i++:}
						<a href="app.php?a=lang&i={:$i:}">{:if $web['all_data'][$i]['name']!='':}{:$web['all_data'][$i]['name']:}{:else:}{:$lang['common']['not_set']:}{:/if:}</a>{:if $i==1:}（<a title="點擊以繁體中文方式浏覽" id="StranLink" href="javascript:void(0);">繁體</a>）{:/if:} |
						{:/for:}
						<a href="cart.php">{:$lang['common']['cart']:}(<span id="cart_count">0</span>)</a> |
						<!-- 已登录 -->
						<span id="has_login"><a href="member/center.php"><span id="head_login_username"></span>{:$lang['common']['member_center']:}</a> | <a href="member/login.php?action=logout">{:$lang['common']['logout']:}</a></span>
						<!-- 未曾登录 -->
						<span id="no_login"><a href="{:misc::url('login'):}">{:$lang['common']['login']:}</a> |	<a href="{:misc::url('register'):}">{:$lang['common']['register']:}</a></span>
					</li>
				</ul>
			</div>
			<div class="rbottom">
				<div class="ad">{:ad::show('header'):}</div>
				<div class="service">
				  <ol class="people">
			      <img src="{:$web['path']:}images/services{:$web['lang']:}.gif" width="90" height="25" /><img src="{:$web['path']:}images/services.png" width="146" height="134" /></ol>
<ol class="tel">{:$web['phone'][0]:}</ol>
			  </div>
			</div>
		</div>
	</div>
	{:/nocache:}
	<div class="navigation"> {:foreach channel::navigation() as $n:} <a href="{:$n['URL']:}" target="{:$n['target']:}"{:if $mycms['channel_id'] == $n['id']:} class="active"{:/if:}>{:$n['title']:}</a> {:/foreach:} </div>
</div>
<script type="text/javascript">
// 已登录
if(mycms.getcookie('MYCMS_user_login') != ''){$('#no_login').hide(); $('#has_login').show();$('#head_login_username').html(mycms.getcookie('MYCMS_user_name'));}
// 购物车数量
var count = mycms.getcookie('MYCMS_cart_sid');
$('#cart_count').html(count == '' ? 0 : (count.split(',')).length);
</script><div class="box">
	<!-- 滚动公告 -->
	<div class="notice">
		<ol class="speaker"></ol>
		<ol class="information" id="information">
			{:if $web['lang'] == 1:}{:$pid = 9:}{:else:}{:$pid = 19:}{:/if:}<!-- 这里修改公告所属的频道ID、根据不同的语言调用不同的频道 -->
			{:foreach article::data(3,99,0,$pid) as $a:}
			<a href="{:$a['URL']:}">{:$a['title_format']:}</a> &nbsp;&nbsp;&nbsp; {:$a['addtime']:}<br /> 
			{:/foreach:}
		</ol>
	</div>
	<!-- 焦点图 -->
	<div class="photo"><ol id="photo_player"></ol></div>
	<!-- 登录框 -->
	<div class="loginbox">
	
		<!-- 登录框 -->
		<div id="not_logged">
			<form name="loginform" method="post" action="member/login.php" onsubmit="return check()">
			<ol class="title">{:$lang['page']['login'][1]:}</ol>
			<ol class="text">{:$lang['page']['login'][2]:}</ol>
			<ol class="field">
				<span class="left"></span>
				<input name="username" class="username" maxlength="30" type="text" tabindex="1" value="{:$lang['page']['msg'][0]:}" onfocus="if(this.value == '{:$lang['page']['msg'][0]:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['msg'][0]:}';this.style.color = '#999';}" />
				<span class="right"></span>
			</ol>
			<ol class="text">{:$lang['page']['login'][3]:}</ol>
			<ol class="field"><input name="password" class="password" maxlength="20" type="password" tabindex="2" value="" /></ol>
			<ol class="signinbutton"><input type="submit" name="submit" tabindex="4" value="{:$lang['page']['login'][4]:}" /></ol>
			{:if $mycms['login_captcha']:}<!-- 验证码 -->
			<ol class="captcha">
				<input type="text" name="captcha" value="{:$lang['page']['login'][0]:}" tabindex="3"  maxlength="20" onblur="if(this.value==''){this.value='{:$lang['page']['login'][0]:}';this.style.color = '#999';}" onfocus="document.getElementById('siimage_div').style.display='block'; if(this.value == '{:$lang['page']['login'][0]:}'){this.value = '';this.style.color = '#000';}" onchange="document.getElementById('siimage_div').style.display='none'" />
				<a href="{:misc::url('register'):}">{:$lang['page']['login'][5]:}</a>
				<div id="siimage_div"><a href="#" onClick="document.getElementById('siimage').src = 'inc/include/captcha.php?sid=' + Math.random(); return false;"><img id="siimage" src="inc/include/captcha.php?sid={:time():}" /></a></div>
			</ol>
			{:else:}<ol class="register"><a href="{:misc::url('register'):}">{:$lang['page']['login'][5]:}</a></ol>{:/if:}
			</form>
			<ol class="interval"></ol>
		</div>
		
		<!-- 已登录，显示信息 -->
		<div id="have_logged">
			<ol class="title">{:$lang['page']['login'][6]:}</ol>
			<ol class="logged">
				{:$lang['page']['login'][7]:}<font color="#FF0000" id="login_username"></font>{:$lang['page']['login'][8]:}<br />
				{:$lang['page']['login'][9]:}<span id="login_rankname"></span><br />
				{:$lang['page']['login'][10]:}<span class="number" id="login_money"></span><br />
				{:$lang['page']['login'][11]:}<span class="number_green" id="login_usemoney"></span><br />
				{:$lang['page']['login'][12]:}<span class="number_green" id="login_frequency"></span> &nbsp;&nbsp;&nbsp; {:$lang['page']['login'][13]:}<span class="number_green" id="login_scores"></span><br />
				<a href="member/center.php">{:$lang['page']['login'][14]:}</a>&nbsp;|&nbsp;<a href="member/recharge.php">{:$lang['page']['login'][15]:}</a>&nbsp;|&nbsp;<a href="member/login.php?action=logout">{:$lang['page']['login'][16]:}</a>
			</ol>
			<ol class="interval_info"></ol>
		</div>

		<!-- 其它图片链接 -->
		<div>
			<ol class="other">
				<a href="{:misc::get_url('guestbook'):}"><img src="{:$web['path']:}images/homeandleft_guestbook{:$web['lang']:}.png" width="100" height="50" /></a> &nbsp;
				<a href="{:misc::get_url('feedback'):}"><img src="{:$web['path']:}images/homeandleft_service{:$web['lang']:}.png" width="100" height="50" /></a>
			</ol>
		</div>
	</div>
</div>
<div class="box">
	<div class="frame_side">
		<!-- 搜索框 -->
		<div class="search">
			<form name="searchform" method="get" action="search.php">
			<span class="left"></span>
			<input class="word" type="text" name="word" id="word" tabindex="5" maxlength="50" value="{:$lang['page']['search'][0]:}" onfocus="if(this.value == '{:$lang['page']['search'][0]:}'){this.value = '';this.style.color = '#000';}" onblur="if(this.value==''){this.value='{:$lang['page']['search'][0]:}';this.style.color = '#999';}" />
			<input class="button" type="submit" name="" tabindex="6" value="{:$lang['page']['search'][2]:}" onclick="if(document.getElementById('word').value == '{:$lang['page']['search'][0]:}'){ alert('{:$lang['page']['search'][1]:}');return false;}" />
			</form>
		</div>
		<div class="hot_search"><ol>{:$lang['page']['search'][3]:}{:foreach tag::data(4,0,10,0) as $t:}<a target="_blank" href="{:$t['URL']:}">{:$t['title']:}</a>&nbsp;{:/foreach:}</ol></div>
		
		<!-- 最新发布 -->
		<div class="caption">
			<ol class="heading">{:$lang['page']['title'][0]:}</ol>
			<!--ol class="more"><a href="#"><img src="{:$web['path']:}images/more.gif" width="42" height="20" /></a></ol-->
		</div>
		<div class="ctitle">
			{:foreach article::data(1,12) as $a:}
			<ol><img src="{:$web['path']:}images/common.gif" width="9" height="15" border="0" /> <a href="{:$a['URL']:}" title="{:$a['title']:}">{:$a['title_format']:}</a></ol>
			{:/foreach:}
		</div>
		
		<!-- 左侧广告位（278*100px） -->
		<div class="ad_1">{:ad::show('home_1'):}</div> 
		
	</div>
	
	<div class="frame_main">
		<!-- 推荐商品 -->
		<div class="caption timeline">
			<ol class="heading">{:$lang['page']['title'][1]:}</ol>
			<ol class="more"><a href="{:misc::get_url('channel',2):}"><img src="{:$web['path']:}images/more.gif" width="42" height="20" /></a></ol>
		</div>
		<div class="recom">
			{:$p = product::data(0,20,1,$mycms['channel']['id']):}
			{:for $i=0; $i<4; $i++:}
			<div class="circle">
				<ul class="image">
					<li>{:if $p[$i*5]['picture'][0] != '':}<a href="{:$p[$i*5]['URL']:}" title="{:$p[$i*5]['title']:}"><img src="{:$p[$i*5]['picture'][0]:}" onload="mycms.img_auto_size(this)" width="100" height="100" alt="{:$p[$i*5]['title']:}" /></a>{:/if:}</li>
				</ul>
				<ul class="text">
					{:for $x=0; $x<5; $x++:}
					<li {:if $x==0:}class="first"{:else:}class="routine"{:/if:}><a href="{:$p[$x+$i*5]['URL']:}" title="{:$p[$x+$i*5]['title']:}">{:$p[$x+$i*5]['title_format']:}</a></li>
					{:/for:}
				</ul>
			</div>
			{:/for:}
		</div>
		
		<!-- 最新商品 -->
		<div class="caption timeline">
			<ol class="heading">{:$lang['page']['title'][2]:}</ol>
			<ol class="more"><a href="{:misc::get_url('channel',2):}"><img src="{:$web['path']:}images/more.gif" width="42" height="20" /></a></ol>
		</div>
		<div class="recom">
			{:$p = product::data(1,20,0,$mycms['channel']['id']):}
			{:for $i=0; $i<4; $i++:}
			<div class="circle">
				<ul class="image">
					<li>{:if $p[$i*5]['picture'][0] != '':}<a href="{:$p[$i*5]['URL']:}" title="{:$p[$i*5]['title']:}"><img src="{:$p[$i*5]['picture'][0]:}" onload="mycms.img_auto_size(this)" width="100" height="100" alt="{:$p[$i*5]['title']:}" /></a>{:/if:}</li>
				</ul>
				<ul class="text">
					{:for $x=0; $x<5; $x++:}
					<li {:if $x==0:}class="first"{:else:}class="routine"{:/if:}><a href="{:$p[$x+$i*5]['URL']:}" title="{:$p[$x+$i*5]['title']:}">{:$p[$x+$i*5]['title_format']:}</a></li>
					{:/for:}
				</ul>
			</div>
			{:/for:}
		</div>
	</div>
</div>

<!-- 中部通栏广告位（930*100px） -->
<div class="ad_2">{:ad::show('home_2'):}</div>

<div class="box">
	<div class="frame_side">
		<!-- 推荐内容 -->
		<div class="caption">
			<ol class="heading">{:$lang['page']['title'][3]:}</ol>
			<!--ol class="more"><a href="#"><img src="{:$web['path']:}images/more.gif" width="42" height="20" /></a></ol-->
		</div>
		<div class="ctitle">
			{:foreach article::data(0,10,1) as $a:}
			<ol><img src="{:$web['path']:}images/common.gif" width="9" height="15" border="0" /> <a href="{:$a['URL']:}" title="{:$a['title']:}">{:$a['title_format']:}</a></ol>
			{:/foreach:}
		</div>
		
		<!-- 推荐内容 -->
		<div class="caption">
			<ol class="heading">{:$lang['page']['title'][4]:}</ol>
			<!--ol class="more"><a href="#"><img src="{:$web['path']:}images/more.gif" width="42" height="20" /></a></ol-->
		</div>
		<div class="ranking">
			{:foreach article::data(5,10) as $a:}
			<ol><a href="{:$a['URL']:}" title="{:$a['title']:}">{:$a['title_format']:}</a></ol>
			{:/foreach:}
		</div>
	</div>
	<!-- 主体 -->
	<div class="frame_main">
		<!-- 图片 -->
		<div class="caption timeline">
			<ol class="heading">{:$lang['page']['title'][5]:}</ol>
			<ol class="more"><a href="{:misc::get_url('channel',3):}"><img src="{:$web['path']:}images/more.gif" width="42" height="20" /></a></ol>
		</div>
		<div class="thumbnail">
			<div id="thumbnail">
			<table cellpadding="0" cellspacing="0" border="0"><tr>
			{:foreach photo::data(0,5) as $a:}
				<td>
					<div class="pic"><a href="{:$a['URL']:}" title="{:$a['title']:}"><img src="{:$a['picture'][0]:}" width="135" height="90" onload="mycms.img_auto_size(this)" /></a></div>
					<div class="text"><a href="{:$a['URL']:}" title="{:$a['title']:}">{:$a['title_format']:}</a></div>
				</td>
			{:/foreach:}
			</tr></table>
			</div>
		</div>
		
		<div class="parallel">
			<!-- 最新发布，从第 10 条开始调用(接着上面的10条记录)，调用10条记录 -->
			<div class="portfolio">
				<div class="caption">
					<ol class="heading">{:$lang['page']['title'][6]:}</ol>
					<ol class="more"><a href="{:misc::get_url('channel',1):}"><img src="{:$web['path']:}images/more.gif" width="42" height="20" /></a></ol>
				</div>
				<div class="rows">
				{:foreach article::data(1,10,0,0,0,0,0,0,10) as $a:}
					<ol><a href="{:$a['URL']:}" title="{:$a['title']:}">{:$a['title_format']:}</a></ol>
				{:/foreach:}
				</div>
			</div>
			<!-- 软件下载 -->
			<div class="portfolio vertical">
				<div class="caption">
					<ol class="heading">{:$lang['page']['title'][7]:}</ol>
					<ol class="more"><a href="{:misc::get_url('channel',4):}"><img src="{:$web['path']:}images/more.gif" width="42" height="20" /></a></ol>
				</div>
				<div class="rows">
				{:foreach download::data(0,10) as $d:}
					<ol><a href="{:$d['URL']:}" title="{:$d['title']:}">{:$d['title_format']:}</a> ({:$d['count']:})</ol>
				{:/foreach:}
				</div>
			</div>
			<!-- 图文资讯 -->
			<div class="caption timeline">
				<ol class="heading">{:$lang['page']['title'][8]:}</ol>
				<ol class="more"><a href="{:misc::get_url('channel',1):}"><img src="{:$web['path']:}images/more.gif" width="42" height="20" /></a></ol>
			</div>
			<div class="t_photo">
				{:foreach article::data(0,4,0,0,0,0,22,'',0,0,0,0,0,0,1) as $a:}
				<ul>
					<li class="t_pic"><a href="{:$a['URL']:}" title="{:$a['title']:}"><img src="{:$a['picture'][0]:}" width="120" height="90" onload="mycms.img_auto_size(this)" /></a></li>
					<li class="t_text"><a href="{:$a['URL']:}" title="{:$a['title']:}">{:$a['title_format']:}</a></li>
				</ul>
				{:/foreach:}
			</div>
		</div>
	</div>
</div>

<!-- 友情链接 -->
<div class="links">
	<ul>
		<li class="heading">{:$lang['page']['title'][9]:}</li>
		<li class=""></li>
		<li class="add_link"><a href="{:misc::get_url('links'):}" title="{:$lang['page']['title'][10]:}"><img src="{:$web['path']:}images/modify.gif" width="13" height="13" /></a></li>
		<li class="more_link"><a href="{:misc::get_url('links'):}" title="{:$lang['page']['title'][11]:}"><img src="{:$web['path']:}images/more.gif" width="42" height="20" /></a></li>
	</ul>
	{:foreach misc::links(30,1) as $n:}
	<ol><a href="{:$n['weburl']:}" target="_blank" title="{:$n['webname']:}"><img src="{:$n['logourl']:}" width="88" height="31" border="0" /></a></ol>
	{:/foreach:}
</div>
{:include file='component_footer.tpl':}
</body>
</html>