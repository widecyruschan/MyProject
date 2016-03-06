$(function() {
	$("#focusIndex1").show();
	$("#focusBar li").css("width",900);
	$("a.arrL").mouseover(function(){stopFocusAm();}).mouseout(function(){starFocustAm();});
	$("a.arrR").mouseover(function(){stopFocusAm();}).mouseout(function(){starFocustAm();});
	$("#focusBar li").mouseover(function(){stopFocusAm();}).mouseout(function(){starFocustAm();});
	starFocustAm();
	
	$("[title=contactForm]").focus(function(){
	  $(this).css("color","#777777");
	  $(this).css("border-color","#fd8200");
	});
	$("[title=contactForm]").blur(function(){
	  $(this).css("color","#cccccc");
	  $(this).css("border-color","#d9d9d9");
	});

	$(window).bind('resize', function(e){
		changeFocus(true);
		$(".fullScreen").css("width",$(window).width());
		$(".fullScreen").css("height",$(window).height());
	});
	$(window).bind('scroll', function(e){
		if($.browser.msie &&  6 == $.browser.version) {
			$(".fullScreen").css("top",$(window).scrollTop());
		}
	});
	$(".fullScreen").css("width",$(window).width());
	$(".fullScreen").css("height",$(window).height());
	$(".fullScreen").css("left",$(window).width());
	$(".fullScreen").css("top",0);
});
	

/*------focus-------*/
$("#focusBar").hover(
	function () {
		$("#focusBar .arrL").stop(false,true);
		$("#focusBar .arrR").stop(false,true);
		$("#focusBar .arrL").animate({ left: 0}, { duration: 450 });
		$("#focusBar .arrR").animate({ right: 0}, { duration: 450 });
	}, function () {
		$("#focusBar .arrL").stop(false,true);
		$("#focusBar .arrR").stop(false,true);
		$("#focusBar .arrL").animate({ left: -52}, { duration: 450 });
		$("#focusBar .arrR").animate({ right: -52}, { duration: 450 });
	}
);

var timerFID;

function nextPage() {
	changeFocus(true);
}
function prePage() {
	changeFocus(false);
}

var currentFocusI=1;
var changeingFocus = false;
function changeFocus(dir) {
	if($("#focusBar li").length <= 1) return;
	if(changeingFocus) return;
	changeingFocus = true;
	
	$("#focusIndex"+nextI).stop(false,true);
	$("#focusIndex"+nextI+" .focusL").stop(false,true);
	$("#focusIndex"+nextI+" .focusR").stop(false,true);
	
	var nextI = dir?currentFocusI+1:currentFocusI-1;
	nextI = nextI>$("#focusBar li").length?1:(nextI<1?$("#focusBar li").length:nextI);
	//var focusWidth = $(window).width()>1000?1000:$(window).width();
	$("#focusIndex"+currentFocusI).css("width",900);
	$("#focusIndex"+nextI).css("width",900);
	if(dir) {
		$("#focusIndex"+nextI).css("left",900);
		$("#focusIndex"+nextI+" .focusL").css("left",450);
		$("#focusIndex"+nextI+" .focusR").css("left",450);
		$("#focusIndex"+currentFocusI).show();
		$("#focusIndex"+nextI).show();
		
		$("#focusIndex"+currentFocusI+" .focusL").animate({left: -(900/2+900)},300,'easeInExpo');
		$("#focusIndex"+currentFocusI+" .focusR").animate({left: -(900/2+900)},450,'easeInExpo',function(){
				$("#focusIndex"+nextI+" .focusL").animate({left: -450},900,'easeInOutCirc');
				$("#focusIndex"+nextI+" .focusR").animate({left: -450},1000,'easeInOutCirc');
				
				$("#focusIndex"+currentFocusI).animate({left: -900},900,'easeOutExpo');
				$("#focusIndex"+nextI).animate({left: 0},900,'easeOutExpo',function(){
						$("#focusIndex"+currentFocusI).hide();
						currentFocusI = nextI;
						changeingFocus = false;
				});
		});
	} else {
		$("#focusIndex"+nextI).css("left",-900);
		$("#focusIndex"+nextI+" .focusL").css("left",-(900/2+900));
		$("#focusIndex"+nextI+" .focusR").css("left",-(900/2+900));
		$("#focusIndex"+currentFocusI).show();
		$("#focusIndex"+nextI).show();
		
		$("#focusIndex"+currentFocusI+" .focusR").animate({left: 900/2},300,'easeInExpo');
		$("#focusIndex"+currentFocusI+" .focusL").animate({left: 900/2},450,'easeInExpo',function(){
				$("#focusIndex"+nextI+" .focusL").animate({left: -450},1000,'easeInOutCirc');
				$("#focusIndex"+nextI+" .focusR").animate({left: -450},900,'easeInOutCirc');
				
				$("#focusIndex"+currentFocusI).animate({left: 900},900,'easeOutExpo');
				$("#focusIndex"+nextI).animate({left: 0},900,'easeOutExpo',function(){
						$("#focusIndex"+currentFocusI).hide();
						currentFocusI = nextI;
						changeingFocus = false;
				});
		});
	}
}
function starFocustAm(){
	timerFID = setInterval("timer_tickF()",12000);
}
function stopFocusAm(){
	clearInterval(timerFID);
}
function timer_tickF() {
	changeFocus(true);
}
