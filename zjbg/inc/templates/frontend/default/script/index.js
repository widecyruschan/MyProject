jQuery.cookie = function(name, value, options) {
    if (typeof value != 'undefined') { // name and value given, set cookie
        options = options || {};
        if (value === null) {
            value = '';
            options.expires = -1;
        }
        var expires = '';
        if (options.expires && (typeof options.expires == 'number' || options.expires.toUTCString)) {
            var date;
            if (typeof options.expires == 'number') {
                date = new Date();
                date.setTime(date.getTime() + (options.expires * 24 * 60 * 60 * 1000));
            } else {
                date = options.expires;
            }
            expires = '; expires=' + date.toUTCString(); // use expires attribute, max-age is not supported by IE
        }
        var path = options.path ? '; path=' + options.path : '';
        var domain = options.domain ? '; domain=' + options.domain : '';
        var secure = options.secure ? '; secure' : '';
        document.cookie = [name, '=', encodeURIComponent(value), expires, path, domain, secure].join('');
    } else { // only name given, get cookie
        var cookieValue = null;
        if (document.cookie && document.cookie != '') {
            var cookies = document.cookie.split(';');
            for (var i = 0; i < cookies.length; i++) {
                var cookie = jQuery.trim(cookies[i]);
                // Does this cookie string begin with the name we want?
                if (cookie.substring(0, name.length + 1) == (name + '=')) {
                    cookieValue = decodeURIComponent(cookie.substring(name.length + 1));
                    break;
                }
            }
        }
        return cookieValue;
    }
};


