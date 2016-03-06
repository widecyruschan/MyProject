SET NAMES utf8;
SET FOREIGN_KEY_CHECKS = 0;


DROP TABLE IF EXISTS `cms_ad`;
CREATE TABLE `cms_ad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `aid` varchar(30) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `code` text NOT NULL,
  `weight` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `click` int(10) NOT NULL DEFAULT '-1',
  `limit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `start` int(10) unsigned NOT NULL DEFAULT '0',
  `end` int(10) unsigned NOT NULL DEFAULT '0',
  `expired` text NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `enable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;



BEGIN;
INSERT INTO `cms_ad` VALUES ('1', '1', 'weather', '天气调用（新浪网提供，有时会变更URL）', 'http://localhost', '<div style=\"padding:5px 0 0 0;\">\r\n<iframe width=\"150\" height=\"20\" frameborder=\"0\" marginheight=\"0\" marginwidth=\"0\" scrolling=\"no\" src=\"http://news.sina.com.cn/iframe/2010/0820/564.html\"></iframe>\r\n</div>', '1', '0', '0', '1292125080', '1292125200', '', '0', '1', '1292121025'), ('2', '1', 'weather', '天气调用（中国天气网提供、不稳定、可选用）', 'http://localhost', '<div style=\"padding:3px 0 0 18px; width:180px; text-align:center;\"><iframe src=\"http://m.weather.com.cn/m/pn7/weather.htm\" width=\"195\" height=\"20\" marginwidth=\"0\" marginheight=\"0\" hspace=\"0\" vspace=\"0\" frameborder=\"0\" scrolling=\"no\"></iframe></div>', '1', '0', '0', '1292121086', '1294713086', '', '0', '0', '1292121248'), ('3', '1', 'header', '网站头部通用广告位（450*75px）', '#', '<img src=\"inc/uploads/ad/ad_header1.png\" width=\"450\" height=\"75\" border=\"0\" />', '1', '1', '0', '1292126285', '1294718285', '', '0', '1', '1292127404'), ('4', '1', 'home_2', '首页中部通栏广告（930*100px）', 'http://www.el-ad.com', '<a target=\"_blank\" href=\"app.php?a=ad&id=12\"><img src=\"inc/uploads/ad/930x100.jpg\" width=\"930\" height=\"100\" alt=\"\" title=\"\" border=\"0\" /></a>', '1', '1', '0', '1300428521', '1303020521', '', '0', '1', '1300428557'), ('5', '1', 'home_1', '首页左侧广告1（278*110px）', 'http://www.el-ad.com', '<a target=\"_blank\" href=\"app.php?a=ad&id=11\"><img src=\"inc/uploads/ad/280x108.jpg\" width=\"278\" height=\"100\" alt=\"\" title=\"\" border=\"0\" /></a>', '1', '1', '0', '1300270032', '1302862032', '', '0', '1', '1300270106'), ('6', '1', 'product_2', '商品频道中部通栏广告（930*100px）', 'http://#', '<a target=\"_blank\" href=\"app.php?a=ad&id=5\"><img src=\"inc/uploads/ad/930x100.jpg\" width=\"930\" height=\"100\" border=\"0\" /></a>', '1', '0', '0', '1294465474', '1297057474', '', '0', '1', '1294465539'), ('7', '1', 'product_1', '商品频道左侧广告（278*126px）', 'http://#', '<a target=\"_blank\" href=\"app.php?a=ad&id=6\"><img src=\"inc/uploads/ad/280x108.jpg\" width=\"278\" height=\"118\" alt=\"\" title=\"\" border=\"0\" /></a>', '1', '0', '0', '1294464764', '1297056764', '', '0', '1', '1294464861'), ('8', '1', 'product_3', '商品频道右侧广告（278*218px）', 'http://www.el-ad.com', '<a target=\"_blank\" href=\"app.php?a=ad&id=7\"><img src=\"inc/uploads/ad/280x220.jpg\" width=\"278\" height=\"218\" border=\"0\" /></a>', '1', '0', '0', '1294490859', '1297082859', '', '0', '1', '1294491450'), ('9', '1', 'article_1', '资讯频道右侧广告1（276*108px）', 'http://www.el-ad.com', '<a target=\"_blank\" href=\"app.php?a=ad&id=8\"><img src=\"inc/uploads/ad/280x112.jpg\" width=\"276\" height=\"108\" border=\"0\" /></a>', '1', '4', '0', '1298371686', '1300963686', '', '0', '1', '1298371765'), ('10', '1', 'article_2', '资讯频道右侧广告2（276*108px）', 'http://www.qq.com', '<a target=\"_blank\" href=\"app.php?a=ad&id=9\"><img src=\"inc/uploads/ad/280x112_2.jpg\" width=\"276\" height=\"108\" border=\"0\" /></a>', '1', '2', '0', '1298372352', '1300964352', '', '0', '1', '1298372376'), ('11', '1', 'photo_banner', '图片频道中部通栏广告（930*100px）', 'http://www.el-ad.com', '<a target=\"_blank\" href=\"app.php?a=ad&id=10\"><img src=\"inc/uploads/ad/930x100.jpg\" width=\"930\" height=\"100\" border=\"0\" /></a>', '1', '0', '0', '1298604428', '1301196428', '', '0', '1', '1298604478'), ('12', '1', 'search_right', '搜索页右侧广告（当搜索结果满一页时显示）', 'http://#', '<a href=\"http://www.el-ad.com\">PHPCMS 强劲站内搜索系统更新</a><br />\r\nPHPCMS 站内搜索简单方便。您只需要在搜索框内输入需要查询的内容，敲回车键，或者鼠标点击搜索框右侧的搜索按钮，就可以得到最符合查询需求的网页内容。站内搜索，就是这么简单！\r\n全面支持多字词空格间隔搜索。输入多个词语搜索（不同字词之间用一个空格隔开），可以获得更精确的搜索结果。\r\n<br />\r\n<br />\r\n<a href=\"http://www.el-ad.com\">PHPCMS 商业授权版</a><br />\r\n新增在线充值、在线支付、订购、订单管理等20多项商业性质的功能和模块，无限语言扩充，一对一售后技术服务，专业、高效支持1000万级数据量，全开方性接口易扩展、更方便二次开发。', '1', '0', '0', '1292850938', '1295442938', '', '0', '1', '1292850983'), ('13', '2', 'weather', '天气调用（新浪网提供，有时会变更URL）', 'http://localhost', '<div style=\"padding:10px 0 0 0;\">\r\n<iframe width=\"150\" height=\"20\" frameborder=\"0\" marginheight=\"0\" marginwidth=\"0\" scrolling=\"no\" src=\"http://news.sina.com.cn/iframe/2010/0820/564.html\"></iframe>\r\n</div>', '1', '0', '0', '1292125080', '1292125200', '', '0', '1', '1292121025'), ('14', '2', 'weather', '天气调用（中国天气网提供、不稳定、可选用）', 'http://localhost', '<div style=\"padding:3px 0 0 18px; width:180px; text-align:center;\"><iframe src=\"http://m.weather.com.cn/m/pn7/weather.htm\" width=\"195\" height=\"20\" marginwidth=\"0\" marginheight=\"0\" hspace=\"0\" vspace=\"0\" frameborder=\"0\" scrolling=\"no\"></iframe></div>', '1', '0', '0', '1292121086', '1294713086', '', '0', '0', '1292121248'), ('15', '2', 'header', '网站头部通用广告位（450*75px）', '#', '<img src=\"inc/uploads/ad/ad_header2.png\" width=\"450\" height=\"75\" border=\"0\" />', '1', '0', '0', '1292126285', '1294718285', '', '0', '1', '1292127404'), ('16', '2', 'home_2', '首页中部通栏广告（930*100px）', 'http://www.el-ad.com', '<a target=\"_blank\" href=\"app.php?a=ad&id=12\"><img src=\"inc/uploads/ad/930x100.jpg\" width=\"930\" height=\"100\" alt=\"\" title=\"\" border=\"0\" /></a>', '1', '1', '0', '1300428521', '1303020521', '', '0', '1', '1300428557'), ('17', '2', 'home_1', '首页左侧广告1（278*110px）', 'http://www.el-ad.com', '<a target=\"_blank\" href=\"app.php?a=ad&id=11\"><img src=\"inc/uploads/ad/280x108.jpg\" width=\"278\" height=\"100\" alt=\"\" title=\"\" border=\"0\" /></a>', '1', '1', '0', '1300270032', '1302862032', '', '0', '1', '1300270106'), ('18', '2', 'product_2', '商品频道中部通栏广告（930*100px）', 'http://#', '<a target=\"_blank\" href=\"app.php?a=ad&id=5\"><img src=\"inc/uploads/ad/930x100.jpg\" width=\"930\" height=\"100\" border=\"0\" /></a>', '1', '0', '0', '1294465474', '1297057474', '', '0', '1', '1294465539'), ('19', '2', 'product_1', '商品频道左侧广告（278*126px）', 'http://#', '<a target=\"_blank\" href=\"app.php?a=ad&id=6\"><img src=\"inc/uploads/ad/280x108.jpg\" width=\"278\" height=\"118\" alt=\"\" title=\"\" border=\"0\" /></a>', '1', '0', '0', '1294464764', '1297056764', '', '0', '1', '1294464861'), ('20', '2', 'product_3', '商品频道右侧广告（278*218px）', 'http://www.el-ad.com', '<a target=\"_blank\" href=\"app.php?a=ad&id=7\"><img src=\"inc/uploads/ad/280x220.jpg\" width=\"278\" height=\"218\" border=\"0\" /></a>', '1', '0', '0', '1294490859', '1297082859', '', '0', '1', '1294491450'), ('21', '2', 'article_1', '资讯频道右侧广告1（276*108px）', 'http://www.el-ad.com', '<a target=\"_blank\" href=\"app.php?a=ad&id=8\"><img src=\"inc/uploads/ad/280x112.jpg\" width=\"276\" height=\"108\" border=\"0\" /></a>', '1', '4', '0', '1298371686', '1300963686', '', '0', '1', '1298371765'), ('22', '2', 'article_2', '资讯频道右侧广告2（276*108px）', 'http://www.qq.com', '<a target=\"_blank\" href=\"app.php?a=ad&id=9\"><img src=\"inc/uploads/ad/280x112_2.jpg\" width=\"276\" height=\"108\" border=\"0\" /></a>', '1', '2', '0', '1298372352', '1300964352', '', '0', '1', '1298372376'), ('23', '2', 'photo_banner', '图片频道中部通栏广告（930*100px）', 'http://www.el-ad.com', '<a target=\"_blank\" href=\"app.php?a=ad&id=10\"><img src=\"inc/uploads/ad/930x100.jpg\" width=\"930\" height=\"100\" border=\"0\" /></a>', '1', '0', '0', '1298604428', '1301196428', '', '0', '1', '1298604478'), ('24', '2', 'search_right', '搜索页右侧广告（当搜索结果满一页时显示）', 'http://#', '<a href=\"http://www.el-ad.com\">PHPCMS 强劲站内搜索系统更新</a><br />\r\nPHPCMS 站内搜索简单方便。您只需要在搜索框内输入需要查询的内容，敲回车键，或者鼠标点击搜索框右侧的搜索按钮，就可以得到最符合查询需求的网页内容。站内搜索，就是这么简单！\r\n全面支持多字词空格间隔搜索。输入多个词语搜索（不同字词之间用一个空格隔开），可以获得更精确的搜索结果。\r\n<br />\r\n<br />\r\n<a href=\"http://www.el-ad.com\">PHPCMS 商业授权版</a><br />\r\n新增在线充值、在线支付、订购、订单管理等20多项商业性质的功能和模块，无限语言扩充，一对一售后技术服务，专业、高效支持1000万级数据量，全开方性接口易扩展、更方便二次开发。', '1', '0', '0', '1292850938', '1295442938', '', '0', '1', '1292850983');
COMMIT;


DROP TABLE IF EXISTS `cms_admin`;
CREATE TABLE `cms_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `encryption` varchar(8) NOT NULL,
  `loginip` varchar(31) NOT NULL,
  `logintime` varchar(21) NOT NULL,
  `frequency` int(10) unsigned NOT NULL DEFAULT '0',
  `purviews` text NOT NULL,
  `level` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


