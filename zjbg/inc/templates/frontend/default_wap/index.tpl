<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>{:$web['title']:}</title>

<meta name="keywords" content="{:$web['keyword']:}" />
<meta name="description" content="{:$web['description']:}" />
<meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
<link rel="stylesheet" type="text/css" href="/inc/templates/frontend/default_wap/style/tg_style.css" />
<link rel="stylesheet" type="text/css" href="/inc/templates/frontend/default_wap/style/tg_index.css" />
<link rel="stylesheet" type="text/css" href="/inc/templates/frontend/default_wap/style/news.css" />



<script language="javascript">
function is_mobile() { 
var s=navigator.userAgent.toLowerCase();
 if( s.match(/android/i)
 || s.match(/webos/i)
 || s.match(/iphone/i)
 || s.match(/ipad/i)
 || s.match(/ipod/i)
 || s.match(/blackberry/i)
 || s.match(/windows phone/i)
 || s.match(/opera mini/i)
 || s.match(/opera mobile/i)
 || s.match(/applewebkit.*mobile/i)
 || s.match(/ mobile /i)
 ){
    return true;
  }
 else {
    return false;
  }
}
	var is_mob=is_mobile();
	if(!is_mob){
		 window.location="/app.php?a=lang&i=1"
		}
</script>
</head>
<body>
<div class="zpConFullScreen"></div>
<div class="fullScreen"></div>
<div id="indexDiv" style="overflow:hidden;">
<div class="topHeader">
  <div id="header">
    <div id="logo"><a href="/"><img src="{:$web['logo']:}" width="220" height="62" /></a></div>
        <a href="javascript:void(0);" class="searchBt">&nbsp;</a>
    <div class="searchInput">

    </div>


    <div class="top_nav" id="menuNav">{:foreach channel::navigation() as $n:}<a href="{:$n['URL']:}" {:if $n['title'] == 'HOME':} class="on"{:/if:}>{:$n['title']:}
      <div class="navBg"{:if $n['title'] == 'HOME':} style="display:block;" id="navBgOn"{:/if:}></div>
      </a>{:/foreach:}</div>
  </div>
</div>
<div id="HOME"></div>
<div id="focusBar" > <a href="javascript:void(0)" class="arrL" onclick="prePage()">&nbsp;</a><a href="javascript:void(0)" class="arrR" onclick="nextPage()">&nbsp;</a>{:$i=1:}
  <ul class="mypng">{:foreach photo::data(2,10,0,21) as $pic:}
    <li id="focusIndex{:$i:}" style="{:if $i==1:}display:block;{:/if:}background:url({:$pic['picture'][0]:}) repeat;">
      <div class="focusL"><a href="{:$pic['sourceurl']:}"><img src="{:$pic['picture'][1]:}" width="1000" height="644" /></a></div>
      <div class="focusR"><a href="{:$pic['sourceurl']:}"><img src="{:$pic['picture'][2]:}" width="1000" height="644" /></a></div>
      {:$i=$i+1:}
    </li>{:/foreach:}
  </ul>
</div>
<!--Portfolio-->
<div class="colTitBar" id="Portfolio">
  <h2 class="tit1" title="Portfolio"></h2>
</div>
<a name="Portfolios"  id="Portfolios" style="position:absolute;top:780px;"></a>
<div class="portfolioMenu">
<a href="javascript:void(0)" id="box21" onclick="showPagei(1,5,2)">精选案例
  <div class="menuBg" style="display:block;" title="menuBgOn">精选案例</div>
  </a><a href="javascript:void(0)" id="box22" onclick="showPagei(2,5,2)">移动应用
  <div class="menuBg">移动应用</div>
  </a><a href="javascript:void(0)" id="box23" onclick="showPagei(3,5,2)">网站界面
  <div class="menuBg">网站界面</div>
  </a><a href="javascript:void(0)" id="box24" onclick="showPagei(4,5,2)">平面广告
  <div class="menuBg">平面广告</div>
  </a><a href="javascript:void(0)" id="box25" onclick="showPagei(5,5,2)">拍照修图
  <div class="menuBg">拍照修图</div>
  </a><!-- a href="javascript:void(0)" id="box25" onclick="showPagei(5,5,2)">平面印刷
  <div class="menuBg">平面印刷</div>
  </a --></div>
