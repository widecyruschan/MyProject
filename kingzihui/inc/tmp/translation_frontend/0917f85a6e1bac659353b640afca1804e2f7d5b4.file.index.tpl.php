<?php /* Smarty version Smarty-3.0.9, created on 2013-07-28 16:59:12         compiled from "E:/wwwroot/dmcc/inc/templates/frontend/default/index.tpl" */ ?><?php /*%%SmartyHeaderCode:2971851f4dd60240091-78254064%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');$_smarty_tpl->decodeProperties(array (  'file_dependency' =>   array (    '0917f85a6e1bac659353b640afca1804e2f7d5b4' =>     array (      0 => 'E:/wwwroot/dmcc/inc/templates/frontend/default/index.tpl',      1 => 1374981364,      2 => 'file',    ),  ),  'nocache_hash' => '2971851f4dd60240091-78254064',  'function' =>   array (  ),  'has_nocache_code' => false,)); /*/%%SmartyHeaderCode%%*/?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title><?php echo $_smarty_tpl->getVariable('web')->value['title'];?></title><base href="<?php echo $_smarty_tpl->getVariable('config')->value['url'];?>"><meta name="keywords" content="<?php echo $_smarty_tpl->getVariable('web')->value['keyword'];?>" /><meta name="description" content="<?php echo $_smarty_tpl->getVariable('web')->value['description'];?>" /><meta name="copyright" content="2009-2011 MYCMS <?php echo $_smarty_tpl->getVariable('mycms')->value['version'];?>" /><link rel="stylesheet" type="text/css" href="/inc/templates/frontend/default/style/tg_style.css" /><link rel="stylesheet" type="text/css" href="/inc/templates/frontend/default/style/tg_index.css" /><link rel="stylesheet" type="text/css" href="/inc/templates/frontend/default/style/news.css" /><!--[if IE 6]><script src="/inc/templates/frontend/default/script/DD_belatedPNG_0.0.8a-min.js"></script><script>DD_belatedPNG.fix('a.arrL,a.arrR');</script><![endif]--><script type="text/javascript" src="/inc/templates/frontend/default/script/jquery-1.4.2.min.js"></script><script type="text/javascript" src="/inc/templates/frontend/default/script/jquery.easing.1.3.js"></script><script type="text/javascript" src="/inc/templates/frontend/default/script/scrolltopcontrol.js"></script><script type="text/javascript" src="http://api.map.baidu.com/api?v=1.4"></script><style type="text/css">.mypng img {azimuth: expression( this.pngSet?this.pngSet=true:(this.nodeName == "IMG" && this.src.toLowerCase().indexOf('.png')>-1?(this.runtimeStyle.backgroundImage = "none", this.runtimeStyle.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + this.src + "', sizingMethod='image')", this.src = "transparent.gif"):(this.origBg = this.origBg? this.origBg :this.currentStyle.backgroundImage.toString().replace('url("', '').replace('")', ''), this.runtimeStyle.filter = "progid:DXImageTransform.Microsoft.AlphaImageLoader(src='" + this.origBg + "', sizingMethod='crop')", this.runtimeStyle.backgroundImage = "none")), this.pngSet=true);}</style></head><body><div class="zpConFullScreen"></div><div class="fullScreen"></div><div id="indexDiv" style="overflow:hidden;"><div class="topHeader">  <div id="header">    <div id="logo"><a href="/"><img src="<?php echo $_smarty_tpl->getVariable('web')->value['logo'];?>" width="220" height="62" /></a></div>        <a href="javascript:void(0);" class="searchBt">&nbsp;</a>    <div class="searchInput"><form action='search.php' method="get" name="search_news" id="search_news"><a href="javascript:void(0);" onclick="$('#search_news').submit();return false;" class="searchSubmitBt">&nbsp;</a><input class="word" type="text" name="word" id="word" tabindex="5" maxlength="50" value="<?php echo $_smarty_tpl->getVariable('lang')->value['page']['search'][0];?>" onfocus="if(this.value == '<?php echo $_smarty_tpl->getVariable('lang')->value['page']['search'][0];?>'){this.value = '';this.style.color = '#fd8200';}" onblur="if(this.value==''){this.value='<?php echo $_smarty_tpl->getVariable('lang')->value['page']['search'][0];?>';this.style.color = '#fd8200';}"  size="50"/></form>    </div><script type="text/javascript">$(function() {	$(".searchBt").toggle(	  function () {		  $(".searchInput").slideDown("fast");		$(this).addClass("searchOn");                    $('body').one('click', function() {    //给BODY绑定一次性点击事件   		        if($(".searchBt").hasClass("searchOn"))$(".searchBt").trigger("click");                    });	  },	  function () {		 $(".searchInput").slideUp("fast");		$(this).removeClass("searchOn");	  }	);        $(".searchInput input").click(function() {     //点击显示部分不隐藏                   return false;          });});</script>    <div class="top_nav" id="menuNav"><?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable; $_from = channel::navigation(); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}if ($_smarty_tpl->_count($_from) > 0){    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){?><a href="#<?php echo $_smarty_tpl->tpl_vars['n']->value['title'];?>" <?php if ($_smarty_tpl->tpl_vars['n']->value['title']=='HOME'){?> class="on"<?php }?>><?php echo $_smarty_tpl->tpl_vars['n']->value['title'];?>      <div class="navBg"<?php if ($_smarty_tpl->tpl_vars['n']->value['title']=='HOME'){?> style="display:block;" id="navBgOn"<?php }?>></div>      </a><?php }} ?></div>  </div></div><div id="HOME"></div><div id="focusBar" > <a href="javascript:void(0)" class="arrL" onclick="prePage()">&nbsp;</a><a href="javascript:void(0)" class="arrR" onclick="nextPage()">&nbsp;</a><?php $_smarty_tpl->tpl_vars['i'] = new Smarty_variable(1, null, null);?>  <ul class="mypng"><?php  $_smarty_tpl->tpl_vars['pic'] = new Smarty_Variable; $_from = photo::data(2,10,0,21); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}if ($_smarty_tpl->_count($_from) > 0){    foreach ($_from as $_smarty_tpl->tpl_vars['pic']->key => $_smarty_tpl->tpl_vars['pic']->value){?>    <li id="focusIndex<?php echo $_smarty_tpl->getVariable('i')->value;?>" style="<?php if ($_smarty_tpl->getVariable('i')->value==1){?>display:block;<?php }?>background:url(<?php echo $_smarty_tpl->tpl_vars['pic']->value['picture'][0];?>) repeat;">      <div class="focusL"><a href="<?php echo $_smarty_tpl->tpl_vars['pic']->value['sourceurl'];?>"><img src="<?php echo $_smarty_tpl->tpl_vars['pic']->value['picture'][1];?>" width="1000" height="644" /></a></div>      <div class="focusR"><a href="<?php echo $_smarty_tpl->tpl_vars['pic']->value['sourceurl'];?>"><img src="<?php echo $_smarty_tpl->tpl_vars['pic']->value['picture'][2];?>" width="1000" height="644" /></a></div>      <?php $_smarty_tpl->tpl_vars['i'] = new Smarty_variable($_smarty_tpl->getVariable('i')->value+1, null, null);?>    </li><?php }} ?>  </ul></div><!--Portfolio--><div class="colTitBar" id="Portfolio">  <h2 class="tit1" title="Portfolio"></h2></div><a name="Portfolios"  id="Portfolios" style="position:absolute;top:780px;"></a><div class="portfolioMenu"><a href="javascript:void(0)" id="box21" onclick="showPagei(1,5,2)">精选案例  <div class="menuBg" style="display:block;" title="menuBgOn">精选案例</div>  </a><a href="javascript:void(0)" id="box22" onclick="showPagei(2,5,2)">移动应用  <div class="menuBg">移动应用</div>  </a><a href="javascript:void(0)" id="box23" onclick="showPagei(3,5,2)">网站界面  <div class="menuBg">网站界面</div>  </a><a href="javascript:void(0)" id="box24" onclick="showPagei(4,5,2)">标志图标  <div class="menuBg">标志图标</div>  </a><!-- a href="javascript:void(0)" id="box25" onclick="showPagei(5,5,2)">平面印刷  <div class="menuBg">平面印刷</div>  </a --></div><!--作品begin--><!--page1--><div  id="page21" style="display:block;"></div><!--page1end--><!--page2--><div  id="page22" style="display:none;"></div><!--page2end--><!--page3--><div  id="page23" style="display:none;"></div><!--page3end--><!--page4--><div  id="page24" style="display:none;"></div><!--page4end--><!--作品end--><!--services--><div class="colTitBar" id="Services">  <h2 class="tit2" title="Services"></h2></div><div class="cl" style=" width:100%;position:relative;">  <div class="servicesPop">    <!--serFocus begin-->    <div id="serFocus">      <div class="fr" style="position:relative;"><a href="javascript:void(0)" class="close" onclick="closeSerPop()">&nbsp;</a></div>      <div class="box" id="flash1">        <div class="yidongL"><img src="/inc/templates/frontend/default/images/services_b1.jpg" width="200" height="273" /></div>        <div class="servicesCon">          <div class="serTit"><span class="black font18">移动应用产品解决方案</span><br />            <span class="font16">Mobile app solutions</span></div>          <div class="cl"><span class="Apple">IOS</span><span class="Android">Android</span><span class="Win8">Windows Phone 8</span></div>          <ul>            <li>iPhone/Android/Win8 APP交互设计 视觉设计 功能定制开发 基于HTML5开发的网页APP</li>            <li>iPad/iPad Retina/iPad Mini/Android/Win8 APP交互设计 视觉设计 功能定制开发</li>          </ul>          <div class="cl"><a href="/article.php?pid=22" class="yidongBt white">移动应用案例</a></div>        </div>      </div>      <div class="box" id="flash2">        <div class="fl"><img src="/inc/templates/frontend/default/images/services_c1.jpg" width="405" height="273" /></div>        <div class="servicesTxt">          <div class="serTit" style="padding-top:15px;"><span class="black font18">应用软件解决方案</span><br />            <span class="font16">Application software solutions</span></div>          <p>我们提供Windows及Mac等多操作系统多平台的应用软件交互设计、视觉设计、应用端开发服务。从用户研究、需求沟通、草图方案、原型制图、视觉设计、定制开发、软件测试维护等全方位的为客户提供最有效的解决方案。</p>        </div>      </div>      <div class="box" id="flash3">        <div class="servicesTxt" style="padding-left:85px;">          <div class="serTit" style="padding-top:15px;"><span class="black font18">网站及网络产品解决方案</span><br />            <span class="font16">Web and network solutions</span></div>          <p>根据用户的需求、市场状况、企业情况等进行综合分析可用性的Web解决方案，有效提升企业形象及品牌的知名度。从产品交互原型设计、视觉设计、HTML5页面开发、功能定制开发等高品质、一体化流程的网站建设服务。</p>        </div>        <div class="fl"><img src="/inc/templates/frontend/default/images/services_f1.jpg" width="320" height="273" /></div>      </div>    </div>    <div class="flash_bar"> <span class="no" id="f1" onclick="changeflash(1)"></span> <span class="no" id="f2" onclick="changeflash(2)"></span> <span class="no" id="f3" onclick="changeflash(3)"></span></div>    <!--serFocus end-->  </div>  <div id="servicesBox"><div id="serBox1" class="serBox" onclick="serFocus(1)">      <div class="serBoxOn"></div>      <div class="pic1 mypng"><img src="/inc/templates/frontend/default/images/ser_box1.png" /></div>      <div class="pic2 mypng"><img src="/inc/templates/frontend/default/images/ser_box1b.png" /></div>      <div class="txt1"><span class="tit">移动应用产品解决方案</span>iOS/Android/Win8 APP交互设计、视觉设计、HTML5开发、功能定制开发</div>      <div class="txt2"><span class="tit">移动应用产品解决方案</span>iOS/Android/Win8 APP交互设计、视觉设计、HTML5开发、功能定制开发</div>    </div>    <div class="fgH20"></div>    <div id="serBox2" class="serBox" onclick="serFocus(2)">      <div class="serBoxOn"></div>      <div class="pic1 mypng"><img src="/inc/templates/frontend/default/images/ser_box2.png" /></div>      <div class="pic2 mypng"><img src="/inc/templates/frontend/default/images/ser_box2b.png" /></div>      <div class="txt1"><span class="tit">应用软件解决方案</span>多操作系统多平台的应用软件交互设计、视觉设计、应用端开发服务</div>      <div class="txt2"><span class="tit">应用软件解决方案</span>多操作系统多平台的应用软件交互设计、视觉设计、应用端开发服务</div>    </div>    <div class="fgH20"></div>    <div id="serBox3" class="serBox" onclick="serFocus(3)">      <div class="serBoxOn"></div>      <div class="pic1 mypng"><img src="/inc/templates/frontend/default/images/ser_box3.png" /></div>      <div class="pic2 mypng"><img src="/inc/templates/frontend/default/images/ser_box3b.png" /></div>      <div class="txt1"><span class="tit">网站及网络产品解决方案</span>根据用户的需求、市场状况、企业情况等进行综合分析可用性的Web解决方案 </div>      <div class="txt2"><span class="tit">网站及网络产品解决方案</span>根据用户的需求、市场状况、企业情况等进行综合分析可用性的Web解决方案 </div>    </div>  </div></div><!--clients_box--><div class="clients_box">  <ul>  <?php  $_smarty_tpl->tpl_vars['pic'] = new Smarty_Variable; $_from = photo::data(1,18,0,31); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}if ($_smarty_tpl->_count($_from) > 0){    foreach ($_from as $_smarty_tpl->tpl_vars['pic']->key => $_smarty_tpl->tpl_vars['pic']->value){?>  <?php  $_smarty_tpl->tpl_vars['pics'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['pp'] = new Smarty_Variable; $_from = $_smarty_tpl->tpl_vars['pic']->value['picture']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}if ($_smarty_tpl->_count($_from) > 0){    foreach ($_from as $_smarty_tpl->tpl_vars['pics']->key => $_smarty_tpl->tpl_vars['pics']->value){ $_smarty_tpl->tpl_vars['pp']->value = $_smarty_tpl->tpl_vars['pics']->key;?>    <li><img src="<?php echo $_smarty_tpl->tpl_vars['pic']->value['picture'][$_smarty_tpl->tpl_vars['pp']->value];?>" width="165" height="80" alt="<?php echo $_smarty_tpl->tpl_vars['pic']->value['description'][$_smarty_tpl->tpl_vars['pp']->value];?>" /></li>    <?php }} ?>  <?php }} ?>  </ul></div><!--about--><div class="colTitBar" id="About">  <h2 class="tit3" title="About us"></h2></div><div class="aboutPicB">  <ul><?php  $_smarty_tpl->tpl_vars['a'] = new Smarty_Variable; $_from = article::data(2,3,0,25); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}if ($_smarty_tpl->_count($_from) > 0){    foreach ($_from as $_smarty_tpl->tpl_vars['a']->key => $_smarty_tpl->tpl_vars['a']->value){?>    <li class="li_1"><div class="picFc"><a href="<?php echo $_smarty_tpl->tpl_vars['a']->value['URL'];?> " target="_blank">&nbsp;</a></div><img src="<?php echo $_smarty_tpl->tpl_vars['a']->value['picture'][1];?> " class="grayImg" /><img src="<?php echo $_smarty_tpl->tpl_vars['a']->value['picture'][2];?> " class="colorImg" /></li>    <?php }} ?>  </ul></div><div class="aboutTab">  <div class="main tc"><span class="tab1" id="box11" onclick="showPagei(1,4,1)">关于我们</span><span class="tab2" id="box12" onclick="showPagei(2,4,1)">荣誉奖项</span><span class="tab2" id="box13" onclick="showPagei(3,4,1)">最新动态</span><span class="tab2" id="box14" onclick="showPagei(4,4,1)">加入我们</span></div></div><div class="aboutMain">  <!--<div id="container1"></div>-->  <!--page1-->  <div  id="page11" style="display:block;"><?php $_smarty_tpl->tpl_vars['a'] = new Smarty_variable(array_shift(article::data(2,1,0,25)), null, null);?>    <div class="aboutBox"><?php echo $_smarty_tpl->getVariable('a')->value['introduction'];?></div>    <div class="aboutTxt">      <div class="box" style="width:310px; padding:0px;"><img src="/inc/templates/frontend/default/images/about_num1.gif" width="310" height="100" />        <p style="padding-left:8px;">我们通过研究理解用户的思维、行为、和目标，挖掘用户对产品使用的潜在需求，通过我们服务于各行业客户的丰富经验，结合品牌的优势进行分析，让用户在情绪上、行为上感知产品的创新、感受完美的体验。超越品牌的价值。</p>      </div>      <div class="box"><img src="/inc/templates/frontend/default/images/about_num2.gif" width="310" height="100" />        <p>我们是一只富有激情的创新团队。我们将设计通过情感的表达把用户和产品很自然的连接在一起，让用户享受使用产品的愉悦，以此来强化对产品、品牌的体验认知！通过自然的交互和生动的设计展现出来，用一个充满情感化的设计打动用户！</p>      </div>      <div class="box"><img src="/inc/templates/frontend/default/images/about_num3.gif" width="310" height="100" />        <p>为客户提供品牌化、一站式的解决方案。服务涵盖了互联网，掌上移动设备、桌面平台以及电子消费类产品等。为客户提供从品牌设计、概念设计、交互设计、视觉设计、功能研发到最终产品实现。为客户提供真正具有创新价值的产品体验。</p>      </div>      <div class="cl"></div>    </div>  </div>  <!--page2-->  <div  id="page12" style="display:none;">    <p class="rongyu">双晖传媒专精于高品质的全方位设计服务，拥有实力坚强的研发团队及国内外顶尖水平的设计人才，核心成员曾服务于微软、雅虎（美国）、淘宝、新浪、腾讯等全球知名企业，拥有丰富的视觉及交互设计经验。多名设计师在国内外获得设计相关奖项，被多家媒体专访，案例被国内外设计网站收录，如：Newswebpic，CSS DESIGN AWARDS，CSS Winner，CSS Light，站酷，Iconfans，68design，UIRSS，ChinaUI等。 </p>    <?php  $_smarty_tpl->tpl_vars['a'] = new Smarty_Variable; $_from = article::data(2,5,0,28); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}if ($_smarty_tpl->_count($_from) > 0){    foreach ($_from as $_smarty_tpl->tpl_vars['a']->key => $_smarty_tpl->tpl_vars['a']->value){?>    <div class="aboutListBox" onclick="location.href='<?php echo $_smarty_tpl->tpl_vars['a']->value['URL'];?>';"> <img src="<?php echo $_smarty_tpl->tpl_vars['a']->value['picture'][0];?>" width="175" height="110" />      <div class="tit"><?php echo $_smarty_tpl->tpl_vars['a']->value['title'];?></div>      <p><?php echo $_smarty_tpl->tpl_vars['a']->value['introduction'];?></p>    </div>    <?php }} ?>              </div>  <!--page3-->  <div  id="page13" style="display:none;">        <?php  $_smarty_tpl->tpl_vars['a'] = new Smarty_Variable; $_from = article::data(2,5,0,30); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}if ($_smarty_tpl->_count($_from) > 0){    foreach ($_from as $_smarty_tpl->tpl_vars['a']->key => $_smarty_tpl->tpl_vars['a']->value){?>    <div class="aboutListBox" onclick="location.href='<?php echo $_smarty_tpl->tpl_vars['a']->value['URL'];?>';"> <img src="<?php echo $_smarty_tpl->tpl_vars['a']->value['picture'][0];?>" width="175" height="110" />      <div class="tit"><?php echo $_smarty_tpl->tpl_vars['a']->value['title'];?></div>      <p><?php echo $_smarty_tpl->tpl_vars['a']->value['introduction'];?></p>    </div>    <?php }} ?>                    <div class="tc" style="padding-top:15px; height:38px; clear:both;"><a href="/article.php?pid=25" class="ckAll white">更多动态</a></div>  </div>  <!--page4-->  <div  id="page14" style="display:none;">          <?php  $_smarty_tpl->tpl_vars['a'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable; $_from = article::data(2,4,0,29); if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}if ($_smarty_tpl->_count($_from) > 0){    foreach ($_from as $_smarty_tpl->tpl_vars['a']->key => $_smarty_tpl->tpl_vars['a']->value){ $_smarty_tpl->tpl_vars['i']->value = $_smarty_tpl->tpl_vars['a']->key;?>    <div <?php if ($_smarty_tpl->tpl_vars['i']->value<3){?>class="zpBox"<?php }else{ ?>class="zpBoxEnd"<?php }?>>      <div class="tit"><?php echo $_smarty_tpl->tpl_vars['a']->value['title'];?></div>            <p<?php echo $_smarty_tpl->tpl_vars['a']->value['content'];?></p>    </div>       <?php }} ?>          </div>  <!--page4 end-->  <div class="cl"></div></div><!--contact--><div class="colTitBar" id="Contact">  <h2 class="tit4" title="Contact us"></h2></div><div class="main">  <div class="contactL">    <ul>      <li class="tit">告诉我们您的需求</li>      <li style="height:38px;"><input type="hidden" class="input" name="title" id="title" value="在线留言"/>        <input name="phone" id="phone" type="text" class="input1 fr" value="联系电话" title="contactForm" onFocus="if(value == '联系电话'){value=''}" onBlur="if(!value){value=defaultValue;}" />        <input name="nickname" id="nickname" type="text" class="input1 fl" value="填写姓名" title="contactForm" onFocus="if(value == '填写姓名'){value=''}" onBlur="if(!value){value=defaultValue;}" />      </li>      <li>        <input name="email" id="email" type="text" class="input2" value="电子邮箱" title="contactForm" onFocus="if(value == '电子邮箱'){value=''}" onBlur="if(!value){value=defaultValue;}" />      </li>      <li>        <input name="company" id="company" type="text" class="input2" value="您的公司" title="contactForm" onFocus="if(value == '您的公司'){value=''}" onBlur="if(!value){value=defaultValue;}" />      </li>      <li style="height:253px; overflow:hidden;">        <textarea name="content" id="content" cols="" title="contactForm" class="input3" onFocus="if(value == '填写详细需求'){value=''}" onBlur="if(!value){value=defaultValue;}">填写详细需求</textarea>      </li>      <li style="height:32px;"><a href="javascript:sendXQ();" class="submitBt white" id="sendBtn">发送</a>        <div class="fl" style=" line-height:32px;">&nbsp;&nbsp;<span class="gray" id="sendInfo">我们将在1个工作日内回复，资料会保密处理。</span></div>      </li>    </ul>  </div>  <div class="contactR">    <p class="tit">与我们在线洽谈</p>    <div><a target="_blank" href="#" class="qqBt fl white">点击咨询</a><a target="_blank" href="#" class="qqBt fr white">点击咨询</a></div>    <div class="contactTxt">商务 : +86 18601357649&nbsp;&nbsp;<span class="gray">[产品/视觉设计咨询]</span><br />      电话 : 010-84874449&nbsp;&nbsp;<span class="gray">[周一至周五 10:00-19:00]</span><br />      QQ  : 623326742 / 5629313<br />      邮箱 : sh@tg-vision.com</div>    <div id="baidumapBox" class="mapBox"><img src="/inc/templates/frontend/default/images/temp_map.jpg" width="320" height="250" /></div>    </div>  <div class="cl"></div></div><?php $_template = new Smarty_Internal_Template('component_footer.tpl', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null); echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?></div><script type="text/javascript" src="/inc/templates/frontend/default/script/index.js"></script></body></html>