BEGIN;
INSERT INTO `cms_admin` VALUES ('1', 'admin', 'be614ac73d38ef404c841b36b67d5912', 'b2zVLf8B', 'unknown,unknown', '1373938951,1374285767', '7', '', '1');
COMMIT;


DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `channel` int(10) unsigned NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `titleEn` varchar(255) NOT NULL,
  `brief` varchar(50) NOT NULL,
  `color` varchar(7) NOT NULL,
  `bold` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `sourceurl` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `introduction` text NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(50) NOT NULL,
  `comment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `commenttotal` int(10) unsigned NOT NULL DEFAULT '0',
  `picture` text NOT NULL,
  `recom` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recycle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(255) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `money` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `buyuser` text NOT NULL,
  `page` int(5) unsigned NOT NULL DEFAULT '0',
  `agree` int(10) unsigned NOT NULL DEFAULT '0',
  `disagree` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `publisher` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `lang` (`lang`,`channel`,`category`,`published`,`audit`,`recycle`),
  KEY `title` (`title`)
) ENGINE=MyISAM AUTO_INCREMENT=68 DEFAULT CHARSET=utf8;


BEGIN;
INSERT INTO `cms_article` VALUES ('62', '1', '22', '', 'Quick Car APP', '', 'Quick Car APP', '', '0', 'Quick Car APP', '', '', '', 'Quick Car APP', '双晖传媒团队受邀为寰球汽车传媒集团官方移动应用Quick Car提供解决方案。Quick Car是一款汽车综合服务类应用，主导为驾驶者提供快速、便捷的信息服务。让用户享受驾驶的快乐。我们负责产品的交互设计，视觉设计，功能研发，测试上线 全套方案实现。客户端应用于iOS及Android平台。', '<img alt=\"\" src=\"/inc/uploads/ckeditor/Images/20130713001353084.jpg\" style=\"width: 1000px; height: 1420px;\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/20130713001457501.jpg\" style=\"width: 1000px; height: 1270px;\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/20130713001515533.jpg\" style=\"width: 1000px; height: 1275px;\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/20130713001537158.jpg\" style=\"width: 1000px; height: 1320px;\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/20130713001556678.jpg\" style=\"width: 1000px; height: 1121px;\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/20130713001620585.jpg\" style=\"width: 1000px; height: 1390px;\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/20130713001644941.jpg\" style=\"width: 1000px; height: 1012px;\" /><br />', 'Portfolio_view', '1', '0', 'inc/uploads/article/201307/20130713001022941.jpg,inc/uploads/article/201307/20130714143735118.jpg,inc/uploads/article/201307/20130714143805461.jpg,inc/uploads/article/201307/20130714144016827.jpg,inc/uploads/article/201307/20130714144628792.jpg', '1', '1', '1', '0', '0', '', '963', '0.00', '0', '', '0', '0', '0', '0', 'admin', '1373385600'), ('65', '1', '25', '', '关于我们', '', 'About Us', '', '0', 'About Us', '', '', '', 'About Us', '', '<div class=\"newsContent\">\r\n	<p>\r\n		双晖传媒（TGVISION）成立于2006年，我们是一支融交互、创新、视觉设计、产品研发 于一体的专业品牌策划与制作团队，鼎力为国内外知名企业提供全方位多平台的产品服务解决方案。以专业的交互设计、创新理念、视觉呈现，服务国内外企业多达 100余家，成功案例300余例。涉及IT、汽车、教育、房地产、金融等各个行业，拥有包括中国移动、中国电信、百度、新浪、淘宝、索尼、联想、人民网、 中国日报等企业在内的成功案例，在国内拥有较高美誉。<br />\r\n		<br />\r\n		<img alt=\"tgvision.jpg\" height=\"435\" src=\"http://tg-vision.com/d/file/news/shuanghui/201306/2b9b564755a9d7976703ab5aa4880779.jpg\" width=\"700\" /><br />\r\n		<br />\r\n		<br />\r\n		<strong>我们的理念</strong></p>\r\n	<p>\r\n		创新，激情，未来。<br />\r\n		<br />\r\n		创新，我们通过研究理解用户的思维、行为、和目标，挖掘用户对产品使用的潜在需求，通过我们服务于各行业客户的丰富经验，结合品牌的优势进行分析，让用户在情绪上、行为上感知产品的创新、感受完美的体验。超越品牌的价值。<br />\r\n		<br />\r\n		激情，我们是一只富有激情的创新团队。我们将设计通过情感的表达把用户和产品很自然的连接在一起，让用户享受使用产品的愉悦，以此来强化对产品、品牌的体验认知！通过自然的交互和生动的设计展现出来，用一个充满情感化的设计打动用户！<br />\r\n		<br />\r\n		未来，为客户提供品牌化、一站式的解决方案。服务涵盖了互联网，掌上移动设备、桌面平台以及电子消费类产品等。为客户提供从品牌设计、概念设计、交互设计、视觉设计、功能研发到最终产品实现。为客户提供真正具有创新价值的产品体验。<br />\r\n		<br />\r\n		<strong>我们的团队<br />\r\n		</strong><br />\r\n		双晖传媒专精于高品质的全方位设计服务，拥有实力坚强的研发团队及国内外顶尖水平的设计人才，核心成员曾服务于微软、雅虎（美国）、淘宝、新浪、腾讯等全 球知名企业，拥有丰富的视觉及交互设计经验。多名设计师在国内外获得设计相关奖项，被多家媒体专访，案例被国内外设计网站收录， 如：Newswebpic，站酷，Iconfans，68design，UIRSS，ChinaUI等。<br />\r\n		<br />\r\n		<strong>我们的荣誉<br />\r\n		</strong><br />\r\n		双晖传媒受邀国际权威在线创意杂志NWP专访<br />\r\n		<br />\r\n		TGVISION双晖传媒受邀国际权威网络在线创意杂志NWP专访,刊登于《NewWebPick》第39期。NWP展示全球最前沿的设计作品，收集国际 最新设计资讯，辨析设计艺术的动向。杂志每期下载量4,000,000次，来自全球155个国家的10592个城市。欢迎下载观看。<br />\r\n		<br />\r\n		<img alt=\"nwp.jpg\" height=\"648\" src=\"http://tg-vision.com/d/file/news/shuanghui/201305/c22c716d5fcce0c26071ad140d2a1435.jpg\" width=\"475\" /><br />\r\n		<br />\r\n		双晖传媒创意总监王子年蝉联了权威设计机构评选ChinaUI2011年度十佳UI设计师奖。<br />\r\n		<br />\r\n		<img alt=\"chinaui.jpg\" height=\"196\" src=\"http://tg-vision.com/d/file/news/shuanghui/201305/8b7dc9015252e520d739e43a1740da0f.jpg\" width=\"700\" /><br />\r\n		<img alt=\"chinaui10.jpg\" height=\"467\" src=\"http://tg-vision.com/d/file/news/shuanghui/201306/ee02bf36f8d5503221c8ff50b7fe8eaf.jpg\" width=\"700\" /><br />\r\n		<img alt=\"chinaui11.jpg\" height=\"467\" src=\"http://tg-vision.com/d/file/news/shuanghui/201306/a8fb2eba13e89e2d197d21a21bee77bb.jpg\" width=\"700\" /><br />\r\n		&nbsp;<br />\r\n		双晖传媒创意总监王子年荣获网页设计师联盟（68design）《2010-2011年度中国十佳网页(互动)设计师》称号并接受专访。<br />\r\n		<br />\r\n		<img alt=\"4915787a6622a9a387820ac4b63c462b.jpg\" height=\"146\" src=\"http://tg-vision.com/d/file/news/shuanghui/201305/532ee548cc7bdff2567cd3fe3ea172b1.jpg\" width=\"700\" /><br />\r\n		<img alt=\"68design.jpg\" height=\"467\" src=\"http://tg-vision.com/d/file/news/shuanghui/201306/eafc61241e0cd2e7cd54af9c8d2e3cf3.jpg\" width=\"700\" /><br />\r\n		<br />\r\n		<br />\r\n		<strong>我们的客户</strong><br />\r\n		<br />\r\n		中国移动、中国电信、百度、新浪、淘宝、索尼、苏宁、联想、融科智地、人民网、酷6网、人民日报、中国日报、精品传媒集团、李宁、法国雷诺、慧聪邓白氏等<br />\r\n		<br />\r\n		<img alt=\"clients.jpg\" height=\"350\" src=\"http://tg-vision.com/d/file/news/shuanghui/201306/841247e10b7653431f545981e4c2c4ce.jpg\" width=\"700\" /></p>\r\n</div>', '', '1', '0', 'inc/uploads/article/201307/20130716112058339.jpg,inc/uploads/article/201307/20130716112216141.jpg,inc/uploads/article/201307/20130716112247191.jpg', '1', '1', '1', '0', '0', '', '356', '0.00', '0', '', '0', '0', '0', '0', 'admin', '1373904000'), ('66', '1', '22', '', '《世界》杂志APP', '', '《世界》杂志', '', '0', '《世界》杂志APP', '', '', '', '《世界》杂志APP', '双晖传媒为《世界》杂志量身定制了高端iPad版客户端，以鲜明的旅行态度和独到的杂志视角结合了全新的移动平台进行整合设计，丰富了产品功能的同时提升交互及视觉体验。为千万旅行者提供最权威最实用的境外旅行讯息，搭建起与高端读者在线互动的桥梁，为客户整合营销提供更广阔的宣传平台。', '<div class=\"main\" id=\"conpicDiv\" style=\"padding-bottom:40px;\">\r\n	<img alt=\"World_p1.jpg\" height=\"835\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/e4141f1ec8175cb762b94cdddd6c3765.jpg\" width=\"1000\" /><img alt=\"World_p2.jpg\" height=\"800\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/c106f61dc9b26812fd7d5dbfcdaff283.jpg\" width=\"1000\" /><img alt=\"World_p3.jpg\" height=\"888\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/403c4d2298ad03504a8b8cc6af62e1f1.jpg\" width=\"1000\" /><img alt=\"World_p4.jpg\" height=\"800\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/2aad5e196a41226295d223646a044fe8.jpg\" width=\"1000\" /><img alt=\"World_p5.jpg\" height=\"1092\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/4d083a9780dfc0e753d6f104c94cd27b.jpg\" width=\"1000\" /><img alt=\"World_p6.jpg\" height=\"953\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/174ecfb4e1b2f7363d3cdcdeb8772455.jpg\" width=\"1000\" /><img alt=\"World_p7.jpg\" height=\"888\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/0cf8a592b69818d2a7e9d710faa5634f.jpg\" width=\"1000\" /><img alt=\"World_p8.jpg\" height=\"717\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/bd779dd9829bafd9f6d7261e6b2880e0.jpg\" width=\"1000\" /><img alt=\"World_p9.jpg\" height=\"800\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/60440ba0f3698a13d9b27654af607e1c.jpg\" width=\"1000\" /><img alt=\"World_p10.jpg\" height=\"667\" src=\"http://tg-vision.com/d/file/portfolio/app/201304/818d659f6b2d29244a5d310bdb9f735f.jpg\" width=\"1000\" /></div>', 'Portfolio_view', '1', '0', 'inc/uploads/article/201307/20130720100532042.jpg,inc/uploads/article/201307/20130720100640541.jpg,inc/uploads/article/201307/20130720100828134.jpg,inc/uploads/article/201307/20130720100938934.jpg,', '0', '1', '1', '0', '0', '', '351', '0.00', '0', '', '0', '0', '0', '0', 'admin', '1374249600'), ('67', '1', '25', '', '我们的环境', '', '我们的环境', '', '0', '我们的环境', '', '', '', '我们的环境', '', '双晖传媒主张拥有自由、舒适、专业、易交流的开放式办公环境。分享设计的快乐，享受创新所带来的无限可能！期待你的加入！<br />\r\n<br />\r\n<span style=\"color: #ff6600\"><strong><span style=\"color: #ff6600\"><a href=\"http://tg-vision.com/#aboutjob\"><span style=\"color: #ff6600\">了解招聘职位详情</span></a></span></strong></span><span style=\"color: #ff6600\"><strong><br />\r\n</strong><br />\r\n<img alt=\"tgvision.jpg\" height=\"2431\" src=\"http://tg-vision.com/d/file/news/shuanghui/201306/79e877a194ca26a5740e51f9ba8b1564.jpg\" width=\"700\" /></span>', '', '1', '0', 'inc/uploads/article/201307/20130720164117655.jpg,inc/uploads/article/201307/20130720164014531.jpg,inc/uploads/article/201307/20130720163736768.jpg', '1', '1', '1', '0', '0', '', '746', '0.00', '0', '', '0', '0', '0', '0', 'admin', '1374249600');
COMMIT;


DROP TABLE IF EXISTS `cms_article_field`;
CREATE TABLE `cms_article_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(10) NOT NULL DEFAULT '0',
  `Client` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;



