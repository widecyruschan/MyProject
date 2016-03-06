/* This file is created by MySQLReback 2014-03-20 09:49:59 */
 /* 创建表结构 `cms_ad`  */
 DROP TABLE IF EXISTS `cms_ad`;/* MySQLReback Separation */ CREATE TABLE `cms_ad` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `lang` tinyint(3) unsigned NOT NULL default '1',
  `aid` varchar(30) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `code` text NOT NULL,
  `weight` tinyint(2) unsigned NOT NULL default '1',
  `click` int(10) NOT NULL default '-1',
  `limit` tinyint(1) unsigned NOT NULL default '0',
  `start` int(10) unsigned NOT NULL default '0',
  `end` int(10) unsigned NOT NULL default '0',
  `expired` text NOT NULL,
  `sort` int(10) unsigned NOT NULL default '0',
  `enable` tinyint(1) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_ad` */
 INSERT INTO `cms_ad` VALUES ('1','1','weather','天气调用（新浪网提供，有时会变更URL）','http://localhost','<div style=\"padding:5px 0 0 0;\">
<iframe width=\"150\" height=\"20\" frameborder=\"0\" marginheight=\"0\" marginwidth=\"0\" scrolling=\"no\" src=\"http://news.sina.com.cn/iframe/2010/0820/564.html\"></iframe>
</div>','1','0','0','1292125080','1292125200','','0','1','1292121025'),('2','1','weather','天气调用（中国天气网提供、不稳定、可选用）','http://localhost','<div style=\"padding:3px 0 0 18px; width:180px; text-align:center;\"><iframe src=\"http://m.weather.com.cn/m/pn7/weather.htm\" width=\"195\" height=\"20\" marginwidth=\"0\" marginheight=\"0\" hspace=\"0\" vspace=\"0\" frameborder=\"0\" scrolling=\"no\"></iframe></div>','1','0','0','1292121086','1294713086','','0','0','1292121248'),('3','1','header','网站头部通用广告位（450*75px）','#','<img src=\"inc/uploads/ad/ad_header1.png\" width=\"450\" height=\"75\" border=\"0\" />','1','1','0','1292126285','1294718285','','0','1','1292127404'),('4','1','home_2','首页中部通栏广告（930*100px）','http://www.el-ad.com','<a target=\"_blank\" href=\"app.php?a=ad&id=12\"><img src=\"inc/uploads/ad/930x100.jpg\" width=\"930\" height=\"100\" alt=\"\" title=\"\" border=\"0\" /></a>','1','1','0','1300428521','1303020521','','0','1','1300428557'),('5','1','home_1','首页左侧广告1（278*110px）','http://www.el-ad.com','<a target=\"_blank\" href=\"app.php?a=ad&id=11\"><img src=\"inc/uploads/ad/280x108.jpg\" width=\"278\" height=\"100\" alt=\"\" title=\"\" border=\"0\" /></a>','1','1','0','1300270032','1302862032','','0','1','1300270106'),('6','1','product_2','商品频道中部通栏广告（930*100px）','http://#','<a target=\"_blank\" href=\"app.php?a=ad&id=5\"><img src=\"inc/uploads/ad/930x100.jpg\" width=\"930\" height=\"100\" border=\"0\" /></a>','1','0','0','1294465474','1297057474','','0','1','1294465539'),('7','1','product_1','商品频道左侧广告（278*126px）','http://#','<a target=\"_blank\" href=\"app.php?a=ad&id=6\"><img src=\"inc/uploads/ad/280x108.jpg\" width=\"278\" height=\"118\" alt=\"\" title=\"\" border=\"0\" /></a>','1','0','0','1294464764','1297056764','','0','1','1294464861'),('8','1','product_3','商品频道右侧广告（278*218px）','http://www.el-ad.com','<a target=\"_blank\" href=\"app.php?a=ad&id=7\"><img src=\"inc/uploads/ad/280x220.jpg\" width=\"278\" height=\"218\" border=\"0\" /></a>','1','0','0','1294490859','1297082859','','0','1','1294491450'),('9','1','article_1','资讯频道右侧广告1（276*108px）','http://www.el-ad.com','<a target=\"_blank\" href=\"app.php?a=ad&id=8\"><img src=\"inc/uploads/ad/280x112.jpg\" width=\"276\" height=\"108\" border=\"0\" /></a>','1','4','0','1298371686','1300963686','','0','1','1298371765'),('10','1','article_2','资讯频道右侧广告2（276*108px）','http://www.qq.com','<a target=\"_blank\" href=\"app.php?a=ad&id=9\"><img src=\"inc/uploads/ad/280x112_2.jpg\" width=\"276\" height=\"108\" border=\"0\" /></a>','1','2','0','1298372352','1300964352','','0','1','1298372376'),('11','1','photo_banner','图片频道中部通栏广告（930*100px）','http://www.el-ad.com','<a target=\"_blank\" href=\"app.php?a=ad&id=10\"><img src=\"inc/uploads/ad/930x100.jpg\" width=\"930\" height=\"100\" border=\"0\" /></a>','1','0','0','1298604428','1301196428','','0','1','1298604478'),('12','1','search_right','搜索页右侧广告（当搜索结果满一页时显示）','http://#','<a href=\"http://www.el-ad.com\">PHPCMS 强劲站内搜索系统更新</a><br />
PHPCMS 站内搜索简单方便。您只需要在搜索框内输入需要查询的内容，敲回车键，或者鼠标点击搜索框右侧的搜索按钮，就可以得到最符合查询需求的网页内容。站内搜索，就是这么简单！
全面支持多字词空格间隔搜索。输入多个词语搜索（不同字词之间用一个空格隔开），可以获得更精确的搜索结果。
<br />
<br />
<a href=\"http://www.el-ad.com\">PHPCMS 商业授权版</a><br />
新增在线充值、在线支付、订购、订单管理等20多项商业性质的功能和模块，无限语言扩充，一对一售后技术服务，专业、高效支持1000万级数据量，全开方性接口易扩展、更方便二次开发。','1','0','0','1292850938','1295442938','','0','1','1292850983'),('13','2','weather','天气调用（新浪网提供，有时会变更URL）','http://localhost','<div style=\"padding:10px 0 0 0;\">
<iframe width=\"150\" height=\"20\" frameborder=\"0\" marginheight=\"0\" marginwidth=\"0\" scrolling=\"no\" src=\"http://news.sina.com.cn/iframe/2010/0820/564.html\"></iframe>
</div>','1','0','0','1292125080','1292125200','','0','1','1292121025');/* MySQLReback Separation */
 /* 插入数据 `cms_ad` */
 INSERT INTO `cms_ad` VALUES ('14','2','weather','天气调用（中国天气网提供、不稳定、可选用）','http://localhost','<div style=\"padding:3px 0 0 18px; width:180px; text-align:center;\"><iframe src=\"http://m.weather.com.cn/m/pn7/weather.htm\" width=\"195\" height=\"20\" marginwidth=\"0\" marginheight=\"0\" hspace=\"0\" vspace=\"0\" frameborder=\"0\" scrolling=\"no\"></iframe></div>','1','0','0','1292121086','1294713086','','0','0','1292121248');/* MySQLReback Separation */
 /* 插入数据 `cms_ad` */
 INSERT INTO `cms_ad` VALUES ('15','2','header','网站头部通用广告位（450*75px）','#','<img src=\"inc/uploads/ad/ad_header2.png\" width=\"450\" height=\"75\" border=\"0\" />','1','0','0','1292126285','1294718285','','0','1','1292127404'),('16','2','home_2','首页中部通栏广告（930*100px）','http://www.el-ad.com','<a target=\"_blank\" href=\"app.php?a=ad&id=12\"><img src=\"inc/uploads/ad/930x100.jpg\" width=\"930\" height=\"100\" alt=\"\" title=\"\" border=\"0\" /></a>','1','1','0','1300428521','1303020521','','0','1','1300428557'),('17','2','home_1','首页左侧广告1（278*110px）','http://www.el-ad.com','<a target=\"_blank\" href=\"app.php?a=ad&id=11\"><img src=\"inc/uploads/ad/280x108.jpg\" width=\"278\" height=\"100\" alt=\"\" title=\"\" border=\"0\" /></a>','1','1','0','1300270032','1302862032','','0','1','1300270106'),('18','2','product_2','商品频道中部通栏广告（930*100px）','http://#','<a target=\"_blank\" href=\"app.php?a=ad&id=5\"><img src=\"inc/uploads/ad/930x100.jpg\" width=\"930\" height=\"100\" border=\"0\" /></a>','1','0','0','1294465474','1297057474','','0','1','1294465539'),('19','2','product_1','商品频道左侧广告（278*126px）','http://#','<a target=\"_blank\" href=\"app.php?a=ad&id=6\"><img src=\"inc/uploads/ad/280x108.jpg\" width=\"278\" height=\"118\" alt=\"\" title=\"\" border=\"0\" /></a>','1','0','0','1294464764','1297056764','','0','1','1294464861'),('20','2','product_3','商品频道右侧广告（278*218px）','http://www.el-ad.com','<a target=\"_blank\" href=\"app.php?a=ad&id=7\"><img src=\"inc/uploads/ad/280x220.jpg\" width=\"278\" height=\"218\" border=\"0\" /></a>','1','0','0','1294490859','1297082859','','0','1','1294491450'),('21','2','article_1','资讯频道右侧广告1（276*108px）','http://www.el-ad.com','<a target=\"_blank\" href=\"app.php?a=ad&id=8\"><img src=\"inc/uploads/ad/280x112.jpg\" width=\"276\" height=\"108\" border=\"0\" /></a>','1','4','0','1298371686','1300963686','','0','1','1298371765'),('22','2','article_2','资讯频道右侧广告2（276*108px）','http://www.qq.com','<a target=\"_blank\" href=\"app.php?a=ad&id=9\"><img src=\"inc/uploads/ad/280x112_2.jpg\" width=\"276\" height=\"108\" border=\"0\" /></a>','1','2','0','1298372352','1300964352','','0','1','1298372376'),('23','2','photo_banner','图片频道中部通栏广告（930*100px）','http://www.el-ad.com','<a target=\"_blank\" href=\"app.php?a=ad&id=10\"><img src=\"inc/uploads/ad/930x100.jpg\" width=\"930\" height=\"100\" border=\"0\" /></a>','1','0','0','1298604428','1301196428','','0','1','1298604478'),('24','2','search_right','搜索页右侧广告（当搜索结果满一页时显示）','http://#','<a href=\"http://www.el-ad.com\">PHPCMS 强劲站内搜索系统更新</a><br />
PHPCMS 站内搜索简单方便。您只需要在搜索框内输入需要查询的内容，敲回车键，或者鼠标点击搜索框右侧的搜索按钮，就可以得到最符合查询需求的网页内容。站内搜索，就是这么简单！
全面支持多字词空格间隔搜索。输入多个词语搜索（不同字词之间用一个空格隔开），可以获得更精确的搜索结果。
<br />
<br />
<a href=\"http://www.el-ad.com\">PHPCMS 商业授权版</a><br />
新增在线充值、在线支付、订购、订单管理等20多项商业性质的功能和模块，无限语言扩充，一对一售后技术服务，专业、高效支持1000万级数据量，全开方性接口易扩展、更方便二次开发。','1','0','0','1292850938','1295442938','','0','1','1292850983');/* MySQLReback Separation */
 /* 创建表结构 `cms_admin`  */
 DROP TABLE IF EXISTS `cms_admin`;/* MySQLReback Separation */ CREATE TABLE `cms_admin` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `encryption` varchar(8) NOT NULL,
  `loginip` varchar(31) NOT NULL,
  `logintime` varchar(21) NOT NULL,
  `frequency` int(10) unsigned NOT NULL default '0',
  `purviews` text NOT NULL,
  `level` tinyint(2) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_admin` */
 INSERT INTO `cms_admin` VALUES ('1','cyruschan','f6ae9838a1f5ef4c01ec5ab46a6cb0a1','b2zVLf8B','14.19.43.249,14.19.47.171','1394524576,1395279556','33','','1');/* MySQLReback Separation */
 /* 创建表结构 `cms_article`  */
 DROP TABLE IF EXISTS `cms_article`;/* MySQLReback Separation */ CREATE TABLE `cms_article` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `lang` tinyint(3) unsigned NOT NULL default '1',
  `channel` int(10) unsigned NOT NULL default '0',
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `brief` varchar(50) NOT NULL,
  `color` varchar(7) NOT NULL,
  `bold` tinyint(1) unsigned NOT NULL default '0',
  `tag` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `sourceurl` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `introduction` text NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(50) NOT NULL,
  `comment` tinyint(1) unsigned NOT NULL default '0',
  `commenttotal` int(10) unsigned NOT NULL default '0',
  `picture` text NOT NULL,
  `recom` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `audit` tinyint(1) unsigned NOT NULL default '0',
  `recycle` tinyint(1) unsigned NOT NULL default '0',
  `permission` varchar(255) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `click` int(10) unsigned NOT NULL default '0',
  `money` decimal(8,2) unsigned NOT NULL default '0.00',
  `integral` int(10) unsigned NOT NULL default '0',
  `buyuser` text NOT NULL,
  `page` int(5) unsigned NOT NULL default '0',
  `agree` int(10) unsigned NOT NULL default '0',
  `disagree` int(10) unsigned NOT NULL default '0',
  `sort` int(10) unsigned NOT NULL default '0',
  `publisher` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  `backgroudColour` varchar(45) default NULL,
  PRIMARY KEY  (`id`),
  KEY `lang` (`lang`,`channel`,`category`,`published`,`audit`,`recycle`),
  KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=79 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('62','1','22','','Quick Car APP','Quick Car APP','','0','Quick Car APP','','','','Quick Car APP','双晖传媒团队受邀为寰球汽车传媒集团官方移动应用Quick Car提供解决方案。Quick Car是一款汽车综合服务类应用，主导为驾驶者提供快速、便捷的信息服务。让用户享受驾驶的快乐。我们负责产品的交互设计，视觉设计，功能研发，测试上线 全套方案实现。客户端应用于iOS及Android平台。','<img alt=\"\" src=\"/inc/uploads/ckeditor/Images/20130713001353084.jpg\" style=\"width: 1000px; height: 1420px;\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/20130713001457501.jpg\" style=\"width: 1000px; height: 1270px;\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/20130713001515533.jpg\" style=\"width: 1000px; height: 1275px;\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/20130713001537158.jpg\" style=\"width: 1000px; height: 1320px;\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/20130713001556678.jpg\" style=\"width: 1000px; height: 1121px;\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/20130713001620585.jpg\" style=\"width: 1000px; height: 1390px;\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/20130713001644941.jpg\" style=\"width: 1000px; height: 1012px;\" /><br />','','1','0','inc/uploads/article/201307/20130713001022941.jpg,inc/uploads/article/201307/20130714143735118.jpg,inc/uploads/article/201307/20130714143805461.jpg,inc/uploads/article/201307/20130714144016827.jpg,inc/uploads/article/201307/20130714144628792.jpg','1','1','1','0','0','','963','0.00','0','','0','0','0','0','admin','1373385600','');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('65','1','30','','关于我们','About Us','','0','About Us','','','','About Us','双晖传媒（TGVISION）成立于2006年，我们是一支融交互、创新、视觉设计、产品研发 于一体的专业品牌策划与制作团队，鼎力为国内外知名企业提供全方位多平台的产品服务解决方案。以专业的交互设计、创新理念、视觉呈现，服务国内外企业多达 100余家，成功案例300余例。涉及IT、汽车、教育、房地产、金融等各个行业，拥有包括中国移动、中国电信、百度、新浪、淘宝、索尼、联想、人民网、 中国日报等企业在内的成功案例，在国内拥有较高美誉。','<div class=\"newsContent\">
	<p>
		双晖传媒（TGVISION）成立于2006年，我们是一支融交互、创新、视觉设计、产品研发 于一体的专业品牌策划与制作团队，鼎力为国内外知名企业提供全方位多平台的产品服务解决方案。以专业的交互设计、创新理念、视觉呈现，服务国内外企业多达 100余家，成功案例300余例。涉及IT、汽车、教育、房地产、金融等各个行业，拥有包括中国移动、中国电信、百度、新浪、淘宝、索尼、联想、人民网、 中国日报等企业在内的成功案例，在国内拥有较高美誉。<br />
		<br />
		<img alt=\"tgvision.jpg\" height=\"435\" src=\"http://tg-vision.com/d/file/news/shuanghui/201306/2b9b564755a9d7976703ab5aa4880779.jpg\" width=\"700\" /><br />
		<br />
		<br />
		<strong>我们的理念</strong></p>
	<p>
		创新，激情，未来。<br />
		<br />
		创新，我们通过研究理解用户的思维、行为、和目标，挖掘用户对产品使用的潜在需求，通过我们服务于各行业客户的丰富经验，结合品牌的优势进行分析，让用户在情绪上、行为上感知产品的创新、感受完美的体验。超越品牌的价值。<br />
		<br />
		激情，我们是一只富有激情的创新团队。我们将设计通过情感的表达把用户和产品很自然的连接在一起，让用户享受使用产品的愉悦，以此来强化对产品、品牌的体验认知！通过自然的交互和生动的设计展现出来，用一个充满情感化的设计打动用户！<br />
		<br />
		未来，为客户提供品牌化、一站式的解决方案。服务涵盖了互联网，掌上移动设备、桌面平台以及电子消费类产品等。为客户提供从品牌设计、概念设计、交互设计、视觉设计、功能研发到最终产品实现。为客户提供真正具有创新价值的产品体验。<br />
		<br />
		<strong>我们的团队<br />
		</strong><br />
		双晖传媒专精于高品质的全方位设计服务，拥有实力坚强的研发团队及国内外顶尖水平的设计人才，核心成员曾服务于微软、雅虎（美国）、淘宝、新浪、腾讯等全 球知名企业，拥有丰富的视觉及交互设计经验。多名设计师在国内外获得设计相关奖项，被多家媒体专访，案例被国内外设计网站收录， 如：Newswebpic，站酷，Iconfans，68design，UIRSS，ChinaUI等。<br />
		<br />
		<strong>我们的荣誉<br />
		</strong><br />
		双晖传媒受邀国际权威在线创意杂志NWP专访<br />
		<br />
		TGVISION双晖传媒受邀国际权威网络在线创意杂志NWP专访,刊登于《NewWebPick》第39期。NWP展示全球最前沿的设计作品，收集国际 最新设计资讯，辨析设计艺术的动向。杂志每期下载量4,000,000次，来自全球155个国家的10592个城市。欢迎下载观看。<br />
		<br />
		<img alt=\"nwp.jpg\" height=\"648\" src=\"http://tg-vision.com/d/file/news/shuanghui/201305/c22c716d5fcce0c26071ad140d2a1435.jpg\" width=\"475\" /><br />
		<br />
		双晖传媒创意总监王子年蝉联了权威设计机构评选ChinaUI2011年度十佳UI设计师奖。<br />
		<br />
		<img alt=\"chinaui.jpg\" height=\"196\" src=\"http://tg-vision.com/d/file/news/shuanghui/201305/8b7dc9015252e520d739e43a1740da0f.jpg\" width=\"700\" /><br />
		<img alt=\"chinaui10.jpg\" height=\"467\" src=\"http://tg-vision.com/d/file/news/shuanghui/201306/ee02bf36f8d5503221c8ff50b7fe8eaf.jpg\" width=\"700\" /><br />
		<img alt=\"chinaui11.jpg\" height=\"467\" src=\"http://tg-vision.com/d/file/news/shuanghui/201306/a8fb2eba13e89e2d197d21a21bee77bb.jpg\" width=\"700\" /><br />
		&nbsp;<br />
		双晖传媒创意总监王子年荣获网页设计师联盟（68design）《2010-2011年度中国十佳网页(互动)设计师》称号并接受专访。<br />
		<br />
		<img alt=\"4915787a6622a9a387820ac4b63c462b.jpg\" height=\"146\" src=\"http://tg-vision.com/d/file/news/shuanghui/201305/532ee548cc7bdff2567cd3fe3ea172b1.jpg\" width=\"700\" /><br />
		<img alt=\"68design.jpg\" height=\"467\" src=\"http://tg-vision.com/d/file/news/shuanghui/201306/eafc61241e0cd2e7cd54af9c8d2e3cf3.jpg\" width=\"700\" /><br />
		<br />
		<br />
		<strong>我们的客户</strong><br />
		<br />
		中国移动、中国电信、百度、新浪、淘宝、索尼、苏宁、联想、融科智地、人民网、酷6网、人民日报、中国日报、精品传媒集团、李宁、法国雷诺、慧聪邓白氏等<br />
		<br />
		<img alt=\"clients.jpg\" height=\"350\" src=\"http://tg-vision.com/d/file/news/shuanghui/201306/841247e10b7653431f545981e4c2c4ce.jpg\" width=\"700\" /></p>
</div>','','1','0','inc/uploads/article/201307/20130716112058339.jpg,inc/uploads/article/201307/20130716112216141.jpg,inc/uploads/article/201307/20130716112247191.jpg','1','1','1','0','0','','356','0.00','0','','0','0','0','0','admin','1310745600','');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('66','1','22','','《世界》杂志APP','《世界》杂志','','0','《世界》杂志APP','','','','《世界》杂志APP','双晖传媒为《世界》杂志量身定制了高端iPad版客户端，以鲜明的旅行态度和独到的杂志视角结合了全新的移动平台进行整合设计，丰富了产品功能的同时提升交互及视觉体验。为千万旅行者提供最权威最实用的境外旅行讯息，搭建起与高端读者在线互动的桥梁，为客户整合营销提供更广阔的宣传平台。','<div class=\"main\" id=\"conpicDiv\" style=\"padding-bottom:40px;\">
	<img alt=\"World_p1.jpg\" height=\"835\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/e4141f1ec8175cb762b94cdddd6c3765.jpg\" width=\"1000\" /><img alt=\"World_p2.jpg\" height=\"800\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/c106f61dc9b26812fd7d5dbfcdaff283.jpg\" width=\"1000\" /><img alt=\"World_p3.jpg\" height=\"888\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/403c4d2298ad03504a8b8cc6af62e1f1.jpg\" width=\"1000\" /><img alt=\"World_p4.jpg\" height=\"800\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/2aad5e196a41226295d223646a044fe8.jpg\" width=\"1000\" /><img alt=\"World_p5.jpg\" height=\"1092\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/4d083a9780dfc0e753d6f104c94cd27b.jpg\" width=\"1000\" /><img alt=\"World_p6.jpg\" height=\"953\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/174ecfb4e1b2f7363d3cdcdeb8772455.jpg\" width=\"1000\" /><img alt=\"World_p7.jpg\" height=\"888\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/0cf8a592b69818d2a7e9d710faa5634f.jpg\" width=\"1000\" /><img alt=\"World_p8.jpg\" height=\"717\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/bd779dd9829bafd9f6d7261e6b2880e0.jpg\" width=\"1000\" /><img alt=\"World_p9.jpg\" height=\"800\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/60440ba0f3698a13d9b27654af607e1c.jpg\" width=\"1000\" /><img alt=\"World_p10.jpg\" height=\"667\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/818d659f6b2d29244a5d310bdb9f735f.jpg\" width=\"1000\" /></div>','Portfolio_view','1','0','inc/uploads/article/201307/20130720100532042.jpg,inc/uploads/article/201307/20130720100640541.jpg,inc/uploads/article/201307/20130720100828134.jpg,inc/uploads/article/201307/20130720100938934.jpg','0','1','1','0','0','','351','0.00','0','','0','0','0','0','admin','1374249600','#194982'),('67','1','25','','我们的环境','我们的环境','','0','我们的环境','','','','我们的环境','双晖传媒主张拥有自由、舒适、专业、易交流的开放式办公环境。分享设计的快乐，享受创新所带来的无限可能！期待你的加入！','双晖传媒主张拥有自由、舒适、专业、易交流的开放式办公环境。分享设计的快乐，享受创新所带来的无限可能！期待你的加入！<br />
<br />
<span style=\"color: #ff6600\"><strong><span style=\"color: #ff6600\"><a href=\"http://tg-vision.com/#aboutjob\"><span style=\"color: #ff6600\">了解招聘职位详情</span></a></span></strong></span><span style=\"color: #ff6600\"><strong><br />
</strong><br />
<img alt=\"tgvision.jpg\" height=\"2431\" src=\"http://tg-vision.com/d/file/news/shuanghui/201306/79e877a194ca26a5740e51f9ba8b1564.jpg\" width=\"700\" /></span>','','1','0','inc/uploads/article/201307/20130720164117655.jpg,inc/uploads/article/201307/20130720164014531.jpg,inc/uploads/article/201307/20130720163736768.jpg','1','1','1','0','0','','746','0.00','0','','0','0','0','0','admin','1374249600','');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('68','1','22','','第一步旅游APP','第一步旅游APP','','0','第一步旅游APP','','','','第一步旅游APP','双晖传媒合作第一步旅游，为旗下官方网站及APP客户端打造全新视觉体验。采用简约扁平的设计风格和鲜亮明快的色彩搭配，呈现轻松愉快的个人定制旅行氛围的同时去掉冗余的元素来增强内容的展示比重。最大的优化了界面交互流程和页面浏览体验。友好的界面为用户带来高品质的旅行定制享受。','<div class=\"main\" id=\"conpicDiv\" style=\"padding-bottom:40px;\">
	<p>
		<img alt=\"diyibu_p1.jpg\" height=\"557\" src=\"http://tg-vision.com/d/file/portfolio/app/201305/2fb96bdbbeb3ed141b54a6bf33823558.jpg\" width=\"1000\" /><img alt=\"diyibu_p2.jpg\" height=\"1001\" src=\"http://tg-vision.com/d/file/portfolio/app/201305/c245800030bc015f97fd601460ecafbb.jpg\" width=\"1000\" /><img alt=\"diyibu_p3.jpg\" height=\"951\" src=\"http://tg-vision.com/d/file/portfolio/app/201305/0a29c78a63e13edfce2058144a28bb37.jpg\" width=\"1000\" /><img alt=\"diyibu_p4.jpg\" height=\"951\" src=\"http://tg-vision.com/d/file/portfolio/app/201305/3fe28915bf977c9bd70b164fe708953d.jpg\" width=\"1000\" /><img alt=\"diyibu_p5.jpg\" height=\"951\" src=\"http://tg-vision.com/d/file/portfolio/app/201305/7860fab413655aa175ffd940d73e66d9.jpg\" width=\"1000\" /></p>
</div>','','1','0','http://tg-vision.com/d/file/portfolio/app/201305/d45b9dd30bad8f9ea4f7579aede5a7b8.jpg,http://tg-vision.com/d/file/MobileApp/201306/160b446cdb18ecbabcc4efffd474f4f5.jpg,http://tg-vision.com/d/file/portfolio/app/201305/319256e0c2f9e42b6d3a0056ee7ce9d9.jpg,http://tg-vision.com/d/file/portfolio/app/201305/319256e0c2f9e42b6d3a0056ee7ce9d9.jpg,http://tg-vision.com/d/file/portfolio/app/201305/5cf7586420b58d4b19271320687b87eb.jpg','0','1','1','0','0','','693','0.00','0','','0','0','0','0','admin','1374768000','#FFFFFF');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('69','1','28','','双晖传媒受邀国际权威在线创意杂志NWP专访','双晖传媒受邀国际权威在线创意杂志NWP专访','','0','','','','','','TGVISION双晖传媒受邀国际权威网络在线创意杂志NWP专访,刊登于《NewWebPick》第39期。NWP展示全球最前沿的设计作品，收集国际最新设计资讯，辨析设计艺术的动向。杂志每期下载量4,000,000次，来自全球155个国家的10592个城市','TGVISION双晖传媒受邀国际权威网络在线创意杂志NWP专访,刊登于《NewWebPick》第39期。NWP展示全球最前沿的设计作品，收集国际 最新设计资讯，辨析设计艺术的动向。杂志每期下载量4,000,000次，来自全球155个国家的10592个城市。欢迎下载观看。<br />
<br />
<img alt=\"nwp.jpg\" height=\"648\" src=\"http://tg-vision.com/d/file/news/shuanghui/201305/c22c716d5fcce0c26071ad140d2a1435.jpg\" width=\"475\" /><br />
<br />
订阅《NewWebPick》第39期：<br />
<a href=\"http://ezine.newwebpick.com\" target=\"_blank\"><span style=\"color: #ff6600\">ezine.newwebpick.com</span></a><br />
<br />
《NewWebPick》官网：<br />
<a href=\"http://www.newwebpick.com/\" target=\"_blank\"><span style=\"color: #ff6600\"><font face=\"Arial\">www.newwebpick.com</font></span></a><span style=\"color: #ff6600\"><br />
</span><br />
杂志截图 P379-390<br />
<br />
<img alt=\"nwp_p.jpg\" height=\"2861\" src=\"http://tg-vision.com/d/file/news/shuanghui/201305/1ee58831b8a825195e217fa069f59de9.jpg\" width=\"700\" /><br />
<br />
<span style=\"font-size: 14px\"><span style=\"color: #000000\"><strong>《NewWebPick》电子杂志简介：<br />
<br />
</strong></span></span>最权威的网络在线创意与潮流杂志<br />
<br />
<span style=\"font-size: 14px\"><span style=\"color: #000000\"><strong>《NewWebPick》电子杂志内容涉及：<br />
</strong></span><br />
</span>广告、网站、FLASH、平面、街头艺术、插画、3D、产品与包装、建筑与空间、摄影、时装、试验艺术...<br />
<br />
诠释国际设计艺术潮流的专业期刊<br />
<br />
展示全球最前沿的设计作品，收集国际最新的设计资讯，辨析某时期内设计艺术的动向。<br />
<br />
鼓励设计师们积极投入创作的读本<br />
<br />
帮助设计从业人员、设计爱好者提高艺术品位，找到灵感源泉，更好地进行创作。<br />
<br />
支付卡由各国设计师原创设计，全年售价只需要RMB28元。<br />
&nbsp;<br />
<span style=\"font-size: 14px\"><span style=\"color: #000000\"><strong>《NEWWEBPICK电子杂志》基本信息：<br />
<br />
</strong></span></span>目标定位：全球数码艺术领域中最权威的信息交互平台<br />
<br />
目标读者：世界各地的各类设计师、设计从业人员、艺术爱好者。<br />
<br />
1. 具有一定欣赏品位，好坏分明。<br />
<br />
2. 挑剔、个性、敬业。<br />
<br />
3. 敢于实践，忠于原创，形成自己的风格。<br />
<br />
出版周期：双月刊，全年发行六期杂志，每期600-700页。<br />
<br />
出版日期：双数月的第1天<br />
<br />
刊物语种：英语International<br />
<br />
刊物页数：550页<br />
<br />
阅读载体：PC、MAC<br />
<br />
《NEWWEBPICK》电子杂志平均每期下载量：4,000,000（次），下载来自全球155个国家的10592个城市<br />
<br />
Newwebpick e-magazine is one of the most popular and reputable e-magazine for the design industry in the world. &nbsp;We have more than 4,000,000 subscribers in average reading our e-magazine. &nbsp;The readers cover 155 countries and 10,592 cities. &nbsp;Among others, they are mainly from USA, Europe, China, South America, Asia, Australia and Africa.&nbsp; Our readers are all types of design fans, including designers of all kinds,professional designers and artists. &nbsp;The e-magazine contains a lot of art types such as &nbsp;digital publishing, Advertising, Website Design, Flash, Print Design, Graphics Design, Illustration, 3D Graphics, Product Design, Animation, Film-making, Interior Design, Architectural, Wraper Design, Photography, Fashion Design and so on.','','1','0','http://tg-vision.com/d/file/awards/201305/3aa10bc0bf04ab44efbd748b1c6a0208.jpg','0','1','1','0','0','','117','0.00','0','','0','0','0','0','admin','1374854400','');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('70','1','29','','实习设计师助理','','','0','','','','','','','<ul>
	<li>
		岗位职责：</li>
	<li>
		参与项目设计执行流程，了解产品开发全过程。辅助设计师完成重大项目。参与一定的产品分析，交互设计，产品界面视觉设计及规范文档整理工作；</li>
	<li>
		任职要求：</li>
	<li>
		精通设计类相关软件，热衷于界面设计与交互设计；具有一定的交互分析以及理解能力；优秀的视觉设计感觉与潜力；有完整独立作品可供参考。</li>
	<li>
		招聘人数：1</li>
	<li>
		工作地点：北京</li>
	<li>
		请发简历到：hr@tg-vision.com</li>
</ul>
','','1','0',',','0','1','1','0','0','','769','0.00','0','','0','0','0','0','admin','1374854400','');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('71','1','22','','WakeUP醒脑！','WakeUP醒脑','','0','WakeUP醒脑','','','','WakeUP醒脑','TGVISION团队和LaluzAPP脑电波公司再次合作推出WakeUP醒脑！软件。Sleep UP熟睡的同门兄弟软件。整体风格继续保持沿用全透明玻璃质感呈现,结合脑电波技术与清澈唯美的大自然背景，从视觉和听觉上帮助身体快速进入放松状态，舒缓大脑疲劳。长期使用将有效缓解紧张情绪，到达最佳生活状态。','<img alt=\"wakeup_p1.jpg\" height=\"1100\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/c4be50960e5f2ce00252345c2ac433ff.jpg\" width=\"1000\" /><img alt=\"wakeup_p2.jpg\" height=\"829\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/af2c875b08f512f2c6b90d088eac9c05.jpg\" width=\"1000\" /><img alt=\"wakeup_p3.jpg\" height=\"1100\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/ebb9cb32e38f772561253ba0e1013399.jpg\" width=\"1000\" /><img alt=\"wakeup_p4.jpg\" height=\"883\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/b026974fbbbbb453ac8d2ce4eef43728.jpg\" width=\"1000\" />','','1','0','http://tg-vision.com/d/file/portfolio/app/201303/26809db76dd41d2b12a8a691b2c9d33d.jpg,http://tg-vision.com/d/file/MobileApp/201306/a474f4d9fbe9906253b2b832ad0e9e53.jpg,http://tg-vision.com/d/file/MobileApp/201306/c8cc90a217de301e5c30e13a616ac5a9.jpg,http://tg-vision.com/d/file/portfolio/app/201304/d37dfdaba2c5a6c141125068b5d21fdb.jpg','0','1','1','0','0','','564','0.00','0','','0','0','0','0','admin','1375027200','#224800'),('72','1','22','','Touch China','Touch China','','0','Touch China','','','','Touch China','由双晖传媒携手中国日报精心打造的Touch China文化杂志全新呈现。杂志依托iPad客户端的平台优势，充分调过了形、声、色、触等各大感官要素，随着指尖律动的节奏，可以亲身见证康熙和路易十四的隔空邂逅，倾听古琴琵琶的悠扬吟唱，把玩皮影坠饰的幽兰魅影，体验文人骚客的互诉衷肠…… ','<div class=\"main\" id=\"conpicDiv\" style=\"padding-bottom:40px;\">
	<img alt=\"touchchina_p1.jpg\" height=\"1509\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/dc5a603c225077e4ba9a5269cb198211.jpg\" width=\"1000\" /><img alt=\"touchchina_p2.jpg\" height=\"800\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/53861c3ba581c483507b0ebb8a48aace.jpg\" width=\"1000\" /><img alt=\"touchchina_p3.jpg\" height=\"800\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/3403e4827ac635f0d7ed409d28b2fc2d.jpg\" width=\"1000\" /><img alt=\"touchchina_p4.jpg\" height=\"799\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/6410405913ee4952a29aa4fc4c271c69.jpg\" width=\"1000\" /></div>','','1','0','http://tg-vision.com/d/file/portfolio/app/201303/7c12071ca55694bea04c30ed6d96c496.jpg,http://tg-vision.com/d/file/MobileApp/201306/ec80b9a90d3b7dd8608adc9ae93bf0c3.jpg,http://tg-vision.com/d/file/MobileApp/201306/08cbdef65d67b0f20dbf0ed9a6af4791.jpg,http://tg-vision.com/d/file/portfolio/app/201304/9583567bfe0d5199cb48806c0950b961.jpg','0','1','1','0','0','','75','0.00','0','','0','0','0','0','admin','1375027200','#FFFFFF'),('73','1','29','','高级客户经理','','','0','','','','','','','<strong>工作职责：</strong><br />
&nbsp;&nbsp;&nbsp; 负责拓展公司广告业务，开拓新客户，主动式销售；<br />
&nbsp;&nbsp;&nbsp; 根据公司的市场规划，跟进销售、策划整个流程，努力实现优秀的业绩；<br />
&nbsp;&nbsp;&nbsp; 维护客户关系，协调签约客户广告的执行并服务好客户；<br />
&nbsp;&nbsp;&nbsp; 公司政令的下达与督办、行政公文和文件的草拟、签发和存档管理；<br />
&nbsp;&nbsp;&nbsp; 定期进行市场反馈，对公司产品、技术等提出建设性意见。<br />','','1','0',',','0','1','1','0','0','','440','0.00','0','','2000','0','0','0','admin','1375113600','');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('76','1','27','','iOS高效开发必备的10款Objective-C类库','iOS开发必备的10款OC类库','','0','','','','','','','<h3 style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; background-color: rgb(255, 255, 255);\">
	iOS高效开发必备：MBProgressHUD（进展指示符库）</h3>
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">&nbsp;<wbr>地址：https://github.com/jdg/MBProgressHUD</wbr></span><wbr><wbr><wbr><wbr><wbr><wbr><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">&nbsp;<wbr>苹果的应用程序一般都会用一种优雅的，半透明的进度显示效果，不过这个API是不公开的，因此你要是用了，很可能被清除出AppStore。而 MBProgressHUD提供了一个替代方案，而且在用户角度上，实现的效果根本看不出和官方程序有什么差别。同时还提供了其他附加功能，比如虚拟进展 指示符，以及完成提示信息。整合到项目里也很容易，这里不细谈了。</wbr></span><wbr><wbr><wbr><wbr><wbr><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<h3 style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; background-color: rgb(255, 255, 255);\">
	&nbsp;<wbr>iOS高效开发必备：ASIHttpRequest（HTTP Network库）</wbr></h3>
<wbr><wbr><wbr><wbr><wbr><span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">地址：http://allseeing-i.com/ASIHTTPRequest/</span><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">&nbsp;<wbr>iPhone当然也有自己的HTTP Network API，那为什么要用ASIHttpRequest呢？因为官方的API简直跟话痨似的，太罗嗦了！ASIHttpRequest库极大的简化了网络通 信，提供更先进的工具，什么文件上传工具，重定向处理工具、验证工具、等等。只要你手头的东西跟HTTP有关，用这个绝对能让你感觉道生活有美好！先看一 段代码就体会到了。</wbr></span><wbr><wbr><wbr><wbr><wbr><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<blockquote style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; margin: 15px 30px 10px 10px; padding: 10px 20px; border-width: 1px 1px 1px 3px; border-style: dotted dotted dotted solid; border-color: rgb(204, 204, 204); background-color: rgb(238, 238, 238); color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px;\">
	&nbsp;<wbr>&nbsp;<wbr> &nbsp;<wbr> (void) loadAppDevMag<br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear;\" />
	&nbsp;<wbr> &nbsp;<wbr> {<br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear;\" />
	&nbsp;<wbr> &nbsp;<wbr> &nbsp;<wbr> NSURL *url = [NSURL URLWithString:@&quot;http://www.appdevmag.com&quot;];<br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear;\" />
	&nbsp;<wbr> &nbsp;<wbr> &nbsp;<wbr> ASIHTTPRequest *request = [ASIHTTPRequest requestWithURL:url];<br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear;\" />
	&nbsp;<wbr> &nbsp;<wbr> &nbsp;<wbr> [request setDelegate:self];<br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear;\" />
	&nbsp;<wbr> &nbsp;<wbr> &nbsp;<wbr> [request startAsynchronous];<br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear;\" />
	&nbsp;<wbr> &nbsp;<wbr> }<br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear;\" />
	&nbsp;<wbr> &nbsp;<wbr> - (void)requestFinished:(ASIHTTPRequest *)request<br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear;\" />
	&nbsp;<wbr> &nbsp;<wbr> {<br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear;\" />
	&nbsp;<wbr> &nbsp;<wbr> &nbsp;<wbr> // Use when fetching text data<br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear;\" />
	&nbsp;<wbr> &nbsp;<wbr> &nbsp;<wbr> NSString *responseString = [request responseString];<br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear;\" />
	&nbsp;<wbr> &nbsp;<wbr> }</wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></blockquote>
<wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr>
<h3 style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; background-color: rgb(255, 255, 255);\">
	iOS高效开发必备：JSON Framework（JSON支持）</h3>
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">&nbsp;<wbr>地址：http://stig.github.com/json-framework/</wbr></span><wbr><wbr><wbr><wbr><wbr><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">&nbsp;<wbr>如果你做的应用和网站服务器有交互，那就得用到JSON了。但事实上，iOS平台的原生类库根本就不支持JSON，这就略犀利了吧？不过JSON框 架满足了你的所有需求，包括一个解析器将JSON字符串解析成对象；以及一个生成器从对象生成字符串。这个库根本就是太流行了，JSON提过很多次了，具 体特点就不多讲了，所谓&ldquo;一段代码胜千言&rdquo;，下面用一段代码演示一下吧。</wbr></span><wbr><wbr><wbr><wbr><wbr><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">&nbsp;<wbr> &nbsp;<wbr> // JSON string -&gt; NSDictionary</wbr></wbr></span><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">&nbsp;<wbr> &nbsp;<wbr> NSString *jsonString = @&quot;{&quot;foo&quot;: &quot;bar&quot;}&quot;;</wbr></wbr></span><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">&nbsp;<wbr> &nbsp;<wbr> NSDictionary *dictionary = [jsonString JSONValue];</wbr></wbr></span><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">&nbsp;<wbr> &nbsp;<wbr> NSLog(@&quot;Dictionary value for &quot;foo&quot; is &quot;%@&quot;&quot;, [dictionary objectForKey:@&quot;foo&quot;]);</wbr></wbr></span><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">&nbsp;<wbr> &nbsp;<wbr> // NSDictionary -&gt; JSON string</wbr></wbr></span><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">&nbsp;<wbr> &nbsp;<wbr> NSString *newJsonString = [dictionary JSONRepresentation];</wbr></wbr></span><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<h3 style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; background-color: rgb(255, 255, 255);\">
	iOS高效开发必备：Flurry（详尽的使用统计）</h3>
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">&nbsp;<wbr>地址：http://www.flurry.com/product/analytics/index.html</wbr></span><wbr><wbr><wbr><wbr><wbr><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">&nbsp;<wbr>通过Furry你可以得到应用的用户人数，用户活跃度，用户来源等统计信息。但是他最厉害的地方是，你可以追踪应用本身的事件和错误记录，所有这些 数据都会在一个类似Google Analytics的界面上显示，这样就很容易掌握用户的行为和出现的问题。当然，这个星球上很多统计工具，但是这款是作者个人比较推崇的解决方案。</wbr></span><wbr><wbr><wbr><wbr><wbr><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<h3 style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; background-color: rgb(255, 255, 255);\">
	iOS高效开发必备：RegexKitLite（正则表达式支持）</h3>
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">地址：http://regexkit.sourceforge.net/RegexKitLite/</span><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">&nbsp;<wbr>正则表达式大家都知道。但是iPhone SDK居然当他不存在？这怎么能忍啊！果断用RegexKitLite。虽然叫的是Lite，但是功能很full。示例代码。</wbr></span><wbr><wbr><wbr><wbr><wbr><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<blockquote style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; margin: 15px 30px 10px 10px; padding: 10px 20px; border-width: 1px 1px 1px 3px; border-style: dotted dotted dotted solid; border-color: rgb(204, 204, 204); background-color: rgb(238, 238, 238); color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px;\">
	&nbsp;<wbr>&nbsp;<wbr> &nbsp;<wbr> // finds phone number in format nnn-nnn-nnnn<br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear;\" />
	&nbsp;<wbr> &nbsp;<wbr> NSString *regEx = @&quot;[0-9]{3}-[0-9]{3}-[0-9]{4}&quot;;<br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear;\" />
	&nbsp;<wbr> &nbsp;<wbr> for(NSString *match in [textView.text componentsMatchedByRegex<wbr>:regEx]) {<br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear;\" />
	&nbsp;<wbr> &nbsp;<wbr> &nbsp;<wbr> &nbsp;<wbr> NSLog(@&quot;Phone number is %@&quot;, match);<br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear;\" />
	&nbsp;<wbr> &nbsp;<wbr> }</wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></blockquote>
<wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr>
<h3 style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; background-color: rgb(255, 255, 255);\">
	iOS高效开发必备：Facebook iOS SDK（Facebook API类库）</h3>
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">&nbsp;<wbr>地址：https://github.com/facebook/facebook-ios-sdk</wbr></span><wbr><wbr><wbr><wbr><wbr><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">&nbsp;<wbr>大体来讲就是iPhone上的Facebook login，完全支持Facebook Graph API和the older REST api。如果你的应用跟Facebook有关，相信我，用这个吧。</wbr></span><wbr><wbr><wbr><wbr><wbr><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<h3 style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; background-color: rgb(255, 255, 255);\">
	&nbsp;<wbr>iOS高效开发必备：SDWebImage（简化网络图片处理）</wbr></h3>
<wbr><wbr><wbr><wbr><wbr><span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">&nbsp;<wbr>地址：https://github.com/rs/SDWebImage</wbr></span><wbr><wbr><wbr><wbr><wbr><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">用SDWebImage调用网站上的图片，跟本地调用内置在应用包里的图片一样简单。操作也很简单，举例说明</span><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<blockquote style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; margin: 15px 30px 10px 10px; padding: 10px 20px; border-width: 1px 1px 1px 3px; border-style: dotted dotted dotted solid; border-color: rgb(204, 204, 204); background-color: rgb(238, 238, 238); color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px;\">
	[imageView setImageWithURL:[NSURL URLWithString:@&quot;http://example.com/image.png&quot;]];</blockquote>
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">类似的功能在Three20里也有，这个过会再说。相比而言，SDWebImage主要是提供一个小而精的简捷方便的解决方案</span><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<h3 style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; background-color: rgb(255, 255, 255);\">
	&nbsp;<wbr>iOS高效开发必备：GData client（iPhone上所有Google相关服务的类库）</wbr></h3>
<wbr><wbr><wbr><wbr><wbr><span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">&nbsp;<wbr>地址：http://code.google.com/p/gdata-objectivec-client/</wbr></span><wbr><wbr><wbr><wbr><wbr><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">&nbsp;<wbr>名字就说明一切了。跟Google相关的，值得一提的是，这个项目很开放。有很多示例程序供下载。</wbr></span><wbr><wbr><wbr><wbr><wbr><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<h3 style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; background-color: rgb(255, 255, 255);\">
	iOS高效开发必备：&nbsp;<wbr>CorePlot（2D图形绘图仪）</wbr></h3>
<wbr><wbr><wbr><wbr><wbr><span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">&nbsp;<wbr>地址：http://code.google.com/p/core-plot/</wbr></span><wbr><wbr><wbr><wbr><wbr><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">CorePlot有很多解决方案将你的数据可视。，同时也会提供各种迷人的图形效果，比如棒状图、饼状图、线状图等等，在他们网站上也提供了大量的范例图形，很多股票价格应用，游戏分数，个人财务管理都在用。</span><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<h3 style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; background-color: rgb(255, 255, 255);\">
	&nbsp;<wbr>iOS高效开发必备：Three20（通用iOS库）</wbr></h3>
<wbr><wbr><wbr><wbr><wbr><span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">地址：https://github.com/facebook/three20</span><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">&nbsp;<wbr>Three20类库是Facebook自己做的，大而全是他最大的特色。把他整合到已有的项目中可能得费点周折，不过如果一开始你就用上了Three20，尤其是牵扯到很多web相关的项目的时候，你就能深刻体会到神马叫给力了。</wbr></span><wbr><wbr><wbr><wbr><wbr><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">总结：</span><br style=\"-webkit-transition: width 0.3s, height 0.3s, color 0.3s linear, background-color 0.3s linear, border-color 0.25s linear, -webkit-transform 0.25s linear; color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\" />
<span style=\"color: rgb(51, 51, 51); font-family: 微软雅黑, 宋体; line-height: 25px; background-color: rgb(255, 255, 255);\">无论是与Web交互的API、可视化数据、加载网上的图片或创建一个社会功能的应用程序，这里列出的库等功能使开发更容易。如果你是一个iOS开发人员，在你的下一个项目开始之前，你一定要检查有没有使用这些库。</span>
<div id=\"xunlei_com_thunder_helper_plugin_d462f475-c18e-46be-bd10-327458d045bd\">
	&nbsp;</div>
<wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr><wbr>
<div id=\"xunlei_com_thunder_helper_plugin_d462f475-c18e-46be-bd10-327458d045bd\">
	&nbsp;</div>
</wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr></wbr>','','1','0','inc/uploads/article/201402/20140211105140818.jpg','1','1','1','0','0','','137','0.00','0','','0','0','0','0','cyruschan','1391961600','');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('74','1','29','','平面设计师','','','0','','','','','','','<strong>&nbsp;工作职责：</strong><br />
&nbsp;&nbsp;&nbsp; （VI方向）负责公司的形象设计，各种宣传物料等；<br />
&nbsp;&nbsp;&nbsp; （UI方向）负责手机应用的界面设计，网站设计等。<br />
<br />
<strong>任职要求：</strong><br />
&nbsp;&nbsp;&nbsp; 精通photoshop、AI。<br />
<strong><br />
具备以下条件之一者优先：</strong><br />
&nbsp;&nbsp;&nbsp; 具备以下有3D设计经验者优先。','','1','0',',','1','1','1','0','0','','119','0.00','0','','0','0','0','0','admin','1375113600','');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('77','1','27','','一些iOS高效开源类库','一些iOS高效开源类库','','0','','','','','','因为iOS SDK相对比较底层，所以开发者就得受累多做一些体力活。不过幸运的是，有很多第三方的类库可以用来简化很多不必要的工作。笔者整理了一下在本人学习过程中用到的一些比较','<p>
	<span style=\"color: rgb(68, 68, 68); font-family: \'Lucida Grande\', \'Lucida Sans Unicode\', Verdana, Helvetica, Arial, sans-serif; line-height: 25px; text-align: left; \">因 为iOS SDK相对比较底层，所以开发者就得受累多做一些体力活。不过幸运的是，有很多第三方的类库可以用来简化很多不必要的工作。笔者整理了一下在本人学习过程 中用到的一些比较有用Objective-C开源类库，既是做一个总结，同时也希望通过这些分享，能提高各位的开发效率。</span></p>
<div style=\"text-align: center; \">
	<img alt=\"\" border=\"0\" height=\"484\" src=\"http://www.cocoachina.com/cms/uploads/allimg/111227/3292_111227094313_1.png\" style=\"cursor:pointer\" width=\"486\" /></div>
<p style=\"margin-top: 13px; margin-right: 0px; margin-bottom: 13px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(68, 68, 68); font-family: \'Lucida Grande\', \'Lucida Sans Unicode\', Verdana, Helvetica, Arial, sans-serif; line-height: 25px; text-align: left; \">
	&nbsp;</p>
<p style=\"margin-top: 13px; margin-right: 0px; margin-bottom: 13px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(68, 68, 68); font-family: \'Lucida Grande\', \'Lucida Sans Unicode\', Verdana, Helvetica, Arial, sans-serif; line-height: 25px; text-align: left; \">
	&nbsp;</p>
<p style=\"margin-top: 13px; margin-right: 0px; margin-bottom: 13px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \">
	<a href=\"http://code.google.com/p/kissxml/\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(187, 68, 17); text-decoration: none; \">KissXml</a>&mdash;&mdash;xml解析库<br />
	相关教程：http://www.iteye.com/topic/625849</p>
<p style=\"margin-top: 13px; margin-right: 0px; margin-bottom: 13px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \">
	http://sencho.blog.163.com/blog/static/83056228201151743110540/</p>
<p style=\"margin-top: 13px; margin-right: 0px; margin-bottom: 13px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \">
	很方便的一个xml解析器，支持Xpath查询。</p>
<p style=\"margin-top: 13px; margin-right: 0px; margin-bottom: 13px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \">
	<a href=\"http://code.google.com/p/skpsmtpmessage/\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(187, 68, 17); text-decoration: none; \">skpsmtpmessage</a>&mdash;&mdash;Quick SMTP邮件发送<br />
	svn checkout http://skpsmtpmessage.googlecode.com/svn/trunk/ skpsmtpmessage-read-only<br />
	github: &nbsp; &nbsp; &nbsp;&nbsp;git clone https://github.com/kailoa/iphone-smtp.git<br />
	相关教程：http://disanji.net/2011/01/28/skpsmtpmessage-open-source-framework/<br />
	skpsmtpmessage 是由Skorpiostech, Inc.为我们带来的一个SMTP协议的开源实现，使用Objective-c 实现，iOS系统的项目可以直接调用。</p>
<p style=\"margin-top: 13px; margin-right: 0px; margin-bottom: 13px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \">
	<a href=\"https://github.com/stig/json-framework/\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(187, 68, 17); text-decoration: none; \">jsonframework</a>&mdash;&mdash;JSON支持<br />
	相关教程：http://blog.csdn.net/xiaoguan2008/article/details/6732683<br />
	它是一个开源框架，基于BSD协议发布。由于json-framework是开放源代码的，当你需要使用它时你只需将json的源代码加入到你的工程中。</p>
<p style=\"margin-top: 13px; margin-right: 0px; margin-bottom: 13px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \">
	<a href=\"http://allseeing-i.com/ASIHTTPRequest/\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(187, 68, 17); text-decoration: none; \">ASIHttpRequest</a>&mdash;&mdash;HTTP Network库<br />
	ASIHttpRequest库极大的简化了网络通 信，提供更先进的工具，例如文件上传工具，重定向处理工具、验证工具、等等。</p>
<p style=\"margin-top: 13px; margin-right: 0px; margin-bottom: 13px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \">
	<a href=\"https://github.com/jdg/MBProgressHUD\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(187, 68, 17); text-decoration: none; \">MBProgressHUD</a>&mdash;&mdash;进展指示符库<br />
	苹果的应用程序一般都会用一种优雅的，半透明的进度显示效果，不过这个API是不公开的，因此你要是用了，很可能被清除出AppStore。而 MBProgressHUD提供了一个替代方案，而且在用户角度上，实现的效果根本看不出和官方程序有什么差别。同时还提供了其他附加功能，比如虚拟进展 指示符，以及完成提示信息。整合到项目里也很容易，这里不细谈了。</p>
<p style=\"margin-top: 13px; margin-right: 0px; margin-bottom: 13px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \">
	<a href=\"http://code.google.com/p/zxing/\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(187, 68, 17); text-decoration: none; \">zxing</a>&mdash;&mdash;二维码扫描库<br />
	支持条形码/二维码扫描的图形处理库，这是一个java库，在android上的功能比较完整。同时该库也支持ios，但只能支持二位条形码的扫描。</p>
<p style=\"margin-top: 13px; margin-right: 0px; margin-bottom: 13px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \">
	<a href=\"https://github.com/klazuka/Kal\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(187, 68, 17); text-decoration: none; \">kal</a>&mdash;&mdash;iPhone日历控件<br />
	一个类似于ios系统默认日历开源日历库，支持添加事件，自定义日历样式等功能。</p>
<p style=\"margin-top: 13px; margin-right: 0px; margin-bottom: 13px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \">
	<a href=\"https://github.com/facebook/facebook-ios-sdk\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(187, 68, 17); text-decoration: none; \">Facebook iOS SDK</a>&mdash;&mdash;Facebook API类库<br />
	大体来讲就是iPhone上的Facebook login，完全支持Facebook Graph API和the older REST api。</p>
<p style=\"margin-top: 13px; margin-right: 0px; margin-bottom: 13px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \">
	<a href=\"http://getsharekit.com/install/\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(187, 68, 17); text-decoration: none; \">shareKit</a>&mdash;&mdash;分享库<br />
	相关demo：http://www.cocoachina.com/bbs/read.php?tid-71760.html<br />
	分享到开心，豆瓣，腾讯，新浪微博的api所用到的强大的分享库。</p>
<p style=\"margin-top: 13px; margin-right: 0px; margin-bottom: 13px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \">
	<a href=\"https://github.com/rs/SDWebImage\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(187, 68, 17); text-decoration: none; \">SDWebImage</a>&mdash;&mdash;简化网络图片处理<br />
	用SDWebImage调用网站上的图片，跟本地调用内置在应用包里的图片一样简单。操作也很简单。</p>
<p style=\"margin-top: 13px; margin-right: 0px; margin-bottom: 13px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \">
	<a href=\"http://code.google.com/p/gdata-objectivec-client/\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(187, 68, 17); text-decoration: none; \">GData client</a>&mdash;&mdash;iPhone上所有Google相关服务的类库<br />
	名字就说明一切了。跟Google相关的，值得一提的是，这个项目很开放。有很多示例程序供下载。</p>
<p style=\"margin-top: 13px; margin-right: 0px; margin-bottom: 13px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \">
	<a href=\"http://code.google.com/p/core-plot/\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(187, 68, 17); text-decoration: none; \">CorePlot</a>&mdash;&mdash;2D图形绘图仪<br />
	CorePlot有很多解决方案将你的数据可视。同时也会提供各种迷人的图形效果，比如棒状图、饼状图、线状图等等，在他们网站上也提供了大量的范例图形，很多股票价格应用，游戏分数，个人财务管理都在用。</p>
<p style=\"margin-top: 13px; margin-right: 0px; margin-bottom: 13px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \">
	<a href=\"https://github.com/facebook/three20\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(187, 68, 17); text-decoration: none; \">Three20</a>&mdash;&mdash;类似于Facebook的优秀的UI库<br />
	Three20类库是Facebook自己做的，大而全是他最大的特色。把他整合到已有的项目中可能得费点周折，不过如果一开始你就用上了Three20，尤其是牵扯到很多web相关的项目的时候，你就能深刻体会到神马叫给力了。</p>
<p style=\"margin-top: 13px; margin-right: 0px; margin-bottom: 13px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; \">
	<a href=\"https://github.com/ccgus/fmdb\" style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; color: rgb(187, 68, 17); text-decoration: none; \">FMDatabase</a>&mdash;&mdash;SQLite的Objective-C封装<br />
	是SQLite的C API對初學者來說實在太麻煩太瑣碎，難度太高。FMDB說穿了其實只是把C API包裝成簡單易用的Objective-C类。對于SQLite初學者來說，大大減低了上手的難度。有了FMDB，寫程式時只要專心在SQLite的 語法上，而不用去理那堆有看沒有懂的C API，實在是件快樂的事情。</p>
<div id=\"xunlei_com_thunder_helper_plugin_d462f475-c18e-46be-bd10-327458d045bd\">
	&nbsp;</div>','','1','0','inc/uploads/article/201402/20140211105025928.jpg','0','1','1','0','0','','74','0.00','0','','0','0','0','0','cyruschan','1391961600','');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('78','1','27','','iphone开源汇总','iphone开源汇总','','0','','','','','','扫描wifi信息,条形码扫描,tcp/ip的通讯协议,voip/sip,three20,google gdata等','<div id=\"article_content\">
	<p>
		扫描wifi信息：</p>
	<p>
		<a href=\"http://code.google.com/p/uwecaugmentedrealityproject/\" title=\"http://code.google.com/p/uwecaugmentedrealityproject/\">http://code.google.com/p/uwecaugmentedrealityproject/</a></p>
	<p>
		<a href=\"http://code.google.com/p/iphone-wireless/\" title=\"http://code.google.com/p/iphone-wireless/\">http://code.google.com/p/iphone-wireless/</a></p>
	<p>
		条形码扫描：</p>
	<p>
		<a href=\"http://zbar.sourceforge.net/iphone/sdkdoc/install.html\" title=\"http://zbar.sourceforge.net/iphone/sdkdoc/install.html\">http://zbar.sourceforge.net/iphone/sdkdoc/install.html</a></p>
	<p>
		tcp/ip的通讯协议：</p>
	<p>
		<a href=\"http://code.google.com/p/cocoaasyncsocket/\" title=\"http://code.google.com/p/cocoaasyncsocket/\">http://code.google.com/p/cocoaasyncsocket/</a></p>
	<p>
		voip/sip：</p>
	<p>
		<a href=\"http://code.google.com/p/siphon/\">http://code.google.com/p/siphon/</a></p>
	<p>
		<a href=\"http://code.google.com/p/asterisk-voicemail-for-iphone/\">http://code.google.com/p/asterisk-voicemail-for-iphone/</a></p>
	<p>
		<a href=\"http://code.google.com/p/voiphone/\">http://code.google.com/p/voiphone/</a></p>
	<p>
		three20</p>
	<p>
		<a href=\"https://github.com/facebook/three20\">https://github.com/facebook/three20</a></p>
	<p>
		google gdata</p>
	<p>
		<a href=\"http://code.google.com/p/gdata-objectivec-client/\">http://code.google.com/p/gdata-objectivec-client/</a></p>
	<p>
		720全景显示panoramagl</p>
	<p>
		<a href=\"http://code.google.com/p/panoramagl/\">http://code.google.com/p/panoramagl/</a></p>
	<p>
		jabber client</p>
	<p>
		<a href=\"http://code.google.com/p/ichabber/\">http://code.google.com/p/ichabber/</a></p>
	<p>
		PLBlocks</p>
	<p>
		<a href=\"http://code.google.com/p/plblocks/\">http://code.google.com/p/plblocks/</a></p>
	<p>
		image processing</p>
	<p>
		<a href=\"http://code.google.com/p/simple-iphone-image-processing/\">http://code.google.com/p/simple-iphone-image-processing/</a></p>
	<p>
		json编码解码:<a href=\"http://code.google.com/p/json-framework\">http://code.google.com/p/json-framework</a></p>
	<p>
		base64编码解码:<a href=\"http://code.google.com/p/google-toolbox-for-mac/source/browse/trunk/Foundation/?r=87\">http://code.google.com/p/google-toolbox-for-mac/source/browse/trunk/Foundation/?r=87</a></p>
	<p>
		xml解析:<a href=\"https://github.com/schwa/TouchXML\">https://github.com/schwa/TouchXML</a></p>
	<p>
		安全保存用户密码到keychain中:<a href=\"https://github.com/ldandersen/scifihifi-iphone\">https://github.com/ldandersen/scifihifi-iphone</a></p>
	<p>
		加载等待特效框架(private api):<a href=\"https://github.com/jdg/MBProgressHUD\">https://github.com/jdg/MBProgressHUD</a></p>
	<p>
		http等相关协议封装:<a href=\"http://allseeing-i.com/ASIHTTPRequest\">http://allseeing-i.com/ASIHTTPRequest</a></p>
	<p>
		下拉刷新代码:<a href=\"https://github.com/enormego/EGOTableViewPullRefresh\">https://github.com/enormego/EGOTableViewPullRefresh</a></p>
	<p>
		异步加载图片并缓存代码:<a href=\"http://www.markj.net/iphone-asynchronous-table-image/\">http://www.markj.net/iphone-asynchronous-table-image/</a></p>
	<p>
		iphone TTS:<a href=\"https://bitbucket.org/sfoster/iphone-tts\">https://bitbucket.org/sfoster/iphone-tts</a></p>
	<p>
		iphone cook book 源码:<a href=\"https://github.com/erica/iphone-3.0-cookbook-\">https://github.com/erica/iphone-3.0-cookbook-</a></p>
	<p>
		iphone正则表达式:<a href=\"http://regexkit.sourceforge.net/RegexKitLite/\">http://regexkit.sourceforge.net/RegexKitLite/</a></p>
	<p>
		OAuth认证:&nbsp;&nbsp;<a href=\"http://code.google.com/p/oauth/\" id=\"url_26\" target=\"_blank\">http://code.google.com/p/oauth/</a><br />
		<a href=\"http://code.google.com/p/oauthconsumer/\" id=\"url_27\" target=\"_blank\">http://code.google.com/p/oauthconsumer/</a></p>
	<p>
		蓝牙协议栈:<a href=\"http://code.google.com/p/btstack/\">http://code.google.com/p/btstack/</a></p>
	<p>
		语音识别:<a href=\"http://www.politepix.com/openears/\">http://www.politepix.com/openears/</a></p>
	<p>
		ShareKit:<a href=\"http://www.getsharekit.com/install/\">http://www.getsharekit.com/install/</a></p>
	<p>
		日历控件:<a href=\"http://code.google.com/p/iphonecal/\">http://code.google.com/p/iphonecal/</a></p>
	<p>
		<a href=\"https://github.com/klazuka/Kal\">https://github.com/klazuka/Kal</a></p>
	<p>
		zlib, openssl:<a href=\"http://code.google.com/p/ios-static-libraries/\">http://code.google.com/p/ios-static-libraries/</a></p>
	<p>
		地球显示信息：<a href=\"http://code.google.com/p/whirlyglobe/\">http://code.google.com/p/whirlyglobe/</a></p>
</div>
<div id=\"xunlei_com_thunder_helper_plugin_d462f475-c18e-46be-bd10-327458d045bd\">
	&nbsp;</div>','','1','0','inc/uploads/article/201402/20140211104855061.jpg','0','1','1','0','0','','347','0.00','0','','0','0','0','0','cyruschan','1391961600','');/* MySQLReback Separation */
 /* 创建表结构 `cms_article_field`  */
 DROP TABLE IF EXISTS `cms_article_field`;/* MySQLReback Separation */ CREATE TABLE `cms_article_field` (
  `id` int(11) NOT NULL auto_increment,
  `aid` int(10) NOT NULL default '0',
  `Client` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_article_field` */
 INSERT INTO `cms_article_field` VALUES ('1','62','寰球汽车传媒集团'),('2','66','《世界》杂志'),('3','68','第一步'),('4','71','LaluzAPP'),('6','72','China Daily 中国日报');/* MySQLReback Separation */
 /* 创建表结构 `cms_category`  */
 DROP TABLE IF EXISTS `cms_category`;/* MySQLReback Separation */ CREATE TABLE `cms_category` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `lang` tinyint(3) unsigned NOT NULL default '1',
  `title` varchar(255) NOT NULL,
  `module` varchar(6) NOT NULL,
  `channel` smallint(5) unsigned NOT NULL default '0',
  `level` tinyint(3) unsigned NOT NULL default '1',
  `nexus` varchar(255) NOT NULL,
  `htmllist` varchar(255) NOT NULL,
  `htmlcontent` varchar(255) NOT NULL,
  `seotitle` varchar(255) NOT NULL,
  `seokey` varchar(255) NOT NULL,
  `seodescr` varchar(255) NOT NULL,
  `permission` varchar(255) NOT NULL,
  `templatelist` varchar(50) NOT NULL,
  `templatecontent` varchar(50) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `introduction` text NOT NULL,
  `sort` smallint(5) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `bid` int(10) unsigned NOT NULL,
  PRIMARY KEY  (`id`),
  KEY `nexus` (`nexus`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_category` */
 INSERT INTO `cms_category` VALUES ('1','1','行业资讯','MO001x','2','1',',1,','','','','','','0','','','','','1','1300419480','0'),('2','1','娱乐新闻','MO001x','2','1',',2,','','','','','','0','','','','','2','1300419587','0'),('3','1','互联网','MO001x','2','1',',3,','','','','','','0','','','','','3','1300419700','0'),('4','1','社会万象','MO001x','2','1',',4,','','','','','','0','','','','','4','1300419860','0'),('5','1','家用电器','MO002x','3','1',',5,','','','','','','0','','','','','1','1300456229','0'),('6','1','手机及配件','MO002x','3','1',',6,','','','','','','0','','','','','2','1300456242','0'),('7','1','电脑及耗材','MO002x','3','1',',7,','','','','','','0','','','','','3','1300456262','0'),('8','1','办公器材','MO002x','3','1',',8,','','','','','','0','','','','','4','1300456401','0'),('9','1','时尚数码','MO002x','3','1',',9,','','','','','','0','','','','','5','1300459436','0'),('10','1','诺基亚','MO002x','3','2',',6,10,','','','','','','0','','','','','1','1300459782','0'),('11','1','三星','MO002x','3','2',',6,11,','','','','','','0','','','','','2','1300459801','0'),('12','1','索尼爱立信','MO002x','3','2',',6,12,','','','','','','0','','','','','3','1300459816','0'),('13','1','电话机','MO002x','3','2',',8,13,','','','','','','0','','','','','1','1300461298','0'),('14','1','传真机','MO002x','3','2',',8,14,','','','','','','0','','','','','2','1300461311','0'),('15','1','打印机','MO002x','3','2',',8,15,','','','','','','0','','','','','3','1300461328','0'),('16','1','洗衣机','MO002x','3','2',',5,16,','','','','','','0','','','','','1','1300462061','0'),('17','1','电视机','MO002x','3','2',',5,17,','','','','','','0','','','','','2','1300462076','0'),('18','1','冰箱空调','MO002x','3','2',',5,18,','','','','','','0','','','','','3','1300462093','0'),('19','1','小家电','MO002x','3','2',',5,19,','','','','','','0','','','','','4','1300462113','0'),('20','1','影视娱乐','MO003x','4','1',',20,','','','','','','0','','','','','1','1300500616','0'),('21','1','明星写真','MO003x','4','1',',21,','','','','','','0','','','','','2','1300500674','0'),('22','1','应用软件','MO004x','5','1',',22,','','','','','','0','','','','','2','1300510394','0'),('23','1','源码下载','MO004x','5','1',',23,','','','','','','0','','','','','1','1300510363','0'),('24','1','素材下载','MO004x','5','1',',24,','','','','','','0','','','','','3','1300510456','0'),('25','1','模板下载','MO004x','5','1',',25,','','','','','','0','','','','','4','1300510581','0'),('26','1','产品与服务','MO001x','6','1',',26,','','','','','','0','about_channel','about_view','','','1','1300511555','0'),('27','1','默认分类','MO001x','9','1',',27,','','','','','','0','about_channel','about_view','','','1','1300426455','0'),('28','1','默认分类','MO003x','10','1',',28,','','','','','','0','about_channel','about_view','','','1','1300452807','0'),('29','2','Default','MO001x','16','1',',29,','','','','','','0','about_channel','about_view','','','1','1331472719','0'),('30','2','Default','MO001x','19','1',',30,','','','','','','0','about_channel','about_view','','','1','1331470872','0'),('31','2','Default','MO003x','20','1',',31,','','','','','','0','about_channel','about_view','','','1','1331470878','0');/* MySQLReback Separation */
 /* 创建表结构 `cms_channel`  */
 DROP TABLE IF EXISTS `cms_channel`;/* MySQLReback Separation */ CREATE TABLE `cms_channel` (
  `id` smallint(5) unsigned NOT NULL auto_increment,
  `lang` tinyint(3) unsigned default '1',
  `title` varchar(255) default NULL,
  `titleEn` varchar(255) default NULL,
  `url` varchar(255) default NULL,
  `target` varchar(10) default NULL,
  `module` varchar(6) default NULL,
  `permission` varchar(255) default NULL,
  `show` tinyint(1) unsigned default '1',
  `pathhome` varchar(50) default NULL,
  `pathcategory` varchar(50) default NULL,
  `pathcontent` varchar(50) default NULL,
  `seotitle` varchar(255) default NULL,
  `seokey` varchar(255) default NULL,
  `seodescr` varchar(255) default NULL,
  `template` varchar(50) default NULL,
  `sort` smallint(5) unsigned default '0',
  `addtime` int(10) unsigned default '0',
  `UpChannelID` int(10) unsigned default '0',
  `nexus` varchar(45) default NULL,
  `level` varchar(45) default NULL,
  `templatecontent` varchar(45) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_channel` */
 INSERT INTO `cms_channel` VALUES ('1','1','首页','HOME','{home}','_self','0','0','1','','','','','','','','1','1300415159','0',',1,','0',''),('2','1','案例','Portfolio','','_self','MO001x','0','1','Portfolio/index.html','Portfolio/{CID}.html','Portfolio/{Y}{M}/{ID}.html','Cyrus Chan个人网站 | 移动应用解决方案，交互设计，视觉设计，网站研发，App程序开发','用户研究,交互设计,视觉设计,产品研发,App程序开发','提供全方位多平台的移动网格解决方案','Portfolio','2','1300417178','0',',2,','0',''),('31','1','首页客户logo','Index_ClientsLogo','','_self','MO003x','0','0','','','','','','','','20','1374289568','4',',4,31,','2',''),('4','1','图 集','','','_self','MO003x','0','0','photo/index.html','photo/{CID}.html','photo/{Y}{M}/{ID}.html','图片展示频道','','','','99','1300417493','0',',4,','0',''),('6','1','服务','Services','','_self','MO001x','0','1','service/index.html','service/{CID}.html','service/{CID}-{ID}.html','Services','Services','Services','about_channel','3','1300417612','0',',6,','0',''),('8','1','联系','Contact','/#Contact','_self','MO001x','0','1','','0','','','','','News','5','1300421995','0',',8,','0',''),('23','1','网站界面','Web UI','','_self','MO001x','0','0','Portfolio/WebUI/index.html','Portfolio/WebUI/{CID}.html','Portfolio/WebUI/{Y}{M}/{ID}.html','WebUI','WebUI','WebUI','Portfolio','20','1373644197','2',',2,23,','2','Portfolio_view'),('11','2','Home','','{home}','_self','0','0','1','','','','','','','','1','1300422199','0','','',''),('12','2','News','','','_self','MO001x','0','1','en/news/index.html','en/news/{CID}.html','en/news/{Y}{M}/{ID}.html','News Center','','','','2','1300422318','0','','',''),('13','2','Shopping','','','_self','MO002x','0','1','en/product/index.html','en/product/{CID}.html','en/product/{Y}{M}/{ID}.html','Shopping','','','','3','1300422856','0','','',''),('14','2','Photo','','','_self','MO003x','0','1','en/photo/index.html','en/photo/{CID}.html','en/photo/{Y}{M}/{ID}.html','Photo','','','','4','1300425035','0','','',''),('15','2','Download','','','_self','MO004x','0','1','en/download/index.html','en/download/{CID}.html','en/download/{Y}{M}/{ID}.html','Download','','','','5','1300425066','0','','',''),('16','2','Services','','','_self','MO001x','0','1','en/service/index.html','en/service/{CID}.html','en/service/{CID}-{ID}.html','Services','','','about_channel','6','1300425095','0','','',''),('17','2','Feedback','','{feedback}','_self','0','0','0','','','','','','','','7','1331469822','0','','',''),('18','2','GuestBook','','{guestbook}','_self','0','0','0','','','','','','','','8','1300421995','0','','',''),('19','2','Announcement','','','_self','MO001x','0','0','en/annou/index.html','en/annou/{PID}-{CID}.html','annou/{ID}.html','Other Articles','','','about_channel','9','1300426388','0','','',''),('20','2','Focus Picture','','','_self','MO003x','0','0','','','','Focus Picture','','','','10','1300452311','0','','',''),('22','1','移动应用','Mobile APP','','_self','MO001x','0','0','Portfolio/MobileAPP/index.html','Portfolio/MobileAPP/{CID}.html','Portfolio/MobileAPP/{Y}{M}/{ID}.html','MobileAPP','用户研究 交互设计 视觉设计 产品研发','我们提供全方位多平台的移动应用解决方案','Portfolio','20','1373643737','2',',2,22,','2','Portfolio_view'),('21','1','首页广告','','','_self','MO003x','0','0','','','','','','','','20','1373564370','4',',4,21,','2',''),('24','1','平面广告','Advertise','','_self','MO001x','0','0','Portfolio/LogoIcon/index.html','Portfolio/LogoIcon/{CID}.html','Portfolio/LogoIcon/{Y}{M}/{ID}.html','Advertise','Advertise','Advertise','Portfolio','20','1373644312','2',',2,24,','2','Portfolio_view'),('25','1','随笔','About','','_self','MO001x','0','1','News/index.html','News/{CID}.html','News/{Y}{M}/{ID}.html','双晖动态 TGVISON双晖传媒品牌机构官方网站 | 移动应用解决方案专家，交互设计，视觉设计，产品研发','News','双晖动态 TGVISON双晖传媒品牌机构官方网站 | 移动应用解决方案专家，交互设计，视觉设计，产品研发','News','4','1373767844','0',',25,','0',''),('26','1','WebApp','WebApplications','','_self','MO001x','0','0','News/shuanghui/index.html','News/shuanghui/{CID}.html','News/shuanghui/{Y}{M}/{ID}.html','Cyrus Chan个人网站 | 移动应用解决方案，交互设计，视觉设计，网站研发，App程序开发','Cyrus Chan个人网站 | 移动应用解决方案，交互设计，视觉设计，网站研发，App程序开发','Cyrus Chan个人网站 | 移动应用解决方案，交互设计，视觉设计，网站研发，App程序开发','News','20','1373768179','25',',25,26,','2',''),('27','1','MobileApp','MobileApp','','_self','MO001x','0','0','News/UpDate/index.html','News/UpDate/{CID}.html','News/UpDate/{Y}{M}/{ID}.html','','','','News','20','1373768261','25',',25,27,','2','');/* MySQLReback Separation */
 /* 插入数据 `cms_channel` */
 INSERT INTO `cms_channel` VALUES ('28','1','Animation','Animation','','_self','MO001x','0','0','','','','','','双晖传媒专精于高品质的全方位设计服务，拥有实力坚强的研发团队及国内外顶尖水平的设计人才，核心成员曾服务于微软、雅虎（美国）、淘宝、新浪、腾讯等全球知名企业，拥有丰富的视觉及交互设计经验。多名设计师在国内外获得设计相关奖项，被多家媒体专访，案例被国内外设计网站收录，如：Newswebpic，CSS DESIGN AWARDS，CSS Winner，CSS Light，站酷，Iconfans，68design，UIRSS，ChinaUI等。','','20','1373790132','25',',25,28,','2','');/* MySQLReback Separation */
 /* 插入数据 `cms_channel` */
 INSERT INTO `cms_channel` VALUES ('29','1','加入我们','Join Us','','_self','MO001x','0','0','Join/index.html','Join/{CID}.html','Join/{Y}{M}/{ID}.html','Join Us','Join Us','Join Us','News','20','1373939084','0',',29,','0',''),('30','1','Database','Database','','_self','MO001x','0','0','News/index.html','News/{CID}.html','News/{Y}{M}/{ID}.html','最新动态','最新动态','最新动态','News','20','1373939206','25',',25,30,','2',''),('32','1','拍照修图','Photo Retouch','','_self','MO001x','0','1','Portfolio/index.html','Portfolio/LogoIcon/{CID}.html','Portfolio/LogoIcon/{Y}{M}/{ID}.html','Cyrus Chan个人网站 | 移动应用解决方案，交互设计，视觉设计，网站研发，App程序开发','用户研究,交互设计,视觉设计,产品研发,App程序开发','Cyrus Chan个人网站 | 移动应用解决方案，交互设计，视觉设计，网站研发，App程序开发','Portfolio','20','1389951432','2',',32,','2','');/* MySQLReback Separation */
 /* 创建表结构 `cms_download`  */
 DROP TABLE IF EXISTS `cms_download`;/* MySQLReback Separation */ CREATE TABLE `cms_download` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `lang` tinyint(3) unsigned NOT NULL default '1',
  `channel` int(10) unsigned NOT NULL default '0',
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `color` varchar(7) NOT NULL,
  `bold` tinyint(1) unsigned NOT NULL default '0',
  `tag` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `sourceurl` varchar(50) NOT NULL,
  `demourl` varchar(50) NOT NULL,
  `environment` varchar(100) NOT NULL,
  `softlang` varchar(50) NOT NULL,
  `authorization` varchar(50) NOT NULL,
  `size` varchar(20) NOT NULL,
  `local` varchar(255) NOT NULL,
  `mode` tinyint(1) unsigned NOT NULL default '0',
  `mirror` text NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(50) NOT NULL,
  `comment` tinyint(1) unsigned NOT NULL default '0',
  `commenttotal` int(10) unsigned NOT NULL default '0',
  `agree` int(10) unsigned NOT NULL default '0',
  `disagree` int(10) unsigned NOT NULL default '0',
  `picture` text NOT NULL,
  `recom` tinyint(1) unsigned NOT NULL default '0',
  `audit` tinyint(1) unsigned NOT NULL default '0',
  `recycle` tinyint(1) unsigned NOT NULL default '0',
  `permission` varchar(255) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `click` int(10) unsigned NOT NULL default '0',
  `count` int(10) unsigned NOT NULL default '0',
  `money` decimal(8,2) unsigned NOT NULL default '0.00',
  `integral` int(10) unsigned NOT NULL default '0',
  `buyuser` text NOT NULL,
  `sort` int(10) unsigned NOT NULL default '0',
  `publisher` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `cms_download_field`  */
 DROP TABLE IF EXISTS `cms_download_field`;/* MySQLReback Separation */ CREATE TABLE `cms_download_field` (
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `body` mediumtext NOT NULL,
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `cms_fields`  */
 DROP TABLE IF EXISTS `cms_fields`;/* MySQLReback Separation */ CREATE TABLE `cms_fields` (
  `fid` int(11) NOT NULL auto_increment,
  `channelID` varchar(20) default NULL,
  `fieldsname` varchar(20) default NULL,
  `fields` varchar(50) default '0',
  `fieldstype` varchar(20) character set utf8 collate utf8_bin default NULL,
  `fieldslong` smallint(5) default '0',
  `selects` text,
  `fieldorder` int(10) default '0',
  `issubmit` tinyint(1) default '1',
  `lists` tinyint(1) default '0',
  `fieldshow` tinyint(1) default '1',
  `types` text,
  PRIMARY KEY  (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_fields` */
 INSERT INTO `cms_fields` VALUES ('2','2','Client','Client','varchar','255','','0','1','1','1','');/* MySQLReback Separation */
 /* 创建表结构 `cms_guestbook`  */
 DROP TABLE IF EXISTS `cms_guestbook`;/* MySQLReback Separation */ CREATE TABLE `cms_guestbook` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `lang` tinyint(3) unsigned NOT NULL default '1',
  `nickname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `company` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL default '2',
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `visible` tinyint(1) unsigned NOT NULL default '0',
  `username` varchar(20) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  `audit` tinyint(1) unsigned NOT NULL default '0',
  `reply` text NOT NULL,
  `replyadmin` varchar(30) NOT NULL,
  `replytime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `cms_ipvisit`  */
 DROP TABLE IF EXISTS `cms_ipvisit`;/* MySQLReback Separation */ CREATE TABLE `cms_ipvisit` (
  `ip` varchar(15) NOT NULL,
  `lang` tinyint(3) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `oid` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `ip` (`ip`,`lang`,`type`,`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_ipvisit` */
 INSERT INTO `cms_ipvisit` VALUES ('unknown','0','3','1373620258','3');/* MySQLReback Separation */
 /* 创建表结构 `cms_links`  */
 DROP TABLE IF EXISTS `cms_links`;/* MySQLReback Separation */ CREATE TABLE `cms_links` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `lang` tinyint(3) unsigned NOT NULL default '1',
  `type` tinyint(1) unsigned NOT NULL default '0',
  `webname` varchar(50) NOT NULL,
  `color` varchar(7) NOT NULL,
  `weburl` varchar(100) NOT NULL,
  `logourl` varchar(100) NOT NULL,
  `webmaster` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `info` text NOT NULL,
  `sort` int(10) unsigned NOT NULL default '0',
  `audit` tinyint(1) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_links` */
 INSERT INTO `cms_links` VALUES ('2','1','0','TGVISION双晖传媒百度百科','','http://baike.baidu.com/view/7852061.htm','','双晖传媒','','TGVISION双晖传媒百度百科','100','1','1373943554'),('3','1','0','TGVISION双晖传媒新浪官方微博','','http://e.weibo.com/tgvisionstudio?sudaref=tg-vision.com','','','http://e.weibo.com/tgvisionstudio?sudaref=tg-visio','TGVISION双晖传媒新浪官方微博','100','1','1373943587'),('4','1','0','TGVISION Dribbble','','http://dribbble.com/tgvision','','http://dribbble.com/tgvision','http://dribbble.com/tgvision','TGVISION Dribbble','100','1','1373943620');/* MySQLReback Separation */
 /* 创建表结构 `cms_logs`  */
 DROP TABLE IF EXISTS `cms_logs`;/* MySQLReback Separation */ CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `type` tinyint(3) unsigned NOT NULL default '0',
  `info` text NOT NULL,
  `pageurl` varchar(255) NOT NULL,
  `lang` tinyint(3) unsigned NOT NULL default '0',
  `username` varchar(20) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=355 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('1','1','[admin] 成功的登录后台。','http://localhost/admin/login.php','1','admin','unknown','1373357008'),('2','4','删除选中的商品，操作成功(id:60)','http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=60','1','admin','unknown','1373363693'),('3','4','删除选中的商品，操作成功(id:59)','http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=59','1','admin','unknown','1373363694'),('4','4','删除选中的商品，操作成功(id:58)','http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=58','1','admin','unknown','1373363697'),('5','4','删除选中的商品，操作成功(id:40)','http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=40','1','admin','unknown','1373363698'),('6','4','删除选中的商品，操作成功(id:39)','http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=39','1','admin','unknown','1373363699'),('7','4','删除选中的商品，操作成功(id:38)','http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=38','1','admin','unknown','1373363700'),('8','4','删除选中的商品，操作成功(id:20)','http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=20','1','admin','unknown','1373363701'),('9','4','删除选中的商品，操作成功(id:19)','http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=19','1','admin','unknown','1373363702'),('10','4','删除选中的商品，操作成功(id:18)','http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=18','1','admin','unknown','1373363705'),('11','4','删除选中的商品，操作成功(id:57)','http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=57','1','admin','unknown','1373363706'),('12','4','彻底删除选中的商品，操作成功(id:60,59,58,40,39,38,20,19,18,57)','http://localhost/admin/product_manage.php?trash=1','1','admin','unknown','1373363716'),('13','4','彻底删除选中的商品，操作成功(id:56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,37,36,35,34)','http://localhost/admin/product_manage.php?trash=0','1','admin','unknown','1373363724'),('14','4','彻底删除选中的商品，操作成功(id:33,32,31,30,29,28,27,26,25,24,23,22,21,17,16,15,14,13,12,11)','http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0','1','admin','unknown','1373363731'),('15','4','彻底删除选中的商品，操作成功(id:10,9,8,7,6,5,4,3,2,1)','http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0','1','admin','unknown','1373363736'),('16','4','彻底删除选中的资源，操作成功(id:11,10,9,8,7,6,5,4,3,2,1)','http://localhost/admin/download_manage.php','1','admin','unknown','1373363749'),('17','4','彻底删除选中的图集，操作成功(id:10,9,4,2,3,1)','http://localhost/admin/picture_manage.php','1','admin','unknown','1373363756'),('18','4','彻底删除选中的内容，操作成功(id:58,57,50,49,48,47,46,45,44,43,42,41,40,39,38,37,36,35,34,33)','http://localhost/admin/article_manage.php','1','admin','unknown','1373363766'),('19','4','彻底删除选中的内容，操作成功(id:32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13)','http://localhost/admin/article_manage.php?channel=0&sort=0&page=1&trash=0&filter=0','1','admin','unknown','1373363770'),('20','4','彻底删除选中的内容，操作成功(id:12,11,10,9,8,7,6,5,4,3,2,1,56,54,55,53,52,51)','http://localhost/admin/article_manage.php?channel=0&sort=0&page=1&trash=0&filter=0','1','admin','unknown','1373363774'),('21','1','[admin] 成功的登录后台。','http://localhost/admin/login.php?goto=%2Fadmin%2Fchannel_manage.php','1','admin','unknown','1373441871'),('22','3','修改后台菜单设置(操作成功)','http://localhost/admin/set_file.php','1','admin','unknown','1373441903'),('23','3','修改后台菜单设置(操作成功)','http://localhost/admin/set_file.php','1','admin','unknown','1373441920'),('24','3','修改后台菜单设置(操作成功)','http://localhost/admin/set_file.php','1','admin','unknown','1373441925'),('25','4','删除选中的友情链接，操作成功(id:1)','http://localhost/admin/links_manage.php','1','admin','unknown','1373442008'),('26','1','[admin] 成功的登录后台。','http://localhost/admin/login.php','1','admin','unknown','1373447474'),('27','2','发布文章内容，操作成功(id:62)','http://localhost/admin/article_update.php?channel=2','1','admin','unknown','1373447842'),('28','1','[admin] 成功的登录后台。','http://localhost/admin/login.php','1','admin','unknown','1373532287');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('29','3','修改频道信息，操作成功(id:1)','http://localhost/admin/channel_update.php?id=1&UpChannelID=0','1','admin','unknown','1373532747');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('30','3','修改频道信息，操作成功(id:2)','http://localhost/admin/channel_update.php?id=2&UpChannelID=0','1','admin','unknown','1373532830'),('31','3','修改频道信息，操作成功(id:6)','http://localhost/admin/channel_update.php?id=6&UpChannelID=0','1','admin','unknown','1373537078'),('32','3','修改频道信息，操作成功(id:3)','http://localhost/admin/channel_update.php?id=3&UpChannelID=0','1','admin','unknown','1373537088'),('33','3','修改频道信息，操作成功(id:4)','http://localhost/admin/channel_update.php?id=4&UpChannelID=0','1','admin','unknown','1373537096'),('34','3','修改频道信息，操作成功(id:6)','http://localhost/admin/channel_update.php?id=6&UpChannelID=0','1','admin','unknown','1373537116'),('35','3','修改频道信息，操作成功(id:5)','http://localhost/admin/channel_update.php?id=5&UpChannelID=0','1','admin','unknown','1373537124'),('36','3','修改频道信息，操作成功(id:8)','http://localhost/admin/channel_update.php?id=8&UpChannelID=0','1','admin','unknown','1373537191'),('37','3','修改频道信息，操作成功(id:3)','http://localhost/admin/channel_update.php?id=3&UpChannelID=0','1','admin','unknown','1373537266'),('38','3','修改频道信息，操作成功(id:3)','http://localhost/admin/channel_update.php?id=3&UpChannelID=0','1','admin','unknown','1373555326'),('39','3','修改频道信息，操作成功(id:6)','http://localhost/admin/channel_update.php?id=6&UpChannelID=0','1','admin','unknown','1373555335'),('40','3','修改频道信息，操作成功(id:2)','http://localhost/admin/channel_update.php?id=2&UpChannelID=0','1','admin','unknown','1373561891'),('41','3','修改频道信息，操作成功(id:2)','http://localhost/admin/channel_update.php?id=2&UpChannelID=0','1','admin','unknown','1373561956'),('42','2','添加新频道，操作成功(id:21)','http://localhost/admin/channel_update.php?UpChannelID=4','1','admin','unknown','1373564370'),('43','3','修改频道信息，操作成功(id:4)','http://localhost/admin/channel_update.php?id=4&UpChannelID=0','1','admin','unknown','1373564386'),('44','3','修改频道信息，操作成功(id:8)','http://localhost/admin/channel_update.php?id=8&UpChannelID=0','1','admin','unknown','1373564412'),('45','3','修改频道信息，操作成功(id:8)','http://localhost/admin/channel_update.php?id=8&UpChannelID=0','1','admin','unknown','1373564489'),('46','3','修改频道信息，操作成功(id:5)','http://localhost/admin/channel_update.php?id=5&UpChannelID=0','1','admin','unknown','1373564501'),('47','3','修改频道信息，操作成功(id:21)','http://localhost/admin/channel_update.php?id=21&UpChannelID=4','1','admin','unknown','1373566929'),('48','2','修改网站基本设置，操作成功','http://localhost/admin/set_web.php','1','admin','unknown','1373567243'),('49','3','修改后台菜单设置(操作成功)','http://localhost/admin/set_file.php','1','admin','unknown','1373620423'),('50','3','修改后台菜单设置(操作成功)','http://localhost/admin/set_file.php','1','admin','unknown','1373620464'),('51','4','删除频道，操作成功(id:10)','http://localhost/admin/channel_manage.php?del=10','1','admin','unknown','1373620855'),('52','4','删除频道，操作成功(id:9)','http://localhost/admin/channel_manage.php?del=9','1','admin','unknown','1373620886'),('53','1','[admin] 成功的登录后台。','http://localhost/admin/login.php','1','admin','unknown','1373631261'),('54','2','发布文章内容，操作成功(id:63)','http://localhost/admin/article_update.php?channel=6','1','admin','unknown','1373631578'),('55','4','删除选中的内容，操作成功(id:63)','http://localhost/admin/article_manage.php?channel=0&sort=0&page=1&trash=0&filter=0&action=del&id=63','1','admin','unknown','1373631583'),('56','4','彻底删除选中的内容，操作成功(id:63,61)','http://localhost/admin/article_manage.php?trash=1','1','admin','unknown','1373631590'),('57','4','删除选中的图集，操作成功(id:12)','http://localhost/admin/picture_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=12','1','admin','unknown','1373631672'),('58','4','彻底删除选中的图集，操作成功(id:12)','http://localhost/admin/picture_manage.php?trash=1','1','admin','unknown','1373631679'),('59','3','修改图片处理参数(操作成功)','http://localhost/admin/set_picture.php','1','admin','unknown','1373640517'),('60','2','发布新图集，操作成功(id:14)','http://localhost/admin/picture_update.php?channel=21','1','admin','unknown','1373641796'),('61','4','删除频道，操作成功(id:5)','http://localhost/admin/channel_manage.php?del=5','1','admin','unknown','1373643210'),('62','2','发布文章内容，操作成功(id:64)','http://localhost/admin/article_update.php?channel=2','1','admin','unknown','1373643557'),('63','4','删除选中的内容，操作成功(id:64)','http://localhost/admin/article_manage.php?channel=0&sort=0&page=1&trash=0&filter=0&action=del&id=64','1','admin','unknown','1373643576');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('64','4','彻底删除选中的内容，操作成功(id:64)','http://localhost/admin/article_manage.php?channel=0&sort=0&page=1&trash=1&filter=0&action=clear&id=64','1','admin','unknown','1373643580');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('65','2','添加新频道，操作成功(id:22)','http://localhost/admin/channel_update.php?UpChannelID=2','1','admin','unknown','1373643737'),('66','3','修改图片处理参数(操作成功)','http://localhost/admin/set_picture.php','1','admin','unknown','1373643903'),('67','2','添加新频道，操作成功(id:23)','http://localhost/admin/channel_update.php?UpChannelID=2','1','admin','unknown','1373644197'),('68','3','修改频道信息，操作成功(id:22)','http://localhost/admin/channel_update.php?id=22&UpChannelID=2','1','admin','unknown','1373644227'),('69','2','添加新频道，操作成功(id:24)','http://localhost/admin/channel_update.php?UpChannelID=2','1','admin','unknown','1373644312'),('70','3','修改图片处理参数(操作成功)','http://localhost/admin/set_picture.php','1','admin','unknown','1373645185'),('71','3','修改文章内容，操作成功(id:62)','http://localhost/admin/article_update.php?id=62&channel=2','1','admin','unknown','1373645947'),('72','3','修改文章内容，操作成功(id:62)','http://localhost/admin/article_update.php?id=62&channel=2','1','admin','unknown','1373646045'),('73','3','修改频道信息，操作成功(id:2)','http://localhost/admin/channel_update.php?id=2&UpChannelID=0','1','admin','unknown','1373647600'),('74','3','修改频道信息，操作成功(id:2)','http://localhost/admin/channel_update.php?id=2&UpChannelID=0','1','admin','unknown','1373647867'),('75','3','修改频道信息，操作成功(id:3)','http://localhost/admin/channel_update.php?id=3&UpChannelID=0','1','admin','unknown','1373647900'),('76','4','删除频道，操作成功(id:7)','http://localhost/admin/channel_manage.php?del=7','1','admin','unknown','1373647909'),('77','3','修改后台菜单设置(操作成功)','http://localhost/admin/set_file.php','1','admin','unknown','1373648034'),('78','3','修改后台菜单设置(操作成功)','http://localhost/admin/set_file.php','1','admin','unknown','1373648079'),('79','3','修改文章内容，操作成功(id:62)','http://localhost/admin/article_update.php?id=62&channel=2','1','admin','unknown','1373648292'),('80','3','修改文章内容，操作成功(id:62)','http://localhost/admin/article_update.php?id=62&channel=2','1','admin','unknown','1373648348'),('81','3','将选中的内容设为草稿，操作成功(id:62)','http://localhost/admin/article_manage.php?channel=0&sort=0&page=1&trash=0&filter=0&action=unpublished&id=62','1','admin','unknown','1373679823'),('82','3','发布选中的内容，操作成功(id:62)','http://localhost/admin/article_manage.php?channel=0&sort=0&page=1&trash=0&filter=0&action=published&id=62','1','admin','unknown','1373679829'),('83','3','修改文章内容，操作成功(id:62)','http://localhost/admin/article_update.php?id=62&channel=2','1','admin','unknown','1373679922'),('84','3','修改文章内容，操作成功(id:62)','http://localhost/admin/article_update.php?id=62&channel=2','1','admin','unknown','1373681289'),('85','3','修改文章内容，操作成功(id:62)','http://localhost/admin/article_update.php?id=62&channel=2','1','admin','unknown','1373681299'),('86','3','修改文章内容，操作成功(id:62)','http://localhost/admin/article_update.php?channel=23&id=62','1','admin','unknown','1373693554'),('87','3','修改文章内容，操作成功(id:62)','http://localhost/admin/article_update.php?channel=23&id=62','1','admin','unknown','1373693578'),('88','3','修改文章内容，操作成功(id:62)','http://localhost/admin/article_update.php?channel=23&id=62','1','admin','unknown','1373693750'),('89','3','修改文章内容，操作成功(id:62)','http://localhost/admin/article_update.php?channel=23&id=62','1','admin','unknown','1373693895'),('90','3','修改文章内容，操作成功(id:62)','http://localhost/admin/article_update.php?channel=22&id=62','1','admin','unknown','1373693921'),('91','2','修改网站基本设置，操作成功','http://localhost/admin/set_web.php','1','admin','unknown','1373729182'),('92','3','修改频道信息，操作成功(id:2)','http://localhost/admin/channel_update.php?id=2&UpChannelID=0','1','admin','unknown','1373732919'),('93','3','修改频道信息，操作成功(id:2)','http://localhost/admin/channel_update.php?id=2&UpChannelID=0','1','admin','unknown','1373732950'),('94','2','添加新频道，操作成功(id:25)','http://localhost/admin/channel_update.php','1','admin','unknown','1373767844'),('95','3','修改频道信息，操作成功(id:25)','http://localhost/admin/channel_update.php?id=25&UpChannelID=0','1','admin','unknown','1373768063'),('96','2','添加新频道，操作成功(id:26)','http://localhost/admin/channel_update.php?UpChannelID=25','1','admin','unknown','1373768179'),('97','3','修改频道信息，操作成功(id:26)','http://localhost/admin/channel_update.php?id=26&UpChannelID=25','1','admin','unknown','1373768202'),('98','2','添加新频道，操作成功(id:27)','http://localhost/admin/channel_update.php?UpChannelID=25','1','admin','unknown','1373768261');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('99','3','修改频道信息，操作成功(id:25)','http://localhost/admin/channel_update.php?id=25&UpChannelID=0','1','admin','unknown','1373772322');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('100','3','修改频道信息，操作成功(id:26)','http://localhost/admin/channel_update.php?id=26&UpChannelID=25','1','admin','unknown','1373772358'),('101','3','修改文章内容，操作成功(id:62)','http://localhost/admin/article_update.php?id=62&channel=22','1','admin','unknown','1373774613'),('102','3','修改文章内容，操作成功(id:62)','http://localhost/admin/article_update.php?id=62&channel=22','1','admin','unknown','1373783249'),('103','3','修改文章内容，操作成功(id:62)','http://localhost/admin/article_update.php?id=62&channel=22','1','admin','unknown','1373784226'),('104','3','修改文章内容，操作成功(id:62)','http://localhost/admin/article_update.php?id=62&channel=22','1','admin','unknown','1373784412'),('105','3','修改文章内容，操作成功(id:62)','http://localhost/admin/article_update.php?id=62&channel=22','1','admin','unknown','1373786261'),('106','3','修改文章内容，操作成功(id:62)','http://localhost/admin/article_update.php?id=62&channel=22','1','admin','unknown','1373786511'),('107','3','修改频道信息，操作成功(id:22)','http://localhost/admin/channel_update.php?id=22&UpChannelID=2','1','admin','unknown','1373788913'),('108','3','修改频道信息，操作成功(id:22)','http://localhost/admin/channel_update.php?id=22&UpChannelID=2','1','admin','unknown','1373788937'),('109','2','添加新频道，操作成功(id:28)','http://localhost/admin/channel_update.php?UpChannelID=26','1','admin','unknown','1373790132'),('110','3','修改频道信息，操作成功(id:27)','http://localhost/admin/channel_update.php?id=27&UpChannelID=25','1','admin','unknown','1373793780'),('111','3','修改频道信息，操作成功(id:28)','http://localhost/admin/channel_update.php?id=28&UpChannelID=26','1','admin','unknown','1373793802'),('112','3','修改后台菜单设置(操作成功)','http://localhost/admin/set_file.php','1','admin','unknown','1373794253'),('113','3','修改后台菜单设置(操作成功)','http://localhost/admin/set_file.php','1','admin','unknown','1373794368'),('114','3','修改后台菜单设置(操作成功)','http://localhost/admin/set_file.php','1','admin','unknown','1373794704'),('115','3','修改后台菜单设置(操作成功)','http://localhost/admin/set_file.php','1','admin','unknown','1373794803'),('116','3','修改频道信息，操作成功(id:22)','http://localhost/admin/channel_update.php?id=22&UpChannelID=2','1','admin','unknown','1373881926'),('117','3','修改频道信息，操作成功(id:22)','http://localhost/admin/channel_update.php?id=22&UpChannelID=2','1','admin','unknown','1373882007'),('118','3','修改频道信息，操作成功(id:22)','http://localhost/admin/channel_update.php?id=22&UpChannelID=2','1','admin','unknown','1373882026'),('119','3','修改频道信息，操作成功(id:23)','http://localhost/admin/channel_update.php?id=23&UpChannelID=2','1','admin','unknown','1373882041'),('120','3','修改频道信息，操作成功(id:24)','http://localhost/admin/channel_update.php?id=24&UpChannelID=2','1','admin','unknown','1373882066'),('121','3','修改频道信息，操作成功(id:1)','http://localhost/admin/channel_update.php?id=1&UpChannelID=0','1','admin','unknown','1373882268'),('122','3','修改频道信息，操作成功(id:2)','http://localhost/admin/channel_update.php?id=2&UpChannelID=0','1','admin','unknown','1373882278'),('123','3','修改频道信息，操作成功(id:6)','http://localhost/admin/channel_update.php?id=6&UpChannelID=0','1','admin','unknown','1373882289'),('124','1','[admin] 成功的登录后台。','http://localhost/admin/login.php','1','admin','unknown','1373938951'),('125','2','添加新频道，操作成功(id:29)','http://localhost/admin/channel_update.php','1','admin','unknown','1373939084'),('126','2','添加新频道，操作成功(id:30)','http://localhost/admin/channel_update.php?UpChannelID=26','1','admin','unknown','1373939206'),('127','3','修改频道信息，操作成功(id:30)','http://localhost/admin/channel_update.php?id=30&UpChannelID=26','1','admin','unknown','1373939217'),('128','3','修改频道信息，操作成功(id:26)','http://localhost/admin/channel_update.php?id=26&UpChannelID=25','1','admin','unknown','1373939245'),('129','2','添加友情链接，操作成功(id:2)','http://localhost/admin/links_update.php','1','admin','unknown','1373943554'),('130','2','添加友情链接，操作成功(id:3)','http://localhost/admin/links_update.php','1','admin','unknown','1373943587'),('131','2','添加友情链接，操作成功(id:4)','http://localhost/admin/links_update.php','1','admin','unknown','1373943620'),('132','4','删除频道，操作成功(id:3)','http://localhost/admin/channel_manage.php?del=3','1','admin','unknown','1373944649'),('133','3','修改频道信息，操作成功(id:25)','http://localhost/admin/channel_update.php?id=25&UpChannelID=0','1','admin','unknown','1373944680'),('134','3','修改频道信息，操作成功(id:25)','http://localhost/admin/channel_update.php?id=25&UpChannelID=0','1','admin','unknown','1373944689');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('135','2','发布文章内容，操作成功(id:65)','http://localhost/admin/article_update.php?channel=25','1','admin','unknown','1373944959');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('136','3','修改文章内容，操作成功(id:65)','http://localhost/admin/article_update.php?id=65&channel=25','1','admin','unknown','1373944993'),('137','3','修改文章内容，操作成功(id:65)','http://localhost/admin/article_update.php?id=65&channel=25','1','admin','unknown','1373964932'),('138','1','[admin] 成功的登录后台。','http://localhost/admin/login.php','1','admin','unknown','1374285767'),('139','2','发布文章内容，操作成功(id:66)','http://localhost/admin/article_update.php?channel=22','1','admin','unknown','1374286068'),('140','3','修改文章内容，操作成功(id:66)','http://localhost/admin/article_update.php?id=66&channel=22','1','admin','unknown','1374286144'),('141','3','修改文章内容，操作成功(id:66)','http://localhost/admin/article_update.php?id=66&channel=22','1','admin','unknown','1374286362'),('142','3','修改文章内容，操作成功(id:66)','http://localhost/admin/article_update.php?id=66&channel=22','1','admin','unknown','1374286427'),('143','3','修改文章内容，操作成功(id:66)','http://localhost/admin/article_update.php?id=66&channel=22','1','admin','unknown','1374286558'),('144','3','修改文章内容，操作成功(id:66)','http://localhost/admin/article_update.php?id=66&channel=22','1','admin','unknown','1374286579'),('145','3','修改文章内容，操作成功(id:66)','http://localhost/admin/article_update.php?id=66&channel=22','1','admin','unknown','1374286730'),('146','3','修改文章内容，操作成功(id:66)','http://localhost/admin/article_update.php?id=66&channel=22','1','admin','unknown','1374286754'),('147','4','删除服务器附件，操作成功(Total:1)','http://localhost/admin/attachment_manage.php?view=1&dir1=article','1','admin','unknown','1374287661'),('148','4','删除服务器附件，操作成功(Total:1)','http://localhost/admin/attachment_manage.php?view=1&dir1=article','1','admin','unknown','1374287687'),('149','4','删除服务器附件，操作成功(Total:1)','http://localhost/admin/attachment_manage.php?view=1&dir1=article','1','admin','unknown','1374287692'),('150','2','添加新频道，操作成功(id:31)','http://localhost/admin/channel_update.php?UpChannelID=4','1','admin','unknown','1374289568'),('151','3','修改频道信息，操作成功(id:31)','http://localhost/admin/channel_update.php?id=31&UpChannelID=4','1','admin','unknown','1374289581'),('152','3','修改频道信息，操作成功(id:31)','http://localhost/admin/channel_update.php?id=31&UpChannelID=4','1','admin','unknown','1374289652'),('153','3','取消审核，操作成功(id:15)','http://localhost/admin/picture_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=unaudit&id=15','1','admin','unknown','1374290906'),('154','3','审核选中的图集，操作成功(id:15)','http://localhost/admin/picture_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=audit&id=15','1','admin','unknown','1374290911'),('155','3','修改图片集，操作成功(id:15)','http://localhost/admin/picture_update.php?id=15&channel=31','1','admin','unknown','1374301013'),('156','3','修改图片集，操作成功(id:15)','http://localhost/admin/picture_update.php?id=15&channel=31','1','admin','unknown','1374301098'),('157','3','修改图片集，操作成功(id:15)','http://localhost/admin/picture_update.php?id=15&channel=31','1','admin','unknown','1374301335'),('158','3','修改图片集，操作成功(id:15)','http://localhost/admin/picture_update.php?id=15&channel=31','1','admin','unknown','1374301458'),('159','3','修改图片集，操作成功(id:15)','http://localhost/admin/picture_update.php?id=15&channel=31','1','admin','unknown','1374309132'),('160','2','发布文章内容，操作成功(id:67)','http://localhost/admin/article_update.php?channel=25','1','admin','unknown','1374309347'),('161','3','修改文章内容，操作成功(id:67)','http://localhost/admin/article_update.php?id=67&channel=25','1','admin','unknown','1374309375'),('162','3','修改文章内容，操作成功(id:67)','http://localhost/admin/article_update.php?id=67&channel=25','1','admin','unknown','1374309473'),('163','3','修改文章内容，操作成功(id:67)','http://localhost/admin/article_update.php?id=67&channel=25','1','admin','unknown','1374309534'),('164','3','修改文章内容，操作成功(id:67)','http://localhost/admin/article_update.php?id=67&channel=25','1','admin','unknown','1374309680'),('165','3','修改后台菜单设置(操作成功)','http://localhost/admin/set_file.php','1','admin','unknown','1374313769'),('166','3','修改后台菜单设置(操作成功)','http://localhost/admin/set_file.php','1','admin','unknown','1374313861'),('167','3','修改文章内容，操作成功(id:62)','http://localhost/admin/article_update.php?id=62&channel=22','1','admin','unknown','1374314162'),('168','3','修改频道信息，操作成功(id:23)','http://localhost/admin/channel_update.php?id=23&UpChannelID=2','1','admin','unknown','1374316455');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('169','3','修改频道信息，操作成功(id:23)','http://localhost/admin/channel_update.php?id=23&UpChannelID=2','1','admin','unknown','1374316532');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('170','3','修改频道信息，操作成功(id:24)','http://localhost/admin/channel_update.php?id=24&UpChannelID=2','1','admin','unknown','1374316545'),('171','3','修改文章内容，操作成功(id:66)','http://localhost/admin/article_update.php?id=66&channel=22','1','admin','unknown','1374328986'),('172','3','修改文章内容，操作成功(id:66)','http://localhost/admin/article_update.php?id=66&channel=22','1','admin','unknown','1374329695'),('173','3','修改文章内容，操作成功(id:65)','http://localhost/admin/article_update.php?id=65&channel=25','1','admin','unknown','1374375303'),('174','1','[admin] 成功的登录后台。','http://localhost/admin/login.php','1','admin','unknown','1374667933'),('175','3','修改后台菜单设置(操作成功)','http://localhost/admin/set_file.php','1','admin','unknown','1374667990'),('176','3','修改后台菜单设置(操作成功)','http://localhost/admin/set_file.php','1','admin','unknown','1374668010'),('177','3','修改频道信息，操作成功(id:28)','http://localhost/admin/channel_update.php?id=28&UpChannelID=26','1','admin','unknown','1374668355'),('178','1','[admin] 成功的登录后台。','http://localhost/admin/login.php','1','admin','unknown','1374766383'),('179','4','删除留言，操作成功(id:3,2,1)','http://localhost/admin/guestbook_manage.php','1','admin','unknown','1374766816'),('180','4','删除留言，操作成功(id:4)','http://localhost/admin/guestbook_manage.php?page=1&action=del&id=4','1','admin','unknown','1374766938'),('181','4','删除留言，操作成功(id:6,5)','http://localhost/admin/guestbook_manage.php','1','admin','unknown','1374767181'),('182','4','删除留言，操作成功(id:7)','http://localhost/admin/guestbook_manage.php?page=1&action=del&id=7','1','admin','unknown','1374767544'),('183','4','删除留言，操作成功(id:8)','http://localhost/admin/guestbook_manage.php?page=1&action=del&id=8','1','admin','unknown','1374767668'),('184','4','删除留言，操作成功(id:9)','http://localhost/admin/guestbook_manage.php?page=1&action=del&id=9','1','admin','unknown','1374767698'),('185','4','删除留言，操作成功(id:10)','http://localhost/admin/guestbook_manage.php?page=1&action=del&id=10','1','admin','unknown','1374769055'),('186','4','删除留言，操作成功(id:12,11)','http://localhost/admin/guestbook_manage.php?page=1','1','admin','unknown','1374769726'),('187','4','删除留言，操作成功(id:16,15,14,13)','http://localhost/admin/guestbook_manage.php?page=1','1','admin','unknown','1374771876'),('188','4','删除留言，操作成功(id:18,17)','http://localhost/admin/guestbook_manage.php','1','admin','unknown','1374772059'),('189','4','删除留言，操作成功(id:19)','http://localhost/admin/guestbook_manage.php?page=1&action=del&id=19','1','admin','unknown','1374772797'),('190','4','删除留言，操作成功(id:21,20)','http://localhost/admin/guestbook_manage.php?page=1','1','admin','unknown','1374773077'),('191','4','删除留言，操作成功(id:25,24,23,22)','http://localhost/admin/guestbook_manage.php?page=1','1','admin','unknown','1374773575'),('192','4','删除留言，操作成功(id:26)','http://localhost/admin/guestbook_manage.php','1','admin','unknown','1374773971'),('193','4','删除留言，操作成功(id:28,27)','http://localhost/admin/guestbook_manage.php','1','admin','unknown','1374774096'),('194','4','删除留言，操作成功(id:31,30,29)','http://localhost/admin/guestbook_manage.php','1','admin','unknown','1374774148'),('195','4','删除留言，操作成功(id:34,33,32)','http://localhost/admin/guestbook_manage.php?','1','admin','unknown','1374774248'),('196','4','删除留言，操作成功(id:38,37,36,35)','http://localhost/admin/guestbook_manage.php','1','admin','unknown','1374774465'),('197','4','删除留言，操作成功(id:52,51,50,49,48,47,46,45,44,43,42,41,40,39)','http://localhost/admin/guestbook_manage.php?','1','admin','unknown','1374807708'),('198','1','[admin] 成功的登录后台。','http://localhost/admin/login.php','1','admin','unknown','1374826551'),('199','3','修改文章内容，操作成功(id:67)','http://localhost/admin/article_update.php?id=67&channel=25','1','admin','unknown','1374827465'),('200','2','发布文章内容，操作成功(id:68)','http://localhost/admin/article_update.php?channel=22','1','admin','unknown','1374831428'),('201','3','修改文章内容，操作成功(id:68)','http://localhost/admin/article_update.php?id=68&channel=22','1','admin','unknown','1374832952'),('202','1','[admin] 成功的登录后台。','http://localhost/admin/login.php','1','admin','unknown','1374852215'),('203','3','修改文章内容，操作成功(id:68)','http://localhost/admin/article_update.php?id=68&channel=22','1','admin','unknown','1374852287'),('204','3','修改文章内容，操作成功(id:68)','http://localhost/admin/article_update.php?id=68&channel=22','1','admin','unknown','1374852354'),('205','3','修改文章内容，操作成功(id:68)','http://localhost/admin/article_update.php?id=68&channel=22','1','admin','unknown','1374852408');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('206','3','修改文章内容，操作成功(id:65)','http://localhost/admin/article_update.php?id=65&channel=25','1','admin','unknown','1374852674');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('207','2','发布文章内容，操作成功(id:69)','http://localhost/admin/article_update.php?channel=28','1','admin','unknown','1374936843'),('208','3','修改文章内容，操作成功(id:65)','http://localhost/admin/article_update.php?channel=30&id=65','1','admin','unknown','1374937817'),('209','2','发布文章内容，操作成功(id:70)','http://localhost/admin/article_update.php?channel=29','1','admin','unknown','1374937980'),('210','1','[admin] 成功的登录后台。','http://dmcc.gzcgc.com/admin/login.php?goto=%2Fadmin%2Fset_globals.php','1','admin','218.19.125.117','1375002156'),('211','3','修改系统全局设置(操作成功)','http://dmcc.gzcgc.com/admin/set_globals.php?tip=admin_dir','1','admin','218.19.125.117','1375002178'),('212','2','发布文章内容，操作失败','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?channel=22','1','admin','218.19.125.117','1375005874'),('213','3','修改文章内容，操作成功(id:66)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=66&channel=22','1','admin','218.19.125.117','1375006265'),('214','3','修改文章内容，操作成功(id:66)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=66&channel=22','1','admin','218.19.125.117','1375006314'),('215','3','修改文章内容，操作成功(id:66)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=66&channel=22','1','admin','218.19.125.117','1375006654'),('216','3','修改文章内容，操作成功(id:66)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=66&channel=22','1','admin','218.19.125.117','1375006842'),('217','2','发布文章内容，操作失败','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?channel=22','1','admin','218.19.125.117','1375009285'),('218','2','发布文章内容，操作失败','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?channel=23','1','admin','218.19.125.117','1375009491'),('219','2','发布文章内容，操作失败','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?channel=23','1','admin','218.19.125.117','1375009519'),('220','2','发布文章内容，操作失败','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?channel=22','1','admin','218.19.125.117','1375009565'),('221','3','修改系统全局设置(操作成功)','http://dmcc.gzcgc.com/dmcc_admin/set_globals.php','1','admin','113.108.138.194','1375068352'),('222','3','修改文章内容，操作成功(id:70)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=70&channel=29','1','admin','113.108.138.194','1375068397'),('223','2','发布文章内容，操作成功(id:71)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?channel=22','1','admin','113.108.138.194','1375087384'),('224','3','修改文章内容，操作成功(id:71)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=71&channel=22','1','admin','113.108.138.194','1375087515'),('225','3','修改文章内容，操作成功(id:71)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=71&channel=22','1','admin','113.108.138.194','1375087582'),('226','3','修改文章内容，操作成功(id:71)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=71&channel=22','1','admin','113.108.138.194','1375087647'),('227','2','发布文章内容，操作成功(id:72)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?channel=22','1','admin','113.108.138.194','1375087987'),('228','3','修改文章内容，操作成功(id:72)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=72&channel=22','1','admin','113.108.138.194','1375088011'),('229','3','修改文章内容，操作成功(id:72)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=72&channel=22','1','admin','113.108.138.194','1375088255'),('230','3','修改文章内容，操作成功(id:72)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=72&channel=22','1','admin','113.108.138.194','1375091282'),('231','3','修改文章内容，操作成功(id:72)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=72&channel=22','1','admin','113.108.138.194','1375091310'),('232','3','修改文章内容，操作成功(id:72)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=72&channel=22','1','admin','113.108.138.194','1375091320'),('233','1','输入的验证码不正确。','http://dmcc.gzcgc.com/dmcc_admin/login.php','1','','219.137.51.229','1375168228'),('234','1','[admin] 成功的登录后台。','http://dmcc.gzcgc.com/dmcc_admin/login.php','1','admin','219.137.51.229','1375168251'),('235','2','发布文章内容，操作成功(id:73)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?channel=29','1','admin','219.137.51.229','1375170530'),('236','3','修改文章内容，操作成功(id:73)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=73&channel=29','1','admin','219.137.51.229','1375170589'),('237','3','修改文章内容，操作成功(id:73)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=73&channel=29','1','admin','219.137.51.229','1375170719'),('238','3','修改文章内容，操作成功(id:70)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=70&channel=29','1','admin','219.137.51.229','1375171173');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('239','2','发布文章内容，操作成功(id:74)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?channel=29','1','admin','219.137.51.229','1375172450');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('240','3','修改文章内容，操作成功(id:73)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=73&channel=29','1','admin','219.137.51.229','1375172679'),('241','3','修改文章内容，操作成功(id:74)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=74&channel=29','1','admin','219.137.51.229','1375172724'),('242','3','修改文章内容，操作成功(id:74)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=74&channel=29','1','admin','219.137.51.229','1375172795'),('243','3','修改文章内容，操作成功(id:74)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=74&channel=29','1','admin','219.137.51.229','1375174103'),('244','1','[67317760] 登录失败，您还可以尝试 5 次。','http://dmcc.gzcgc.com/dmcc_admin/login.php','1','','183.47.232.74','1375175776'),('245','1','[admin] 成功的登录后台。','http://dmcc.gzcgc.com/dmcc_admin/login.php','1','admin','183.47.232.74','1375175802'),('246','2','发布文章内容，操作成功(id:75)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?channel=29','1','admin','183.47.232.74','1375176126'),('247','3','将选中的内容设为草稿，操作成功(id:74)','http://dmcc.gzcgc.com/dmcc_admin/article_manage.php?channel=0&sort=0&page=1&trash=0&filter=0&action=unpublished&id=74','1','admin','183.47.232.74','1375176162'),('248','3','修改文章内容，操作成功(id:75)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=75&channel=29','1','admin','183.47.232.74','1375176334'),('249','3','修改文章内容，操作成功(id:75)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=75&channel=29','1','admin','183.47.232.74','1375176490'),('250','3','修改文章内容，操作成功(id:75)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=75&channel=29','1','admin','183.47.232.74','1375176696'),('251','1','输入的验证码不正确。','http://dmcc.gzcgc.com/dmcc_admin/login.php','1','','113.108.138.194','1375176916'),('252','1','[admin] 成功的登录后台。','http://dmcc.gzcgc.com/dmcc_admin/login.php','1','admin','113.108.138.194','1375176939'),('253','3','修改文章内容，操作成功(id:75)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=75&channel=29','1','admin','113.108.138.194','1375177051'),('254','3','修改文章内容，操作成功(id:75)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=75&channel=29','1','admin','113.108.138.194','1375177107'),('255','3','修改文章内容，操作成功(id:74)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=74&channel=29','1','admin','113.108.138.194','1375177265'),('256','3','修改文章内容，操作成功(id:75)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=75&channel=29','1','admin','113.108.138.194','1375177276'),('257','3','修改文章内容，操作成功(id:73)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=73&channel=29','1','admin','113.108.138.194','1375177329'),('258','3','修改文章内容，操作成功(id:73)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=73&channel=29','1','admin','113.108.138.194','1375177364'),('259','3','修改频道信息，操作成功(id:29)','http://dmcc.gzcgc.com/dmcc_admin/channel_update.php?id=29&UpChannelID=0','1','admin','113.108.138.194','1375177786'),('260','3','修改频道信息，操作成功(id:8)','http://dmcc.gzcgc.com/dmcc_admin/channel_update.php?id=8&UpChannelID=0','1','admin','113.108.138.194','1375177798'),('261','3','修改文章内容，操作成功(id:74)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=74&channel=29','1','admin','113.108.138.194','1375177917'),('262','1','输入的验证码不正确。','http://www.dmccad.com/dmcc_admin/login.php','1','','113.108.138.194','1375260795'),('263','1','输入的验证码不正确。','http://www.dmccad.com/dmcc_admin/login.php','1','','113.108.138.194','1375260810'),('264','1','[admin] 成功的登录后台。','http://www.dmccad.com/dmcc_admin/login.php','1','admin','113.108.138.194','1375260822'),('265','3','修改系统全局设置(操作成功)','http://www.dmccad.com/dmcc_admin/set_globals.php','1','admin','113.108.138.194','1375260848'),('266','1','[admin] 成功的登录后台。','http://www.dmccad.com/dmcc_admin/login.php','1','admin','113.108.138.194','1375260895'),('267','1','输入的验证码不正确。','http://www.dmccad.com/dmcc_admin/login.php','1','','14.146.75.156','1375261152'),('268','1','输入的验证码不正确。','http://www.dmccad.com/dmcc_admin/login.php','1','','14.146.75.156','1375261167'),('269','1','[admin] 成功的登录后台。','http://www.dmccad.com/dmcc_admin/login.php','1','admin','14.146.75.156','1375261181'),('270','2','修改网站基本设置，操作成功','http://www.dmccad.com/dmcc_admin/set_web.php','1','admin','14.146.75.156','1375261259'),('271','1','[admin] 成功的登录后台。','http://dmcc.gzcgc.com/dmcc_admin/login.php','1','admin','183.47.234.65','1375412826'),('272','1','输入的验证码不正确。','http://dmcc.gzcgc.com/dmcc_admin/login.php','1','','116.21.154.147','1375936415');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('273','1','[admin] 登录失败，您还可以尝试 5 次。','http://dmcc.gzcgc.com/dmcc_admin/login.php','1','','116.21.154.147','1375936432');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('274','1','[admin] 成功的登录后台。','http://dmcc.gzcgc.com/dmcc_admin/login.php','1','admin','116.21.154.147','1375936461'),('275','3','修改文章内容，操作成功(id:75)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=75&channel=29','1','admin','116.21.154.147','1375937094'),('276','3','修改文章内容，操作成功(id:75)','http://dmcc.gzcgc.com/dmcc_admin/article_update.php?id=75&channel=29','1','admin','116.21.154.147','1375937236'),('277','3','将选中的内容设为草稿，操作成功(id:75)','http://dmcc.gzcgc.com/dmcc_admin/article_manage.php?channel=0&sort=0&page=1&trash=0&filter=0&action=unpublished&id=75','1','admin','116.21.154.147','1375937286'),('278','3','发布选中的内容，操作成功(id:75)','http://dmcc.gzcgc.com/dmcc_admin/article_manage.php?channel=0&sort=0&page=1&trash=0&filter=0&action=published&id=75','1','admin','116.21.154.147','1375937309'),('279','1','[admin] 成功的登录后台。','http://dmcc.gzcgc.com/dmcc_admin/login.php','1','admin','219.137.252.28','1376359066'),('280','1','[admin] 成功的登录后台。','http://www.dmccad.com/dmcc_admin/login.php','1','admin','113.108.138.194','1376359841'),('281','1','[admin] 成功的登录后台。','http://dmcc.gzcgc.com/dmcc_admin/login.php','1','admin','119.129.12.116','1385914962'),('282','3','修改系统全局设置(操作成功)','http://dmcc.gzcgc.com/dmcc_admin/set_globals.php','1','admin','119.129.12.116','1385914993'),('283','1','[admin] 成功的登录后台。','http://dmcc.gzcgc.com/dmcc_admin/login.php','1','admin','219.136.83.13','1386732248'),('284','2','修改网站基本设置，操作成功','http://dmcc.gzcgc.com/dmcc_admin/set_web.php','1','admin','219.136.83.13','1386733450'),('285','1','[admin] 成功的登录后台。','http://dmcc.cyruschanhk.com/dmcc_admin/login.php','1','admin','219.136.83.13','1388648377'),('286','3','修改系统全局设置(操作成功)','http://dmcc.cyruschanhk.com/dmcc_admin/set_globals.php','1','admin','219.136.83.13','1388648400'),('287','1','[admin] 成功的登录后台。','http://dmcc.cyruschanhk.com/dmcc_admin/login.php','1','admin','219.136.83.10','1389949658'),('288','3','修改频道信息，操作成功(id:1)','http://dmcc.cyruschanhk.com/dmcc_admin/channel_update.php?id=1&UpChannelID=0','1','admin','219.136.83.10','1389949702'),('289','3','修改频道信息，操作成功(id:2)','http://dmcc.cyruschanhk.com/dmcc_admin/channel_update.php?id=2&UpChannelID=0','1','admin','219.136.83.10','1389949902'),('290','3','修改频道信息，操作成功(id:24)','http://dmcc.cyruschanhk.com/dmcc_admin/channel_update.php?id=24&UpChannelID=2','1','admin','219.136.83.10','1389950014'),('291','2','修改网站基本设置，操作成功','http://dmcc.cyruschanhk.com/dmcc_admin/set_web.php','1','admin','219.136.83.10','1389950233'),('292','3','修改频道信息，操作成功(id:2)','http://dmcc.cyruschanhk.com/dmcc_admin/channel_update.php?id=2&UpChannelID=0','1','admin','219.136.83.10','1389950403'),('293','3','修改频道信息，操作成功(id:2)','http://dmcc.cyruschanhk.com/dmcc_admin/channel_update.php?id=2&UpChannelID=0','1','admin','219.136.83.10','1389950464'),('294','2','添加新频道，操作成功(id:32)','http://dmcc.cyruschanhk.com/dmcc_admin/channel_update.php?UpChannelID=2','1','admin','219.136.83.10','1389951432'),('295','3','修改频道信息，操作成功(id:2)','http://dmcc.cyruschanhk.com/dmcc_admin/channel_update.php?id=2&UpChannelID=0','1','admin','219.136.83.10','1389952852'),('296','3','修改频道信息，操作成功(id:1)','http://dmcc.cyruschanhk.com/dmcc_admin/channel_update.php?id=1&UpChannelID=0','1','admin','219.136.83.10','1389952862'),('297','1','[admin] 成功的登录后台。','http://dmcc.cyruschanhk.com/dmcc_admin/login.php','1','admin','219.136.83.10','1390274866'),('298','2','修改网站基本设置，操作成功','http://dmcc.cyruschanhk.com/dmcc_admin/set_web.php','1','admin','219.136.83.10','1390274900'),('299','2','修改网站基本设置，操作成功','http://dmcc.cyruschanhk.com/dmcc_admin/set_web.php','1','admin','219.136.83.10','1390274919'),('300','2','修改网站基本设置，操作成功','http://dmcc.cyruschanhk.com/dmcc_admin/set_web.php','1','admin','219.136.83.10','1390275097'),('301','2','修改网站基本设置，操作成功','http://dmcc.cyruschanhk.com/dmcc_admin/set_web.php','1','admin','219.136.83.10','1390275990'),('302','2','修改网站基本设置，操作成功','http://dmcc.cyruschanhk.com/dmcc_admin/set_web.php','1','admin','219.136.83.10','1390284293'),('303','3','修改系统全局设置(操作成功)','http://dmcc.cyruschanhk.com/dmcc_admin/set_globals.php','1','admin','219.136.83.10','1390290412'),('304','2','修改网站基本设置，操作成功','http://dmcc.cyruschanhk.com/dmcc_admin/set_web.php','1','admin','219.136.83.10','1390290434'),('305','3','修改图片处理参数(操作成功)','http://dmcc.cyruschanhk.com/dmcc_admin/set_picture.php','1','admin','219.136.83.10','1390290451');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('306','1','[admin] 成功的登录后台。','http://dmcc.cyruschanhk.com/dmcc_admin/login.php','1','admin','219.136.83.10','1390378828');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('307','3','修改频道信息，操作成功(id:2)','http://dmcc.cyruschanhk.com/dmcc_admin/channel_update.php?id=2&UpChannelID=0','1','admin','219.136.83.10','1390378842'),('308','3','修改频道信息，操作成功(id:6)','http://dmcc.cyruschanhk.com/dmcc_admin/channel_update.php?id=6&UpChannelID=0','1','admin','219.136.83.10','1390380237'),('309','3','修改频道信息，操作成功(id:25)','http://dmcc.cyruschanhk.com/dmcc_admin/channel_update.php?id=25&UpChannelID=0','1','admin','219.136.83.10','1390380276'),('310','3','修改频道信息，操作成功(id:8)','http://dmcc.cyruschanhk.com/dmcc_admin/channel_update.php?id=8&UpChannelID=0','1','admin','219.136.83.10','1390380292'),('311','3','修改系统全局设置(操作成功)','http://dmcc.cyruschanhk.com/dmcc_admin/set_globals.php','1','admin','219.136.83.10','1390381462'),('312','3','修改系统全局设置(操作成功)','http://dmcc.cyruschanhk.com/dmcc_admin/set_globals.php','1','admin','219.136.83.10','1390381753'),('313','3','修改系统全局设置(操作成功)','http://dmcc.cyruschanhk.com/dmcc_admin/set_globals.php','1','admin','219.136.83.10','1390383088'),('314','3','修改系统全局设置(操作成功)','http://dmcc.cyruschanhk.com/cyruschan/set_globals.php','1','admin','219.136.83.10','1390383104'),('315','3','注册会员及相关功能设置(操作成功)','http://dmcc.cyruschanhk.com/cyruschan/set_member.php','1','admin','219.136.83.10','1390383183'),('316','3','修改管理员，操作成功(id:1)','http://dmcc.cyruschanhk.com/cyruschan/admin_update.php?id=1','1','admin','219.136.83.10','1390383216'),('317','1','[admin] 登录失败，您还可以尝试 5 次。','http://dmcc.cyruschanhk.com/cyruschan/login.php','1','','219.136.83.10','1390383256'),('318','1','[cyruschan] 成功的登录后台。','http://dmcc.cyruschanhk.com/cyruschan/login.php','1','cyruschan','219.136.83.10','1390383272'),('319','3','修改系统全局设置(操作成功)','http://dmcc.cyruschanhk.com/cyruschan/set_globals.php','1','cyruschan','219.136.83.10','1390383369'),('320','3','修改系统全局设置(操作成功)','http://dmcc.cyruschanhk.com/cyruschan/set_globals.php','1','cyruschan','219.136.83.10','1390383383'),('321','3','修改系统全局设置(操作成功)','http://dmcc.cyruschanhk.com/cyruschan/set_globals.php','1','cyruschan','219.136.83.10','1390383500'),('322','3','修改系统全局设置(操作成功)','http://dmcc.cyruschanhk.com/cyruschan/set_globals.php','1','cyruschan','219.136.83.10','1390383523'),('323','3','修改系统全局设置(操作成功)','http://dmcc.cyruschanhk.com/cyruschan/set_globals.php','1','cyruschan','219.136.83.10','1390383529'),('324','3','修改系统全局设置(操作成功)','http://dmcc.cyruschanhk.com/cyruschan/set_globals.php','1','cyruschan','219.136.83.10','1390383725'),('325','3','修改系统全局设置(操作成功)','http://dmcc.cyruschanhk.com/cyruschan/set_globals.php','1','cyruschan','219.136.83.10','1390383742'),('326','3','修改系统全局设置(操作成功)','http://dmcc.cyruschanhk.com/cyruschan/set_globals.php','1','cyruschan','219.136.83.10','1390383851'),('327','3','修改系统全局设置(操作成功)','http://dmcc.cyruschanhk.com/cyruschan/set_globals.php','1','cyruschan','219.136.83.10','1390383865'),('328','3','修改系统全局设置(操作成功)','http://dmcc.cyruschanhk.com/cyruschan/set_globals.php','1','cyruschan','219.136.83.10','1390383901'),('329','3','修改系统全局设置(操作成功)','http://dmcc.cyruschanhk.com/cyruschan/set_globals.php','1','cyruschan','219.136.83.10','1390383940'),('330','3','修改系统全局设置(操作成功)','http://dmcc.cyruschanhk.com/cyruschan/set_globals.php','1','cyruschan','219.136.83.10','1390384042'),('331','3','修改系统全局设置(操作成功)','http://dmcc.cyruschanhk.com/cyruschan/set_globals.php','1','cyruschan','219.136.83.10','1390384077'),('332','1','[cyruschan] 登录失败，您还可以尝试 5 次。','http://dmcc.cyruschanhk.com/cyruschan/login.php','1','','219.136.83.12','1390809167'),('333','1','[cyruschan] 成功的登录后台。','http://dmcc.cyruschanhk.com/cyruschan/login.php','1','cyruschan','219.136.83.12','1390809181'),('334','3','修改频道信息，操作成功(id:26)','http://dmcc.cyruschanhk.com/cyruschan/channel_update.php?id=26&UpChannelID=25','1','cyruschan','219.136.83.12','1390809352'),('335','3','修改频道信息，操作成功(id:28)','http://dmcc.cyruschanhk.com/cyruschan/channel_update.php?id=28&UpChannelID=26','1','cyruschan','219.136.83.12','1390809406'),('336','3','修改频道信息，操作成功(id:30)','http://dmcc.cyruschanhk.com/cyruschan/channel_update.php?id=30&UpChannelID=26','1','cyruschan','219.136.83.12','1390809441'),('337','3','修改频道信息，操作成功(id:30)','http://dmcc.cyruschanhk.com/cyruschan/channel_update.php?id=30&UpChannelID=26','1','cyruschan','219.136.83.12','1390809451'),('338','3','修改频道信息，操作成功(id:27)','http://dmcc.cyruschanhk.com/cyruschan/channel_update.php?id=27&UpChannelID=25','1','cyruschan','219.136.83.12','1390809494');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('339','1','输入的验证码不正确。','http://dmcc.cyruschanhk.com/cyruschan/login.php','1','','116.22.142.175','1392023289');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('340','1','[cyruschan] 成功的登录后台。','http://dmcc.cyruschanhk.com/cyruschan/login.php','1','cyruschan','116.22.142.175','1392023321'),('341','2','发布文章内容，操作成功(id:76)','http://dmcc.cyruschanhk.com/cyruschan/article_update.php?channel=27','1','cyruschan','116.22.142.175','1392023784'),('342','2','发布文章内容，操作成功(id:77)','http://dmcc.cyruschanhk.com/cyruschan/article_update.php?channel=27','1','cyruschan','116.22.142.175','1392023922'),('343','2','发布文章内容，操作成功(id:78)','http://dmcc.cyruschanhk.com/cyruschan/article_update.php?channel=27','1','cyruschan','116.22.142.175','1392024070'),('344','4','删除选中的内容，操作成功(id:75)','http://dmcc.cyruschanhk.com/cyruschan/article_manage.php?channel=0&sort=0&page=1&trash=0&filter=0&action=del&id=75','1','cyruschan','116.22.142.175','1392024082'),('345','4','彻底删除选中的内容，操作成功(id:75)','http://dmcc.cyruschanhk.com/cyruschan/article_manage.php?channel=0&sort=0&page=1&trash=1&filter=0&action=clear&id=75','1','cyruschan','116.22.142.175','1392024097'),('346','3','修改文章内容，操作成功(id:78)','http://dmcc.cyruschanhk.com/cyruschan/article_update.php?id=78&channel=27','1','cyruschan','14.19.36.240','1392086888'),('347','3','修改文章内容，操作成功(id:78)','http://dmcc.cyruschanhk.com/cyruschan/article_update.php?id=78&channel=27','1','cyruschan','14.19.36.240','1392086941'),('348','3','修改文章内容，操作成功(id:77)','http://dmcc.cyruschanhk.com/cyruschan/article_update.php?id=77&channel=27','1','cyruschan','14.19.36.240','1392087028'),('349','3','修改文章内容，操作成功(id:76)','http://dmcc.cyruschanhk.com/cyruschan/article_update.php?id=76&channel=27','1','cyruschan','14.19.36.240','1392087103'),('350','1','[cyruschan] 成功的登录后台。','http://dmcc.cyruschanhk.com/cyruschan/login.php','1','cyruschan','14.19.43.249','1394524576'),('351','3','修改文章内容，操作成功(id:76)','http://dmcc.cyruschanhk.com/cyruschan/article_update.php?id=76&channel=27','1','cyruschan','14.19.46.11','1394589245'),('352','1','[cyruschan] 成功的登录后台。','http://dmcc.cyruschanhk.com/cyruschan/login.php','1','cyruschan','14.19.47.171','1395279556'),('353','3','修改系统全局设置(操作成功)','http://dmcc.cyruschanhk.com/cyruschan/set_globals.php','1','cyruschan','14.19.47.171','1395279608'),('354','3','修改系统全局设置(操作成功)','http://dmcc.cyruschanhk.com/cyruschan/set_globals.php','1','cyruschan','14.19.47.171','1395280020');/* MySQLReback Separation */
 /* 创建表结构 `cms_members`  */
 DROP TABLE IF EXISTS `cms_members`;/* MySQLReback Separation */ CREATE TABLE `cms_members` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `encryption` varchar(8) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL default '0',
  `email` varchar(50) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL default '3',
  `nickname` varchar(20) NOT NULL,
  `money` decimal(8,2) NOT NULL default '0.00',
  `usemoney` decimal(8,2) unsigned NOT NULL default '0.00',
  `scores` int(10) unsigned NOT NULL default '0',
  `level` smallint(5) unsigned NOT NULL default '1',
  `problem` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `companyweb` varchar(100) NOT NULL,
  `companyaddress` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `frequency` int(10) unsigned NOT NULL default '0',
  `jointime` int(10) unsigned NOT NULL default '0',
  `joinip` varchar(15) NOT NULL,
  `logintime` varchar(21) NOT NULL,
  `loginip` varchar(31) NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL default '2',
  `effective` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `cms_module`  */
 DROP TABLE IF EXISTS `cms_module`;/* MySQLReback Separation */ CREATE TABLE `cms_module` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `modcode` varchar(6) NOT NULL,
  `modname` varchar(255) NOT NULL,
  `installpath` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL default '0',
  `files` text NOT NULL,
  `develop` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `modcode` (`modcode`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_module` */
 INSERT INTO `cms_module` VALUES ('1','MO001x','文章内容','inc/install/pack/article/mo001x.zip','1','article.php,list.php,view.php,{admin}/article_manage.php,{admin}/article_update.php,inc/language/frontend/chinese_simplified/article.lang.php,inc/language/frontend/chinese_simplified/list.lang.php,inc/language/frontend/chinese_simplified/view.lang.php,inc/language/frontend/english/article.lang.php,inc/language/frontend/english/list.lang.php,inc/language/frontend/english/view.lang.php,inc/language/manage/chinese_simplified/article_manage.lang.php,inc/language/manage/chinese_simplified/article_update.lang.php,inc/templates/manage/article_manage.dwt,inc/templates/manage/article_update.dwt,inc/lib/article.lib.php,inc/uploads/article','MYCMS官方制作','文章内容模块','1301642556'),('2','MO002x','产品(商品)','inc/install/pack/product/mo002x.zip','1','product.php,category.php,detail.php,cart.php,member/checkout.php,{admin}/product_manage.php,{admin}/product_update.php,{admin}/shop_order_manage.php,{admin}/shop_order_update.php,inc/language/frontend/chinese_simplified/product.lang.php,inc/language/frontend/chinese_simplified/category.lang.php,inc/language/frontend/chinese_simplified/detail.lang.php,inc/language/frontend/chinese_simplified/cart.lang.php,inc/language/frontend/chinese_simplified/checkout.lang.php,inc/language/frontend/english/product.lang.php,inc/language/frontend/english/category.lang.php,inc/language/frontend/english/detail.lang.php,inc/language/frontend/english/cart.lang.php,inc/language/frontend/english/checkout.lang.php,inc/language/manage/chinese_simplified/product_manage.lang.php,inc/language/manage/chinese_simplified/product_update.lang.php,inc/language/manage/chinese_simplified/shop_order_manage.lang.php,inc/language/manage/chinese_simplified/shop_order_update.lang.php,inc/templates/manage/product_manage.dwt,inc/templates/manage/product_update.dwt,inc/templates/manage/shop_order_manage.dwt,inc/templates/manage/shop_order_update.dwt,inc/lib/product.lib.php,inc/uploads/product,inc/script/shopping.js','MYCMS官方制作','商品（产品功能模块）','1301642676'),('3','MO003x','图片集','inc/install/pack/photo/mo003x.zip','1','photo.php,slide.php,show.php,{admin}/picture_manage.php,{admin}/picture_update.php,inc/language/frontend/chinese_simplified/photo.lang.php,inc/language/frontend/chinese_simplified/slide.lang.php,inc/language/frontend/chinese_simplified/show.lang.php,inc/language/frontend/english/photo.lang.php,inc/language/frontend/english/slide.lang.php,inc/language/frontend/english/show.lang.php,inc/language/manage/chinese_simplified/picture_manage.lang.php,inc/language/manage/chinese_simplified/picture_update.lang.php,inc/templates/manage/picture_manage.dwt,inc/templates/manage/picture_update.dwt,inc/lib/photo.lib.php,inc/uploads/picture,inc/script/hd_pics.js','MYCMS官方制作','图片集模块','1301642673'),('4','MO004x','软件下载','inc/install/pack/download/mo004x.zip','1','download.php,soft.php,down.php,{admin}/download_manage.php,{admin}/download_update.php,inc/language/frontend/chinese_simplified/download.lang.php,inc/language/frontend/chinese_simplified/soft.lang.php,inc/language/frontend/chinese_simplified/down.lang.php,inc/language/frontend/english/download.lang.php,inc/language/frontend/english/soft.lang.php,inc/language/frontend/english/down.lang.php,inc/language/manage/chinese_simplified/download_manage.lang.php,inc/language/manage/chinese_simplified/download_update.lang.php,inc/templates/manage/download_manage.dwt,inc/templates/manage/download_update.dwt,inc/lib/download.lib.php,inc/uploads/download','MYCMS官方制作','软件下载模块','1301642640'),('5','PL005x','友情链接','inc/install/pack/links/pl005x.zip','2','links.php,{admin}/links_manage.php,{admin}/links_update.php,inc/language/frontend/chinese_simplified/links.lang.php,inc/language/frontend/english/links.lang.php,inc/language/manage/chinese_simplified/links_manage.lang.php,inc/language/manage/chinese_simplified/links_update.lang.php,inc/templates/manage/links_manage.dwt,inc/templates/manage/links_update.dwt,inc/uploads/links','MYCMS官方制作','友情链接（合作伙伴）插件','1301642650'),('6','PL006x','在线留言','inc/install/pack/guestbook/pl006x.zip','2','guestbook.php,{admin}/guestbook_manage.php,{admin}/guestbook_reply.php,inc/language/frontend/chinese_simplified/guestbook.lang.php,inc/language/frontend/english/guestbook.lang.php,inc/language/manage/chinese_simplified/guestbook_manage.lang.php,inc/language/manage/chinese_simplified/guestbook_reply.lang.php,inc/templates/manage/guestbook_manage.dwt,inc/templates/manage/guestbook_reply.dwt','MYCMS官方制作','在线留言（在线反馈）插件','1301642643'),('7','PL007x','在线反馈','inc/install/pack/feedback/pl007x.zip	','2','feedback.php,inc/language/frontend/chinese_simplified/feedback.lang.php,inc/language/frontend/english/feedback.lang.php','MYCMS官方制作','在线反馈、在线订单、询盘、在线邮件','0');/* MySQLReback Separation */
 /* 插入数据 `cms_module` */
 INSERT INTO `cms_module` VALUES ('8','PL008x','广告插件','inc/install/pack/ad/pl008x.zip','2','{admin}/ad_manage.php,{admin}/ad_update.php,inc/language/manage/chinese_simplified/ad_manage.lang.php,inc/language/manage/chinese_simplified/ad_update.lang.php,inc/templates/manage/ad_manage.dwt,inc/templates/manage/ad_update.dwt,inc/lib/ad.lib.php,inc/uploads/ad','MYCMS官方制作','广告管理插件','1301642552');/* MySQLReback Separation */
 /* 插入数据 `cms_module` */
 INSERT INTO `cms_module` VALUES ('9','PL009x','支付接口','inc/install/pack/payment/pl009x.zip','2','member/recharge.php,inc/plugins/payment,{admin}/shop_payment.php,inc/language/frontend/chinese_simplified/recharge.lang.php,inc/language/frontend/chinese_simplified/payment_return.lang.php,inc/language/frontend/english/recharge.lang.php,inc/language/frontend/english/payment_return.lang.php,inc/language/manage/chinese_simplified/shop_payment.lang.php,inc/templates/manage/shop_payment.dwt,inc/config/payment.config.php','MYCMS官方制作','电子商务支付接口','1301642669'),('10','PL010x','物流配送','inc/install/pack/shipping/pl010x.zip','2','{admin}/shop_shipping.php,inc/language/manage/chinese_simplified/shop_shipping.lang.php,inc/templates/manage/shop_shipping.dwt','MYCMS官方制作','物流配送方式管理插件','1301642679');/* MySQLReback Separation */
 /* 创建表结构 `cms_order`  */
 DROP TABLE IF EXISTS `cms_order`;/* MySQLReback Separation */ CREATE TABLE `cms_order` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `lang` tinyint(3) unsigned NOT NULL default '1',
  `oid` varchar(20) NOT NULL,
  `uid` int(10) unsigned NOT NULL default '0',
  `pid` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `amount` decimal(8,2) unsigned NOT NULL default '0.00',
  `attribute` text NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  `dispatching` int(6) unsigned NOT NULL default '0',
  `waybill` varchar(100) NOT NULL,
  `freight` decimal(8,2) NOT NULL default '0.00',
  `customer` tinyint(1) unsigned NOT NULL default '0',
  `vouch` tinyint(1) unsigned NOT NULL default '0',
  `consignee` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `building` varchar(50) NOT NULL,
  `besttime` varchar(120) NOT NULL,
  `message` varchar(255) NOT NULL,
  `reply` varchar(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `cms_picture`  */
 DROP TABLE IF EXISTS `cms_picture`;/* MySQLReback Separation */ CREATE TABLE `cms_picture` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `lang` tinyint(3) unsigned NOT NULL default '1',
  `channel` int(10) unsigned NOT NULL default '0',
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `brief` varchar(50) NOT NULL,
  `color` varchar(7) NOT NULL,
  `bold` tinyint(1) unsigned NOT NULL default '0',
  `aid` varchar(30) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `sourceurl` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(50) NOT NULL,
  `comment` tinyint(1) unsigned NOT NULL default '0',
  `commenttotal` int(10) unsigned NOT NULL default '0',
  `picture` text NOT NULL,
  `description` mediumtext NOT NULL,
  `recom` tinyint(1) unsigned NOT NULL default '0',
  `audit` tinyint(1) unsigned NOT NULL default '0',
  `recycle` tinyint(1) unsigned NOT NULL default '0',
  `permission` varchar(255) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `click` int(10) unsigned NOT NULL default '0',
  `money` decimal(8,2) unsigned NOT NULL default '0.00',
  `integral` int(10) unsigned NOT NULL default '0',
  `buyuser` text NOT NULL,
  `agree` int(10) unsigned NOT NULL default '0',
  `disagree` int(10) unsigned NOT NULL default '0',
  `sort` int(10) unsigned NOT NULL default '0',
  `publisher` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_picture` */
 INSERT INTO `cms_picture` VALUES ('5','2','20',',31,','Home Page（650*260px）','','','0','home_focus','','','','','','','','1','0','inc/uploads/picture/demo_18.jpg,inc/uploads/picture/demo_19.jpg','http://www.el-ad.com{I~N!T@E#R$V%A^L}http://www.el-ad.com','0','1','0','0','','21','0.00','0','','0','0','0','admin','1292342400'),('6','2','20',',31,','News Channel（278*248px）','','','0','news_focus','','','','','','','','1','0','inc/uploads/picture/demo_01.jpg,inc/uploads/picture/demo_02.jpg','view.php?id=5
Global Entrepreneur{I~N!T@E#R$V%A^L}view.php?id=6
Watch Movies Online','0','1','0','0','','182','0.00','0','','0','0','0','admin','1298217600'),('7','2','20',',31,','Goods（278*348px）','','','0','product_focus','','','','','','','','1','0','inc/uploads/picture/demo_03.jpg,inc/uploads/picture/demo_04.jpg','detail.php?id=1
Apple ComputerMB293CH/A{I~N!T@E#R$V%A^L}detail.php?id=2
Digital Camera','0','1','0','0','','32','0.00','0','','0','0','0','admin','1293984000'),('8','2','20',',31,','Photo（525*225px）','','','0','photo_focus','','','','','','','','1','0','inc/uploads/picture/demo_14.jpg,inc/uploads/picture/demo_15.jpg,inc/uploads/picture/demo_16.jpg,inc/uploads/picture/demo_17.jpg','show.php?id=9
Star Photo{I~N!T@E#R$V%A^L}show.php?id=10
Star photo{I~N!T@E#R$V%A^L}show.php?id=9
Star photo
{I~N!T@E#R$V%A^L}show.php?id=10
Star photo','0','1','0','0','','32','0.00','0','','0','0','0','admin','1298563200'),('15','1','31','','首页客户logo','首页客户logo','','0','Index_clients','','','','','clients','clients','','1','0','inc/uploads/picture/201307/20130720113005571.gif,inc/uploads/picture/201307/20130720113014450.gif,inc/uploads/picture/201307/20130720135022612.gif,inc/uploads/picture/201307/20130720141813559.gif,inc/uploads/picture/201307/20130720142053532.gif,inc/uploads/picture/201307/20130720142101643.gif,inc/uploads/picture/201307/20130720142205314.gif,inc/uploads/picture/201307/20130720142121133.gif,inc/uploads/picture/201307/20130720142128545.gif,inc/uploads/picture/201307/20130720142136703.gif,inc/uploads/picture/201307/20130720163122311.gif,inc/uploads/picture/201307/20130720163128079.gif,inc/uploads/picture/201307/20130720163134047.gif,inc/uploads/picture/201307/20130720163140372.gif,inc/uploads/picture/201307/20130720163148933.gif,inc/uploads/picture/201307/20130720163155252.gif,inc/uploads/picture/201307/20130720163200159.gif,inc/uploads/picture/201307/20130720163206548.gif','中国移动通信{I~N!T@E#R$V%A^L}天翼{I~N!T@E#R$V%A^L}百度{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}','0','1','0','0','','322','0.00','0','','0','0','0','admin','1374249600'),('11','1','21','','首页广告1','首页广告1','','0','','','','','/view.php?id=62','首页广告1','','','1','0','inc/uploads/picture/201307/20130712224851095.jpg,inc/uploads/picture/201307/20130712224911915.png,inc/uploads/picture/201307/20130712224916384.png','首页广告1{I~N!T@E#R$V%A^L}首页广告1{I~N!T@E#R$V%A^L}首页广告1','0','1','0','0','','415','0.00','0','','0','0','0','admin','1373558400'),('13','1','21','','首页广告2','首页广告2','','0','','','','','','','','','1','0','inc/uploads/picture/201307/20130712225549198.gif,inc/uploads/picture/201307/20130712225633359.png,inc/uploads/picture/201307/20130712225639834.png','{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}','0','1','0','0','','15','0.00','0','','0','0','0','admin','1373558400'),('14','1','21','','首页广告3','','','0','','','','','','','','','1','0','inc/uploads/picture/201307/20130712230928545.gif,inc/uploads/picture/201307/20130712230945630.png,inc/uploads/picture/201307/20130712230949288.png','{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}','0','1','0','0','','444','0.00','0','','0','0','0','admin','1373558400');/* MySQLReback Separation */
 /* 创建表结构 `cms_picture_field`  */
 DROP TABLE IF EXISTS `cms_picture_field`;/* MySQLReback Separation */ CREATE TABLE `cms_picture_field` (
  `id` varchar(45) NOT NULL,
  `aid` mediumint(8) unsigned default '0',
  `body` mediumtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_picture_field` */
 INSERT INTO `cms_picture_field` VALUES ('','14','');/* MySQLReback Separation */
 /* 创建表结构 `cms_product`  */
 DROP TABLE IF EXISTS `cms_product`;/* MySQLReback Separation */ CREATE TABLE `cms_product` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `lang` tinyint(3) unsigned NOT NULL default '1',
  `channel` int(10) unsigned NOT NULL default '0',
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `brief` varchar(50) NOT NULL,
  `color` varchar(7) NOT NULL,
  `bold` tinyint(1) unsigned NOT NULL default '0',
  `virtual` tinyint(1) unsigned NOT NULL default '0',
  `market` decimal(8,2) unsigned NOT NULL default '0.00',
  `price` decimal(8,2) unsigned NOT NULL default '0.00',
  `units` varchar(20) NOT NULL,
  `inventory` int(12) unsigned NOT NULL default '0',
  `sales` int(12) unsigned NOT NULL default '0',
  `tag` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `introduction` text NOT NULL,
  `picture` text NOT NULL,
  `page` int(5) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `coding` varchar(50) NOT NULL,
  `speci` varchar(50) NOT NULL,
  `optional` varchar(255) NOT NULL,
  `template` varchar(50) NOT NULL,
  `comment` tinyint(1) unsigned NOT NULL default '0',
  `commenttotal` int(10) unsigned NOT NULL default '0',
  `agree` int(10) unsigned NOT NULL default '0',
  `disagree` int(10) unsigned NOT NULL default '0',
  `recom` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL default '0',
  `audit` tinyint(1) unsigned NOT NULL default '0',
  `recycle` tinyint(1) unsigned NOT NULL default '0',
  `permission` varchar(255) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `click` int(10) unsigned NOT NULL default '0',
  `favorite` int(10) unsigned NOT NULL default '0',
  `money` decimal(8,2) unsigned NOT NULL default '0.00',
  `integral` int(10) unsigned NOT NULL default '0',
  `buyuser` text NOT NULL,
  `sort` int(10) unsigned NOT NULL default '0',
  `publisher` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `cms_product_field`  */
 DROP TABLE IF EXISTS `cms_product_field`;/* MySQLReback Separation */ CREATE TABLE `cms_product_field` (
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `body` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `cms_rank`  */
 DROP TABLE IF EXISTS `cms_rank`;/* MySQLReback Separation */ CREATE TABLE `cms_rank` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `rankname` text NOT NULL,
  `discount` float unsigned NOT NULL default '10',
  `scores` int(10) unsigned NOT NULL default '0',
  `money` decimal(8,2) unsigned NOT NULL default '0.00',
  `auto` tinyint(1) unsigned NOT NULL default '0',
  `enable` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_rank` */
 INSERT INTO `cms_rank` VALUES ('1','注册会员,Ordinary','10','0','0.00','0','1'),('2','中级会员,Intermediate','10','200','0.00','1','1'),('3','高级会员,Senior Member','10','20000','0.00','1','1'),('4','VIP会员,VIP','10','0','1000.00','0','1'),('5','代理商,Agents','8.5','0','10000.00','0','1');/* MySQLReback Separation */
 /* 创建表结构 `cms_recruitment`  */
 DROP TABLE IF EXISTS `cms_recruitment`;/* MySQLReback Separation */ CREATE TABLE `cms_recruitment` (
  `id` int(11) NOT NULL auto_increment,
  `bid` int(11) NOT NULL,
  `experience` mediumtext NOT NULL,
  `properties` mediumtext NOT NULL,
  `degree` mediumtext NOT NULL,
  `number` mediumtext NOT NULL,
  `recommend` mediumtext NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_recruitment` */
 INSERT INTO `cms_recruitment` VALUES ('1','11','3年以上','全职','本科以上','5','<dl style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; border-style: initial; border-color: initial; vertical-align: baseline; text-align: left; border-style: initial; border-color: initial; background-color: rgb(255, 255, 255); \"><dd style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; border-style: initial; border-color: initial; vertical-align: baseline; border-style: initial; border-color: initial; float: left; width: 650px; font: normal normal normal 12px/24px simsun; word-break: break-all; word-wrap: break-word; \">1、有一年以上php+mysql编程开发经验，精通PHP+MySQL网站编程，熟悉面向对象的开发方式，熟悉在linux环境下配置&nbsp;php+mysql的运行环境；&nbsp;&nbsp;<br />2、具备较强的程序调试能力与程序故障分析能力&nbsp;；&nbsp;<br />3、熟悉Ajax，DIV+CSS，html，javascript等相关Web技术，熟悉至少一种目前主流的编程框架；&nbsp;<br />4、具有优良的编程风格和习惯，富于团队精神和敬业精神；&nbsp;<br />5、沟通能力强，能承受工作压力。&nbsp;<br /><br /></dd></dl><div class=\"explain\" style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; vertical-align: baseline; text-align: left; float: left; width: 650px; height: 30px; background-color: rgb(255, 255, 255); \"><p style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 30px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; border-style: initial; border-color: initial; vertical-align: baseline; border-style: initial; border-color: initial; font: normal normal normal 12px/30px simsun; \">请发简历，写明工作经历，薪资待遇要求。</p></div>');/* MySQLReback Separation */
 /* 创建表结构 `cms_recruitment_field`  */
 DROP TABLE IF EXISTS `cms_recruitment_field`;/* MySQLReback Separation */ CREATE TABLE `cms_recruitment_field` (
  `aid` mediumint(8) unsigned NOT NULL default '0',
  `body` mediumtext NOT NULL,
  PRIMARY KEY  (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `cms_shipping`  */
 DROP TABLE IF EXISTS `cms_shipping`;/* MySQLReback Separation */ CREATE TABLE `cms_shipping` (
  `id` int(6) unsigned NOT NULL auto_increment,
  `lang` tinyint(3) unsigned NOT NULL default '1',
  `title` varchar(100) NOT NULL,
  `freight` decimal(8,2) unsigned NOT NULL default '0.00',
  `topay` tinyint(1) unsigned NOT NULL default '0',
  `insure` float unsigned NOT NULL default '0',
  `description` varchar(255) NOT NULL,
  `enable` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_shipping` */
 INSERT INTO `cms_shipping` VALUES ('1','1','中国邮政EMS','35.00','0','0','中国邮政特快专递服务','1');/* MySQLReback Separation */
 /* 创建表结构 `cms_tag`  */
 DROP TABLE IF EXISTS `cms_tag`;/* MySQLReback Separation */ CREATE TABLE `cms_tag` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `lang` tinyint(3) unsigned NOT NULL default '1',
  `title` varchar(100) NOT NULL,
  `module` varchar(6) NOT NULL,
  `click` int(10) unsigned NOT NULL default '0',
  `total` int(10) unsigned NOT NULL default '0',
  `firsttime` int(10) unsigned NOT NULL default '0',
  `lasttime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `admin_update` (`lang`,`title`,`module`)
) ENGINE=MyISAM AUTO_INCREMENT=125 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_tag` */
 INSERT INTO `cms_tag` VALUES ('122','1','第一步旅游APP','MO001x','0','1','1374831428','1374831428'),('121','1','我们的环境','MO001x','0','1','1374309347','1374309347'),('119','1','About Us','MO001x','0','1','1373944959','1373944959'),('118','1','Quick Car APP','MO001x','0','1','1373645947','1373645947'),('120','1','《世界》杂志APP','MO001x','0','1','1374286068','1374286068'),('123','1','WakeUP醒脑','MO001x','0','1','1375087384','1375087384'),('124','1','Touch China','MO001x','0','1','1375087987','1375087987');/* MySQLReback Separation */
 /* 创建表结构 `cms_transaction`  */
 DROP TABLE IF EXISTS `cms_transaction`;/* MySQLReback Separation */ CREATE TABLE `cms_transaction` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `oid` varchar(20) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL default '0',
  `amount` decimal(8,2) NOT NULL default '0.00',
  `result` tinyint(1) unsigned NOT NULL default '0',
  `info` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `cms_website`  */
 DROP TABLE IF EXISTS `cms_website`;/* MySQLReback Separation */ CREATE TABLE `cms_website` (
  `lang` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `dir` varchar(30) NOT NULL,
  `template` varchar(30) NOT NULL,
  `static` varchar(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `copyright` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `qq` varchar(255) NOT NULL,
  `msn` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY  (`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_website` */
 INSERT INTO `cms_website` VALUES ('1','中文站','chinese_simplified','default','html/index.html','Cyrus Chan个人网站 | 移动应用解决方案，交互设计，视觉设计，网站研发，App程序开发','inc/uploads/other/201401/20140121140449923.jpg','交互设计，视觉设计，网站研发，App程序开发','Cyrus Chan个人网站 | 移动应用解决方案，交互设计，视觉设计，网站研发，App程序开发','Copyright © 2014 Cyrus Chan. All Rights Reserved.','widecyruschan@yahoo.com.cn','59660349','yourname@msn.com','020 - 88835256','020 - 75863382','.'),('2','English','english','default','html/index-en.html','My Website','inc/images/logo.png','','','Copyright © 2008-2011 MYCMS. All Rights Reserved.','myname@example.com','987654321','myname@msn.com','0754 - 58746632','0786 - 65879651','Floor 14, Huiyin Plaza North building, No. 2018, Huashan Road, Shanghai.');/* MySQLReback Separation */