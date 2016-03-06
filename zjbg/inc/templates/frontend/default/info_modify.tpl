<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$lang['page']['title']:}</title>

<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/member.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
<script type="text/javascript">
$(function(){
	// 文本域交互样式
	$('.form input').not('.readonly').focus(function(){$(this).css({'border-color':'#40B3FF','background-color':'#E5F5FF'});});
	$('.form input').not('.readonly').blur(function(){$(this).css({'border-color':'#C8C8FF','background-color':'#FFFFFF'});});	
	// 提交事件绑定
	$('#info_form').submit(function(){
		if(document.info_form.phone.value == ''){alert('{:$lang['page']['msg'][0]:}'); document.info_form.phone.focus(); return false;} // 联系电话
		if(document.info_form.qq.value == ''){alert('{:$lang['page']['msg'][1]:}'); document.info_form.qq.focus(); return false;} // QQ
	});
});
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
			<ol class="location">{:$lang['page']['location']:}<a href="./">{:$lang['page']['home']:}</a> &gt;&gt; <a href="member/center.php">{:$lang['page']['center']:}</a> &gt;&gt; {:$lang['page']['title']:}</ol>
		</div>
		<div class="form">
			<form name="info_form" id="info_form" action="" method="post">
			<ul>
				<li class="field">{:$lang['page']['field'][0]:}</li>
				<li class="entry"><input name="nickname" type="text" class="input rounded" value="{:$mycms['user']['nickname']:}" /></li>
				<li class="info"></li>
			</ul>
			<ul>
				<li class="field">{:$lang['page']['field'][1][0]:}</li>
				<li class="entry">
					<input type="radio" name="sex" value="2"{:if $mycms['user']['sex'] == '2':} checked="checked"{:/if:} />{:$lang['page']['field'][1][1]:} &nbsp;&nbsp;
					<input type="radio" name="sex" value="1"{:if $mycms['user']['sex'] == '1':} checked="checked"{:/if:} />{:$lang['page']['field'][1][2]:} &nbsp;&nbsp;
					<input type="radio" name="sex" value="0"{:if $mycms['user']['sex'] == '0':} checked="checked"{:/if:} />{:$lang['page']['field'][1][3]:}
				</li>
				<li class="info"></li>
			</ul>
			<ul>
				<li class="field">{:$lang['page']['field'][2]:}</li>
				<li class="entry"><input class="input rounded" type="text" name="phone" value="{:$mycms['user']['phone']:}" /></li>
				<li class="info"><font color="#FF0000">*</font></li>
			</ul>
			<ul>
				<li class="field">{:$lang['page']['field'][3]:}</li>
				<li class="entry"><input class="input rounded" type="text" name="fax" value="{:$mycms['user']['fax']:}" /></li>
				<li class="info"></li>
			</ul>
			<ul>
				<li class="field">{:$lang['page']['field'][4]:}</li>
				<li class="entry"><input class="input rounded" type="text" name="qq" value="{:$mycms['user']['qq']:}" /></li>
				<li class="info"><font color="#FF0000">*</font></li>
			</ul>
			<ul>
				<li class="field">{:$lang['page']['field'][5]:}</li>
				<li class="entry"><input class="input rounded" type="text" name="companyweb" value="{:$mycms['user']['companyweb']:}" /></li>
				<li class="info"></li>
			</ul>
			<ul>
				<li class="field">{:$lang['page']['field'][6]:}</li>
				<li class="entry"><input class="input rounded" type="text" name="companyaddress" value="{:$mycms['user']['companyaddress']:}" /></li>
				<li class="info"></li>
			</ul>
			<ul>
				<li class="field">{:$lang['page']['field'][7]:}</li>
				<li class="entry"><input class="input rounded" type="text" name="companyname" value="{:$mycms['user']['companyname']:}" /></li>
				<li class="info"></li>
			</ul>
			<ul class="modify"><input name="" value="{:$lang['page']['field'][8]:}" type="submit" /></ul>
			</form>
		</div>
	</div>
</div>
{:include file='component_footer.tpl':}
</body>
</html>