$(function() {
	$("#focusIndex1").show();
	$("#focusBar li").css("width",900);
	$("a.arrL").mouseover(function(){stopFocusAm();}).mouseout(function(){starFocustAm();});
	$("a.arrR").mouseover(function(){stopFocusAm();}).mouseout(function(){starFocustAm();});
	$("#focusBar li").mouseover(function(){stopFocusAm();}).mouseout(function(){starFocustAm();});
	starFocustAm();
	function AutoScroll(obj)
{
         $(obj).find("ul:first").animate(
         {
                marginTop:"-25px"
        },500,function(){
                 $(this).css({marginTop:"0px"}).find("li:first").appendTo(this);
         });
}
 setInterval('AutoScroll("#scrollDiv")',900)
	$("[title=contactForm]").focus(function(){
	  $(this).css("color","#777777");
	  $(this).css("border-color","#fd8200");
	});
	$("[title=contactForm]").blur(function(){
	  $(this).css("color","#cccccc");
	  $(this).css("border-color","#d9d9d9");
	});

	$(window).bind('scroll resize', function(e){
		var _scrolltop=$(window).scrollTop();
		var _headerTop = _scrolltop+128;
		var _colTitBarId = "HOME"; 
		$(".colTitBar").each(function(){
			var offset = $(this).offset();
			if(_headerTop >= offset.top) {
				_colTitBarId = $(this).attr('id');
			}
		});
		if(_colTitBarId == 'About') {
			//if(!$(".colorImg").is(":visible"))    
				$(".colorImg").fadeIn(1500);

		} else {
			//if($(".colorImg").is(":visible"))
		$(".colorImg").stop(false,true); 
				$(".colorImg").fadeOut(1500);
                       //$(".colorImg").animate({opacity: 'hide' }, { duration: 1500 });
		}
		if(xOnclick == 1) return;
		if(!$(".top_nav a[href=#"+_colTitBarId+"]").hasClass('on')) {
			$(".navBg").css("display","none");
			$(".top_nav a[href=#"+_colTitBarId+"]").children().css("display","block");
			$(".navBg").removeAttr("id");
			$(".top_nav a[href=#"+_colTitBarId+"]").children().attr("id","navBgOn");
			$(".top_nav a").removeClass();
			$(".top_nav a[href=#"+_colTitBarId+"]").addClass("on");
		}
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




var currentindex=1;
function changeflash(i) {	
currentindex=i;
for (j=1;j<=6;j++){
	if (j==i) 
	{$("#flash"+j).fadeIn("normal");
	$("#flash"+j).css("display","block");
	$("#f"+j).removeClass();
	$("#f"+j).addClass("dq");
	}
	else
	{$("#flash"+j).css("display","none");
	$("#f"+j).removeClass();
	$("#f"+j).addClass("no");}
}}
//function startAm(){
//timerID = setInterval("timer_tick()",7000);
//}
//function stopAm(){
//clearInterval(timerID);
//}
function timer_tick() {


    currentindex=currentindex>=3?1:currentindex+1;
	changeflash(currentindex);}
//$(document).ready(function(){
//$(".flash_bar div").mouseover(function(){stopAm();}).mouseout(function(){startAm();});
//startAm();
//});
	
//about
$(".aboutListBox").hover(
  function () {
    $(this).toggleClass("aboutListBoxON");
  },
  function () {
    $(this).toggleClass("aboutListBoxON");
  }
);

 
//tab
var curPortflioi = "page21";
var nn;
var curNumi=1;
var jj=0;
function showPagei(idi,nn,i){
	for(var j=1;j<=nn;j++){
		if(j==idi) {
			$("#box"+i+j).removeClass ();	
			$("#box"+i+j).addClass ("tab1");
			$("#page"+i+j).fadeIn(400);
			if(i==2) {
				//var hhh = $("#page"+i+j).height();
				//$("#page"+i+j).height($("#"+curPortflioi).height());
				//$("#page"+i+j).animate({height: hhh},400,'', function(){ if(curPortflioi != $(this).attr("id"))$(this).hide(); } );
				curPortflioi = "page"+i+j;
			}
		} else {
			$("#box"+i+j).removeClass ();	
			$("#box"+i+j).addClass ("tab2");	
			//$("#page"+i+j).fadeOut("fast");
			$("#page"+i+j).hide();
		}
	}
	
}

var zpShowed = false;
function zpConClose() {
	$(".fullScreen").stop(false,true);
	$(".zpConFullScreen").stop(false,true);
	$("#indexDiv").show();
	$(".conHeaderTop").hide();
	$(".zpConFullScreen").animate({left: $(window).width()},1000,'easeOutExpo',function(){$(".zpConFullScreen").hide();zpShowed = false;});
}
$(document).keyup(function(e) {
	if($(".zpConFullScreen").is(":hidden") || $(".fullScreen").is(":visible")) return;
	switch(e.which) {
		case 27:
			zpConClose();
			$("html,body").animate({scrollTop:$("#Portfolios").offset().top},0);
			break;
		case 37:
			$(".zpBtArrL").trigger("click");
			break;
		case 39:
			$(".zpBtArrR").trigger("click");
			break;
	}
});
function zpConShow(url) {
	$(".zp_box").children().stop(false,true);
	$(".zp_box").children(".pop_tit").slideUp("fast");
	$(".fullScreen").stop(false,true);
	$(".zpConFullScreen").stop(false,true);
	$(".fullScreen").css("left",$(window).width());
	$(".fullScreen").show();
	$(".fullScreen").animate({left: 0},1000,'easeOutExpo',function(){getZPCon(url);});
}
function getZPCon(url){
	$(".zpConFullScreen").css("left",0);
	$("#indexDiv").hide();
	$(".zpConFullScreen").html("");
	$(window).scrollTop(0);
	$.ajax({url: url,
		success:function(data){
			var bodyStartStr = '<body style="padding-top:40px;">';
			var zpConHtml = data.substring(data.indexOf(bodyStartStr)+bodyStartStr.length,data.indexOf('</body>'));
			$(".zpConFullScreen").html(zpConHtml);
			$(".zpConFullScreen").show();
			if($.browser.msie &&  9 > $.browser.version) {
				$("#toppicDiv img").load(function(){$(".fullScreen").hide();});
				//$(window).scrollTop(0);
			} else {
				$("#toppicDiv img").load(function(){$(".fullScreen").fadeOut(1000);});
				//$(".fullScreen").fadeOut(1000);//, function(){$(window).scrollTop(0);});
			}
			$(".zpBtNew").hide();
			$("#conHeader .fl a").hover(
			  function () {
				  $(this).children().stop(false,true);
				  $(this).children().fadeIn("normal");  
			  }, function () {
				  $(this).children().stop(false,true);
				  $(this).children().fadeOut("normal");
			});
			/*
			if($.cookie("view_keyup_tip_ed") != 'Y') {
				$('<div style="width:200px; height:30px; overflow:hidden; clear:both; background:#333; position: fixed; z-index:190; top:50px;">操控体验<a href="#" name="rmlink">X</a></div>').css({left:$("#conHeader").offset().left}).appendTo($(".zpConFullScreen"));
				//$.cookie('view_keyup_tip_ed', 'Y', {expires: 30});
			}
			*/
		}
	});
}
function zpConShow1(url) {
	$(".zpConFullScreen").stop(false,true);
	$(".fullScreen").stop(false,true);
	$(".fullScreen").css("left",$(window).width());
	//$(".fullScreen").html("");
	$(".fullScreen").show();
	$(".fullScreen").animate({left: 0},500,'easeOutExpo',function(){getZPCon(url);});
}
function zpConShow2(url) {
	$(".zpConFullScreen").stop(false,true);
	$(".fullScreen").stop(false,true);
	$(".fullScreen").css("left",-$(window).width());
	//$(".fullScreen").html("");
	$(".fullScreen").show();
	$(".fullScreen").animate({left: 0},500,'easeOutExpo',function(){getZPCon(url);});
}
/*
function zpConShow2(url) {
	$(".zpConFullScreen").stop(false,true);
	$(".fullScreen").stop(false,true);
	$(".fullScreen").css("top",$(window).scrollTop());
	$(".fullScreen").css("width",$(window).width());
	$(".fullScreen").css("height",$(window).height());
	$(".fullScreen").css("left",-$(window).width());
	$(".fullScreen").html("");
	$(".fullScreen").show();
	$.ajax({url: url,
		success:function(data){
			var bodyStartStr = '<body style="padding-top:40px;">';
			var zpConHtml = data.substring(data.indexOf(bodyStartStr)+bodyStartStr.length,data.indexOf('</body>'));
			$(".fullScreen").html(zpConHtml);
			$(".wrapTl").each(function(){
				var bgStyleCon = $(this).attr('bgStyleCon');
				if(bgStyleCon) {
					 if(bgStyleCon.indexOf('#') == 0) {
						 $(this).attr('style','background:'+bgStyleCon);
					 } else {
						 $(this).attr('style','background:url('+bgStyleCon+') repeat center center');
					 }
				}
			});
		}
	});
	$(".fullScreen").animate({left: 0},1000,'easeOutExpo',function(){
			$(".zpConFullScreen").html($(".fullScreen").html());
			$(".fullScreen").hide();
			$(".wrapTl").each(function(){
				var bgStyleCon = $(this).attr('bgStyleCon');
				if(bgStyleCon) {
					 if(bgStyleCon.indexOf('#') == 0) {
						 $(this).attr('style','background:'+bgStyleCon);
					 } else {
						 $(this).attr('style','background:url('+bgStyleCon+') repeat center center');
					 }
				}
			});
			$(".zpBtNew").hide();
			$("#conHeader .fl a").hover(
			  function () {
				  $(this).children().stop(false,true);
				  $(this).children().fadeIn("normal");  
			  }, function () {
				  $(this).children().stop(false,true);
				  $(this).children().fadeOut("normal");
			});
	});
}
*/

$('.conHeaderTop a.zpBtArrL').live('click',function(){
		var url = $(this).attr('href');
		if(!url) return;
		if(url=='javascript:void(0);') return;
		$(this).attr('href','javascript:void(0);');
		zpConShow1(url);
});
$('.conHeaderTop a.zpBtArrR').live('click',function(){
		var url = $(this).attr('href');
		if(!url) return;
		if(url=='javascript:void(0);') return;
		$(this).attr('href','javascript:void(0);');
		zpConShow2(url);
});
$('.conHeaderTop a.zpBt1').live('click',function(){
	zpConClose();
});

function sendXQ(){
	//if($('#sendBtn').attr('class') != 'submitBt') return;
	$('#sendInfo').html('');
	var send = true;
	var nickname = $('#nickname').val();
	var phone = $('#phone').val();
	var email = $('#email').val();
	var content = $('#content').val();
	var company = $('#company').val();
	if(nickname == '' || nickname == '填写姓名') {
		send = false;
		$('#nickname').css("border-color","#fd8200");
	}
	if(phone == '' || phone == '联系电话') {
		send = false;
		$('#phone').css("border-color","#fd8200");
	}
	if(email == '' || email == '电子邮箱') {
		send = false;
		$('#email').css("border-color","#fd8200");
	}
	if(content == '' || content == '填写详细需求') {
		send = false;
		$('#content').css("border-color","#fd8200");
	}
	if(!send) return;
	
	$('#sendBtn').hide();
	$('#sendInfo').html('正在发送, 请稍候...');
	//$('#sendBtn').attr('class', 'submitSending');
	$.ajax({url: "/gu"+"est"+"book"+"1.php",type: "get",data:{nickname:nickname,phone:phone,email:email,company:company,content:content},
		success:function(data){
				var result = eval('('+data+')');

				if(result.success) {
					   $('#sendInfo').html('');
					   $('#nickname').val('');
					   $('#phone').val('');
					   $('#email').val('');
					   $('#company').val('');
					   $('#content').val('');
					   $("[nickname=contactForm]").attr("readOnly",true);
					   $('#sendInfo').html('发送完成.');
					   $('#sendBtn').show();
				} else {
					   var errInfo = "";
					   $('#sendBtn').show();
				}
			},error:function(){alert("theresan error with AJAX");$('#sendBtn').attr('class', 'submitBt');}
	});
}

//Showtit
/*
$(".zp_box").hover (
function () {
	$(this).children().stop(false,true);
	$(this).children(".pop_tit").slideDown("fast");
	},
function () {
	$(this).children().stop(false,true);
	$(this).children(".pop_tit").slideUp("fast");
	}					
	)
	*/
$(".zp_box").live('mouseenter',function(){
	$(this).children().stop(false,true);
	$(this).children(".pop_tit").slideDown("fast");
}).live('mouseleave',function(){
	$(this).children().stop(false,true);
	$(this).children(".pop_tit").slideUp("fast");
});

$('.pages a').live('click',function(){
		var url = $(this).attr('href');
		if(!url) return;
		if(url=='javascript:void(0);') return;
		$(this).attr('href','javascript:void(0);');
		gotopage(url);
});
function gotopage(pageurl){
	$("#"+curPortflioi).load(pageurl+"&"+Math.random());//, function(){ $("#"+curPortflioi).animate({height: $("#"+curPortflioi+" .zp_list").height()+$("#"+curPortflioi+" .pages").height()}, 400); }
}
	$('#page21').load("/article1.php?pid=2&rd+"+Math.random());
	$('#page22').load("/article1.php?pid=22&rd+"+Math.random());
	$('#page23').load("/article1.php?pid=23&rd+"+Math.random());
	$('#page24').load("/article1.php?pid=24&rd+"+Math.random());
	$('#page25').load("/article1.php?pid=32&rd+"+Math.random());

	


$(".aboutPicB li").hover (
function () {
	$(this).children().stop(false,true);
	$(this).children(".picFc").fadeTo("normal",0.8);
	},
function () {
	$(this).children().stop(false,true);
	$(this).children(".picFc").fadeTo("normal",0);
	}
);



var speed=30
var MyMarh=setInterval(Marqueeh,speed)
demo2.innerHTML=demo1.innerHTML
//原理是不断的向demoh2中填入demoh1中的内容，然后将已经看不见的清除
//用一个两行一列的表格，上一列再放一个装填有内容的表格，定义为demoh1，下一列是空的TD，定义为demoh2
//SPEED是用来控制速度的。
demo.onmouseover=function(){ clearInterval(MyMarh) }
demo.onmouseout=function(){ MyMarh=setInterval(Marqueeh,speed) }
function Marqueeh(){
if(demo2.offsetHeight-demo.scrollTop<=0)
   demo.scrollTop-=demo1.offsetHeight
else{
   demo.scrollTop++
}
}
