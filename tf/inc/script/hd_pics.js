$(function(){
	$("#map_left").add('#arrow_left').mousemove(function(){$('#arrow_left').css('opacity',0.6);}); 
	$("#map_left").add('#arrow_left').mouseout(function(){$('#arrow_left').css('opacity',0);});  
	$("#map_right").add('#arrow_right').mousemove(function(){$('#arrow_right').css('opacity',0.6);}); 
	$("#map_right").add('#arrow_right').mouseout(function(){$('#arrow_right').css('opacity',0);});  
	$(document).bind('keydown',function(e){
		e = window.event || e;
		(e.keyCode == 37 || e.keyCode == 38) && mycms.pics.click_left();
		(e.keyCode == 39 || e.keyCode == 40) && mycms.pics.click_right();
	});	
	mycms.pics.file = PICS_FILE; 
	mycms.pics.description = PICS_DESCRIPTION; 
	mycms.pics.initialize(); 
});
mycms.pics = {
	index : 0, 
	file : [], 
	description : [], 
	img_id : '#index_img', 
	description_id : '#index_description', 
	current_id : '.index_current', 
	initialize : function(){
		var p = mycms.pics;
		var a = p.file[0]; 
		$('#arrow_left').css('opacity',0); 
		$('#arrow_right').css('opacity',0); 
		$(p.description_id).html(p.description[0]); 
		$(p.img_id).attr('src',a); 
		p.coords(); 
		p.preload(p.file[1]); 
	},
	click_right : function(){
		$('#arrow_right').css('opacity',0); 
		var p = mycms.pics;
		p.index = p.index < p.file.length - 1 ? p.index + 1 : 0;
		p.coords(); 
		$(p.current_id).html(p.index + 1); 
		$(p.description_id).html(p.description[p.index]); 
		$(p.img_id).fadeOut(200,function(){
			$(p.img_id).attr('src',p.file[p.index]); 
			$(p.img_id).fadeIn(200);
		});
		p.preload(p.file[p.index + 1 >= p.file.length ? 0 : p.index + 1]); 
	},
	click_left : function(){
		$('#arrow_left').css('opacity',0); 
		var p = mycms.pics;
		p.index = p.index > 0 ? p.index - 1 : p.file.length - 1;
		p.coords(); 
		$(p.current_id).html(p.index + 1); 
		$(p.description_id).html(p.description[p.index]); 
		$(p.img_id).fadeOut(200,function(){
			$(p.img_id).attr('src',p.file[p.index]);
			$(p.img_id).fadeIn(200);
		});
		p.preload(p.file[p.index > 0 ? p.index - 1 : p.file.length]); 
	},
	coords : function(){
		var p = mycms.pics;
		var img = new Image();
		img.onload = function(){
			var h = this.height;
			var w = this.width;
			if(!isNaN(w) && !isNaN(h)){ 
				$('#map_left').attr('coords','0,0,' + w/2 + ',' + h); 
				$('#map_right').attr('coords',w/2 + ',0,' + w + ',' + h); 
				$('#arrow_left').css('margin',(h/2-47) + 'px auto auto -' + (w-10) + 'px'); 
				$('#arrow_right').css('margin',(h/2-47) + 'px auto auto -112px'); 
			}
		}
		img.src = p.file[p.index];
	},
	preload : function(){ 
  		var args = mycms.pics.preload.arguments;
		document.imageArray = new Array(args.length);
		for(var i=0; i<args.length; i++){
			document.imageArray[i] = new Image;
			document.imageArray[i].src = args[i];
		}
	}
};
