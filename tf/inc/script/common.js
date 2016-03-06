
var mycms = mycms || {version : '1.1'};
mycms.setcookie = function(name,value,seconds,path,domain) {
	var expires = new Date();
	expires.setTime(expires.getTime() + seconds * 1000);
	document.cookie = escape(name) + '=' + escape(value)
	+ (typeof(seconds) != 'undefined' ? '; expires=' + expires.toGMTString() : '')
	+ (typeof(path) != 'undefined' ? '; path=' + path : '; path=/')
	+ (typeof(domain) != 'undefined' ? '; domain=' + domain : '');
};
mycms.getcookie = function(name) {
	var cookie_start = document.cookie.indexOf(name);
	var cookie_end = document.cookie.indexOf(";", cookie_start);
	var result = cookie_start == -1 ? '' : unescape(document.cookie.substring(cookie_start + name.length + 1, (cookie_end > cookie_start ? cookie_end : document.cookie.length)));
	return decodeURIComponent(escape(result));
};
mycms.img_auto_size = function(a){
	if(!isNaN(a.width) && !isNaN(a.height)){ 
		var img = new Image();
		img.onload = function(){
			if(!isNaN(img.width) && !isNaN(img.height)){ 
				var offset = 0; 
				var narrow_w = img.width / a.width; 
				var narrow_h = img.height / a.height; 
				if(narrow_w <= narrow_h){
					offset = 0 - Math.round((img.height / narrow_w - a.height) / 2);
					a.style.width = a.width + 'px'; 
					a.style.height = 'auto'; 
					if(offset < 0) a.style.marginTop = offset + 'px'; 
				} else {
					offset = 0 - Math.round((img.width / narrow_h - a.width) / 2);
					a.style.width = 'auto'; 
					a.style.height = a.height + 'px'; 
					if(offset < 0) a.style.marginLeft = offset + 'px'; 
				}
			}
		}
		img.src = a.src; 
	}
};
mycms.in_array = function(string,array){
	for (s = 0; s < array.length; s++) {
		thisEntry = array[s].toString();
		if (thisEntry == string) {
			return true;
		}
	}
	return false;
};
mycms.empty = function(mixed_var){
    var key;    
    if (mixed_var === "" || mixed_var === 0 || mixed_var === "0" || mixed_var === null || mixed_var === false || typeof mixed_var === 'undefined'){
        return true;
    }
    if (typeof mixed_var == 'object') {
        for (key in mixed_var) {
            return false;
        }
		return true;
    } 
    return false;
};
mycms.is_numeric = function (mixed_var) {
    return (typeof(mixed_var) === 'number' || typeof(mixed_var) === 'string') && mixed_var !== '' && !isNaN(mixed_var);
};
mycms.numeric = function(v){
	v = parseFloat(mycms.is_numeric(v) ? v : 0);
	(v < 0) && (v = 0);
	return v;
};
mycms.rand = function(min,max){
	return Math.floor(Math.random() * (max - min + 1) + min);
};
mycms.ip = function(ip,id,lang){
	if(lang == 0 || lang == mycms.lang){
		$.ajax({
			url : 'app.php', 
			type : 'GET', 
			data : 'a=ip&ip=' + ip, 
			dataType : 'text', 
			async : true, 
			success : function(data){ 
				isNaN(data) && $('#' + id).html(data);
			}
		});	
	}
}
var lang = mycms.getcookie('MYCMS_global_language');
mycms.lang = (isNaN(lang) || lang == '') ? 1 : lang;
if(document.all && /MSIE (5\.5|6)/.test(navigator.userAgent) && document.styleSheets && document.styleSheets[0] && document.styleSheets[0].addRule){
	$.getScript('inc/tools/iepngfix/tilebg.js');
}
$(function(){$.getScript('inc/script/gb2big.js');})