BEGIN;
INSERT INTO `cms_article_field` VALUES ('1', '62', '寰球汽车传媒集团'), ('2', '66', '《世界》杂志');
COMMIT;


DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `module` varchar(6) NOT NULL,
  `channel` smallint(5) unsigned NOT NULL DEFAULT '0',
  `level` tinyint(3) unsigned NOT NULL DEFAULT '1',
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
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nexus` (`nexus`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;


BEGIN;
INSERT INTO `cms_category` VALUES ('1', '1', '行业资讯', 'MO001x', '2', '1', ',1,', '', '', '', '', '', '0', '', '', '', '', '1', '1300419480'), ('2', '1', '娱乐新闻', 'MO001x', '2', '1', ',2,', '', '', '', '', '', '0', '', '', '', '', '2', '1300419587'), ('3', '1', '互联网', 'MO001x', '2', '1', ',3,', '', '', '', '', '', '0', '', '', '', '', '3', '1300419700'), ('4', '1', '社会万象', 'MO001x', '2', '1', ',4,', '', '', '', '', '', '0', '', '', '', '', '4', '1300419860'), ('5', '1', '家用电器', 'MO002x', '3', '1', ',5,', '', '', '', '', '', '0', '', '', '', '', '1', '1300456229'), ('6', '1', '手机及配件', 'MO002x', '3', '1', ',6,', '', '', '', '', '', '0', '', '', '', '', '2', '1300456242'), ('7', '1', '电脑及耗材', 'MO002x', '3', '1', ',7,', '', '', '', '', '', '0', '', '', '', '', '3', '1300456262'), ('8', '1', '办公器材', 'MO002x', '3', '1', ',8,', '', '', '', '', '', '0', '', '', '', '', '4', '1300456401'), ('9', '1', '时尚数码', 'MO002x', '3', '1', ',9,', '', '', '', '', '', '0', '', '', '', '', '5', '1300459436'), ('10', '1', '诺基亚', 'MO002x', '3', '2', ',6,10,', '', '', '', '', '', '0', '', '', '', '', '1', '1300459782'), ('11', '1', '三星', 'MO002x', '3', '2', ',6,11,', '', '', '', '', '', '0', '', '', '', '', '2', '1300459801'), ('12', '1', '索尼爱立信', 'MO002x', '3', '2', ',6,12,', '', '', '', '', '', '0', '', '', '', '', '3', '1300459816'), ('13', '1', '电话机', 'MO002x', '3', '2', ',8,13,', '', '', '', '', '', '0', '', '', '', '', '1', '1300461298'), ('14', '1', '传真机', 'MO002x', '3', '2', ',8,14,', '', '', '', '', '', '0', '', '', '', '', '2', '1300461311'), ('15', '1', '打印机', 'MO002x', '3', '2', ',8,15,', '', '', '', '', '', '0', '', '', '', '', '3', '1300461328'), ('16', '1', '洗衣机', 'MO002x', '3', '2', ',5,16,', '', '', '', '', '', '0', '', '', '', '', '1', '1300462061'), ('17', '1', '电视机', 'MO002x', '3', '2', ',5,17,', '', '', '', '', '', '0', '', '', '', '', '2', '1300462076'), ('18', '1', '冰箱空调', 'MO002x', '3', '2', ',5,18,', '', '', '', '', '', '0', '', '', '', '', '3', '1300462093'), ('19', '1', '小家电', 'MO002x', '3', '2', ',5,19,', '', '', '', '', '', '0', '', '', '', '', '4', '1300462113'), ('20', '1', '影视娱乐', 'MO003x', '4', '1', ',20,', '', '', '', '', '', '0', '', '', '', '', '1', '1300500616'), ('21', '1', '明星写真', 'MO003x', '4', '1', ',21,', '', '', '', '', '', '0', '', '', '', '', '2', '1300500674'), ('22', '1', '应用软件', 'MO004x', '5', '1', ',22,', '', '', '', '', '', '0', '', '', '', '', '2', '1300510394'), ('23', '1', '源码下载', 'MO004x', '5', '1', ',23,', '', '', '', '', '', '0', '', '', '', '', '1', '1300510363'), ('24', '1', '素材下载', 'MO004x', '5', '1', ',24,', '', '', '', '', '', '0', '', '', '', '', '3', '1300510456'), ('25', '1', '模板下载', 'MO004x', '5', '1', ',25,', '', '', '', '', '', '0', '', '', '', '', '4', '1300510581'), ('26', '1', '产品与服务', 'MO001x', '6', '1', ',26,', '', '', '', '', '', '0', 'about_channel', 'about_view', '', '', '1', '1300511555'), ('27', '1', '默认分类', 'MO001x', '9', '1', ',27,', '', '', '', '', '', '0', 'about_channel', 'about_view', '', '', '1', '1300426455'), ('28', '1', '默认分类', 'MO003x', '10', '1', ',28,', '', '', '', '', '', '0', 'about_channel', 'about_view', '', '', '1', '1300452807'), ('29', '2', 'Default', 'MO001x', '16', '1', ',29,', '', '', '', '', '', '0', 'about_channel', 'about_view', '', '', '1', '1331472719'), ('30', '2', 'Default', 'MO001x', '19', '1', ',30,', '', '', '', '', '', '0', 'about_channel', 'about_view', '', '', '1', '1331470872'), ('31', '2', 'Default', 'MO003x', '20', '1', ',31,', '', '', '', '', '', '0', 'about_channel', 'about_view', '', '', '1', '1331470878');
COMMIT;


DROP TABLE IF EXISTS `cms_channel`;
CREATE TABLE `cms_channel` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `titleEn` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(10) NOT NULL,
  `module` varchar(6) NOT NULL,
  `permission` varchar(255) NOT NULL,
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pathhome` varchar(50) NOT NULL,
  `pathcategory` varchar(50) NOT NULL,
  `pathcontent` varchar(50) NOT NULL,
  `seotitle` varchar(255) NOT NULL,
  `seokey` varchar(255) NOT NULL,
  `seodescr` varchar(255) NOT NULL,
  `template` varchar(50) NOT NULL,
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `UpChannelID` int(10) unsigned NOT NULL DEFAULT '0',
  `nexus` varchar(45) NOT NULL,
  `level` varchar(45) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8;


