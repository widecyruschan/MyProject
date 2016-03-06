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
<script type="text/javascript">
$(function(){
	// Logo交互样式
	$('.logo').hover(
		function(){if($(this).css('border-left-color') != 'rgb(255, 0, 0)') $(this).css('border-color','#F90');},
		function(){if($(this).css('border-left-color') != 'rgb(255, 0, 0)') $(this).css('border-color','#DDD');} // 点击(选取)后滑出时不改变边框色
	);		
	// 点击 Logo 事件
	$('.logo').click(function(){
		$(this).parent().find('.radio input').attr('checked','checked');
		$('.logo').css('border-color','#DDD'); $(this).css('border-color','#F00');
		// alert($(this).parent().find('.radio input').val());
	});	
	// 点击单选事件
	$('.radio input').click(function(){
		$('.logo').css('border-color','#DDD');
		$(this).parent().parent().find('.logo').css('border-color','#F00');
	});	
	// 文本域(充值金额)交互样式
	$('#amount').focus(function(){$(this).css({'border-color':'#40B3FF','background-color':'#E5F5FF'});});
	$('#amount').blur(function(){$(this).css({'border-color':'#C8C8FF','background-color':'#FFFFFF'});});
	// 表单提交事件
	$('#recharge').submit(function(){
		if (document.recharge.amount.value.length == 0){alert("{:$lang['page']['msg'][0]:}"); document.recharge.amount.focus(); return false;}
		var reg	= new RegExp(/^\d*\.?\d{0,2}$/);
		if (!reg.test(document.recharge.amount.value))	{alert("{:$lang['page']['msg'][1]:}"); document.recharge.amount.focus(); return false;}
		if (Number(document.recharge.amount.value) < 0.01){alert("{:$lang['page']['msg'][2]:}"); document.recharge.amount.focus(); return false;}
	});
	// 选择第一个平台
	$('#recharge .radio input').first().attr('checked','checked');
	$('#recharge .logo').first().css('border-color','#F00');
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
			<ol class="location">
				{:$lang['page']['location']:}<a href="./">{:$lang['page']['home']:}</a> &gt;&gt;
				<a href="member/center.php">{:$lang['page']['center']:}</a> &gt;&gt;
				{:$lang['page']['title']:}
			</ol>
		</div>
		<form action="" method="post" name="recharge" id="recharge" target="_blank">
		<!-- 财付通 -->
		{:if $mycms['payment']['tenpay']['enable'] == 1:}
		<div class="heading">{:$lang['page']['latest'][0]:}</div>
		<div class="select">
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="tenpay_1002" /></li>
				<li class="logo bank_01" title="{:$lang['page']['bank'][0]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="tenpay_1052" /></li>
				<li class="logo bank_02" title="{:$lang['page']['bank'][1]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="tenpay_1003" /></li>
				<li class="logo bank_03" title="{:$lang['page']['bank'][2]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="tenpay_1005" /></li>
				<li class="logo bank_04" title="{:$lang['page']['bank'][3]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="tenpay_1020" /></li>
				<li class="logo bank_05" title="{:$lang['page']['bank'][4]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="tenpay_1021" /></li>
				<li class="logo bank_06" title="{:$lang['page']['bank'][5]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="tenpay_1027" /></li>
				<li class="logo bank_07" title="{:$lang['page']['bank'][6]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="tenpay_1001" /></li>
				<li class="logo bank_08" title="{:$lang['page']['bank'][7]:}"></li>
				<li class="logo_info">{:$lang['page']['misc'][0]:}</li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="tenpay_1038" /></li>
				<li class="logo bank_08" title="{:$lang['page']['bank'][8]:}"></li>
				<li class="logo_info">{:$lang['page']['misc'][1]:}</li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="tenpay_1028" /></li>
				<li class="logo bank_09" title="{:$lang['page']['bank'][9]:}"></li>
				<li class="logo_info">{:$lang['page']['misc'][2]:}</li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="tenpay_1006" /></li>
				<li class="logo bank_10" title="{:$lang['page']['bank'][10]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="tenpay_1009" /></li>
				<li class="logo bank_11" title="{:$lang['page']['bank'][11]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="tenpay_1010" /></li>
				<li class="logo bank_12" title="{:$lang['page']['bank'][12]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="tenpay_1022" /></li>
				<li class="logo bank_13" title="{:$lang['page']['bank'][13]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="tenpay_1025" /></li>
				<li class="logo bank_14" title="{:$lang['page']['bank'][14]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="tenpay_1024" /></li>
				<li class="logo bank_15" title="{:$lang['page']['bank'][15]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="tenpay_1008" /></li>
				<li class="logo bank_16" title="{:$lang['page']['bank'][16]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="tenpay_1004" /></li>
				<li class="logo bank_17" title="{:$lang['page']['bank'][17]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="tenpay_1032" /></li>
				<li class="logo bank_18" title="{:$lang['page']['bank'][18]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="tenpay_1033" /></li>
				<li class="logo bank_09" title="{:$lang['page']['bank'][19]:}"></li>
				<li class="logo_info">{:$lang['page']['misc'][3]:}</li>
			</ul><ul>
				<li class="radio"><input type="radio" name="pay_bank" value="tenpay_0" /></li>
				<li class="logo bank_19" title="{:$lang['page']['bank'][20]:}"></li>
			</ul>
		</div>
		{:/if:}
		<!-- 财付通 End -->
		
		
		<!-- 支付宝 -->
		{:if $mycms['payment']['alipay']['enable'] == 1:}
		<div class="heading">{:$lang['page']['latest'][1]:}</div>
		<div class="select">
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_directPay" /></li>
				<li class="logo bank_24" title="{:$lang['page']['bank'][25]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input name="pay_bank" type="radio" value="alipay_ICBCB2C" /></li>
				<li class="logo bank_01" title="{:$lang['page']['bank'][0]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_BOCB2C" /></li>
				<li class="logo bank_02" title="{:$lang['page']['bank'][1]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_CCB" /></li>
				<li class="logo bank_03" title="{:$lang['page']['bank'][2]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_ABC" /></li>
				<li class="logo bank_04" title="{:$lang['page']['bank'][3]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_COMM" /></li>
				<li class="logo bank_05" title="{:$lang['page']['bank'][4]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_CITIC" /></li>
				<li class="logo bank_06" title="{:$lang['page']['bank'][5]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_GDB" /></li>
				<li class="logo bank_07" title="{:$lang['page']['bank'][6]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_CMB" /></li>
				<li class="logo bank_08" title="{:$lang['page']['bank'][7]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_PSBC-DEBIT" /></li>
				<li class="logo bank_09" title="{:$lang['page']['bank'][9]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_CMBC" /></li>
				<li class="logo bank_10" title="{:$lang['page']['bank'][10]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_CIB" /></li>
				<li class="logo bank_11" title="{:$lang['page']['bank'][11]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_SPABANK" /></li>
				<li class="logo bank_12" title="{:$lang['page']['bank'][12]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_CEBBANK" /></li>
				<li class="logo bank_13" title="{:$lang['page']['bank'][13]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_SHBANK" /></li>
				<li class="logo bank_15" title="{:$lang['page']['bank'][15]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_SDB" /></li>
				<li class="logo bank_16" title="{:$lang['page']['bank'][16]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_SPDB" /></li>
				<li class="logo bank_17" title="{:$lang['page']['bank'][17]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_BJBANK" /></li>
				<li class="logo bank_18" title="{:$lang['page']['bank'][18]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_NBBANK" /></li>
				<li class="logo bank_20" title="{:$lang['page']['bank'][21]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_HZCBB2C" /></li>
				<li class="logo bank_21" title="{:$lang['page']['bank'][22]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_BJRCB" /></li>
				<li class="logo bank_22" title="{:$lang['page']['bank'][23]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_fdb101" /></li>
				<li class="logo bank_23" title="{:$lang['page']['bank'][24]:}"></li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_ICBCBTB" /></li>
				<li class="logo bank_01" title="{:$lang['page']['bank'][0]:}"></li>
				<li class="logo_info">{:$lang['page']['misc'][4]:}</li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_CCBBTB" /></li>
				<li class="logo bank_03" title="{:$lang['page']['bank'][2]:}"></li>
				<li class="logo_info">{:$lang['page']['misc'][4]:}</li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_ABCBTB" /></li>
				<li class="logo bank_04" title="{:$lang['page']['bank'][3]:}"></li>
				<li class="logo_info">{:$lang['page']['misc'][4]:}</li>
			</ul>
			<ul>
				<li class="radio"><input type="radio" name="pay_bank" value="alipay_SPDBB2B" /></li>
				<li class="logo bank_17" title="{:$lang['page']['bank'][17]:}"></li>
				<li class="logo_info">{:$lang['page']['misc'][4]:}</li>
			</ul>
		</div>
		{:/if:}
		<!-- 支付宝 End -->
		
		<div class="amount">
			<ol>{:$lang['page']['misc'][5]:}</ol>
			<ol><input type="text" name="amount" id="amount" value="{:$mycms['amount']:}" /></ol>
			<ol>{:$lang['page']['misc'][7]:}</ol>
		</div>
		<div class="submit"><input type="submit" value="{:$lang['page']['misc'][6]:}" name="submit" /></div>
		
		</form>
	</div>
</div>
{:include file='component_footer.tpl':}
</body>
</html>