<!--作品begin-->
<!--page1-->
<div  id="page21" class="page21" style="display:block;">

</div>
<!--page1end-->
<!--page2-->
<div id="page22" style="display:none;">
</div>
<!--page2end-->
<!--page3-->
<div  id="page23" style="display:none;">
</div>

<!--page3end-->
<!--page4-->
<div  id="page24" style="display:none;">
</div>

<!--page4end-->
<!--page5-->
<div  id="page25" style="display:none;">
</div>

<!--page5end-->
<!--作品end-->
<!--services-->
<div class="colTitBar" id="Services">
  <h2 class="tit2" title="Services"></h2>
</div>
<div class="cl" style=" width:100%;position:relative;">
  <div class="servicesPop">
    <!--serFocus begin-->
    <div id="serFocus">
      <div class="fr" style="position:relative;"><a href="javascript:void(0)" class="close" onclick="closeSerPop()">&nbsp;</a></div>
      <div class="box" id="flash1">
        <div class="yidongL"><img src="/inc/templates/frontend/default/images/services_b1.jpg" width="200" height="273" /></div>
        <div class="servicesCon">
          <div class="serTit"><span class="black font18">移动应用产品解决方案</span><br />
            <span class="font16">Mobile app solutions</span></div>
          <div class="cl"><span class="Apple">IOS</span><span class="Android">Android</span><span class="Win8">Windows Phone 8</span></div>
          <ul>
            <li>iPhone/Android/Win8 APP交互设计 视觉设计 功能定制开发 基于HTML5开发的网页APP</li>
            <li>iPad/iPad Retina/iPad Mini/Android/Win8 APP交互设计 视觉设计 功能定制开发</li>
          </ul>
          <div class="cl"><a href="/article.php?pid=22" class="yidongBt white">移动应用案例</a></div>
        </div>
      </div>
      <div class="box" id="flash2">
        <div class="fl"><img src="/inc/templates/frontend/default/images/services_c1.jpg" width="405" height="273" /></div>
        <div class="servicesTxt">
          <div class="serTit" style="padding-top:15px;"><span class="black font18">应用软件解决方案</span><br />
            <span class="font16">Application software solutions</span></div>
          <p>我们提供Windows及Mac等多操作系统多平台的应用软件交互设计、视觉设计、应用端开发服务。从用户研究、需求沟通、草图方案、原型制图、视觉设计、定制开发、软件测试维护等全方位的为客户提供最有效的解决方案。</p>
        </div>
      </div>
      <div class="box" id="flash3">
        <div class="servicesTxt" style="padding-left:85px;">
          <div class="serTit" style="padding-top:15px;"><span class="black font18">网站及网络产品解决方案</span><br />
            <span class="font16">Web and network solutions</span></div>
          <p>根据用户的需求、市场状况、企业情况等进行综合分析可用性的Web解决方案，有效提升企业形象及品牌的知名度。从产品交互原型设计、视觉设计、HTML5页面开发、功能定制开发等高品质、一体化流程的网站建设服务。</p>
        </div>
        <div class="fl"><img src="/inc/templates/frontend/default/images/services_f1.jpg" width="320" height="273" /></div>
      </div>
    </div>
    <div class="flash_bar"> <span class="no" id="f1" onclick="changeflash(1)"></span> <span class="no" id="f2" onclick="changeflash(2)"></span> <span class="no" id="f3" onclick="changeflash(3)"></span></div>
    <!--serFocus end-->
  </div>
  <div id="servicesBox">
