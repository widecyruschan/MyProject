<?php /* Smarty version Smarty-3.0.9, created on 2013-07-29 11:25:04         compiled from "E:/wwwroot/dmcc/inc/templates/manage/map.dwt" */ ?><?php /*%%SmartyHeaderCode:1124251f5e090490a73-25680259%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');$_smarty_tpl->decodeProperties(array (  'file_dependency' =>   array (    'b84b1fc298cfb18246f1eb6aeab63bcd9dbc807b' =>     array (      0 => 'E:/wwwroot/dmcc/inc/templates/manage/map.dwt',      1 => 1374981479,      2 => 'file',    ),  ),  'nocache_hash' => '1124251f5e090490a73-25680259',  'function' =>   array (  ),  'has_nocache_code' => false,)); /*/%%SmartyHeaderCode%%*/?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title><?php echo $_smarty_tpl->getVariable('lang')->value['common']['web_title'];?></title><link rel="stylesheet" type="text/css" href="../inc/templates/manage/css/common_<?php echo $_smarty_tpl->getVariable('admin')->value['theme'];?>.css" /><script type="text/javascript" src="../inc/script/jquery.js"></script><script type="text/javascript" src="../inc/templates/manage/js/common.js"></script><script type="text/javascript">$(function(){	mycms.alternately('list');	mycms.acsubmit('form','audit','<?php echo $_smarty_tpl->getVariable('lang')->value['page'][9];?>','audit',false);	mycms.acsubmit('form','logo','<?php echo $_smarty_tpl->getVariable('lang')->value['page'][17];?>','logo',false);	mycms.acsubmit('form','text','<?php echo $_smarty_tpl->getVariable('lang')->value['page'][18];?>','text',false);	mycms.acsubmit('form','unaudit','<?php echo $_smarty_tpl->getVariable('lang')->value['page'][10];?>','unaudit',false);	mycms.acsubmit('form','del','<?php echo $_smarty_tpl->getVariable('lang')->value['page'][11];?>','del',false);	});</script></head><body><?php $_template = new Smarty_Internal_Template('component_header.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null); echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?><div id="body_box">	<table cellpadding="0" cellspacing="0" border="0" class="icon">		<tr><td><?php echo $_smarty_tpl->getVariable('mycms')->value['icon'];?></td></tr>	</table>	<div class="rounded table">	<table width="100%" cellpadding="0" cellspacing="0" border="0" class="box_top">			<tr>				<td class="title">Google Sitemaps 介绍</td>				<td>				</td>			</tr>		</table>	        <table width="100%" border="0" cellspacing="1" cellpadding="3" class="table center">  <form name="form1" method="post" action="map.php?action=googlemap">    <tr >       <td><br> <b>首先什么是 Google Sitemaps ?</b><br><br>        　　简单的说，Google Sitemap 就是一个包含你网站上公开页面和文档的链接和额外信息的 XML 文件。Google 会阅读这个文件，然后添加其中定义的页面到         Google 索引中。Google Sitemaps 服务是 Google 网站管理员工具的一部分，Google Sitemaps 支持多种语言，所以不用担心你的         Sitemap 的语言问题。<br>        <br>        <b>你可以用两种方式提交你的 Sitemap </b> <br><br>        　　如果你拥有 Google 账号，你可以使用 <a href="http://www.google.com/webmasters/sitemaps/" target="_blank"><u>Google         Sitemaps</u></a> 服务来提交你的 Sitemap，这个服务可以给你看到关于你网站的很多统计，如使用最多的关键字和爬虫爬你网站时候的问题。        <br><br> <p>　　如果你没有 Google 账号，也不想注册个，你可以通过“ping” Goolge Sitemaps 服务器来通知 Google           你的 Sitemap 的更新。你需要做的就是通过浏览器访问一次下面这个链接即可：<a href="http://www.google.com/webmasters/sitemaps/ping?sitemap=<?php echo $_smarty_tpl->getVariable('config')->value['url'];?>sitemap.xml" target="_blank"><u>http://www.google.com/webmasters/sitemaps/ping?sitemap=<?php echo $_smarty_tpl->getVariable('config')->value['url'];?>sitemap.xml</u></a>，然后           Google 会定期来检查你 Sitemap 的更新，所以你做了一次就可以了，不用再重复。</p>      </td>    </tr>    <tr>       <td align="center"><a id="submit" class="submit" href="map.php?action=googlemap">生成</a>      </td>    </tr>  </form></table></div><br />	<div class="rounded table"><table width="100%" cellpadding="0" cellspacing="0" border="0" class="box_top">			<tr>				<td class="title">百度新闻开放协议 介绍</td>				<td>				</td>			</tr>		</table> <table width="100%" border="0" cellspacing="1" cellpadding="3" class="table center">    <tr >       <td><br> <b>使用此开放协议，将会为您的网站带去更多流量!</b> <br><br>        　　《互联网新闻开放协议》是百度新闻搜索制定的搜索引擎新闻源收录标准，网站可将发布的新闻内容制作成遵循此开放协议的XML格式的网页（独立于原有的新闻发布形式）供搜索引擎索引。<br><br>        　　 该协议主要适用于已经成为百度新闻源的网站；如果您的网站尚未成为百度新闻源，<a href="http://news.baidu.com/newsop.html#km" target="_blank"><u>请先申请收录</u></a>。         <br><br><p> <b>我如何知道网站是否被百度新闻收录？</b> <br><br>          　　您可以在百度新闻搜索框内输入“site:你的网站域名”查看收录来自您网站的新闻信息。<br>          <br>          　　生成之后的百度协议网址是:<a href="<?php echo $_smarty_tpl->getVariable('config')->value['url'];?>baidu_MAP.xml" target="_blank"><?php echo $_smarty_tpl->getVariable('config')->value['url'];?>baidu_MAP.xml</a></p>      </td>    </tr>    <tr>       <td align="center"><a id="submit" class="submit" href="map.php?action=baidumap">生成</a>      </td>    </tr>  </form></table>	</div>	<?php $_template = new Smarty_Internal_Template('component_footer.dwt', $_smarty_tpl->smarty, $_smarty_tpl, $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null); echo $_template->getRenderedTemplate(); $_template->rendered_content = null;?><?php unset($_template);?></div></body></html>