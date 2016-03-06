<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$lang['page']['title']:}</title>

<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/member.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
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
			<ol class="location">{:$lang['page']['location']:}<a href="./">{:$lang['page']['home']:}</a> &gt;&gt; <a href="member/center.php">{:$lang['page']['center']:}</a> &gt;&gt; {:$lang['page']['title']:}</ol>
		</div>
		
		<!-- 会员基本信息 -->
		<div class="caption timeline">
			<ol class="heading">{:$lang['page']['subject'][0]:}</ol>
			<ol class="whitebg"><a href="member/pwd_modify.php" title="{:$lang['page']['menu'][5]:}"><img src="{:$web['path']:}images/modify.gif" width="13" height="13" border="0" /></a></ol>
		</div>
		<div class="account">
			<div class="image"><a href="member/avatar.php"><img src="{:member::get_avatar($mycms['user']['id'],3,$mycms['user']['jointime']):}" width="148" height="148" border="0" /></a></div>
			<div class="status">
				<ul>
					<li>{:$lang['page']['field'][0]|cat:$mycms['user']['username']:}</li>
					<li>{:$lang['page']['field'][1]:}<span class="number">{:$mycms['user']['money']:}</span></li>
				</ul>
				<ul>
					<li>{:$lang['page']['field'][2]|cat:$mycms['user']['rankname_format']:}</li>
					<li>{:$lang['page']['field'][3]:}<span class="number_green">{:$mycms['user']['usemoney']:}</span></li>
				</ul>
				<ul>
					<li>{:$lang['page']['field'][4]:}<span class="number_green">{:$mycms['user']['scores']:}</span></li>
					<li>{:$lang['page']['field'][5]:}<span class="number_green">{:$mycms['user']['frequency']:}</span></li>
				</ul>
				<ul>
					<li>{:$lang['page']['field'][6]|cat:$mycms['user']['joinip']:}</li>
					<li>{:$lang['page']['field'][7]|cat:date('Y-m-d H:i:s',$mycms['user']['jointime']):}</li>
				</ul>
				<ul>
					<li>{:$lang['page']['field'][8]:}{:if $mycms['user']['loginip_format'] != '':}{:$mycms['user']['loginip_format']:}{:else:}<em>NULL</em>{:/if:}</li>
					<li>{:$lang['page']['field'][9]:}{:if $mycms['user']['logintime_format'] != '':}{:$mycms['user']['logintime_format']:}{:else:}<em>NULL</em>{:/if:}</li>
				</ul>
			</div>
		</div>
		
		<!-- 我的资料信息 -->
		<div class="caption timeline">
			<ol class="heading">{:$lang['page']['subject'][1]:}</ol>
			<ol class="whitebg"><a href="member/info_modify.php" title="{:$lang['page']['menu'][4]:}"><img src="{:$web['path']:}images/modify.gif" width="13" height="13" border="0" /></a></ol>
		</div>
		<div class="myinfo">
			<ul>
				<li>{:$lang['page']['info'][0]|cat:$mycms['user']['email']:}</li>
				<li>{:$lang['page']['info'][1]|cat:$mycms['user']['qq']:}</li>
			</ul>
			<ul>
				<li>{:$lang['page']['info'][2]|cat:$mycms['user']['nickname']:}</li>
				<li>{:$lang['page']['info'][3][3]|cat:$lang['page']['info'][3][$mycms['user']['sex']]:}</li>
			</ul>
			<ul>
				<li>{:$lang['page']['info'][4]|cat:$mycms['user']['phone']:}</li>
				<li>{:$lang['page']['info'][5]|cat:$mycms['user']['fax']:}</li>
			</ul>
			<ul>
				<li>{:$lang['page']['info'][6]|cat:$mycms['user']['companyname']:}</li>
				<li>{:$lang['page']['info'][7]|cat:$mycms['user']['companyweb']:}</li>
			</ul>
			<ul>{:$lang['page']['info'][8]|cat:$mycms['user']['companyaddress']:}</ul>
		</div>
		
		<!-- 最近交易记录 -->
		<div class="caption timeline">
			<ol class="heading">{:$lang['page']['subject'][2]:}</ol>
			<ol class="more"><a href="member/order_logs.php" title="{:$lang['page']['menu'][3]:}"><img src="{:$web['path']:}images/more.gif" width="42" height="20" border="0"></a></ol>
		</div>
		<table class="logs" cellpadding="0" cellspacing="1">
			<tr><th>{:$lang['page']['th'][0]:}</th><th>{:$lang['page']['th'][1]:}</th><th>{:$lang['page']['th'][2]:}</th><th>{:$lang['page']['th'][3]:}</th></tr>
			{:foreach member::get_logs(5) as $g:}
			<tr>
				<td class="a"><h1>{:$g['oid']:}</h1><h2>{:date('Y-m-d H:i:s',$g['addtime']):}</h2></td>
				<td class="b">{:$lang['page']['type'][$g['type']]:}<h3>{:$g['amount']:}</h3></td>
				<td class="c">{:$g['info']:}</td>
				<td class="d">
					{:if $g['result'] == '1':}<img src="{:$web['path']:}images/member_accept.png" width="16" height="16" title="{:$lang['page']['result'][1]:}" />
					{:else:}<img src="{:$web['path']:}images/member_delete.png" width="16" height="16" title="{:$lang['page']['result'][0]:}" />{:/if:}
				</td>
			</tr>
			{:foreachelse:}<tr><td colspan="4" height="50">{:$lang['page']['notdata']:}</td></tr>
			{:/foreach:}
		</table>
	</div>
</div>
{:include file='component_footer.tpl':}
</body>
</html>