<?php /* Smarty version Smarty-3.0.9, created on 2014-12-16 01:18:25
         compiled from "E:/website/tf/inc/templates/frontend/default/search.tpl" */ ?>
<?php /*%%SmartyHeaderCode:23765548f17e170f435-74996041%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fa808f528f3de76d76e2bfb0cf1ccd8508495407' => 
    array (
      0 => 'E:/website/tf/inc/templates/frontend/default/search.tpl',
      1 => 1418117416,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '23765548f17e170f435-74996041',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
)); /*/%%SmartyHeaderCode%%*/?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title><?php echo $_smarty_tpl->getVariable('web')->value['title'];?>
</title>
<meta name="keywords" content="<?php echo $_smarty_tpl->getVariable('web')->value['keyword'];?>
" />
<meta name="description" content="<?php echo $_smarty_tpl->getVariable('web')->value['description'];?>
" />
<meta name="copyright" content="2009-2011 MYCMS <?php echo $_smarty_tpl->getVariable('mycms')->value['version'];?>
" />
<link rel="stylesheet" type="text/css" href="/inc/templates/frontend/default/style/tg_style.css" />
<link rel="stylesheet" type="text/css" href="/inc/templates/frontend/default/style/news.css" />
<script type="text/javascript" src="/inc/templates/frontend/default/script/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/inc/templates/frontend/default/script/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="/inc/templates/frontend/default/script/scrolltopcontrol.js"></script>
</head>
<body>
<div class="topHeader">
  <div id="header">
    <div id="logo"><a href="/"><img src="/skin/tg2013/images/logo.jpg" width="220" height="62" /></a></div>
        <a href="javascript:void(0);" class="searchBt">&nbsp;</a>
    <div class="searchInput">
<form action='/TG/search/index.php' method="post" name="search_news" id="search_news">
<a href="javascript:void(0);" onclick="$('#search_news').submit();return false;" class="searchSubmitBt">&nbsp;</a>
<input type="hidden" name="classid" value="16" />
<input type="hidden" name="show" value="title,smalltext,newstext" />
<input name="keyboard" type="text" id="keyboard" size="42" />
<input type="hidden" name="Submit22" class="searchSubmitBt" value="搜索" />
</form>
    </div>

<script type="text/javascript">
$(function() {
	$(".searchBt").toggle(
	  function () {
		  $(".searchInput").slideDown("fast");
		$(this).addClass("searchOn");
                    $('body').one('click', function() {    //给BODY绑定一次性点击事件   
		        if($(".searchBt").hasClass("searchOn"))$(".searchBt").trigger("click");
                    });
	  },
	  function () {
		 $(".searchInput").slideUp("fast");
		$(this).removeClass("searchOn");
	  }
	);
        $(".searchInput input").click(function() {     //点击显示部分不隐藏   
                return false;   
       });
});
</script>
    <div class="top_nav" id="menuNav"><a href="/">Home
      <div class="navBg"></div>
      </a><a href="/#Portfolio">Portfolio
      <div class="navBg"></div>
      </a><a href="/#services">Services
      <div class="navBg"></div>
      </a><a href="/#about">About
      <div class="navBg"></div>
      </a><a href="/#contact">Contact
      <div class="navBg"></div>
      </a></div>
  </div>
</div>
<div class="colTitBar" id="Portfolio">
  <h2 class="tit5" title="News"></h2>
  <!-- h2 class="search">系统搜索到约有<strong>5</strong>项符合<strong>app</strong>的查询结果</h2 -->
</div>
<div class="main">
  <!-- div id="searchPages1" class="pagesSh" style="text-align:left; padding-bottom:10px;"></div -->
  <div class="txt" style="text-align:left; padding-top:35px;">为您找到 "<?php echo $_smarty_tpl->getVariable('mycms')->value['search_keyword'];?>
" 相关结果 <strong><?php echo $_smarty_tpl->getVariable('page_data')->value['total'];?>
</strong> 个</div>
  <div class="newsL">
    <ul class="newsList">
<?php  $_smarty_tpl->tpl_vars['n'] = new Smarty_Variable;
 $_smarty_tpl->tpl_vars['i'] = new Smarty_Variable;
 $_from = $_smarty_tpl->getVariable('mycms')->value['search_data']; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
