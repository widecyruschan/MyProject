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
					<ol class="people"><img src="{:$web['path']:}images/services.png" width="146" height="134" /></ol>
					<ol><img src="{:$web['path']:}images/services{:$web['lang']:}.gif" width="90" height="25" /></ol>
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
</script>