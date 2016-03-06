
var mycms = {};
mycms.alternately = function(table_id){
	$('.'+table_id+' tr:odd').addClass('odd');  
	$('.'+table_id+' tr:even').addClass('even'); 
	$('.'+table_id+' tr').hover( 
		function(){
			$(this).addClass('activity'); 
		},
		function(){
			$(this).removeClass('activity'); 
		}
	);			
};
mycms.title2div = function(css){
	var title;
	$('.'+css).hover(
		function(){
			title = this.title;
			this.title = '';
			$(this).css('cursor','pointer'); 
			$('body').append('<div id="titlediv_jq" class="title_div rounded">'+title+'</div>');
			var win_width = document.documentElement.clientWidth ? document.documentElement.clientWidth : (window.innerWidth ? window.innerWidth : (document.body.clientWidth ? document.body.clientWidth : 1024));
			var width = $('#titlediv_jq').width();
			var x = $(this).offset().left;
			var left = x < (win_width/2) ? x+$(this).width() : x-width;
			var top = $(this).offset().top + $(this).height(); 
			$('#titlediv_jq').css({'top':top+"px","left":left+"px","opacity":'0'});
			$('#titlediv_jq').animate({opacity:'0.9'},600); 
		},
		function(){
			this.title = title; 
			$('#titlediv_jq').remove(); 
		}		
	);
};
mycms.keysubmit = function(form_id,button_id,detect_func){
	$('#'+button_id).click(function(){ 
		if(eval(detect_func) === true) $('#'+form_id).submit();
	});
	$(document).bind('keydown',function(e){
		e = window.event || e;
		if(e.ctrlKey && e.keyCode == 13){
			if(eval(detect_func) === true) $('#'+form_id).submit();
		}	
	});
};
mycms.select_all = function(form) {
	for(var i=0; i<form.elements.length; i++){ 
		var e = form.elements[i]; 
		if (e.Name != "all" && e.disabled != true && e.type == 'checkbox'){ 
			e.checked = form.all.checked;
		}
	} 
};
mycms.acsubmit = function(form_id,button_id,msg,action,is_change){
	if(!is_change){
		$('#'+button_id).click(function(){
			if(confirm(msg)){
				$('#action').val(action);
				$('#'+form_id).submit();
			}
		});
	} else {
		$('#'+button_id).change(function(){
			if(confirm(msg)){
				$('#action').val(action);
				$('#'+form_id).submit();
			}
		});			
	}
};
mycms.setcookie = function(name,value,seconds,path,domain) {
	var expires = new Date();
	expires.setTime(expires.getTime() + seconds * 1000);
	document.cookie = escape(name) + '=' + escape(value)
	+ (typeof(seconds) != 'undefined' ? '; expires=' + expires.toGMTString() : '')
	+ (typeof(path) != 'undefined' ? '; path=' + path : '; path=/')
	+ (typeof(domain) != 'undefined' ? '; domain=' + domain : '');
}
mycms.getcookie = function(name) {
	var cookie_start = document.cookie.indexOf(name);
	var cookie_end = document.cookie.indexOf(";", cookie_start);
	return cookie_start == -1 ? '' : unescape(document.cookie.substring(cookie_start + name.length + 1, (cookie_end > cookie_start ? cookie_end : document.cookie.length)));
}
mycms.switchbar = function(){
	if(mycms.getcookie('MYCMS_admin_left_menu') != 'hide'){
		$('#frame_side').animate({'left':'-230px'},600);
		$('body').animate({'background-position':'-230px'},600);
		$('#body_box').animate({'margin-left':'0px'},600);
		$('#switch').html('打开菜单');
		mycms.setcookie('MYCMS_admin_left_menu','hide',86400*365); 
	} else {
		$('#frame_side').animate({'left':'0'},600);
		$('body').animate({'background-position':'0px'},600);
		$('#body_box').animate({'margin-left':'230px'},600);
		$('#switch').html('关闭菜单');
		mycms.setcookie('MYCMS_admin_left_menu','show',86400*365); 
	}
}
mycms.topmenu = function(button,element){
	var oTime;
	$(button).click(function(){ 
		$(element).slideDown('fast'); 
	});
	$(element).hover(
		function(){window.clearTimeout(oTime);	}, 
		function(){
			oTime = window.setTimeout(function(){ 
				$(element).fadeOut(300);
			},300);
		}
	);
	$(button).mouseout(function(){
		oTime = window.setTimeout(function(){ 
			$(element).fadeOut(300); 				
		},300);
	});	
};
mycms.top_error = function(msg){
	scroll(0,0);
	$('.top_error span').html(msg);
	$('.top_error').css({'opacity':'1'});
	$('.top_error').slideDown(400);
	return false;
};
mycms.option = function(){
	$('.advanced_button').click(function(){
		$('.advanced_button').css('background-image','url(../inc/templates/manage/images/switch_bg.png)');
		$('.basic_button').css('background','none');
		$('#basic').fadeOut(600);
		$('#advanced').fadeIn(600);
	});
	$('.basic_button').click(function(){
		$('.basic_button').css('background-image','url(../inc/templates/manage/images/switch_bg.png)');
		$('.advanced_button').css('background','none');
		$('#advanced').fadeOut(600);
		$('#basic').fadeIn(600);		
	});	
}
mycms.menu = function(){
	$('#menu ol ul').hide(); 
	if(mycms.getcookie('MYCMS_admin_left_menu') != 'hide'){
		if($('#menu ol #current').length > 0){
			$('#menu ol #current').parent().parent().slideToggle('normal'); 
			$('#menu ol #current').parents('ol').find('a').first().addClass('item_current'); 
			$('#menu ol #current').parent().addClass('current'); 
		} else {
			$('#menu ol ul').eq(0).slideToggle('normal'); 
		}
		$('#frame_side').css('left','0px'); 
		$('#body_box').css('margin-left','230px'); 
		$('#switch').html('关闭菜单');
	} else { 
		$('#frame_side').css('left','-230px'); 
		$('#body_box').css('margin-left','0px'); 
		$('#switch').html('打开菜单');
		$('body').css('background-position','-230px');
	}
	$('#menu .item').click(function(){
		$(this).parent().siblings().find('ul').slideUp('normal'); 
		$(this).next().slideToggle('normal'); 
		return false;
	});	
	$('#menu .item').hover(
		function(){
			$(this).stop().animate({'padding-right':'30px'},300);
		}, 
		function(){
			$(this).stop().animate({'padding-right':'10px'},300);
		}
	);	
	mycms.topmenu('#lang_button','.header #lang_menu'); 
	mycms.topmenu('#menu_option','.header .options'); 
}
mycms.ip = function(ip,id,lang){
	if(lang == 0 || lang == mycms.lang){
		$.ajax({
			url : '../app.php', 
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
$(function(){
	$('.attention ol,.information ol,.success ol,.error ol').click(function(){
		$(this).parent().fadeTo(400,0,function(){	$(this).slideUp(400);});
		return false;
	});
});