BEGIN;
INSERT INTO `cms_channel` VALUES ('1', '1', 'HOME', 'Home', '{home}', '_self', '', '0', '1', '', '', '', '', '', '', '', '1', '1300415159', '0', ',1,', '0'), ('2', '1', 'Portfolio', 'Portfolio', '', '_self', 'MO001x', '0', '1', 'Portfolio/index.html', 'Portfolio/{CID}.html', 'Portfolio/{Y}{M}/{ID}.html', '移动应用解决方案 TGVISON双晖传媒品牌机构官方网站 | 移动应用解决方案专家，交互设计，视觉设计，产品研发', '用户研究   交互设计   视觉设计   产品研发', '我们提供全方位多平台的移动应用解决方案', 'Portfolio', '2', '1300417178', '0', ',2,', '0'), ('31', '1', '首页客户logo', 'Index_ClientsLogo', '', '_self', 'MO003x', '0', '0', '', '', '', '', '', '', '', '20', '1374289568', '4', ',4,31,', '2'), ('4', '1', '图 集', '', '', '_self', 'MO003x', '0', '0', 'photo/index.html', 'photo/{CID}.html', 'photo/{Y}{M}/{ID}.html', '图片展示频道', '', '', '', '99', '1300417493', '0', ',4,', '0'), ('6', '1', 'Services', 'Services', '', '_self', 'MO001x', '0', '1', 'service/index.html', 'service/{CID}.html', 'service/{CID}-{ID}.html', 'Services', 'Services', 'Services', 'about_channel', '3', '1300417612', '0', ',6,', '0'), ('8', '1', 'Contact', '', '/#Contact', '_self', 'MO001x', '0', '1', '', '0', '', '', '', '', '', '5', '1300421995', '0', ',8,', '0'), ('23', '1', '网站界面', 'Web UI', '', '_self', 'MO001x', '0', '0', 'Portfolio/WebUI/index.html', 'Portfolio/WebUI/{CID}.html', 'Portfolio/WebUI/{Y}{M}/{ID}.html', 'WebUI', 'WebUI', 'WebUI', 'Portfolio', '20', '1373644197', '2', ',2,23,', '2'), ('11', '2', 'Home', '', '{home}', '_self', '0', '0', '1', '', '', '', '', '', '', '', '1', '1300422199', '0', '', ''), ('12', '2', 'News', '', '', '_self', 'MO001x', '0', '1', 'en/news/index.html', 'en/news/{CID}.html', 'en/news/{Y}{M}/{ID}.html', 'News Center', '', '', '', '2', '1300422318', '0', '', ''), ('13', '2', 'Shopping', '', '', '_self', 'MO002x', '0', '1', 'en/product/index.html', 'en/product/{CID}.html', 'en/product/{Y}{M}/{ID}.html', 'Shopping', '', '', '', '3', '1300422856', '0', '', ''), ('14', '2', 'Photo', '', '', '_self', 'MO003x', '0', '1', 'en/photo/index.html', 'en/photo/{CID}.html', 'en/photo/{Y}{M}/{ID}.html', 'Photo', '', '', '', '4', '1300425035', '0', '', ''), ('15', '2', 'Download', '', '', '_self', 'MO004x', '0', '1', 'en/download/index.html', 'en/download/{CID}.html', 'en/download/{Y}{M}/{ID}.html', 'Download', '', '', '', '5', '1300425066', '0', '', ''), ('16', '2', 'Services', '', '', '_self', 'MO001x', '0', '1', 'en/service/index.html', 'en/service/{CID}.html', 'en/service/{CID}-{ID}.html', 'Services', '', '', 'about_channel', '6', '1300425095', '0', '', ''), ('17', '2', 'Feedback', '', '{feedback}', '_self', '0', '0', '0', '', '', '', '', '', '', '', '7', '1331469822', '0', '', ''), ('18', '2', 'GuestBook', '', '{guestbook}', '_self', '0', '0', '0', '', '', '', '', '', '', '', '8', '1300421995', '0', '', ''), ('19', '2', 'Announcement', '', '', '_self', 'MO001x', '0', '0', 'en/annou/index.html', 'en/annou/{PID}-{CID}.html', 'annou/{ID}.html', 'Other Articles', '', '', 'about_channel', '9', '1300426388', '0', '', ''), ('20', '2', 'Focus Picture', '', '', '_self', 'MO003x', '0', '0', '', '', '', 'Focus Picture', '', '', '', '10', '1300452311', '0', '', ''), ('22', '1', '移动应用', 'Mobile APP', '', '_self', 'MO001x', '0', '0', 'Portfolio/MobileAPP/index.html', 'Portfolio/MobileAPP/{CID}.html', 'Portfolio/MobileAPP/{Y}{M}/{ID}.html', 'MobileAPP', '用户研究 交互设计 视觉设计 产品研发', '我们提供全方位多平台的移动应用解决方案', 'Portfolio', '20', '1373643737', '2', ',2,22,', '2'), ('21', '1', '首页广告', '', '', '_self', 'MO003x', '0', '0', '', '', '', '', '', '', '', '20', '1373564370', '4', ',4,21,', '2'), ('24', '1', '标志图标', 'Logo &amp; Icon', '', '_self', 'MO001x', '0', '0', 'Portfolio/LogoIcon/index.html', 'Portfolio/LogoIcon/{CID}.html', 'Portfolio/LogoIcon/{Y}{M}/{ID}.html', 'Logo &amp; Icon', 'Logo &amp; Icon', 'Logo &amp; Icon', 'Portfolio', '20', '1373644312', '2', ',2,24,', '2'), ('25', '1', 'About', 'About', '', '_self', 'MO001x', '0', '1', 'News/index.html', 'News/{CID}.html', 'News/{Y}{M}/{ID}.html', '双晖动态 TGVISON双晖传媒品牌机构官方网站 | 移动应用解决方案专家，交互设计，视觉设计，产品研发', 'News', '双晖动态 TGVISON双晖传媒品牌机构官方网站 | 移动应用解决方案专家，交互设计，视觉设计，产品研发', 'News', '4', '1373767844', '0', ',25,', '0'), ('26', '1', '双晖动态', '', '', '_self', 'MO001x', '0', '0', 'News/shuanghui/index.html', 'News/shuanghui/{CID}.html', 'News/shuanghui/{Y}{M}/{ID}.html', '双晖动态 TGVISON双晖传媒品牌机构官方网站 | 移动应用解决方案专家，交互设计，视觉设计，产品研发', '双晖动态 TGVISON双晖传媒品牌机构官方网站 | 移动应用解决方案专家，交互设计，视觉设计，产品研发', '双晖动态 TGVISON双晖传媒品牌机构官方网站 | 移动应用解决方案专家，交互设计，视觉设计，产品研发', 'News', '20', '1373768179', '25', ',25,26,', '2'), ('27', '1', '案例更新', '', '', '_self', 'MO001x', '0', '0', 'News/UpDate/index.html', 'News/UpDate/{CID}.html', 'News/UpDate/{Y}{M}/{ID}.html', '', '', '', 'News', '20', '1373768261', '25', ',25,27,', '2'), ('28', '1', '荣誉奖项', '', '', '_self', 'MO001x', '0', '0', '', '', '', '', '', '', '', '20', '1373790132', '26', ',25,26,28,', '3'), ('29', '1', '加入我们', 'Join Us', '', '_self', 'MO001x', '0', '0', 'Join/index.html', 'Join/{CID}.html', 'Join/{Y}{M}/{ID}.html', 'Join Us', 'Join Us', 'Join Us', 'Join', '20', '1373939084', '0', ',29,', '2'), ('30', '1', '最新动态', 'News', '', '_self', 'MO001x', '0', '0', 'News/index.html', 'News/{CID}.html', 'News/{Y}{M}/{ID}.html', '最新动态', '最新动态', '最新动态', 'News', '20', '1373939206', '26', ',25,26,30,', '3');
COMMIT;


DROP TABLE IF EXISTS `cms_download`;
CREATE TABLE `cms_download` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `channel` int(10) unsigned NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `color` varchar(7) NOT NULL,
  `bold` tinyint(1) unsigned NOT NULL DEFAULT '0',
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
  `mode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `mirror` text NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(50) NOT NULL,
  `comment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `commenttotal` int(10) unsigned NOT NULL DEFAULT '0',
  `agree` int(10) unsigned NOT NULL DEFAULT '0',
  `disagree` int(10) unsigned NOT NULL DEFAULT '0',
  `picture` text NOT NULL,
  `recom` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recycle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(255) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `money` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `buyuser` text NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `publisher` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cms_download_field`;
CREATE TABLE `cms_download_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cms_fields`;
CREATE TABLE `cms_fields` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `channelID` varchar(20) DEFAULT NULL,
  `fieldsname` varchar(20) DEFAULT NULL,
  `fields` varchar(50) DEFAULT '0',
  `fieldstype` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `fieldslong` smallint(5) DEFAULT '0',
  `selects` text,
  `fieldorder` int(10) DEFAULT '0',
  `issubmit` tinyint(1) DEFAULT '1',
  `lists` tinyint(1) DEFAULT '0',
  `fieldshow` tinyint(1) DEFAULT '1',
  `types` text,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;


BEGIN;
INSERT INTO `cms_fields` VALUES ('2', '2', 'Client', 'Client', 'varchar', '255', '', '0', '1', '1', '1', '');
COMMIT;


DROP TABLE IF EXISTS `cms_guestbook`;
CREATE TABLE `cms_guestbook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `nickname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `company` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `visible` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `reply` text NOT NULL,
  `replyadmin` varchar(30) NOT NULL,
  `replytime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cms_ipvisit`;
CREATE TABLE `cms_ipvisit` (
  `ip` varchar(15) NOT NULL,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `ip` (`ip`,`lang`,`type`,`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


BEGIN;
INSERT INTO `cms_ipvisit` VALUES ('unknown', '0', '3', '1373620258', '3');
COMMIT;


