var mycms = mycms || {};
mycms.shopping = {}
mycms.shopping.language = new Array();
mycms.shopping.language['add_failed'] = ''; 
mycms.shopping.language['sid_exists'] = ''; 
mycms.shopping.language['sid_success'] = ''; 
mycms.shopping.add_cart = function(sid,show_num){
	if(isNaN(sid) || mycms.empty(mycms.getcookie('MYCMS_global_language'))){ 
		alert(mycms.shopping.language['add_failed']);	
		return false;	
	} else {
		var cart = mycms.shopping.get_cart(true);
		if(mycms.in_array(sid,cart)){ 
			alert(mycms.shopping.language['sid_exists']);
			return true;
		} else {
			var new_cart = cart.join(','); 
			new_cart = mycms.empty(new_cart) ? sid : new_cart + ',' + sid;
			mycms.setcookie('MYCMS_cart_sid',new_cart);
			mycms.empty(show_num) || $('#' + show_num).html(parseInt($('#' + show_num).html()) + 1);
			alert(mycms.shopping.language['sid_success']);
			return true;
		}
	}
};
mycms.shopping.get_cart = function(array){
	var cart = mycms.getcookie('MYCMS_cart_sid');
	return array ? cart.split(',') : cart;
};
mycms.shopping.get_cart_count = function(){
	return (mycms.shopping.get_cart(true)).length;
};
mycms.shopping.uncart = function(sid){
};