<div id="serBox1" class="serBox" onclick="serFocus(1)">
      <div class="serBoxOn"></div>
      <div class="pic1 mypng"><img src="/inc/templates/frontend/default/images/ser_box1.png" /></div>
      <div class="pic2 mypng"><img src="/inc/templates/frontend/default/images/ser_box1b.png" /></div>
      <div class="txt1"><span class="tit">移动应用产品解决方案</span>iOS/Android/Win8 APP交互设计、视觉设计、HTML5开发、功能定制开发</div>
      <div class="txt2"><span class="tit">移动应用产品解决方案</span>iOS/Android/Win8 APP交互设计、视觉设计、HTML5开发、功能定制开发</div>
    </div>
    <div class="fgH20"></div>
    <div id="serBox2" class="serBox" onclick="serFocus(2)">
      <div class="serBoxOn"></div>
      <div class="pic1 mypng"><img src="/inc/templates/frontend/default/images/ser_box2.png" /></div>
      <div class="pic2 mypng"><img src="/inc/templates/frontend/default/images/ser_box2b.png" /></div>
      <div class="txt1"><span class="tit">应用软件解决方案</span>多操作系统多平台的应用软件交互设计、视觉设计、应用端开发服务</div>
      <div class="txt2"><span class="tit">应用软件解决方案</span>多操作系统多平台的应用软件交互设计、视觉设计、应用端开发服务</div>
    </div>
    <div class="fgH20"></div>
    <div id="serBox3" class="serBox" onclick="serFocus(3)">
      <div class="serBoxOn"></div>
      <div class="pic1 mypng"><img src="/inc/templates/frontend/default/images/ser_box3.png" /></div>
      <div class="pic2 mypng"><img src="/inc/templates/frontend/default/images/ser_box3b.png" /></div>
      <div class="txt1"><span class="tit">网站及网络产品解决方案</span>根据用户的需求、市场状况、企业情况等进行综合分析可用性的Web解决方案 </div>
      <div class="txt2"><span class="tit">网站及网络产品解决方案</span>根据用户的需求、市场状况、企业情况等进行综合分析可用性的Web解决方案 </div>
    </div>
  </div>
</div>
<!--clients_box-->
<div class="clients_box">
  <ul>
  {:foreach photo::data(1,18,0,31) as $pic:}
  {:foreach $pic['picture'] as $pp=>$pics:}
    <li><img src="{:$pic['picture'][$pp]:}" width="165" height="80" alt="{:$pic['description'][$pp]:}" /></li>
    {:/foreach:}
  {:/foreach:}
  </ul>
</div>
<!--about-->
<div class="colTitBar" id="About">
  <h2 class="tit3" title="About us"></h2>
</div>
<!--div class="aboutPicB">
  <ul>{:foreach article::data(2,3,0,25) as $tt => $a:}
    <li class="li_{:$tt+1:}"><div class="picFc"><a href="{:$a['URL']:} " target="_blank">&nbsp;</a></div><img src="{:$a['picture'][1]:} " class="grayImg" /><img src="{:$a['picture'][2]:} " class="colorImg" /></li>
    {:/foreach:}
  </ul>
</div-->
<div class="aboutTab">
  <div class="main tc"><span class="tab1" id="box11" onclick="showPagei(1,4,1)">WebApp</span><span class="tab2" id="box12" onclick="showPagei(2,4,1)">MobileApp</span><span class="tab2" id="box13" onclick="showPagei(3,4,1)">Animation</span><span class="tab2" id="box14" onclick="showPagei(4,4,1)">Database</span></div>