DROP TABLE IF EXISTS `cms_links`;
CREATE TABLE `cms_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `webname` varchar(50) NOT NULL,
  `color` varchar(7) NOT NULL,
  `weburl` varchar(100) NOT NULL,
  `logourl` varchar(100) NOT NULL,
  `webmaster` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `info` text NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;


BEGIN;
INSERT INTO `cms_links` VALUES ('2', '1', '0', 'TGVISION双晖传媒百度百科', '', 'http://baike.baidu.com/view/7852061.htm', '', '双晖传媒', '', 'TGVISION双晖传媒百度百科', '100', '1', '1373943554'), ('3', '1', '0', 'TGVISION双晖传媒新浪官方微博', '', 'http://e.weibo.com/tgvisionstudio?sudaref=tg-vision.com', '', '', 'http://e.weibo.com/tgvisionstudio?sudaref=tg-visio', 'TGVISION双晖传媒新浪官方微博', '100', '1', '1373943587'), ('4', '1', '0', 'TGVISION Dribbble', '', 'http://dribbble.com/tgvision', '', 'http://dribbble.com/tgvision', 'http://dribbble.com/tgvision', 'TGVISION Dribbble', '100', '1', '1373943620');
COMMIT;


DROP TABLE IF EXISTS `cms_logs`;
CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `pageurl` varchar(255) NOT NULL,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=165 DEFAULT CHARSET=utf8;


BEGIN;
INSERT INTO `cms_logs` VALUES ('1', '1', '[admin] 成功的登录后台。', 'http://localhost/admin/login.php', '1', 'admin', 'unknown', '1373357008'), ('2', '4', '删除选中的商品，操作成功(id:60)', 'http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=60', '1', 'admin', 'unknown', '1373363693'), ('3', '4', '删除选中的商品，操作成功(id:59)', 'http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=59', '1', 'admin', 'unknown', '1373363694'), ('4', '4', '删除选中的商品，操作成功(id:58)', 'http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=58', '1', 'admin', 'unknown', '1373363697'), ('5', '4', '删除选中的商品，操作成功(id:40)', 'http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=40', '1', 'admin', 'unknown', '1373363698'), ('6', '4', '删除选中的商品，操作成功(id:39)', 'http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=39', '1', 'admin', 'unknown', '1373363699'), ('7', '4', '删除选中的商品，操作成功(id:38)', 'http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=38', '1', 'admin', 'unknown', '1373363700'), ('8', '4', '删除选中的商品，操作成功(id:20)', 'http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=20', '1', 'admin', 'unknown', '1373363701'), ('9', '4', '删除选中的商品，操作成功(id:19)', 'http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=19', '1', 'admin', 'unknown', '1373363702'), ('10', '4', '删除选中的商品，操作成功(id:18)', 'http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=18', '1', 'admin', 'unknown', '1373363705'), ('11', '4', '删除选中的商品，操作成功(id:57)', 'http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=57', '1', 'admin', 'unknown', '1373363706'), ('12', '4', '彻底删除选中的商品，操作成功(id:60,59,58,40,39,38,20,19,18,57)', 'http://localhost/admin/product_manage.php?trash=1', '1', 'admin', 'unknown', '1373363716'), ('13', '4', '彻底删除选中的商品，操作成功(id:56,55,54,53,52,51,50,49,48,47,46,45,44,43,42,41,37,36,35,34)', 'http://localhost/admin/product_manage.php?trash=0', '1', 'admin', 'unknown', '1373363724'), ('14', '4', '彻底删除选中的商品，操作成功(id:33,32,31,30,29,28,27,26,25,24,23,22,21,17,16,15,14,13,12,11)', 'http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0', '1', 'admin', 'unknown', '1373363731'), ('15', '4', '彻底删除选中的商品，操作成功(id:10,9,8,7,6,5,4,3,2,1)', 'http://localhost/admin/product_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0', '1', 'admin', 'unknown', '1373363736'), ('16', '4', '彻底删除选中的资源，操作成功(id:11,10,9,8,7,6,5,4,3,2,1)', 'http://localhost/admin/download_manage.php', '1', 'admin', 'unknown', '1373363749'), ('17', '4', '彻底删除选中的图集，操作成功(id:10,9,4,2,3,1)', 'http://localhost/admin/picture_manage.php', '1', 'admin', 'unknown', '1373363756'), ('18', '4', '彻底删除选中的内容，操作成功(id:58,57,50,49,48,47,46,45,44,43,42,41,40,39,38,37,36,35,34,33)', 'http://localhost/admin/article_manage.php', '1', 'admin', 'unknown', '1373363766'), ('19', '4', '彻底删除选中的内容，操作成功(id:32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17,16,15,14,13)', 'http://localhost/admin/article_manage.php?channel=0&sort=0&page=1&trash=0&filter=0', '1', 'admin', 'unknown', '1373363770'), ('20', '4', '彻底删除选中的内容，操作成功(id:12,11,10,9,8,7,6,5,4,3,2,1,56,54,55,53,52,51)', 'http://localhost/admin/article_manage.php?channel=0&sort=0&page=1&trash=0&filter=0', '1', 'admin', 'unknown', '1373363774'), ('21', '1', '[admin] 成功的登录后台。', 'http://localhost/admin/login.php?goto=%2Fadmin%2Fchannel_manage.php', '1', 'admin', 'unknown', '1373441871'), ('22', '3', '修改后台菜单设置(操作成功)', 'http://localhost/admin/set_file.php', '1', 'admin', 'unknown', '1373441903'), ('23', '3', '修改后台菜单设置(操作成功)', 'http://localhost/admin/set_file.php', '1', 'admin', 'unknown', '1373441920'), ('24', '3', '修改后台菜单设置(操作成功)', 'http://localhost/admin/set_file.php', '1', 'admin', 'unknown', '1373441925'), ('25', '4', '删除选中的友情链接，操作成功(id:1)', 'http://localhost/admin/links_manage.php', '1', 'admin', 'unknown', '1373442008'), ('26', '1', '[admin] 成功的登录后台。', 'http://localhost/admin/login.php', '1', 'admin', 'unknown', '1373447474'), ('27', '2', '发布文章内容，操作成功(id:62)', 'http://localhost/admin/article_update.php?channel=2', '1', 'admin', 'unknown', '1373447842'), ('28', '1', '[admin] 成功的登录后台。', 'http://localhost/admin/login.php', '1', 'admin', 'unknown', '1373532287'), ('29', '3', '修改频道信息，操作成功(id:1)', 'http://localhost/admin/channel_update.php?id=1&UpChannelID=0', '1', 'admin', 'unknown', '1373532747'), ('30', '3', '修改频道信息，操作成功(id:2)', 'http://localhost/admin/channel_update.php?id=2&UpChannelID=0', '1', 'admin', 'unknown', '1373532830'), ('31', '3', '修改频道信息，操作成功(id:6)', 'http://localhost/admin/channel_update.php?id=6&UpChannelID=0', '1', 'admin', 'unknown', '1373537078'), ('32', '3', '修改频道信息，操作成功(id:3)', 'http://localhost/admin/channel_update.php?id=3&UpChannelID=0', '1', 'admin', 'unknown', '1373537088'), ('33', '3', '修改频道信息，操作成功(id:4)', 'http://localhost/admin/channel_update.php?id=4&UpChannelID=0', '1', 'admin', 'unknown', '1373537096'), ('34', '3', '修改频道信息，操作成功(id:6)', 'http://localhost/admin/channel_update.php?id=6&UpChannelID=0', '1', 'admin', 'unknown', '1373537116'), ('35', '3', '修改频道信息，操作成功(id:5)', 'http://localhost/admin/channel_update.php?id=5&UpChannelID=0', '1', 'admin', 'unknown', '1373537124'), ('36', '3', '修改频道信息，操作成功(id:8)', 'http://localhost/admin/channel_update.php?id=8&UpChannelID=0', '1', 'admin', 'unknown', '1373537191'), ('37', '3', '修改频道信息，操作成功(id:3)', 'http://localhost/admin/channel_update.php?id=3&UpChannelID=0', '1', 'admin', 'unknown', '1373537266'), ('38', '3', '修改频道信息，操作成功(id:3)', 'http://localhost/admin/channel_update.php?id=3&UpChannelID=0', '1', 'admin', 'unknown', '1373555326'), ('39', '3', '修改频道信息，操作成功(id:6)', 'http://localhost/admin/channel_update.php?id=6&UpChannelID=0', '1', 'admin', 'unknown', '1373555335'), ('40', '3', '修改频道信息，操作成功(id:2)', 'http://localhost/admin/channel_update.php?id=2&UpChannelID=0', '1', 'admin', 'unknown', '1373561891'), ('41', '3', '修改频道信息，操作成功(id:2)', 'http://localhost/admin/channel_update.php?id=2&UpChannelID=0', '1', 'admin', 'unknown', '1373561956'), ('42', '2', '添加新频道，操作成功(id:21)', 'http://localhost/admin/channel_update.php?UpChannelID=4', '1', 'admin', 'unknown', '1373564370'), ('43', '3', '修改频道信息，操作成功(id:4)', 'http://localhost/admin/channel_update.php?id=4&UpChannelID=0', '1', 'admin', 'unknown', '1373564386'), ('44', '3', '修改频道信息，操作成功(id:8)', 'http://localhost/admin/channel_update.php?id=8&UpChannelID=0', '1', 'admin', 'unknown', '1373564412'), ('45', '3', '修改频道信息，操作成功(id:8)', 'http://localhost/admin/channel_update.php?id=8&UpChannelID=0', '1', 'admin', 'unknown', '1373564489'), ('46', '3', '修改频道信息，操作成功(id:5)', 'http://localhost/admin/channel_update.php?id=5&UpChannelID=0', '1', 'admin', 'unknown', '1373564501'), ('47', '3', '修改频道信息，操作成功(id:21)', 'http://localhost/admin/channel_update.php?id=21&UpChannelID=4', '1', 'admin', 'unknown', '1373566929'), ('48', '2', '修改网站基本设置，操作成功', 'http://localhost/admin/set_web.php', '1', 'admin', 'unknown', '1373567243'), ('49', '3', '修改后台菜单设置(操作成功)', 'http://localhost/admin/set_file.php', '1', 'admin', 'unknown', '1373620423'), ('50', '3', '修改后台菜单设置(操作成功)', 'http://localhost/admin/set_file.php', '1', 'admin', 'unknown', '1373620464'), ('51', '4', '删除频道，操作成功(id:10)', 'http://localhost/admin/channel_manage.php?del=10', '1', 'admin', 'unknown', '1373620855'), ('52', '4', '删除频道，操作成功(id:9)', 'http://localhost/admin/channel_manage.php?del=9', '1', 'admin', 'unknown', '1373620886'), ('53', '1', '[admin] 成功的登录后台。', 'http://localhost/admin/login.php', '1', 'admin', 'unknown', '1373631261'), ('54', '2', '发布文章内容，操作成功(id:63)', 'http://localhost/admin/article_update.php?channel=6', '1', 'admin', 'unknown', '1373631578'), ('55', '4', '删除选中的内容，操作成功(id:63)', 'http://localhost/admin/article_manage.php?channel=0&sort=0&page=1&trash=0&filter=0&action=del&id=63', '1', 'admin', 'unknown', '1373631583'), ('56', '4', '彻底删除选中的内容，操作成功(id:63,61)', 'http://localhost/admin/article_manage.php?trash=1', '1', 'admin', 'unknown', '1373631590'), ('57', '4', '删除选中的图集，操作成功(id:12)', 'http://localhost/admin/picture_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=12', '1', 'admin', 'unknown', '1373631672'), ('58', '4', '彻底删除选中的图集，操作成功(id:12)', 'http://localhost/admin/picture_manage.php?trash=1', '1', 'admin', 'unknown', '1373631679'), ('59', '3', '修改图片处理参数(操作成功)', 'http://localhost/admin/set_picture.php', '1', 'admin', 'unknown', '1373640517'), ('60', '2', '发布新图集，操作成功(id:14)', 'http://localhost/admin/picture_update.php?channel=21', '1', 'admin', 'unknown', '1373641796'), ('61', '4', '删除频道，操作成功(id:5)', 'http://localhost/admin/channel_manage.php?del=5', '1', 'admin', 'unknown', '1373643210'), ('62', '2', '发布文章内容，操作成功(id:64)', 'http://localhost/admin/article_update.php?channel=2', '1', 'admin', 'unknown', '1373643557'), ('63', '4', '删除选中的内容，操作成功(id:64)', 'http://localhost/admin/article_manage.php?channel=0&sort=0&page=1&trash=0&filter=0&action=del&id=64', '1', 'admin', 'unknown', '1373643576'), ('64', '4', '彻底删除选中的内容，操作成功(id:64)', 'http://localhost/admin/article_manage.php?channel=0&sort=0&page=1&trash=1&filter=0&action=clear&id=64', '1', 'admin', 'unknown', '1373643580'), ('65', '2', '添加新频道，操作成功(id:22)', 'http://localhost/admin/channel_update.php?UpChannelID=2', '1', 'admin', 'unknown', '1373643737'), ('66', '3', '修改图片处理参数(操作成功)', 'http://localhost/admin/set_picture.php', '1', 'admin', 'unknown', '1373643903'), ('67', '2', '添加新频道，操作成功(id:23)', 'http://localhost/admin/channel_update.php?UpChannelID=2', '1', 'admin', 'unknown', '1373644197'), ('68', '3', '修改频道信息，操作成功(id:22)', 'http://localhost/admin/channel_update.php?id=22&UpChannelID=2', '1', 'admin', 'unknown', '1373644227'), ('69', '2', '添加新频道，操作成功(id:24)', 'http://localhost/admin/channel_update.php?UpChannelID=2', '1', 'admin', 'unknown', '1373644312'), ('70', '3', '修改图片处理参数(操作成功)', 'http://localhost/admin/set_picture.php', '1', 'admin', 'unknown', '1373645185'), ('71', '3', '修改文章内容，操作成功(id:62)', 'http://localhost/admin/article_update.php?id=62&channel=2', '1', 'admin', 'unknown', '1373645947'), ('72', '3', '修改文章内容，操作成功(id:62)', 'http://localhost/admin/article_update.php?id=62&channel=2', '1', 'admin', 'unknown', '1373646045'), ('73', '3', '修改频道信息，操作成功(id:2)', 'http://localhost/admin/channel_update.php?id=2&UpChannelID=0', '1', 'admin', 'unknown', '1373647600'), ('74', '3', '修改频道信息，操作成功(id:2)', 'http://localhost/admin/channel_update.php?id=2&UpChannelID=0', '1', 'admin', 'unknown', '1373647867'), ('75', '3', '修改频道信息，操作成功(id:3)', 'http://localhost/admin/channel_update.php?id=3&UpChannelID=0', '1', 'admin', 'unknown', '1373647900'), ('76', '4', '删除频道，操作成功(id:7)', 'http://localhost/admin/channel_manage.php?del=7', '1', 'admin', 'unknown', '1373647909'), ('77', '3', '修改后台菜单设置(操作成功)', 'http://localhost/admin/set_file.php', '1', 'admin', 'unknown', '1373648034'), ('78', '3', '修改后台菜单设置(操作成功)', 'http://localhost/admin/set_file.php', '1', 'admin', 'unknown', '1373648079'), ('79', '3', '修改文章内容，操作成功(id:62)', 'http://localhost/admin/article_update.php?id=62&channel=2', '1', 'admin', 'unknown', '1373648292'), ('80', '3', '修改文章内容，操作成功(id:62)', 'http://localhost/admin/article_update.php?id=62&channel=2', '1', 'admin', 'unknown', '1373648348'), ('81', '3', '将选中的内容设为草稿，操作成功(id:62)', 'http://localhost/admin/article_manage.php?channel=0&sort=0&page=1&trash=0&filter=0&action=unpublished&id=62', '1', 'admin', 'unknown', '1373679823'), ('82', '3', '发布选中的内容，操作成功(id:62)', 'http://localhost/admin/article_manage.php?channel=0&sort=0&page=1&trash=0&filter=0&action=published&id=62', '1', 'admin', 'unknown', '1373679829'), ('83', '3', '修改文章内容，操作成功(id:62)', 'http://localhost/admin/article_update.php?id=62&channel=2', '1', 'admin', 'unknown', '1373679922'), ('84', '3', '修改文章内容，操作成功(id:62)', 'http://localhost/admin/article_update.php?id=62&channel=2', '1', 'admin', 'unknown', '1373681289'), ('85', '3', '修改文章内容，操作成功(id:62)', 'http://localhost/admin/article_update.php?id=62&channel=2', '1', 'admin', 'unknown', '1373681299'), ('86', '3', '修改文章内容，操作成功(id:62)', 'http://localhost/admin/article_update.php?channel=23&id=62', '1', 'admin', 'unknown', '1373693554'), ('87', '3', '修改文章内容，操作成功(id:62)', 'http://localhost/admin/article_update.php?channel=23&id=62', '1', 'admin', 'unknown', '1373693578'), ('88', '3', '修改文章内容，操作成功(id:62)', 'http://localhost/admin/article_update.php?channel=23&id=62', '1', 'admin', 'unknown', '1373693750'), ('89', '3', '修改文章内容，操作成功(id:62)', 'http://localhost/admin/article_update.php?channel=23&id=62', '1', 'admin', 'unknown', '1373693895'), ('90', '3', '修改文章内容，操作成功(id:62)', 'http://localhost/admin/article_update.php?channel=22&id=62', '1', 'admin', 'unknown', '1373693921'), ('91', '2', '修改网站基本设置，操作成功', 'http://localhost/admin/set_web.php', '1', 'admin', 'unknown', '1373729182'), ('92', '3', '修改频道信息，操作成功(id:2)', 'http://localhost/admin/channel_update.php?id=2&UpChannelID=0', '1', 'admin', 'unknown', '1373732919'), ('93', '3', '修改频道信息，操作成功(id:2)', 'http://localhost/admin/channel_update.php?id=2&UpChannelID=0', '1', 'admin', 'unknown', '1373732950'), ('94', '2', '添加新频道，操作成功(id:25)', 'http://localhost/admin/channel_update.php', '1', 'admin', 'unknown', '1373767844'), ('95', '3', '修改频道信息，操作成功(id:25)', 'http://localhost/admin/channel_update.php?id=25&UpChannelID=0', '1', 'admin', 'unknown', '1373768063'), ('96', '2', '添加新频道，操作成功(id:26)', 'http://localhost/admin/channel_update.php?UpChannelID=25', '1', 'admin', 'unknown', '1373768179'), ('97', '3', '修改频道信息，操作成功(id:26)', 'http://localhost/admin/channel_update.php?id=26&UpChannelID=25', '1', 'admin', 'unknown', '1373768202'), ('98', '2', '添加新频道，操作成功(id:27)', 'http://localhost/admin/channel_update.php?UpChannelID=25', '1', 'admin', 'unknown', '1373768261'), ('99', '3', '修改频道信息，操作成功(id:25)', 'http://localhost/admin/channel_update.php?id=25&UpChannelID=0', '1', 'admin', 'unknown', '1373772322'), ('100', '3', '修改频道信息，操作成功(id:26)', 'http://localhost/admin/channel_update.php?id=26&UpChannelID=25', '1', 'admin', 'unknown', '1373772358'), ('101', '3', '修改文章内容，操作成功(id:62)', 'http://localhost/admin/article_update.php?id=62&channel=22', '1', 'admin', 'unknown', '1373774613'), ('102', '3', '修改文章内容，操作成功(id:62)', 'http://localhost/admin/article_update.php?id=62&channel=22', '1', 'admin', 'unknown', '1373783249'), ('103', '3', '修改文章内容，操作成功(id:62)', 'http://localhost/admin/article_update.php?id=62&channel=22', '1', 'admin', 'unknown', '1373784226'), ('104', '3', '修改文章内容，操作成功(id:62)', 'http://localhost/admin/article_update.php?id=62&channel=22', '1', 'admin', 'unknown', '1373784412'), ('105', '3', '修改文章内容，操作成功(id:62)', 'http://localhost/admin/article_update.php?id=62&channel=22', '1', 'admin', 'unknown', '1373786261'), ('106', '3', '修改文章内容，操作成功(id:62)', 'http://localhost/admin/article_update.php?id=62&channel=22', '1', 'admin', 'unknown', '1373786511'), ('107', '3', '修改频道信息，操作成功(id:22)', 'http://localhost/admin/channel_update.php?id=22&UpChannelID=2', '1', 'admin', 'unknown', '1373788913'), ('108', '3', '修改频道信息，操作成功(id:22)', 'http://localhost/admin/channel_update.php?id=22&UpChannelID=2', '1', 'admin', 'unknown', '1373788937'), ('109', '2', '添加新频道，操作成功(id:28)', 'http://localhost/admin/channel_update.php?UpChannelID=26', '1', 'admin', 'unknown', '1373790132'), ('110', '3', '修改频道信息，操作成功(id:27)', 'http://localhost/admin/channel_update.php?id=27&UpChannelID=25', '1', 'admin', 'unknown', '1373793780'), ('111', '3', '修改频道信息，操作成功(id:28)', 'http://localhost/admin/channel_update.php?id=28&UpChannelID=26', '1', 'admin', 'unknown', '1373793802'), ('112', '3', '修改后台菜单设置(操作成功)', 'http://localhost/admin/set_file.php', '1', 'admin', 'unknown', '1373794253'), ('113', '3', '修改后台菜单设置(操作成功)', 'http://localhost/admin/set_file.php', '1', 'admin', 'unknown', '1373794368'), ('114', '3', '修改后台菜单设置(操作成功)', 'http://localhost/admin/set_file.php', '1', 'admin', 'unknown', '1373794704'), ('115', '3', '修改后台菜单设置(操作成功)', 'http://localhost/admin/set_file.php', '1', 'admin', 'unknown', '1373794803'), ('116', '3', '修改频道信息，操作成功(id:22)', 'http://localhost/admin/channel_update.php?id=22&UpChannelID=2', '1', 'admin', 'unknown', '1373881926'), ('117', '3', '修改频道信息，操作成功(id:22)', 'http://localhost/admin/channel_update.php?id=22&UpChannelID=2', '1', 'admin', 'unknown', '1373882007'), ('118', '3', '修改频道信息，操作成功(id:22)', 'http://localhost/admin/channel_update.php?id=22&UpChannelID=2', '1', 'admin', 'unknown', '1373882026'), ('119', '3', '修改频道信息，操作成功(id:23)', 'http://localhost/admin/channel_update.php?id=23&UpChannelID=2', '1', 'admin', 'unknown', '1373882041'), ('120', '3', '修改频道信息，操作成功(id:24)', 'http://localhost/admin/channel_update.php?id=24&UpChannelID=2', '1', 'admin', 'unknown', '1373882066'), ('121', '3', '修改频道信息，操作成功(id:1)', 'http://localhost/admin/channel_update.php?id=1&UpChannelID=0', '1', 'admin', 'unknown', '1373882268'), ('122', '3', '修改频道信息，操作成功(id:2)', 'http://localhost/admin/channel_update.php?id=2&UpChannelID=0', '1', 'admin', 'unknown', '1373882278'), ('123', '3', '修改频道信息，操作成功(id:6)', 'http://localhost/admin/channel_update.php?id=6&UpChannelID=0', '1', 'admin', 'unknown', '1373882289'), ('124', '1', '[admin] 成功的登录后台。', 'http://localhost/admin/login.php', '1', 'admin', 'unknown', '1373938951'), ('125', '2', '添加新频道，操作成功(id:29)', 'http://localhost/admin/channel_update.php', '1', 'admin', 'unknown', '1373939084'), ('126', '2', '添加新频道，操作成功(id:30)', 'http://localhost/admin/channel_update.php?UpChannelID=26', '1', 'admin', 'unknown', '1373939206'), ('127', '3', '修改频道信息，操作成功(id:30)', 'http://localhost/admin/channel_update.php?id=30&UpChannelID=26', '1', 'admin', 'unknown', '1373939217'), ('128', '3', '修改频道信息，操作成功(id:26)', 'http://localhost/admin/channel_update.php?id=26&UpChannelID=25', '1', 'admin', 'unknown', '1373939245'), ('129', '2', '添加友情链接，操作成功(id:2)', 'http://localhost/admin/links_update.php', '1', 'admin', 'unknown', '1373943554'), ('130', '2', '添加友情链接，操作成功(id:3)', 'http://localhost/admin/links_update.php', '1', 'admin', 'unknown', '1373943587'), ('131', '2', '添加友情链接，操作成功(id:4)', 'http://localhost/admin/links_update.php', '1', 'admin', 'unknown', '1373943620'), ('132', '4', '删除频道，操作成功(id:3)', 'http://localhost/admin/channel_manage.php?del=3', '1', 'admin', 'unknown', '1373944649'), ('133', '3', '修改频道信息，操作成功(id:25)', 'http://localhost/admin/channel_update.php?id=25&UpChannelID=0', '1', 'admin', 'unknown', '1373944680'), ('134', '3', '修改频道信息，操作成功(id:25)', 'http://localhost/admin/channel_update.php?id=25&UpChannelID=0', '1', 'admin', 'unknown', '1373944689'), ('135', '2', '发布文章内容，操作成功(id:65)', 'http://localhost/admin/article_update.php?channel=25', '1', 'admin', 'unknown', '1373944959'), ('136', '3', '修改文章内容，操作成功(id:65)', 'http://localhost/admin/article_update.php?id=65&channel=25', '1', 'admin', 'unknown', '1373944993'), ('137', '3', '修改文章内容，操作成功(id:65)', 'http://localhost/admin/article_update.php?id=65&channel=25', '1', 'admin', 'unknown', '1373964932'), ('138', '1', '[admin] 成功的登录后台。', 'http://localhost/admin/login.php', '1', 'admin', 'unknown', '1374285767'), ('139', '2', '发布文章内容，操作成功(id:66)', 'http://localhost/admin/article_update.php?channel=22', '1', 'admin', 'unknown', '1374286068'), ('140', '3', '修改文章内容，操作成功(id:66)', 'http://localhost/admin/article_update.php?id=66&channel=22', '1', 'admin', 'unknown', '1374286144'), ('141', '3', '修改文章内容，操作成功(id:66)', 'http://localhost/admin/article_update.php?id=66&channel=22', '1', 'admin', 'unknown', '1374286362'), ('142', '3', '修改文章内容，操作成功(id:66)', 'http://localhost/admin/article_update.php?id=66&channel=22', '1', 'admin', 'unknown', '1374286427'), ('143', '3', '修改文章内容，操作成功(id:66)', 'http://localhost/admin/article_update.php?id=66&channel=22', '1', 'admin', 'unknown', '1374286558'), ('144', '3', '修改文章内容，操作成功(id:66)', 'http://localhost/admin/article_update.php?id=66&channel=22', '1', 'admin', 'unknown', '1374286579'), ('145', '3', '修改文章内容，操作成功(id:66)', 'http://localhost/admin/article_update.php?id=66&channel=22', '1', 'admin', 'unknown', '1374286730'), ('146', '3', '修改文章内容，操作成功(id:66)', 'http://localhost/admin/article_update.php?id=66&channel=22', '1', 'admin', 'unknown', '1374286754'), ('147', '4', '删除服务器附件，操作成功(Total:1)', 'http://localhost/admin/attachment_manage.php?view=1&dir1=article', '1', 'admin', 'unknown', '1374287661'), ('148', '4', '删除服务器附件，操作成功(Total:1)', 'http://localhost/admin/attachment_manage.php?view=1&dir1=article', '1', 'admin', 'unknown', '1374287687'), ('149', '4', '删除服务器附件，操作成功(Total:1)', 'http://localhost/admin/attachment_manage.php?view=1&dir1=article', '1', 'admin', 'unknown', '1374287692'), ('150', '2', '添加新频道，操作成功(id:31)', 'http://localhost/admin/channel_update.php?UpChannelID=4', '1', 'admin', 'unknown', '1374289568'), ('151', '3', '修改频道信息，操作成功(id:31)', 'http://localhost/admin/channel_update.php?id=31&UpChannelID=4', '1', 'admin', 'unknown', '1374289581'), ('152', '3', '修改频道信息，操作成功(id:31)', 'http://localhost/admin/channel_update.php?id=31&UpChannelID=4', '1', 'admin', 'unknown', '1374289652'), ('153', '3', '取消审核，操作成功(id:15)', 'http://localhost/admin/picture_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=unaudit&id=15', '1', 'admin', 'unknown', '1374290906'), ('154', '3', '审核选中的图集，操作成功(id:15)', 'http://localhost/admin/picture_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=audit&id=15', '1', 'admin', 'unknown', '1374290911'), ('155', '3', '修改图片集，操作成功(id:15)', 'http://localhost/admin/picture_update.php?id=15&channel=31', '1', 'admin', 'unknown', '1374301013'), ('156', '3', '修改图片集，操作成功(id:15)', 'http://localhost/admin/picture_update.php?id=15&channel=31', '1', 'admin', 'unknown', '1374301098'), ('157', '3', '修改图片集，操作成功(id:15)', 'http://localhost/admin/picture_update.php?id=15&channel=31', '1', 'admin', 'unknown', '1374301335'), ('158', '3', '修改图片集，操作成功(id:15)', 'http://localhost/admin/picture_update.php?id=15&channel=31', '1', 'admin', 'unknown', '1374301458'), ('159', '3', '修改图片集，操作成功(id:15)', 'http://localhost/admin/picture_update.php?id=15&channel=31', '1', 'admin', 'unknown', '1374309132'), ('160', '2', '发布文章内容，操作成功(id:67)', 'http://localhost/admin/article_update.php?channel=25', '1', 'admin', 'unknown', '1374309347'), ('161', '3', '修改文章内容，操作成功(id:67)', 'http://localhost/admin/article_update.php?id=67&channel=25', '1', 'admin', 'unknown', '1374309375'), ('162', '3', '修改文章内容，操作成功(id:67)', 'http://localhost/admin/article_update.php?id=67&channel=25', '1', 'admin', 'unknown', '1374309473'), ('163', '3', '修改文章内容，操作成功(id:67)', 'http://localhost/admin/article_update.php?id=67&channel=25', '1', 'admin', 'unknown', '1374309534'), ('164', '3', '修改文章内容，操作成功(id:67)', 'http://localhost/admin/article_update.php?id=67&channel=25', '1', 'admin', 'unknown', '1374309680');
COMMIT;


DROP TABLE IF EXISTS `cms_members`;
CREATE TABLE `cms_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `encryption` varchar(8) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `nickname` varchar(20) NOT NULL,
  `money` decimal(8,2) NOT NULL DEFAULT '0.00',
  `usemoney` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `scores` int(10) unsigned NOT NULL DEFAULT '0',
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `problem` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `companyweb` varchar(100) NOT NULL,
  `companyaddress` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `frequency` int(10) unsigned NOT NULL DEFAULT '0',
  `jointime` int(10) unsigned NOT NULL DEFAULT '0',
  `joinip` varchar(15) NOT NULL,
  `logintime` varchar(21) NOT NULL,
  `loginip` varchar(31) NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `effective` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cms_module`;
CREATE TABLE `cms_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modcode` varchar(6) NOT NULL,
  `modname` varchar(255) NOT NULL,
  `installpath` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `files` text NOT NULL,
  `develop` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `modcode` (`modcode`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;


BEGIN;
INSERT INTO `cms_module` VALUES ('1', 'MO001x', '文章内容', 'inc/install/pack/article/mo001x.zip', '1', 'article.php,list.php,view.php,{admin}/article_manage.php,{admin}/article_update.php,inc/language/frontend/chinese_simplified/article.lang.php,inc/language/frontend/chinese_simplified/list.lang.php,inc/language/frontend/chinese_simplified/view.lang.php,inc/language/frontend/english/article.lang.php,inc/language/frontend/english/list.lang.php,inc/language/frontend/english/view.lang.php,inc/language/manage/chinese_simplified/article_manage.lang.php,inc/language/manage/chinese_simplified/article_update.lang.php,inc/templates/manage/article_manage.dwt,inc/templates/manage/article_update.dwt,inc/lib/article.lib.php,inc/uploads/article', 'MYCMS官方制作', '文章内容模块', '1301642556'), ('2', 'MO002x', '产品(商品)', 'inc/install/pack/product/mo002x.zip', '1', 'product.php,category.php,detail.php,cart.php,member/checkout.php,{admin}/product_manage.php,{admin}/product_update.php,{admin}/shop_order_manage.php,{admin}/shop_order_update.php,inc/language/frontend/chinese_simplified/product.lang.php,inc/language/frontend/chinese_simplified/category.lang.php,inc/language/frontend/chinese_simplified/detail.lang.php,inc/language/frontend/chinese_simplified/cart.lang.php,inc/language/frontend/chinese_simplified/checkout.lang.php,inc/language/frontend/english/product.lang.php,inc/language/frontend/english/category.lang.php,inc/language/frontend/english/detail.lang.php,inc/language/frontend/english/cart.lang.php,inc/language/frontend/english/checkout.lang.php,inc/language/manage/chinese_simplified/product_manage.lang.php,inc/language/manage/chinese_simplified/product_update.lang.php,inc/language/manage/chinese_simplified/shop_order_manage.lang.php,inc/language/manage/chinese_simplified/shop_order_update.lang.php,inc/templates/manage/product_manage.dwt,inc/templates/manage/product_update.dwt,inc/templates/manage/shop_order_manage.dwt,inc/templates/manage/shop_order_update.dwt,inc/lib/product.lib.php,inc/uploads/product,inc/script/shopping.js', 'MYCMS官方制作', '商品（产品功能模块）', '1301642676'), ('3', 'MO003x', '图片集', 'inc/install/pack/photo/mo003x.zip', '1', 'photo.php,slide.php,show.php,{admin}/picture_manage.php,{admin}/picture_update.php,inc/language/frontend/chinese_simplified/photo.lang.php,inc/language/frontend/chinese_simplified/slide.lang.php,inc/language/frontend/chinese_simplified/show.lang.php,inc/language/frontend/english/photo.lang.php,inc/language/frontend/english/slide.lang.php,inc/language/frontend/english/show.lang.php,inc/language/manage/chinese_simplified/picture_manage.lang.php,inc/language/manage/chinese_simplified/picture_update.lang.php,inc/templates/manage/picture_manage.dwt,inc/templates/manage/picture_update.dwt,inc/lib/photo.lib.php,inc/uploads/picture,inc/script/hd_pics.js', 'MYCMS官方制作', '图片集模块', '1301642673'), ('4', 'MO004x', '软件下载', 'inc/install/pack/download/mo004x.zip', '1', 'download.php,soft.php,down.php,{admin}/download_manage.php,{admin}/download_update.php,inc/language/frontend/chinese_simplified/download.lang.php,inc/language/frontend/chinese_simplified/soft.lang.php,inc/language/frontend/chinese_simplified/down.lang.php,inc/language/frontend/english/download.lang.php,inc/language/frontend/english/soft.lang.php,inc/language/frontend/english/down.lang.php,inc/language/manage/chinese_simplified/download_manage.lang.php,inc/language/manage/chinese_simplified/download_update.lang.php,inc/templates/manage/download_manage.dwt,inc/templates/manage/download_update.dwt,inc/lib/download.lib.php,inc/uploads/download', 'MYCMS官方制作', '软件下载模块', '1301642640'), ('5', 'PL005x', '友情链接', 'inc/install/pack/links/pl005x.zip', '2', 'links.php,{admin}/links_manage.php,{admin}/links_update.php,inc/language/frontend/chinese_simplified/links.lang.php,inc/language/frontend/english/links.lang.php,inc/language/manage/chinese_simplified/links_manage.lang.php,inc/language/manage/chinese_simplified/links_update.lang.php,inc/templates/manage/links_manage.dwt,inc/templates/manage/links_update.dwt,inc/uploads/links', 'MYCMS官方制作', '友情链接（合作伙伴）插件', '1301642650'), ('6', 'PL006x', '在线留言', 'inc/install/pack/guestbook/pl006x.zip', '2', 'guestbook.php,{admin}/guestbook_manage.php,{admin}/guestbook_reply.php,inc/language/frontend/chinese_simplified/guestbook.lang.php,inc/language/frontend/english/guestbook.lang.php,inc/language/manage/chinese_simplified/guestbook_manage.lang.php,inc/language/manage/chinese_simplified/guestbook_reply.lang.php,inc/templates/manage/guestbook_manage.dwt,inc/templates/manage/guestbook_reply.dwt', 'MYCMS官方制作', '在线留言（在线反馈）插件', '1301642643'), ('7', 'PL007x', '在线反馈', 'inc/install/pack/feedback/pl007x.zip	', '2', 'feedback.php,inc/language/frontend/chinese_simplified/feedback.lang.php,inc/language/frontend/english/feedback.lang.php', 'MYCMS官方制作', '在线反馈、在线订单、询盘、在线邮件', '0'), ('8', 'PL008x', '广告插件', 'inc/install/pack/ad/pl008x.zip', '2', '{admin}/ad_manage.php,{admin}/ad_update.php,inc/language/manage/chinese_simplified/ad_manage.lang.php,inc/language/manage/chinese_simplified/ad_update.lang.php,inc/templates/manage/ad_manage.dwt,inc/templates/manage/ad_update.dwt,inc/lib/ad.lib.php,inc/uploads/ad', 'MYCMS官方制作', '广告管理插件', '1301642552'), ('9', 'PL009x', '支付接口', 'inc/install/pack/payment/pl009x.zip', '2', 'member/recharge.php,inc/plugins/payment,{admin}/shop_payment.php,inc/language/frontend/chinese_simplified/recharge.lang.php,inc/language/frontend/chinese_simplified/payment_return.lang.php,inc/language/frontend/english/recharge.lang.php,inc/language/frontend/english/payment_return.lang.php,inc/language/manage/chinese_simplified/shop_payment.lang.php,inc/templates/manage/shop_payment.dwt,inc/config/payment.config.php', 'MYCMS官方制作', '电子商务支付接口', '1301642669'), ('10', 'PL010x', '物流配送', 'inc/install/pack/shipping/pl010x.zip', '2', '{admin}/shop_shipping.php,inc/language/manage/chinese_simplified/shop_shipping.lang.php,inc/templates/manage/shop_shipping.dwt', 'MYCMS官方制作', '物流配送方式管理插件', '1301642679');
COMMIT;


DROP TABLE IF EXISTS `cms_order`;
CREATE TABLE `cms_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `oid` varchar(20) NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `pid` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `attribute` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `dispatching` int(6) unsigned NOT NULL DEFAULT '0',
  `waybill` varchar(100) NOT NULL,
  `freight` decimal(8,2) NOT NULL DEFAULT '0.00',
  `customer` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vouch` tinyint(1) unsigned NOT NULL DEFAULT '0',
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
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cms_picture`;
CREATE TABLE `cms_picture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `channel` int(10) unsigned NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `brief` varchar(50) NOT NULL,
  `color` varchar(7) NOT NULL,
  `bold` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `aid` varchar(30) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `sourceurl` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(50) NOT NULL,
  `comment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `commenttotal` int(10) unsigned NOT NULL DEFAULT '0',
  `picture` text NOT NULL,
  `description` mediumtext NOT NULL,
  `recom` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recycle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(255) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `money` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `buyuser` text NOT NULL,
  `agree` int(10) unsigned NOT NULL DEFAULT '0',
  `disagree` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `publisher` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;