if ($_smarty_tpl->_count($_from) > 0){
    foreach ($_from as $_smarty_tpl->tpl_vars['n']->key => $_smarty_tpl->tpl_vars['n']->value){
 $_smarty_tpl->tpl_vars['i']->value = $_smarty_tpl->tpl_vars['n']->key;
?>

     <li>
        <div class="pic" onclick="location.href='<?php echo $_smarty_tpl->tpl_vars['n']->value['URL'];?>
';"><img src="<?php echo $_smarty_tpl->tpl_vars['n']->value['picture'][0];?>
" />
          <div class="picFc"></div>
        </div>
        <div class="txt">
          <h3><a href="<?php echo $_smarty_tpl->tpl_vars['n']->value['URL'];?>
"><?php echo $_smarty_tpl->tpl_vars['n']->value['title_format'];?>
</a></h3>
          <?php echo $_smarty_tpl->tpl_vars['n']->value['content_format'];?>
</div>
        <div class="newsDate"><?php echo $_smarty_tpl->tpl_vars['n']->value['addtime'];?>
</div>
      </li>

<?php }} else { ?>
<?php if ($_smarty_tpl->getVariable('mycms')->value['search_keyword']!=''){?><div class="notdata"><?php echo str_replace('{#keyword}',$_smarty_tpl->getVariable('mycms')->value['search_keyword'],$_smarty_tpl->getVariable('lang')->value['page']['no_data']);?>
</div><?php }?>
<?php } ?>

     

     

     

    </ul>
    <!-- div id="searchPages2" class="pagesSh" style="text-align:left;"></div -->
  </div>
  <div class="newsR">
  <div class="sideInfo"><a href="/#contact" class="sendBt">&nbsp;</a></div>
  <iframe width="228" height="480" class="share_self"  frameborder="0" scrolling="no" src="http://widget.weibo.com/weiboshow/index.php?language=&width=228&height=480&fansRow=2&ptype=1&speed=0&skin=1&isTitle=1&noborder=1&isWeibo=1&isFans=0&uid=2387134081&verifier=76bf5e3a&colors=f7f7f7,ffffff,666666,333333,f7f7f7&dpc=1"></iframe>
  </div>
  <div class="hr20"></div>
  <div class="hr20"></div>
</div>
<div class="footer">
  <div class="main">
    <div id="footerLogo"><img src="/skin/tg2013/images/footer_logo.jpg" width="180" height="110" /></div>
    <div class="footerLinks"><span class="tit"></span>
      <div class="linksList">
        <ul>
          <li><a href="http://baike.baidu.com/view/7852061.htm" target="_blank">TGVISION双晖传媒百度百科</a></li>
          <li><a href="http://e.weibo.com/tgvisionstudio" target="_blank">TGVISION双晖传媒新浪官方微博</a></li>
          <li><a href="http://dribbble.com/tgvision" target="_blank">TGVISION Dribbble</a></li>
        </ul>
      </div>
    </div>
    <div class="footerContact"><span class="tit">&nbsp;</span><span class="add">北京市朝阳区大屯里317号金泉时代C座1119室</span> <span class="tel">&nbsp;</span> <span class="yellow">sh@tg-vision.com</span></div>
  </div>
</div>
<div id="Copyright">
  <div class="main">&copy; 2006-2013 TGVISION双晖传媒. All Right Reserved.  京ICP备12043438号 <script src="http://s19.cnzz.com/stat.php?id=2885255&web_id=2885255&show=pic" language="JavaScript"></script>

</div>
</div>
<script type="text/javascript">
$(function() {
	$('.newsDate').each(function(){
		var dtStr = $(this).text();
		var dt = dtStr.split('-');
		$(this).html('<span class="d1">'+dt[0]+'</span><span class="d2">'+dt[1].toUpperCase()+'<br />'+dt[2]+'</span>');
		});
/*
	$("#searchPages1 a:first").hide();
	$("#searchPages2 a:first").hide();
	$(".searchInput").slideDown("fast");
	$("#keyboard").val("app");
	$("#keyboard").focus();
*/
});
//NAV	   
var xOnclick=0;
//$(".Nav a").click(
//   function() {
//	  $(".navBg").css("display","none");
//	  $(this).children().css("display","block");
//	  $(".navBg").removeAttr("title");
//	  $(this).children().attr("title","navBgOn");
//	  xOnclick = 1;
//	   }) 

$(".top_nav a").hover(
  function () {
  $(this).children().stop(false,true);
  $(this).children().fadeIn("normal");  
  },
  function () {
  var navBgStatus=($(this).children().attr("title"))
  //alert (navBgStatus)
	if (xOnclick != 1 && navBgStatus != "navBgOn"){
 $(this).children().stop(false,true);
 $(this).children().fadeOut("normal");
 }
 else 
  {
	  xOnclick=0; 
	  }
});

$(".pic").hover (
function () {
	$(this).children().stop(false,true);
	$(this).children(".picFc").fadeTo("normal",0.8);
	},
function () {
	$(this).children().stop(false,true);
	$(this).children(".picFc").fadeTo("normal",0);
	}
				 );

$(".sideMenu li").click(
function() {
	$(".sideMenu a").removeClass();
	$(this).find("a").addClass("menuOn");
	}						
						);

</script>
</body>
</html>