</div>
<div class="aboutMain">
  <!--<div id="container1"></div>-->
  <!--page1-->
  <div  id="page11" style="display:block;">
        {:foreach article::data(2,5,0,26) as $a:}
    <div class="aboutListBox" onclick="location.href='{:$a['URL']:}';"> <img src="{:$a['picture'][0]:}" width="175" height="110" />
      <div class="tit">{:$a['title']:}</div>
      <p>{:$a['introduction']:}</p>
    </div>
    {:/foreach:}

    
    
    
    
    <div class="tc" style="padding-top:15px; height:38px; clear:both;"><a href="/article.php?pid=25" class="ckAll white">更多动态</a></div>
  </div>
  <!--page2-->
  <div  id="page12" style="display:none;">
        {:foreach article::data(2,5,0,27) as $a:}
    <div class="aboutListBox" onclick="location.href='{:$a['URL']:}';"> <img src="{:$a['picture'][0]:}" width="175" height="110" />
      <div class="tit">{:$a['title']:}</div>
      <p>{:$a['introduction']:}</p>
    </div>
    {:/foreach:}

    
    
    
    
    <div class="tc" style="padding-top:15px; height:38px; clear:both;"><a href="/article.php?pid=25" class="ckAll white">更多动态</a></div>
  </div>
  <!--page3-->
  <div  id="page13" style="display:none;">
        {:foreach article::data(2,5,0,28) as $a:}
    <div class="aboutListBox" onclick="location.href='{:$a['URL']:}';"> <img src="{:$a['picture'][0]:}" width="175" height="110" />
      <div class="tit">{:$a['title']:}</div>
      <p>{:$a['introduction']:}</p>
    </div>
    {:/foreach:}

    
    
    
    
    <div class="tc" style="padding-top:15px; height:38px; clear:both;"><a href="/article.php?pid=25" class="ckAll white">更多动态</a></div>
  </div>
  <!--page4-->
  <div  id="page14" style="display:none;">
        {:foreach article::data(2,5,0,30) as $a:}
    <div class="aboutListBox" onclick="location.href='{:$a['URL']:}';"> <img src="{:$a['picture'][0]:}" width="175" height="110" />
      <div class="tit">{:$a['title']:}</div>
      <p>{:$a['introduction']:}</p>
    </div>
    {:/foreach:}

    
    
    
    
    <div class="tc" style="padding-top:15px; height:38px; clear:both;"><a href="/article.php?pid=25" class="ckAll white">更多动态</a></div>
  </div>
  <!--page4 end-->
  <div class="cl"></div>
</div>
<!--contact-->
<div class="colTitBar" id="Contact">
  <h2 class="tit4" title="Contact us"></h2>
</div>
<div class="main">
  <div class="contactL">
    <ul>
      <li class="tit">告诉我们您的需求</li>
      <li style="height:38px;"><input type="hidden" class="input" name="title" id="title" value="在线留言"/>
        <input name="phone" id="phone" type="text" class="input1 fr" value="联系电话" title="contactForm" onFocus="if(value == '联系电话'){value=''}" onBlur="if(!value){value=defaultValue;}" />
        <input name="nickname" id="nickname" type="text" class="input1 fl" value="填写姓名" title="contactForm" onFocus="if(value == '填写姓名'){value=''}" onBlur="if(!value){value=defaultValue;}" />
      </li>
      <li>
        <input name="email" id="email" type="text" class="input2" value="电子邮箱" title="contactForm" onFocus="if(value == '电子邮箱'){value=''}" onBlur="if(!value){value=defaultValue;}" />
      </li>
      <li>
        <input name="company" id="company" type="text" class="input2" value="您的公司" title="contactForm" onFocus="if(value == '您的公司'){value=''}" onBlur="if(!value){value=defaultValue;}" />
      </li>
      <li style="height:253px; overflow:hidden;">
        <textarea name="content" id="content" cols="" title="contactForm" class="input3" onFocus="if(value == '填写详细需求'){value=''}" onBlur="if(!value){value=defaultValue;}">填写详细需求</textarea>
      </li>
      <li style="height:32px;"><a href="javascript:sendXQ();" class="submitBt white" id="sendBtn">发送</a>
        <div class="fl" style=" line-height:32px;">&nbsp;&nbsp;<span class="gray" id="sendInfo">我们将在1个工作日内回复，资料会保密处理。</span></div>
      </li>
    </ul>
  </div>
  <div class="contactR">
    <p class="tit">与我们在线洽谈</p>
    <div><a target="_blank" href="#" class="qqBt fl white">点击咨询</a><a target="_blank" href="#" class="qqBt fr white">点击咨询</a></div>
    <div class="contactTxt">商务 : {:$web['phone'][0]:}&nbsp;&nbsp;<span class="gray">[产品/视觉设计咨询]</span><br />
      电话 : {:$web['phone'][1]:}<span class="gray">[周一至周五 10:00-19:00]</span><br />
      QQ  : {:$web['qq'][0]:}<br />
      邮箱 : {:$web['email'][0]:}</div>
    </div>
  <div class="cl"></div>
</div><script type="text/javascript" src="/inc/templates/frontend/default/script/index.js"></script>

{:include file='component_footer.tpl':}
</div>
</body>
</html>{:$config['traffic_statistics']:}