BEGIN;
INSERT INTO `cms_picture` VALUES ('5', '2', '20', ',31,', 'Home Page（650*260px）', '', '', '0', 'home_focus', '', '', '', '', '', '', '', '1', '0', 'inc/uploads/picture/demo_18.jpg,inc/uploads/picture/demo_19.jpg', 'http://www.el-ad.com{I~N!T@E#R$V%A^L}http://www.el-ad.com', '0', '1', '0', '0', '', '21', '0.00', '0', '', '0', '0', '0', 'admin', '1292342400'), ('6', '2', '20', ',31,', 'News Channel（278*248px）', '', '', '0', 'news_focus', '', '', '', '', '', '', '', '1', '0', 'inc/uploads/picture/demo_01.jpg,inc/uploads/picture/demo_02.jpg', 'view.php?id=5\r\nGlobal Entrepreneur{I~N!T@E#R$V%A^L}view.php?id=6\r\nWatch Movies Online', '0', '1', '0', '0', '', '182', '0.00', '0', '', '0', '0', '0', 'admin', '1298217600'), ('7', '2', '20', ',31,', 'Goods（278*348px）', '', '', '0', 'product_focus', '', '', '', '', '', '', '', '1', '0', 'inc/uploads/picture/demo_03.jpg,inc/uploads/picture/demo_04.jpg', 'detail.php?id=1\r\nApple ComputerMB293CH/A{I~N!T@E#R$V%A^L}detail.php?id=2\r\nDigital Camera', '0', '1', '0', '0', '', '32', '0.00', '0', '', '0', '0', '0', 'admin', '1293984000'), ('8', '2', '20', ',31,', 'Photo（525*225px）', '', '', '0', 'photo_focus', '', '', '', '', '', '', '', '1', '0', 'inc/uploads/picture/demo_14.jpg,inc/uploads/picture/demo_15.jpg,inc/uploads/picture/demo_16.jpg,inc/uploads/picture/demo_17.jpg', 'show.php?id=9\r\nStar Photo{I~N!T@E#R$V%A^L}show.php?id=10\r\nStar photo{I~N!T@E#R$V%A^L}show.php?id=9\r\nStar photo\r\n{I~N!T@E#R$V%A^L}show.php?id=10\r\nStar photo', '0', '1', '0', '0', '', '32', '0.00', '0', '', '0', '0', '0', 'admin', '1298563200'), ('15', '1', '31', '', '首页客户logo', '首页客户logo', '', '0', 'Index_clients', '', '', '', '', 'clients', 'clients', '', '1', '0', 'inc/uploads/picture/201307/20130720113005571.gif,inc/uploads/picture/201307/20130720113014450.gif,inc/uploads/picture/201307/20130720135022612.gif,inc/uploads/picture/201307/20130720141813559.gif,inc/uploads/picture/201307/20130720142053532.gif,inc/uploads/picture/201307/20130720142101643.gif,inc/uploads/picture/201307/20130720142205314.gif,inc/uploads/picture/201307/20130720142121133.gif,inc/uploads/picture/201307/20130720142128545.gif,inc/uploads/picture/201307/20130720142136703.gif,inc/uploads/picture/201307/20130720163122311.gif,inc/uploads/picture/201307/20130720163128079.gif,inc/uploads/picture/201307/20130720163134047.gif,inc/uploads/picture/201307/20130720163140372.gif,inc/uploads/picture/201307/20130720163148933.gif,inc/uploads/picture/201307/20130720163155252.gif,inc/uploads/picture/201307/20130720163200159.gif,inc/uploads/picture/201307/20130720163206548.gif', '中国移动通信{I~N!T@E#R$V%A^L}天翼{I~N!T@E#R$V%A^L}百度{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}', '0', '1', '0', '0', '', '322', '0.00', '0', '', '0', '0', '0', 'admin', '1374249600'), ('11', '1', '21', '', '首页广告1', '首页广告1', '', '0', '', '', '', '', '/view.php?id=62', '首页广告1', '', '', '1', '0', 'inc/uploads/picture/201307/20130712224851095.jpg,inc/uploads/picture/201307/20130712224911915.png,inc/uploads/picture/201307/20130712224916384.png', '首页广告1{I~N!T@E#R$V%A^L}首页广告1{I~N!T@E#R$V%A^L}首页广告1', '0', '1', '0', '0', '', '414', '0.00', '0', '', '0', '0', '0', 'admin', '1373558400'), ('13', '1', '21', '', '首页广告2', '首页广告2', '', '0', '', '', '', '', '', '', '', '', '1', '0', 'inc/uploads/picture/201307/20130712225549198.gif,inc/uploads/picture/201307/20130712225633359.png,inc/uploads/picture/201307/20130712225639834.png', '{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}', '0', '1', '0', '0', '', '14', '0.00', '0', '', '0', '0', '0', 'admin', '1373558400'), ('14', '1', '21', '', '首页广告3', '', '', '0', '', '', '', '', '', '', '', '', '1', '0', 'inc/uploads/picture/201307/20130712230928545.gif,inc/uploads/picture/201307/20130712230945630.png,inc/uploads/picture/201307/20130712230949288.png', '{I~N!T@E#R$V%A^L}{I~N!T@E#R$V%A^L}', '0', '1', '0', '0', '', '443', '0.00', '0', '', '0', '0', '0', 'admin', '1373558400');
COMMIT;


