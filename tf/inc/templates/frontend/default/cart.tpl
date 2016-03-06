<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$lang['page']['title']:}</title>

<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/shopping.css" />
<link rel="stylesheet" type="text/css" href="{:$web['path']:}style/language_{:$web['lang']:}.css" />
<script type="text/javascript" src="inc/script/jquery.js"></script>
<script type="text/javascript" src="inc/script/common.js"></script>
<script type="text/javascript" src="{:$web['path']:}/script/cart.js"></script>
</head>
<body>
{:include file='component_header.tpl':}
<div class="box list">
	<div class="titlebar">
		<ol class="title">{:$lang['page']['title']:}</ol>
		<ol class="location">{:$lang['page']['location']:}<a href="./">{:$lang['page']['home']:}</a> &gt;&gt; {:$lang['page']['title']:}</ol>
	</div>
	{:if empty($mycms['cart']['data']):}<div class="empty">{:$lang['page']['cart_null_info']:}</div>{:else:}
	<div class="caption">
		<ol class="heading">{:$lang['page']['cart'][0]:}</ol>
		<ol class="clear">{:if !empty($mycms['cart']['data']):}<a href="cart.php?del=all">{:$lang['page']['cart'][1]:}</a>{:/if:}</ol>
	</div>
	<form action="" method="post" name="cart">
	<div class="cart">
		<ul class="head bottom_line">
			<li class="a">{:$lang['page']['cart'][2]:}</li>
			<li class="b">{:$lang['page']['cart'][3]:}</li>
			<li class="c">{:$lang['page']['cart'][4]:}</li>
			<li class="c">{:$lang['page']['cart'][5]:}</li>
			<li class="c">{:$lang['page']['cart'][6]:}</li>
			<li class="c">{:$lang['page']['cart'][7]:}</li>
			<li class="c">{:$lang['page']['cart'][8]:}</li>
		</ul>
		{:foreach $mycms['cart']['data'] as $e => $p:}
		<input type="hidden" name="cart[{:$e:}][id]" value="{:$p['id']:}" />
		<ul class="bottom_line">
			<li class="a"><a href="{:$p['URL']:}" target="_blank" title="{:$p['title']:}">{:$p['title']:}</a></li>
			<li class="b">
				
				<div>
				{:$p['optional'] = explode(',',$p['optional']):}
				<input type="hidden" name="cart[{:$e:}][attribute][]" value="" />
				{:foreach $p['optional'] as $o:}
				{:if !empty($o):}<a href="javascript:void(0)" onfocus="blur()" class="attribute">{:$o:}</a>{:/if:}
				{:/foreach:}
				</div>
				
				{:*<!--
				// 可选属性，这里可以自定义属性，根据您的商品特点自定义，如尺码、规格型号、功率等选项，这里只以颜色为例
				// 所有自定义属性请使用 name="cart[{:$e:}][attribute][]" 的形式提交 					
				-->*:}	
				
				{:*<!-- 如：
				<div>
				{:$p['speci'] = explode(',',$p['speci']):}
				<input type="hidden" name="cart[{:$e:}][attribute][]" value="" />
				{:foreach $p['speci'] as $s:}
				{:if !empty($s):}<a href="javascript:void(0)" onfocus="blur()" class="attribute">{:$s:}</a>{:/if:}
				{:/foreach:}
				</div>
				-->*:}
				
			</li>
			<li class="c">{:$p['inventory']:}</li>
			<li class="c price">{:$p['price']:}</li>
			<li class="c number"><input name="cart[{:$e:}][number]" type="text" size="2" maxlength="5" inventory="{:$p['inventory']:}" value="1" /></li>
			<li class="c subtotal">{:$p['price']:}</li>
			<li class="c"><a href="cart.php?del={:$p['id']:}" class="del_bg"></a></li>
		</ul>
		{:/foreach:}
		<ul>
			<li class="discount">
				<!-- 会员优惠折扣，如果已登录且有折扣时显示，否则显示未登录 -->
				{:if $mycms['is_login']:}{:if $mycms['cart']['discount'] < 10:}{:$lang['page']['cart'][9]:}<span id="discount" class="num">{:$mycms['cart']['discount']:}</span> {:$lang['page']['cart'][10]:}{:/if:}
				{:else:}{:$lang['page']['cart'][11]:}{:/if:}
			</li> 
			<li class="total">
				{:$lang['page']['cart'][12]:}{:if $mycms['cart']['discount'] < 10:}<span id="amount_a">{:$mycms['cart']['amount_total']:}</span> × {:$mycms['cart']['discount']/10:} = {:/if:}<span id="amount_b" class="num">{:$mycms['cart']['amount_discount']:}</span>
			</li>
		</ul>
	</div>
	<div class="cart_button">
		<ol class="continue"><a href="./">{:$lang['page']['cart'][13]:}</a></ol>
		<ol class="clearing"><a href="#" onclick="cart.submit(); return false;">{:$lang['page']['cart'][14]:}</a></ol>
	</div>
	</form>
	{:/if:}
</div>
{:include file='component_footer.tpl':}
</body>
</html>