DROP TABLE IF EXISTS `cms_picture_field`;
CREATE TABLE `cms_picture_field` (
  `id` varchar(45) NOT NULL,
  `aid` mediumint(8) unsigned DEFAULT '0',
  `body` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


BEGIN;
INSERT INTO `cms_picture_field` VALUES ('', '14', '');
COMMIT;


DROP TABLE IF EXISTS `cms_product`;
CREATE TABLE `cms_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `channel` int(10) unsigned NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `brief` varchar(50) NOT NULL,
  `color` varchar(7) NOT NULL,
  `bold` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `virtual` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `market` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `units` varchar(20) NOT NULL,
  `inventory` int(12) unsigned NOT NULL DEFAULT '0',
  `sales` int(12) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `introduction` text NOT NULL,
  `picture` text NOT NULL,
  `page` int(5) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `coding` varchar(50) NOT NULL,
  `speci` varchar(50) NOT NULL,
  `optional` varchar(255) NOT NULL,
  `template` varchar(50) NOT NULL,
  `comment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `commenttotal` int(10) unsigned NOT NULL DEFAULT '0',
  `agree` int(10) unsigned NOT NULL DEFAULT '0',
  `disagree` int(10) unsigned NOT NULL DEFAULT '0',
  `recom` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recycle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(255) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `favorite` int(10) unsigned NOT NULL DEFAULT '0',
  `money` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `buyuser` text NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `publisher` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cms_product_field`;
CREATE TABLE `cms_product_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cms_rank`;
CREATE TABLE `cms_rank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rankname` text NOT NULL,
  `discount` float unsigned NOT NULL DEFAULT '10',
  `scores` int(10) unsigned NOT NULL DEFAULT '0',
  `money` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `auto` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;


BEGIN;
INSERT INTO `cms_rank` VALUES ('1', '注册会员,Ordinary', '10', '0', '0.00', '0', '1'), ('2', '中级会员,Intermediate', '10', '200', '0.00', '1', '1'), ('3', '高级会员,Senior Member', '10', '20000', '0.00', '1', '1'), ('4', 'VIP会员,VIP', '10', '0', '1000.00', '0', '1'), ('5', '代理商,Agents', '8.5', '0', '10000.00', '0', '1');
COMMIT;


DROP TABLE IF EXISTS `cms_recruitment`;
CREATE TABLE `cms_recruitment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bid` int(11) NOT NULL,
  `experience` mediumtext NOT NULL,
  `properties` mediumtext NOT NULL,
  `degree` mediumtext NOT NULL,
  `number` mediumtext NOT NULL,
  `recommend` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


BEGIN;
INSERT INTO `cms_recruitment` VALUES ('1', '11', '3年以上', '全职', '本科以上', '5', '<dl style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; border-style: initial; border-color: initial; vertical-align: baseline; text-align: left; border-style: initial; border-color: initial; background-color: rgb(255, 255, 255); \"><dd style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; border-style: initial; border-color: initial; vertical-align: baseline; border-style: initial; border-color: initial; float: left; width: 650px; font: normal normal normal 12px/24px simsun; word-break: break-all; word-wrap: break-word; \">1、有一年以上php+mysql编程开发经验，精通PHP+MySQL网站编程，熟悉面向对象的开发方式，熟悉在linux环境下配置&nbsp;php+mysql的运行环境；&nbsp;&nbsp;<br />2、具备较强的程序调试能力与程序故障分析能力&nbsp;；&nbsp;<br />3、熟悉Ajax，DIV+CSS，html，javascript等相关Web技术，熟悉至少一种目前主流的编程框架；&nbsp;<br />4、具有优良的编程风格和习惯，富于团队精神和敬业精神；&nbsp;<br />5、沟通能力强，能承受工作压力。&nbsp;<br /><br /></dd></dl><div class=\"explain\" style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; vertical-align: baseline; text-align: left; float: left; width: 650px; height: 30px; background-color: rgb(255, 255, 255); \"><p style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 30px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; border-style: initial; border-color: initial; vertical-align: baseline; border-style: initial; border-color: initial; font: normal normal normal 12px/30px simsun; \">请发简历，写明工作经历，薪资待遇要求。</p></div>');
COMMIT;


DROP TABLE IF EXISTS `cms_recruitment_field`;
CREATE TABLE `cms_recruitment_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext NOT NULL,
  PRIMARY KEY (`aid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cms_shipping`;
CREATE TABLE `cms_shipping` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `title` varchar(100) NOT NULL,
  `freight` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `topay` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `insure` float unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  `enable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;


BEGIN;
INSERT INTO `cms_shipping` VALUES ('1', '1', '中国邮政EMS', '35.00', '0', '0', '中国邮政特快专递服务', '1');
COMMIT;


DROP TABLE IF EXISTS `cms_tag`;
CREATE TABLE `cms_tag` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `title` varchar(100) NOT NULL,
  `module` varchar(6) NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `total` int(10) unsigned NOT NULL DEFAULT '0',
  `firsttime` int(10) unsigned NOT NULL DEFAULT '0',
  `lasttime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `admin_update` (`lang`,`title`,`module`)
) ENGINE=MyISAM AUTO_INCREMENT=122 DEFAULT CHARSET=utf8;


BEGIN;
INSERT INTO `cms_tag` VALUES ('121', '1', '我们的环境', 'MO001x', '0', '1', '1374309347', '1374309347'), ('119', '1', 'About Us', 'MO001x', '0', '1', '1373944959', '1373944959'), ('118', '1', 'Quick Car APP', 'MO001x', '0', '1', '1373645947', '1373645947'), ('120', '1', '《世界》杂志APP', 'MO001x', '0', '1', '1374286068', '1374286068');
COMMIT;


DROP TABLE IF EXISTS `cms_transaction`;
CREATE TABLE `cms_transaction` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oid` varchar(20) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `result` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `info` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


DROP TABLE IF EXISTS `cms_website`;
CREATE TABLE `cms_website` (
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
  PRIMARY KEY (`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;


BEGIN;
INSERT INTO `cms_website` VALUES ('1', '中文站', 'chinese_simplified', 'default', 'html/index.html', 'TGVISON双晖传媒品牌机构官方网站 | 移动应用解决方案专家，交互设计，视觉设计，产品研发', 'inc/uploads/other/201307/20130712022720449.jpg', '', '', 'Copyright © 2008-2011 MYCMS. All Rights Reserved.', 'yourname@example.com', '123456789', 'yourname@msn.com', '020 - 88835256', '020 - 75863382', '上海市浦东新区川沙路 352-82 号'), ('2', 'English', 'english', 'default', 'html/index-en.html', 'My Website', 'inc/images/logo.png', '', '', 'Copyright © 2008-2011 MYCMS. All Rights Reserved.', 'myname@example.com', '987654321', 'myname@msn.com', '0754 - 58746632', '0786 - 65879651', 'Floor 14, Huiyin Plaza North building, No. 2018, Huashan Road, Shanghai.');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
