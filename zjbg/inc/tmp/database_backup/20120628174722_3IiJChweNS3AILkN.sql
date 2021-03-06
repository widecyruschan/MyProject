/* This file is created by MySQLReback 2012-06-28 17:47:23 */
 /* 创建表结构 `cms_ad`  */
 DROP TABLE IF EXISTS `cms_ad`;/* MySQLReback Separation */ CREATE TABLE `cms_ad` (
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
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_ad` */
 INSERT INTO `cms_ad` VALUES ('1','1','weather','天气调用（新浪网提供，有时会变更URL）','http://localhost','<div style=\"padding:5px 0 0 0;\">
<iframe width=\"150\" height=\"20\" frameborder=\"0\" marginheight=\"0\" marginwidth=\"0\" scrolling=\"no\" src=\"http://news.sina.com.cn/iframe/2010/0820/564.html\"></iframe>
</div>','1','1','0','1292125080','1292125200','','0','1','1292121025'),('2','1','weather','天气调用（中国天气网提供、不稳定、可选用）','http://localhost','<div style=\"padding:3px 0 0 18px; width:180px; text-align:center;\"><iframe src=\"http://m.weather.com.cn/m/pn7/weather.htm\" width=\"195\" height=\"20\" marginwidth=\"0\" marginheight=\"0\" hspace=\"0\" vspace=\"0\" frameborder=\"0\" scrolling=\"no\"></iframe></div>','1','0','0','1292121086','1294713086','','0','0','1292121248'),('3','1','header','网站头部通用广告位（450*75px）','#','<img src=\"inc/uploads/ad/ad_header1.png\" width=\"450\" height=\"75\" border=\"0\" />','1','0','0','1292126285','1294718285','','0','1','1292127404'),('4','1','home_2','首页中部通栏广告（930*100px）','http://www.MYCMS.com','<a target=\"_blank\" href=\"app.php?a=ad&id=12\"><img src=\"inc/uploads/ad/930x100.jpg\" width=\"930\" height=\"100\" alt=\"\" title=\"\" border=\"0\" /></a>','1','1','0','1300428521','1303020521','','0','1','1300428557'),('5','1','home_1','首页左侧广告1（278*110px）','http://www.MYCMS.com','<a target=\"_blank\" href=\"app.php?a=ad&id=11\"><img src=\"inc/uploads/ad/280x108.jpg\" width=\"278\" height=\"100\" alt=\"\" title=\"\" border=\"0\" /></a>','1','1','0','1300270032','1302862032','','0','1','1300270106'),('6','1','product_2','商品频道中部通栏广告（930*100px）','http://#','<a target=\"_blank\" href=\"app.php?a=ad&id=5\"><img src=\"inc/uploads/ad/930x100.jpg\" width=\"930\" height=\"100\" border=\"0\" /></a>','1','0','0','1294465474','1297057474','','0','1','1294465539'),('7','1','product_1','商品频道左侧广告（278*126px）','http://#','<a target=\"_blank\" href=\"app.php?a=ad&id=6\"><img src=\"inc/uploads/ad/280x108.jpg\" width=\"278\" height=\"118\" alt=\"\" title=\"\" border=\"0\" /></a>','1','0','0','1294464764','1297056764','','0','1','1294464861'),('8','1','product_3','商品频道右侧广告（278*218px）','http://www.MYCMS.com','<a target=\"_blank\" href=\"app.php?a=ad&id=7\"><img src=\"inc/uploads/ad/280x220.jpg\" width=\"278\" height=\"218\" border=\"0\" /></a>','1','0','0','1294490859','1297082859','','0','1','1294491450'),('9','1','article_1','资讯频道右侧广告1（276*108px）','http://www.MYCMS.com','<a target=\"_blank\" href=\"app.php?a=ad&id=8\"><img src=\"inc/uploads/ad/280x112.jpg\" width=\"276\" height=\"108\" border=\"0\" /></a>','1','4','0','1298371686','1300963686','','0','1','1298371765'),('10','1','article_2','资讯频道右侧广告2（276*108px）','http://www.qq.com','<a target=\"_blank\" href=\"app.php?a=ad&id=9\"><img src=\"inc/uploads/ad/280x112_2.jpg\" width=\"276\" height=\"108\" border=\"0\" /></a>','1','2','0','1298372352','1300964352','','0','1','1298372376'),('11','1','photo_banner','图片频道中部通栏广告（930*100px）','http://www.MYCMS.com','<a target=\"_blank\" href=\"app.php?a=ad&id=10\"><img src=\"inc/uploads/ad/930x100.jpg\" width=\"930\" height=\"100\" border=\"0\" /></a>','1','0','0','1298604428','1301196428','','0','1','1298604478'),('12','1','search_right','搜索页右侧广告（当搜索结果满一页时显示）','http://#','<a href=\"http://www.MYCMS.com\">MYCMS 强劲站内搜索系统更新</a><br />
MYCMS 站内搜索简单方便。您只需要在搜索框内输入需要查询的内容，敲回车键，或者鼠标点击搜索框右侧的搜索按钮，就可以得到最符合查询需求的网页内容。站内搜索，就是这么简单！
全面支持多字词空格间隔搜索。输入多个词语搜索（不同字词之间用一个空格隔开），可以获得更精确的搜索结果。
<br />
<br />
<a href=\"http://www.MYCMS.com\">MYCMS 商业授权版</a><br />
新增在线充值、在线支付、订购、订单管理等20多项商业性质的功能和模块，无限语言扩充，一对一售后技术服务，专业、高效支持1000万级数据量，全开方性接口易扩展、更方便二次开发。','1','1','0','1292850938','1295442938','','0','1','1292850983'),('13','2','weather','天气调用（新浪网提供，有时会变更URL）','http://localhost','<div style=\"padding:10px 0 0 0;\">
<iframe width=\"150\" height=\"20\" frameborder=\"0\" marginheight=\"0\" marginwidth=\"0\" scrolling=\"no\" src=\"http://news.sina.com.cn/iframe/2010/0820/564.html\"></iframe>
</div>','1','0','0','1292125080','1292125200','','0','1','1292121025');/* MySQLReback Separation */
 /* 插入数据 `cms_ad` */
 INSERT INTO `cms_ad` VALUES ('14','2','weather','天气调用（中国天气网提供、不稳定、可选用）','http://localhost','<div style=\"padding:3px 0 0 18px; width:180px; text-align:center;\"><iframe src=\"http://m.weather.com.cn/m/pn7/weather.htm\" width=\"195\" height=\"20\" marginwidth=\"0\" marginheight=\"0\" hspace=\"0\" vspace=\"0\" frameborder=\"0\" scrolling=\"no\"></iframe></div>','1','0','0','1292121086','1294713086','','0','0','1292121248');/* MySQLReback Separation */
 /* 插入数据 `cms_ad` */
 INSERT INTO `cms_ad` VALUES ('15','2','header','网站头部通用广告位（450*75px）','#','<img src=\"inc/uploads/ad/ad_header2.png\" width=\"450\" height=\"75\" border=\"0\" />','1','0','0','1292126285','1294718285','','0','1','1292127404'),('16','2','home_2','首页中部通栏广告（930*100px）','http://www.MYCMS.com','<a target=\"_blank\" href=\"app.php?a=ad&id=12\"><img src=\"inc/uploads/ad/930x100.jpg\" width=\"930\" height=\"100\" alt=\"\" title=\"\" border=\"0\" /></a>','1','1','0','1300428521','1303020521','','0','1','1300428557'),('17','2','home_1','首页左侧广告1（278*110px）','http://www.MYCMS.com','<a target=\"_blank\" href=\"app.php?a=ad&id=11\"><img src=\"inc/uploads/ad/280x108.jpg\" width=\"278\" height=\"100\" alt=\"\" title=\"\" border=\"0\" /></a>','1','1','0','1300270032','1302862032','','0','1','1300270106'),('18','2','product_2','商品频道中部通栏广告（930*100px）','http://#','<a target=\"_blank\" href=\"app.php?a=ad&id=5\"><img src=\"inc/uploads/ad/930x100.jpg\" width=\"930\" height=\"100\" border=\"0\" /></a>','1','0','0','1294465474','1297057474','','0','1','1294465539'),('19','2','product_1','商品频道左侧广告（278*126px）','http://#','<a target=\"_blank\" href=\"app.php?a=ad&id=6\"><img src=\"inc/uploads/ad/280x108.jpg\" width=\"278\" height=\"118\" alt=\"\" title=\"\" border=\"0\" /></a>','1','0','0','1294464764','1297056764','','0','1','1294464861'),('20','2','product_3','商品频道右侧广告（278*218px）','http://www.MYCMS.com','<a target=\"_blank\" href=\"app.php?a=ad&id=7\"><img src=\"inc/uploads/ad/280x220.jpg\" width=\"278\" height=\"218\" border=\"0\" /></a>','1','0','0','1294490859','1297082859','','0','1','1294491450'),('21','2','article_1','资讯频道右侧广告1（276*108px）','http://www.MYCMS.com','<a target=\"_blank\" href=\"app.php?a=ad&id=8\"><img src=\"inc/uploads/ad/280x112.jpg\" width=\"276\" height=\"108\" border=\"0\" /></a>','1','4','0','1298371686','1300963686','','0','1','1298371765'),('22','2','article_2','资讯频道右侧广告2（276*108px）','http://www.qq.com','<a target=\"_blank\" href=\"app.php?a=ad&id=9\"><img src=\"inc/uploads/ad/280x112_2.jpg\" width=\"276\" height=\"108\" border=\"0\" /></a>','1','2','0','1298372352','1300964352','','0','1','1298372376'),('23','2','photo_banner','图片频道中部通栏广告（930*100px）','http://www.MYCMS.com','<a target=\"_blank\" href=\"app.php?a=ad&id=10\"><img src=\"inc/uploads/ad/930x100.jpg\" width=\"930\" height=\"100\" border=\"0\" /></a>','1','0','0','1298604428','1301196428','','0','1','1298604478'),('24','2','search_right','搜索页右侧广告（当搜索结果满一页时显示）','http://#','<a href=\"http://www.MYCMS.com\">MYCMS 强劲站内搜索系统更新</a><br />
MYCMS 站内搜索简单方便。您只需要在搜索框内输入需要查询的内容，敲回车键，或者鼠标点击搜索框右侧的搜索按钮，就可以得到最符合查询需求的网页内容。站内搜索，就是这么简单！
全面支持多字词空格间隔搜索。输入多个词语搜索（不同字词之间用一个空格隔开），可以获得更精确的搜索结果。
<br />
<br />
<a href=\"http://www.MYCMS.com\">MYCMS 商业授权版</a><br />
新增在线充值、在线支付、订购、订单管理等20多项商业性质的功能和模块，无限语言扩充，一对一售后技术服务，专业、高效支持1000万级数据量，全开方性接口易扩展、更方便二次开发。','1','0','0','1292850938','1295442938','','0','1','1292850983');/* MySQLReback Separation */
 /* 创建表结构 `cms_admin`  */
 DROP TABLE IF EXISTS `cms_admin`;/* MySQLReback Separation */ CREATE TABLE `cms_admin` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_admin` */
 INSERT INTO `cms_admin` VALUES ('1','admin','4fc86976aeee6a1aa0193a6561f6b7c7','4Zrzh9Dl','unknown,unknown','1340850179,1340856071','4','','1');/* MySQLReback Separation */
 /* 创建表结构 `cms_article`  */
 DROP TABLE IF EXISTS `cms_article`;/* MySQLReback Separation */ CREATE TABLE `cms_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `channel` int(10) unsigned NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('1','1','2',',2,','《辛亥革命》十大人物造型曝光 唱响华人主旋律','','','0','','','','','辛亥革命，人物，造型，曝光，主旋律','','<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01(6).jpg\" style=\"width: 300px; height: 449px; \" /><br />
	赵文瑄饰孙中山</p>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	　　由长春电影集团、上海电影集团、中国城建集团、江苏省广播电视总台、华夏电影发行公司等国内10家单位联合出品，《建国大业》编剧王兴东、陈宝光再度编剧，张黎执导，成龙担任总导演的史诗战争巨片《辛亥革命》，于日前正式公布片中十大主要人物造型。今年是辛亥革命100周年，影片投资1亿巨制规模，首次全景式再现改变中国历史命运的&ldquo;推翻君主，创建民主&rdquo;革命战争。影片锁定9月26日国庆档全球同步上映！</div>
<div id=\"cke_pastebin\">
	　　此前网络上曾流传《辛亥革命》的零散剧照，但如此大规模公布影片主要角色造型尚属首次。此次曝光包括赵文瑄第五次饰演的孙中山形象、成龙饰演的革命家军事家黄兴、姜武饰演的黎元洪、孙淳饰演的袁世凯、李冰冰饰演的&ldquo;辛亥女杰&rdquo;徐宗汉(黄兴之妻)、陈冲饰演的隆裕太后、宁静饰演的革命女侠秋瑾、余少群饰演的青年汪精卫、房祖名饰演的革命先烈张振武、胡歌饰演的革命先烈林觉民等共10大主要人物造型。其中成龙与李冰冰将上演一段动人的&ldquo;革命浪漫恋曲&rdquo;。再加上尚未曝光的武昌起义总指挥吴兆麟的饰演者奇道等明星，《辛亥革命》的演员阵容强大，而此前盛传的章子怡将饰演秋瑾传闻终于水落石出，宁静将成为银幕上的&ldquo;鉴湖女侠&rdquo;。</div>
<div id=\"cke_pastebin\">
	　　此次曝光的十大人物造型，个个服饰精致有型、形神俱丰，近似油画的影像中暗藏着百年前那个混乱年代独有的风云激荡与鼓角争鸣。孙中山的伟岸、黄兴的坚毅、袁世凯的狡黠、秋瑾的侠气等经典角色均栩栩传神、呼之欲出。这部投资过亿的史诗巨制神秘面纱掀开一角，已然霸气渐露，令人期待。</div>
<div id=\"cms_page_break\" style=\"page-break-after:always;\">
	<span style=\"display:none;\">&nbsp;</span></div>
<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/02(1).jpg\" style=\"width: 300px; height: 449px; \" /><br />
	成龙饰黄兴</p>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	　　曾制作《离开雷锋的日子》等10部影片的王浙滨担任本片总制片人，她表示，《辛亥革命》是表现中华民族精神的一部史诗巨片，从立项、拍摄到制作，得到了有关领导同志的关怀与指导，政协文史和学习委员会积极提供史料和参与策划。</div>
<div id=\"cke_pastebin\">
	　　刚刚通过的政协第四次会议的政治决议提出，要&ldquo;隆重举行辛亥革100周年纪念活动，发扬光大辛亥革命精神，广泛团结海内外中华儿女，共同为推进祖国和平统一大业，实现中华民族伟大复兴凝聚力量&rdquo;。这部电影就是要唱响全球华人包括台湾同胞、海外侨胞在内的民族精神的主旋律。王浙滨说，《辛亥革命》就像一块磁铁，吸引着中国各地的演员加盟，成龙大哥是国际级明星，赵文瑄是我国台湾著名演员，陈冲作为美籍华人倾情加入，李冰冰是国内极具实力派的演员， 他们都对于这部影片充满激情地投入，所以，这部主旋律不同以往，海外发行空间很大。她表示，电影好坏首先看题材故事是否吸引了导演，吸引了演员，由此而生的是市场的吸引力，票房的号召力，故事的感染力，以及心灵的震撼力！</div>
<div id=\"cke_pastebin\">
	　　全国政协委员，影片总策划、中国城建集团总裁于炼表示：&ldquo;我们所以参与策划与投资，当我与承制方上影集团总裁，第一出品人任仲伦签订协议时，我有一种责任感，就是让这部影片在台湾和海外侨胞内放映成功。我们经济界的政协委员谈起这部电影成为热点话题，中国工商银行行长杨凯生、招商银行行长马蔚华、民生银行行长董文标、浦东发展银行董事长吉晓辉、中国联网通信集团董事长常小兵、中国平安保险集团董事长马明哲、中国人寿保险集团董事长杨超、中国交通建设集团董事长周纪昌、中国中化集团总裁刘德树、中国通用技术集团董事长贺同新等委员们，都表示关注与支持这部电影的发行放映，希望能够作为文化交流的项目，推动两岸共同纪念辛亥革命。&rdquo;</div>
','','1','0',',','1','1','1','0','0','','1043','0.00','0','','1','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('2','1','2',',2,','小S调侃大S暗恋自己老公 否认汪小菲许雅钧不和','','','0','','','','','小S,大S,汪小菲,许雅钧','','<div style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01(5).jpg\" style=\"width: 331px; height: 441px; \" /><br />
	&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 大S(徐熙媛)和汪小菲将于3月22日在三亚举行婚礼。小S(徐熙娣)昨天在访问中首度分享了大S的订婚过程。小S还开玩笑说汪小菲和自己老公Mike(许雅钧)有几分相似，&ldquo;我姐是暗恋Mike啦。&rdquo;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	订婚让母亲喜极而泣</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 小S透露，21日，她将与老公、女儿等人一同搭机飞往海南。至于礼物，小S表示还在考虑当中，&ldquo;到时你们就会知道了&rdquo;。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 大S闪婚一直是外界关注的一个焦点，小S也首次分享了姐姐订婚的过程。&ldquo;我当时其实并不知道她要订婚的消息，姐姐事先也并没有跟我讨论过这件事。当初跟妈妈说大S要订婚了，妈妈还说：&lsquo;不要骗我。&rsquo;直到Mike也说：&lsquo;大S真的订婚了！&rsquo;徐妈妈才回过神来，喜极而泣。&rdquo;小S回忆道：&ldquo;妈妈当时的心情起伏很大。&rdquo;小S表示全家人一点都不在意大S隐瞒消息，&ldquo;只要大S幸福就好，一切都尊重她自己的决定。&rdquo;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	汪小菲人好也温柔</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 小S表示，自己早在去年就和好友一同帮大S策划婚礼，这次除了亲人的角色，还将与老搭档蔡康永一起主持婚礼。以搞怪著称的小S表示自己当天会收敛一点，他们要走的主持风格不是《康熙来了》，而是走气质高雅的路线。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 谈到姐夫汪小菲，小S承认对方是个帅哥，&ldquo;不过还是没有我老公帅！&rdquo;小S还大赞汪小菲：&ldquo;他人很好，也很温柔，而且他真的跟我老公很像，我妈看到都说，这根本就是小Mike嘛！我怀疑我姐是暗恋Mike。&rdquo;</div>
<div id=\"cms_page_break\" style=\"page-break-after:always;\">
	<span style=\"display:none;\">&nbsp;</span></div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 此外，日前有媒体报道，汪小菲与许雅钧在上海机场巧遇，两人却互不打招呼。小S否认他们两人关系不佳:&ldquo;我老公去北京一定去找小菲，他们好得很，相处跟兄弟一样。&rdquo;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	大S要生3个小孩</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 大S曾宣称婚后会暂别娱乐圈，小S代表家人对大S的决定表示全力支持，&ldquo;她不要再像之前拍电影那么拼命，不顾身体了。&rdquo;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 大S本身非常喜欢小孩，小S也透露姐姐积极与汪小菲&ldquo;造人&rdquo;，&ldquo;还想生3个小孩，要让汪小菲家里热闹热闹。&rdquo;小S还说：&ldquo;我希望大S、范范，我们3个人可以同时受孕，到时候还可以一起坐月子，我还可以前辈的身份教导她们，产后妇女要注意哪些细节。&rdquo;</div>
','','1','0','inc/uploads/article/201103/01(4).jpg,','1','1','1','0','0','','521','0.00','0','','1','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('3','1','2',',3,','团购网乱象频现：央视曝光拉手美团和满座','','','0','','','','','团购,央视,曝光,拉手网,美团','','<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01(3).jpg\" style=\"width: 550px; height: 372px; \" /><br />
	央视曝光美团</p>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 3月18日早间消息，央视《3&bull;15在行动》栏目昨日曝光了团购网站存在的乱象，诸如不审核团购企业资质、提供虚假商品、无法保证团购商品质量等，其中美团网、拉手网以及满座网均上榜。</div>
<div id=\"cke_pastebin\">
	　　根据相关的报告显示，截止到2010年底国内的团购网站已经达到了1726多家，平均每天要诞生5.7家团购网站，团购网站的爆炸式增长下暴露出了一系列的问题，团购网站的诚信问题已经上升到了相当地程度，自2010年第三季度，315消费电子投诉网收到团购方面的投诉一共有800多宗，目前仍在增加。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　据央视《3&bull;15在行动》节目报道，一位消费者在美团网上团购了一个较为便宜的采摘草莓的项目，但等消费者到了草莓采摘园之后，现场一片狼藉，基本已无草莓可采摘，随后消费者致电美团客服，希望能够退款，但美团客服表示，消费者已经购买不能退款，现场没有草莓请消费者与采摘园方面联系，是他们的问题。</div>
<div id=\"cke_pastebin\">
	　　除了团购项目服务问题之外，央视也对团购网站存在的虚假货品问题进行曝光，一位消费者在满座网上团购了一款隐形眼镜，原价276元现价只要55元，结果当消费者在此款眼镜的官方网站进行序列号查询时，怎么也查不到这款眼镜的序列号，说明根本不是正品，该消费者表示：&ldquo;因为之前看到已经有很多人购买，没有想到会不是正品。&rdquo;</div>
<div id=\"cms_page_break\" style=\"page-break-after:always;\">
	<span style=\"display:none;\">&nbsp;</span></div>
<p>
	&nbsp;</p>
<p style=\"text-align: center; \">
	<br />
	<img alt=\"\" src=\"inc/uploads/ckeditor/01(4).jpg\" style=\"width: 550px; height: 362px; \" /><br />
	央视曝光满座</p>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 接下来央视财经记者假扮一位新开业的海鲜自助餐厅经营者身份与拉手网进行了合作洽谈。</div>
<div id=\"cke_pastebin\">
	　　央视财经记者表示，餐厅的部分经营资质尚未申请下来。拉手网的一位高级经理则建议，可以随便找一家别的公司代替。另外，该经理还表示，只要企业认可，拉手网可以虚标已购买人数；乙方同意追加虚数多少，相当于修改团购的实际人数。</div>
<div id=\"cke_pastebin\">
	　　同时如果商家不提供发票，拉手网表示可以协助解决，可以在网站上标出不提供发票，当下众多团购网站均不提供发票。</div>
<div id=\"cke_pastebin\">
	　　消费者权益保护专家邱宝昌律师表示，团购网站对参与商家不审查资质属于欺骗消费者，而团购出现假货则构成了欺诈行为，不提供发票则属于违反消费者权益保障法。</div>
<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01.gif\" style=\"width: 466px; height: 270px; \" /><br />
	艾瑞咨询发布的团购网站2011年1月月度覆盖人数排行</p>
<p>
	艾瑞咨询此前发布2011年1月团购网站排行数据显示，拉手网、美团网和满座网分别位列月度覆盖人数，第二、第三和第七。</p>','','1','0','inc/uploads/article/201103/02.jpg,','1','1','1','0','0','','938','0.00','0','','1','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('4','1','2',',3,','企业微博成消费维权重要渠道','','','0','','','','','','','<div style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01.jpg\" style=\"width: 580px; height: 500px; \" /></div>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; &ldquo;3&middot;15&rdquo;让2011年的消费者维权意识再度高涨，消费维权、质量投诉等热点话题骤然成为各家微博平台上的热点，这也使得微博日益成为企业营销互动的主战场，企业官方微博精准客服概念应运而生。据悉，所谓企业微博精准客服是指企业主动入驻微博平台，委派专人进行微博舆情监测、更直接有效地与用户沟通、及时处理企业消费者投诉、当大规模危机发生时最直观迅速地进行微博渠道声明等。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cms_page_break\" style=\"page-break-after:always;\">
	<span style=\"display:none;\">&nbsp;</span></div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 来自腾讯微博官方数据统计，截至目前，经过腾讯微博认证的企业官方账号数量已经多达3000家以上。相关人士透露，至少60%的企业官方微博账号都至少委派一名社会化媒体专员进行全天候的动态信息监测、官方信息发布、以及用户投诉售后服务处理。记者了解到，2月10日，腾讯微博宣布其注册用户已突破1亿大关，跻身于腾讯旗下包括QQ、Qzone在内的&ldquo;亿级产品俱乐部&rdquo;之列。 2011年，微博即将成为互联网基础性应用，全民微博时代已经到来。</div>
','','1','0','inc/uploads/article/201103/01(1).jpg,','1','1','1','0','0','','280','0.00','0','','1','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('5','1','2',',3,','中国动漫产业进军新媒体','','','0','','','','','动漫,新媒体','','<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01(1).jpg\" style=\"width: 580px; height: 435px; \" /></p>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 晚报讯 记者日前从百度旗下视频网站奇艺举办的产业论坛上获悉，随着30岁以下消费群体通过网络获取信息的比例已经接近了电视的数量，动漫产业与新媒体之间的融合借势，已迫在眉睫。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 自2006年起，中国动漫产量增长率始终保持在30%左右，呈现出较快的增长趋势。而在2010年，中国动画片产量已经达到了385部，总长度3675小时的整体规模。据了解，自2010年9月15日奇艺发布动漫频道至今，已拥有11435集正版版权。其中，《秦时明月》、《喜羊羊和灰太狼》等多部国产优秀动漫作品已经获得了近3亿次的播放量。</div>
','','1','0','inc/uploads/article/201103/01(2).jpg,','0','1','1','0','0','','167','0.00','0','','0','0','0','0','admin','1300377600'),('6','1','2',',3,','搜索引擎价格飙升 中小企业另寻出路','','','0','','','','','','','<div style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01(2).jpg\" style=\"width: 608px; height: 600px; \" /></div>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 从2009年推行&ldquo;凤巢计划&rdquo;开始，百度搜索引擎广告价格扶摇直上，关键词竞价业务快速攀升，最高涨幅达10倍之巨。以搜索引擎为获取新客户重要渠道的中小企业，面临巨大压力。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cms_page_break\" style=\"page-break-after:always;\">
	<span style=\"display:none;\">&nbsp;</span></div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; &ldquo;搜索营销让广告商心动的是实在的销售成果，大家都愿意为效果付费。 &rdquo;从事汽车陪练业务的陈先生表示，&ldquo;为了应对百度涨价，我们正在积极尝试新的营销平台。 &rdquo;陈先生所说的新平台，是推行&ldquo;来电付费&rdquo;业务的翘楚品牌浪淘金，其所推行的&ldquo;卖霸&rdquo;业务，是一款跨媒体，并可以为不同行业的企业&ldquo;带来大量新客户&rdquo;的精准营销平台。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 事实上，自2008年底，市场上就涌现出数十家 &ldquo;以寻购电话计费&rdquo;的效果广告公司，并对搜索引擎业形成冲击。 &ldquo;所谓来电付费，区别于按点击付费模式&rdquo;，浪淘金创始人周杰指出，&ldquo;卖霸平台直接以找到大量新客户为目标，它可以帮助中小企业降低60％的营销成本。 &rdquo;值得注意的是，周杰此前作为谷歌广告系统的主要开发者，对于中小企业的需求有着独到见解。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; &ldquo;最好的广告是精准有效的信息服务&rdquo;周杰表示，与搜索引擎不同，浪淘金采用数学建模的方式，通过分析用户行为意图，进而精准定位有消费欲望的人群，最后在不同媒体，在恰当的时段和位置投放服务信息，从而提高信息内容的匹配度。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp;凭借&ldquo;找到客户才买单&rdquo;的效果承诺，浪淘金3年来取得年增速10倍的发展速度，拥有5000多家企业客户，占据了北上广深四大城市生活服务类企业50％左右的市场份额，客户续费率达到90％以上。</div>
','','1','0','inc/uploads/article/201103/01(3).jpg,','1','1','1','0','0','','563','0.00','0','','1','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('7','1','2',',4,','网传中国水货商提编织袋在美国抢购iPad2(图)','','','0','','','','','水货,美国,抢购,iPad2','','<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01(12).jpg\" style=\"width: 300px; height: 300px; \" /><br />
	这张&ldquo;黄牛党&rdquo;提着编织袋在美国抢购iPad 2的图片被广泛转载。</p>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 倒手便赚一倍的暴利让中国水货商们大张旗鼓地到美国去&ldquo;织网&rdquo;。昨天，一张&ldquo;黄牛党&rdquo;提着编织袋在美国抢购iPad 2的图片被广泛转载，引起热议。</div>
<div id=\"cke_pastebin\">
	　　iPad2自上周发售以来便成为各路&ldquo;黄牛党&rdquo;的&ldquo;猎物&rdquo;。这则消息称，一个亚洲&ldquo;黄牛党&rdquo;团伙盘踞在纽约第五大道的苹果旗舰店，他们雇人排队购买iPad 2。由于苹果的政策是每人限购两台iPad 2，据说前天在第五大道旗舰店外排队的有200多人。而&ldquo;黄牛党&rdquo;的赚钱路径很简单：雇人购买，然后高价发往中国内地，转手的价格几乎翻了一倍。</div>
<div id=\"cke_pastebin\">
	　　事实上，在3月12日iPad 2美国发售首日，便涌现出一批来自中国的水货商。在中关村，水货商们普遍反映，目前iPad 2货源依然很紧张，价格岿然不动。其中价格最低的是WIFI 16G版，昨天的报价从6700元到7200元不等，并且都是一口价，几乎没有讨价还价的余地，&ldquo;来的价太高了，我们也不赚钱&rdquo;。而一位上游的渠道商告诉记者，前几天的到货量很少，每天只有三四台，前天晚上一下子来了30多台，不过全部被各家商户分走了，都是现款提货。至于渠道来源，水货商们大都讳莫如深，称在美国有关系。而在淘宝网上，水货商也在忙碌，不过售价比中关村要便宜些，一位商户告诉记者，昨天卖了3台。</div>
<div id=\"cke_pastebin\">
	　　苹果新品已经成为&ldquo;黄牛党&rdquo;雷打不动的目标。在中国内地的苹果旗舰店，&ldquo;黄牛&rdquo;整天徘徊其间。因为iPad 2还没有在中国内地发售，他们几乎操纵了苹果旗舰店iPhone 4的出货。记者在三里屯和西单的苹果旗舰店看到，&ldquo;黄牛&rdquo;们在现场有序地组织雇佣军&mdash;&mdash;收身份证、排队、交钱取货，出门后专人收货。而苹果店工作人员对此已习以为常。目前iPhone 4的市场价仍在6000元左右。</div>
','','1','0',',','0','1','1','0','0','','404','0.00','0','','0','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('8','1','2',',1,','当当京东重燃网购价格战 京东扬言5年赔本鏖战','','','0','','','','','','','<div style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/02.jpg\" style=\"width: 500px; height: 330px; \" /></div>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	&nbsp;&nbsp;&nbsp;&nbsp;商报讯 （记者 吴文治 张绪旺） 京东商城董事长刘强东和当当网总裁李国庆再次在微博上发起价格战口水仗。只是，这次挑起战火的是李国庆，不过刘强东回应的炮火更猛了。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	李国庆3月15日发起了当当网成立12年来最大力度促销，满200返100，并称要报复之前与当当网火拼图书价格战的竞争对手，矛头直指京东。京东当即回击，并将优惠门槛降低到满100返50。刘强东似乎觉得比拼满返不足以表明京东的还击力度，昨日，其在微博上表示：&ldquo;要打（价格战）就要来狠的！&rdquo;如果图书音像部门三年内给公司赚了一分钱的毛利或者五年内赚了一分钱的净利，会把整个部门人员开除！言下之意，京东即使五年不赚钱也要和当当死磕到底。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	昨日，记者随机挑选了五本图书，对比了京东、当当和卓越亚马逊三家网上商城的图书价格。其中，京东有两本书比另两家低，另三本书则分别与两家对手价格持平。而当当的价格却没有一本书比另两家低，分别与另两家持平。如果折合成百分比来计算，京东、卓越亚马逊的图书有近六成与对手价格持平，当当为100%。可见，价格战多半是雷声大雨点小。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cms_page_break\" style=\"page-break-after:always;\">
	<span style=\"display:none;\">&nbsp;</span></div>
<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/13344_0900067363945.jpg\" style=\"width: 391px; height: 250px; \" /></p>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	&nbsp;&nbsp;&nbsp;&nbsp;2010年中国B2C网上零售市场规模突破千亿元大关，当当、麦考林两家企业还实现了上市，B2C行业实现了快速发展。易观国际分析师认为，在电子商务发展的前期，B2C企业发起价格战，更多的动机是快速实现圈地，而到中后期，厂商会将竞争的核心转向服务等方面。艾瑞咨询分析师苏会燕感慨道，中国电子商务高速发展，但竞争方式仍不理性。&ldquo;当前用户最关心的网购因素价格牢牢排在第一位，其次才是服务。&rdquo;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	这一状况导致的结果就是B2C行业普遍深陷亏钱深渊。在李国庆看来，B2C行业的价格大战持续时间至少要三年。而昨日刘强东则把价格战的时间表延长到五年。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	苏会燕认为，电子商务企业间的竞争方式还有扩充内容品类、完善售后服务、健全物流配送等方面，但这些都需要长期的高成本投入。但相比之下，价格战更容易实施。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	去年以来，B2C企业的竞争逐渐走出低端价格竞争，而是向配送时间、售后服务以及移动互联网等方面转移。京东去年开通的211限时达服务，已经扩展到了廊坊等三级城市。凡客为提高顾客购物体验，上周宣布要加快自建物流建设，打造24小时配送圈，以北京、上海、广州等凡客物流中心城市为核心，周围300公里半径范围内的城市都可以实现24小时配送。另外，在新兴的移动电子商务领域，京东、凡客、当当争相开通手机客户端，如iPhone版本、Andriod平台客户端等，纷纷转战无线业务。</div>
','','1','0','inc/uploads/article/201103/01.jpg,','1','1','1','0','0','','830','0.00','0','','1','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('9','1','2',',4,','公司拖欠10万平米土地款2年半 国土局索赔4千万','','','0','','','','','国土局,索赔','','<div id=\"cke_pastebin\">
	　　博罗十万平方米地块疑遭囤地，事件进展如何？昨日记者获悉，博罗县国土局已于近期向博罗县人民法院正式提起诉讼，要求开发商澳达公司就35号地块赔付土地滞纳金4225.7万元，目前法院已正式受理此案，并将择期审理。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　据博罗县国土局介绍，目前已向澳达公司追回6950万元土地出让金，但澳达公司目前仍拖欠1.1723亿元地面附着物补偿金，对此有业内人士表示，澳达公司的拖欠行为已导致国家税款长期流失，而其事实上的囤地行为也至今未受到任何处罚。</div>
','','1','0',',','0','1','1','0','0','','1040','0.00','0','','0','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('10','1','2',',1,','中移动今年200款TD手机上市 提供175亿补贴','','','0','','','','','','','<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 3月18日消息，据香港媒体报道，中国移动总经理李跃在出席业绩发布会时表示，中国移动在3G手机方面的供应充足，目前有50家公司有手机提供，2011年会有200款可以供应。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 2010年年底，中国移动已进行600万部中低端TD手机招标，今年2月又进行了拟采购中高端TD手机约1220万台，其中旗舰互联网终端约150万台，双卡双待终端约30万台，多媒体智能终端约320万台，时尚娱乐终端400万台，普及型智能终端约320万台。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 中国移动副总裁薛涛海则表示，中国移动今年手机补贴开支将会控制于175亿元人民币，按年升15%。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 此外，中国移动3月16日宣布，将以2.81亿元向母公司收购中移鼎讯通讯100%权益。对此，李跃称，这次收购，可以帮助中国移动集团集中采购，帮助降低手机方面的成本。</div>
','','1','0',',','0','1','1','0','0','','965','0.00','0','','0','0','0','0','admin','1300377600'),('11','1','2',',3,','凡客达人上线 陈年力推10亿分成计划','','','0','','','','','','','<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 凡客诚品(VANCL)(以下简称&ldquo;凡客&rdquo;)正式推出社区化营销平台&ldquo;凡客达人&rdquo;。对此，凡客CEO陈年表示，将会拿出10亿元分成给各个店主。</div>
<div id=\"cke_pastebin\">
	　　据悉，凡客达人是一种将电子商务SNS化、线上线下结合的新型营销模式。借助这一平台，顾客可以上传凡客产品搭配图片，并附上产品链接。一旦有顾客购买，上传者即能获得提成。</div>
<div id=\"cke_pastebin\">
	　　关于10亿分成计划的具体细节，陈年在其个人微博中简单透露称，&ldquo;此计划很简单：搭配、拍照、分钱。&rdquo;此外，他还表示，凡客诚品的后台和前台还将向全体用户开放。</div>
<div id=\"cke_pastebin\">
	　　据了解，从2010年11月开始筹备，今年1月26日发布第一版，凡客达人业已试运行达两月之久。</div>
<div id=\"cke_pastebin\">
	　　华兴资本董事长包凡认为，凡客达人采用了&ldquo;让客户成为商家&rdquo;的颠覆性营销模式，既能实现平台社区化，提高用户黏度，同时能降低市场费用，并按用户行为进行精准营销。&ldquo;以后，甚至把设计都可以又用户产生。&rdquo;</div>
<div id=\"cke_pastebin\">
	　　中国广告网文章也就此分析称，这一平台的开放意味着卖家出售的将不再是产品，而是其营销能力。同时，对于凡客来讲，通过支付10%的分成让无数卖家为自己做产品营销，怎么看都是&ldquo;不错的买卖&rdquo;。</div>
<div id=\"cke_pastebin\">
	　　对于凡客达人的上线，易凯CEO王冉评论称，微博让每个人成为媒体，凡客则是&ldquo;让每个人成为设计师&rdquo;。凡客投资人之一的雷军在个人微博透露，凡客今年会有很多大动作，推出凡客达人只是其第一步。</div>
','','1','0',',','0','1','1','0','0','','845','0.00','0','','0','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('12','1','2',',1,','中关村高新技术企业认定降门槛 3千企业或受惠','','','0','','','','','','','<p>
	　　本报讯 (记者 董长青) 注册满半年就可申请认定高新技术企业，申请所必须的核心知识产权增加了国家新药和技术秘密等5项内容&hellip;&hellip;记者日前从中关村管委会获悉，科技部近日正式发布了《关于完善中关村国家自主创新示范区高新技术企业认定管理试点工作的通知》。科技部有关负责人表示，试点新政实施后，初步估计中关村有3000多家企业受惠。</p>
<p>
	　　新规规定，示范区内注册满半年不足一年的企业，符合条件的可申请认定高新技术企业。申请成功者发蓝底证书，有效期为一年，将能享受股权激励、人才引进、财政专项补贴等一系列优惠政策，但不能享受高新技术企业有关的税收优惠。有关负责人解释称，根据现行规定，企业须注册满1年且通过认定，方可享受高新技术企业全部优惠政策。</p>
<p>
	　　新规还首次允许符合条件的研发企业，以国家新药、技术秘密等作为核心知识产权申报，打破了现行需要取得专利或标准才能申请&ldquo;高新&rdquo;认定的规定。</p>
<p>
	　　对高新技术企业进行认定时，需要由技术专家进行评价。新规提出，对企业核心自主知识产权的水平、科技研发及成果转化能力仍由专家进行评价，但科技研究开发管理水平、企业总资产和销售额增长率指标，转由认定机构组织评价，以更为客观地反映企业创新能力。</p>
<p>
	　　通知规定，试点工作认定的企业，应为中关村示范区内设立的企业。试点工作时间从2010年1月1日起至2011年12月31日止。示范区外的企业仍按照现行《认定办法》执行。</p>
<p>
	　　科技部有关负责人此前表示，该试点政策结合了中关村企业成长和发展的特殊性，统筹考虑了试点工作的实施步骤和办法，兼顾试点政策向全国推广的可能性。</p>
','','1','0',',','0','1','1','0','0','','954','0.00','0','','0','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('13','1','2',',1,','东方传媒与联想集团签约合作','','','0','','','','','东方传媒，联想，签约','','<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 昨天上午，上海广播电视台、上海东方传媒集团有限公司(SMG)与联想集团在上海签署协议，共同宣布在移动互联视频服务领域达成战略合作。市委常委、宣传部长杨振武出席并讲话。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　杨振武指出，此次东方传媒与联想集团合作，是我国广播电视行业和微电子与科技行业一次具有开创意义的合作，是两个行业最深层次的、跨越式的合作，开创了视听新媒体产业运营新模式。双方成立合资公司，符合党中央关于推进文化产业跨所有制、跨行业发展的整体要求，有利于推进广播电视产业的大发展、大繁荣，是三网融合业务实践的进一步推进，也有利于为全国提供更好的服务，最终走向全球发展。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　据悉，协议双方将通过发挥各自在终端产品、云计算、内容资源、市场运营等方面的优势，联手开拓中国移动互联与数字家庭市场。联想(北京)有限公司与SMG旗下新媒体百视通公司在上海成立名为&ldquo;视云网络科技&rdquo;的合资企业，由百视通持有合资公司51%的股份，联想持有49%。</div>
','','1','0',',','0','1','1','0','0','','479','0.00','0','','0','0','0','0','admin','1300377600'),('14','1','2',',1,','研究显示我国有线机顶盒累计出货量突破亿台','','','0','','','','','','','<div id=\"cke_pastebin\">
	据格兰研究最新发布的《中国有线数字电视运营季度监测报告-Q4,2010》显示，截止到2010年底，我国有线机顶盒国内累计出货量突破亿台，仍处于景气周期中。从有线机顶盒市场保有量来看，创维仍然是市场的领先者，在2010年以14.94%的年度机顶盒市场占有率继续领跑市场。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	《中国有线数字电视运营季度监测报告-Q4,2010》显示，2010年我国有线机顶盒市场呈现如下特点：</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	一线品牌保持发展优势，行业集中度相对稳定：2010年的有线机顶盒出货量仍集中于有影响力的数个一线品牌，如创维、九州、长虹、银河、同洲等；部分机顶盒厂商的出货量呈现后发优势，如九联、博尚等，2010年的市场表现可圈可点，成为机顶盒市场竞争的有效参与者。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cms_page_break\" style=\"page-break-after:always;\">
	<span style=\"display:none;\">&nbsp;</span></div>
<div id=\"cke_pastebin\">
	双向机顶盒成为主流：格兰研究调查显示，2010年有线机顶盒的国内出货量中，双向机顶盒（含RJ-45接口）的出货比例达到60%以上。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	高清机顶盒市场步入发展期：高清双向业务作为广电的战略型业务，高清双向机顶盒得到有线运营商的重视。据格兰研究统计，截止到2010年底，我国有线高清机顶盒出货量达到300.6万台。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	高清双向成为2010年有线运营商的主旋律，在长期跟踪监测中国有线数字化进展的前提下，格兰研究认为，2011年我国有线机顶盒市场将有以下主要发展趋势：</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cms_page_break\" style=\"page-break-after:always;\">
	<span style=\"display:none;\">&nbsp;</span></div>
<div id=\"cke_pastebin\">
	高清二次整转将成为新趋势，高清双向机顶盒出货量将快速增加：二次整转就是利用高清交互机顶盒进行整转，通过高清交互机顶盒推广新业务，提高用户ARPU值。目前北京、深圳、杭州、苏州、广西、济南、金华等地在进行高清机顶盒的普及工作。在高清二次整转的带动下，格兰研究预计到2011年底，我国有线高清机顶盒的市场出货量有望超过860万台。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	开源平台正成为机顶盒的发展趋势：基于开源平台系统的机顶盒有利于促进更多的应用开发，形成多媒体应用终端。</div>
','','1','0',',','0','1','1','0','0','','42','0.00','0','','1','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('15','1','2',',4,','成都惊现最雷人催款单：您的墓位已欠费','','','0','','','','','成都，雷人，催款单，墓位，欠费','','<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01(7).jpg\" style=\"width: 450px; height: 253px; \" /></p>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	<strong>起因</strong></div>
<div id=\"cke_pastebin\">
	公墓催款通告引发思考</div>
<div id=\"cke_pastebin\">
	让邢连超开始关注公墓问题的，是2010年9月的一则广告。</div>
<div id=\"cke_pastebin\">
	成都一家大型陵园在报纸上登通告，催缴墓位维护管理费。该通告声称，如不及时办理相关续费手续，欠费墓位将按无主墓处理。</div>
<div id=\"cke_pastebin\">
	该通告还附了《维护管理费到期客户名单》，其中包括127位逝者的姓名和110个墓位编号。<br />
	&nbsp;</div>
<div id=\"cke_pastebin\">
	<strong>是陵园错了，还是法律有漏洞?</strong></div>
<div id=\"cke_pastebin\">
	邢连超研究起《成都市公墓管理办法》。</div>
<div id=\"cke_pastebin\">
	第二十一条：墓位使用年限以20年为一个周期，到期需继续保留的，丧家应按规定重新办理使用手续;</div>
<div id=\"cke_pastebin\">
	第三十四条：&hellip;&hellip;到期一年后仍不缴纳护墓管理费或不重新办理使用手续，经公墓管理机构发函通知，仍未缴纳或办理的，由公墓管理机构在本市主要报纸上公告，自公告之日起3个月内仍未缴纳或办理的，对该墓位作无主墓处理。</div>
<div id=\"cke_pastebin\">
	&ldquo;如果逝者没有后代，或者后代与公墓失去联系，就没有人来交费续费。&rdquo;邢连超担心的是，公墓管理方如果真的依法腾空墓位，逝者就有了&ldquo;死无葬身之地&rdquo;的风险。</div>
<div id=\"cke_pastebin\">
	因此，他建议修改法规：对于政府开办的公墓，土地性质改为划拨，划拨土地没有使用年限的限制，公墓可以与逝者家属签订永久(无期限)的墓位使用协议，一次性交纳永久使用费用，来保证逝者的居住安全。</div>
<div id=\"cke_pastebin\">
	对于若干年后逝者家属交纳的费用，可能不足以应付公墓管理费用的问题，他认为政府有公共管理的职能，对老百姓&ldquo;生老病死&rdquo;进行公共服务也是职能之一，理应承担起公共服务或者设立保险制度的职责。</div>
','','1','0',',','0','1','1','0','0','','859','0.00','0','','1','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('16','1','2',',4,','俄罗斯姑娘对嫁给中国男人的投票：中国人很震惊！','','','0','','','','','俄罗斯,中国男人,投票','','<div id=\"cke_pastebin\">
	&nbsp; &nbsp; Замужние русские девушки, как вам замужем за китайцем&nbsp;</div>
<div id=\"cke_pastebin\">
	　　（已出嫁的俄罗斯姑娘们，你们对嫁给中国人感觉怎么样）</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　лучше, чем русский （ 比嫁给俄罗斯人好）-------71 (27.1%)&nbsp;</div>
<div id=\"cke_pastebin\">
	　　довольна, не жалею （很满意，不后悔）---------92 (35.1%)&nbsp;</div>
<div id=\"cke_pastebin\">
	　　я уже сомневаюсь, что вышла замуж （我已经开始怀疑嫁的对否）&mdash;&mdash;24 (9.2%)&nbsp;</div>
<div id=\"cke_pastebin\">
	　　никогда бы его не знать（最好从来不知道他）-------40 (15.3%)&nbsp;</div>
<div id=\"cke_pastebin\">
	　　не вижу разницы 35 （没感觉差别啊）&mdash;&mdash;----(13.4%)&nbsp;</div>
<div id=\"cke_pastebin\">
	　　</div>
<div id=\"cke_pastebin\">
	　　Проголосовало пользователей: 259&nbsp;</div>
<div id=\"cke_pastebin\">
	　　（总投票人数259人）&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 转变经济增长模式，这是近些年国人耳熟能详的说法。20世纪90年代，中国领导人就提出了&ldquo;积极推进经济增长方式从粗放型向集约型的转变&rdquo;。然而时至今日，中国的经济增长方式还没有得到真正的转变，中国经济要走上新兴工业化道路还有待时日。</div>
<div id=\"cke_pastebin\">
	　　有意思的是，中国的近邻俄罗斯面临着和中国几乎一样的问题，伴随着经济高增长的同样是粗放型的增长方式。不同于中国的&ldquo;世界工厂&rdquo;，真正称得上是地大物博的俄罗斯是&ldquo;世界原料供应商&rdquo;，依靠能源出口俄罗斯维持了近十年的经济高增长。世界银行数据显示，金融危机前，俄罗斯经济总量按市场汇率计算已经进入世界前十位，按购买力平价计算列全球第七或第八位。</div>
<div id=\"cke_pastebin\">
	　　当俄罗斯人沉浸在经济繁荣的喜悦中时，一场金融危机将看上去很美的俄罗斯经济打得花零凋落，2009年俄罗斯工业生产下降10.8%，国内生产总值下降7.9%，成为自1994年以来的首次经济负增长。俄罗斯从国家领导人到经济学家痛定思痛，都认为转变经济增长方式迫在眉睫。</div>
<div id=\"cke_pastebin\">
	　　2000年至2008年是俄罗斯经济快速发展的时期，也是国际原油价格节节攀升的时期。数据显示，这期间俄罗斯燃料类产品出口的比重不断攀升，2004年这一指标已近60%，到2008年已上升到73%。2008年6月，国际原油价格攀升至历史最高点，达到每桶144美元。俄罗斯天然气工业股份公司(G azprom )的总裁兴奋地预言，八年内国际原油价格将达到每桶250美元，而G azprom将成为世界最大的能源企业。2008年，仅原料出口的税收和关税就达到1500亿欧元，占到当年俄罗斯财政收入的一半。</div>
<div id=\"cms_page_break\" style=\"page-break-after:always;\">
	<span style=\"display:none;\">&nbsp;</span></div>
<div id=\"cke_pastebin\">
	　　2008年7月开始国际油价一路下滑，俄罗斯经济也随之一落千丈，到2009年就陷入严重衰退。俄罗斯这种&ldquo;资源型经济发展模式&rdquo;显然不仅大量消耗不可再生的自然资源，还完全受制于国际市场行情的波动。俄罗斯领导人也意识到过度依赖资源性产品和海外市场是俄罗斯经济的致命伤。2009年11月，俄罗斯总统梅德韦杰夫在国情咨文中提出，俄将以实现现代化作为国家未来10年的任务与目标。梅德韦杰夫提出将建立智慧型经济以替代原始的原料经济，着力解决俄罗斯经济由资源型向创新型转变这一主要问题。为实现这一目标，俄罗斯政府先后出台了一系列的相关配套措施，以期推动经济发展方式的现代化转型。</div>
<div id=\"cke_pastebin\">
	　　然而转型不可能一蹴而就，要改变已经走熟的道路也很艰难。2010年本来可以开启转型之旅，而这一年国际原料市场的价格又开始上扬，为俄罗斯经济带来福音。2010年俄罗斯经济增长近4%，整体经济发展向好，而这又使得经济增长模式转型的需求显得不那么迫切了，而俄罗斯经济过度依赖能源出口的状况显然至今没有明显改善。</div>
<div id=\"cke_pastebin\">
	　　在今年的达沃斯论坛上，俄罗斯总统梅德韦杰夫说未来5年俄罗斯经济增长速度要达到10%，以赶上同为金砖国的其它几个国家。要达到这样的发展速度，不进行现代化的经济转型是不大可能的。不出意外的话，2011年俄罗斯将成为世贸组织的成员国，这对俄罗斯来说又是一个转变经济增长模式的节点。俄罗斯能抓住这个机会吗？</div>
','','1','0',',','0','1','1','0','0','','986','0.00','0','','1','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('17','1','2',',2,','[电影] 新少林寺在线观看 [视频]','','','0','','','','','','','<p style=\"text-align: center; \">
	<embed align=\"middle\" allowscriptaccess=\"sameDomain\" height=\"400\" quality=\"high\" src=\"http://player.youku.com/player.php/sid/XMjQ5NjgwODI0/v.swf\" type=\"application/x-shockwave-flash\" width=\"480\"></embed></p>
','','1','0','inc/uploads/article/201103/01(5).jpg,','1','1','1','0','0','','356','0.00','0','','0','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('18','1','2',',4,','代孕网站打广告招聘代孕妈妈 按姿色标价','','','0','','','','','代孕,网站,广告,招聘,代孕妈妈','','<div id=\"cke_pastebin\">
	　　近日，一些热心读者通过本报热线电话反映，最近一段时间，在临沂出现了几个代孕网站，到处招揽代人怀孕生孩子的业务。记者上网后发现，这些网站都标榜自己是&ldquo;诚信代孕业务&rdquo;。其中一家代孕网站还打出广告，面向社会招聘学历高、姿色好的&ldquo;代孕妈妈&rdquo;，并明确地标出了各种档次的代孕价格和代孕合同等。</div>
<div id=\"cke_pastebin\">
	　　■代孕妈妈按姿色标价■连换地点就是不露面■要想见面交定金八千</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	<strong>　　对话：代孕业务听起来&ldquo;很专业&rdquo;</strong></div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　3月8日上午，记者拨通临沂一家代孕网站的电话。记者在拨这个电话时，手机上显示该手机号码为广州的。接电话的这位持南方口音的男子自称姓王，是这家网站的经理，具体负责临沂片区代孕业务。下面是记者与这位&ldquo;王经理&rdquo;的通话内容。</div>
<div id=\"cke_pastebin\">
	　　记者：你好，请问你是代孕网站的吗？</div>
<div id=\"cke_pastebin\">
	　　对方：是，我是临沂代孕公司的王经理。</div>
<div id=\"cke_pastebin\">
	　　记者：我是一位代孕服务的需求者，请问怎样联系代孕业务呀？</div>
<div id=\"cke_pastebin\">
	　　对方：你先仔细看看我们网站的内容，如果确定要找人代孕的话，就要和我们签合同，首先还要先交8000元的业务定金。</div>
<div id=\"cke_pastebin\">
	　　记者：那请问王经理，你手中有没有素质高又年轻漂亮点的&ldquo;代孕妈妈&rdquo;？</div>
<div id=\"cke_pastebin\">
	　　对方：我们手里的代孕者大多数都是大学毕业的，大学、专科毕业生较多，应该全部都是比较漂亮的，相貌最好的跟电影明星似的也有几个。我们手中代孕者的资源很多，可供有代孕需求的男士挑选。</div>
<div id=\"cke_pastebin\">
	　　记者：我还想知道这些代孕者的来源和一些资料。</div>
<div id=\"cke_pastebin\">
	　　对方：她们这些&ldquo;代孕者&rdquo;分两种，一种是看了网站的介绍后自愿前来报名的；一种是我们有意去挑选的，这里面还有一部分是大学生。</div>
<div id=\"cke_pastebin\">
	　　记者：王经理，我还想知道一下，这个代孕是不是违反法律规定呀，受不受法律保护呀？</div>
<div id=\"cke_pastebin\">
	　　对方：代孕现在好像并不违法。代孕现在处于法律和道德底线的边缘，与法律并不抵触。你不知道吗？前不久，香港的一个大老板不也是给自己的儿子联系了代孕生子业务吗？不也没违法吗？</div>
<div id=\"cke_pastebin\">
	　　记者：王经理，我还想知道一下，咱们开展的代孕业务通过哪种方式进行？怎样来让代孕者怀上孕呀？</div>
<div id=\"cke_pastebin\">
	　　对方：我们采取的第一种是试管手术怀孕的形式，男女双方根本就不会见面，也绝不会有双方的身体接触，即便代孕者怀孕后，我们也尽量不让男女双方见面。第二种就是男女双方通过接触，双方共同生活一段时间，怀孕生下孩子，这种价格特别贵，需要20多万元。</div>
<div id=\"cke_pastebin\">
	　　记者：王经理，医院里做人工受精或试管婴儿前，夫妻双方要出示身份证、结婚证及相关部门的生育指标证明。我们现在要做代孕业务时，需要提供这些手续吗？</div>
<div id=\"cke_pastebin\">
	　　对方：我们与外地的好多医院私下有联系，不需要任何手续，保证能让你们这些想生孩子的客户满意的。</div>
<div id=\"cke_pastebin\">
	　　记者：王经理，在电话里，一些事情也不好细谈，能不能见面详细谈谈？有些事情当面谈谈，就能够解决了。</div>
<div id=\"cke_pastebin\">
	　　对方：这几天我一直很忙呀，有几个业务需要联络，你还是先仔细阅读网上的内容介绍，方便的时候再和你相约面谈吧。</div>
<div id=\"cms_page_break\" style=\"page-break-after:always;\">
	<span style=\"display:none;\">&nbsp;</span></div>
<div id=\"cke_pastebin\">
	<strong>　　接头：地点换了又换还是没见着面</strong></div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　记者再次登录该代孕网站发现，网站上正在招募&ldquo;代孕妈妈&rdquo;。网上标出的&ldquo;代孕妈妈&rdquo;分为七个等级，其中一级：纯待遇3万元，初中学历，容貌一般；七级：大学毕业生，相貌较好，条件非常优越，纯待遇12万元以上。同时，网上还规定每个代孕业务签订之时，代孕机构要收取1万到2万元不等的管理费用。</div>
<div id=\"cke_pastebin\">
	　　记者发现，这家代孕网站上，还登出了代孕合作协议和应聘代孕志愿者协议。每份合作协议都有30多条规定。在一份由代孕管理机构与代孕需求方签订的代孕合作协议条文中规定，甲方(代孕需求方)乙方(代孕方)双方是在完全自愿的基础上达成的代孕协议。乙方完全志愿为甲方代孕。协议期间，任何方不得在对方未发生违约的状况下中止协议约定内容，否则私自中止方属于违约。代孕方在服务期间所生养的小孩必须是甲方的亲生子(女)，不分男、女。甲乙双方不得将本次代孕服务内容和双方资料透露给除中介的第四方。甲乙双方一辈子永远不得有打探对方的一切关于真实身份资料的行为。代孕方服务期间有向家人通电话的权利，但不得告诉任何人关于居住地的详细地址，不得带任何人进入居住地，不得与未经甲方同意的任何人见面。甲方在协议期间未经代孕方许可，不得变更代孕方的居住地。</div>
<div id=\"cke_pastebin\">
	　　3月9日上午，记者再次打通了这位王先生的电话，要求见面。王经理告诉记者说，他很忙，让记者先到人民广场南侧的一西餐厅门前等一会儿，大约半个小时后过来找记者。</div>
<div id=\"cke_pastebin\">
	　　记者如约来到该西餐厅前等候。半个小时后，也没见有人与记者打招呼、接头。于是，记者又拨通了对方的电话。对方称，这会儿在滨河大道附近的凤凰广场，又让记者到这里来找。</div>
<div id=\"cke_pastebin\">
	　　10分钟后，记者赶到滨河大道附近的凤凰广场。在一个石凳上，记者又等了10多分钟，还是没有见到&ldquo;王经理&rdquo;。于是，记者又打通了他的电话。对方又称，有个急事要去处理，现在正赶往外地，问记者还有什么想法，可以在电话里沟通。</div>
<div id=\"cke_pastebin\">
	　　记者很&ldquo;认真地&rdquo;告诉他，不是和他闹着玩的，是真的想找代孕的。对方让记者向他的账户上汇8000元定金，然后就可以当面谈妥了。</div>
<div id=\"cke_pastebin\">
	　　3月10日上午，记者的手机上收到一条短信，短信上写着：你可以将款汇到这个账号里：李豆豆，卡号：518718806743XXXX。</div>
','','1','0',',','0','1','1','0','0','','694','0.00','0','','1','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('19','1','2',',4,','河南驻马店一家中学平均每班120人 最大班160人','','','0','','','','','河南，驻马店，中学','','<div id=\"cke_pastebin\">
	　　《我国中小学超大班额现象的调查》无疑成为刚刚出版的教育蓝皮书《中国教育发展报告2011》中最具影响力的调查篇章。调查的完成者，扬州中学历史教师王雄也由此承受着来自各方面的压力。</div>
<div id=\"cke_pastebin\">
	　　两会前夕，21世纪教育研究院正式发布2011年教育蓝皮书内容，在发布会现场，当王雄老师用PPT演示中西部地区有些县城中小学大班额现象时，其他参会者不断用&ldquo;恐怖、难以想象、可怕&rdquo;等词语表达自己的感受。</div>
<div id=\"cke_pastebin\">
	　　随即，就有报告中提及的超大班额中小学校所在地教育主管部门通过电话、传真等方式，联系到21世纪教育研究院，对王雄的调查表示疑义。对此，王雄态度很明确：对数据负责，有照片为证。其中一张照片已印在了教育蓝皮书中：河南上蔡二中2009年九九班毕业合影留念。111名学生分成六七排站立。王雄老师在文章中补充，&ldquo;访谈对象指出，还有一些学生是借读生，所以并没有拍摄照片，但这个说法尚未得到证实。&rdquo;</div>
<div id=\"cke_pastebin\">
	　　也有令王雄感到欣慰的，目前已经有河南、陕西的县市教育主管部门领导表示，要派工作组到学校进行检查。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	<strong>　　大班额县城最明显 小学到高中，大班额逐步增多</strong></div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　在王雄老师的报告中，不仅有来自教育部教育统计数据库的宏观数据，还有在2009年至2010年7月之间，通过实地调查、网上问卷、教师访谈等方式收集到的具体个案，涉及陕西、河南、江苏、安徽、上海、北京、广东、湖南、四川、吉林等地。</div>
<div id=\"cke_pastebin\">
	　　早在2002年6月，教育部就明确规定了中小学的班额数：小学是40～45人，中学(含初中和高中)为45～50人。在进行全国调查时，教育部将班额的大小划分为六个等级：&ldquo;25人及以下&rdquo;为小班额，&ldquo;26～35人&rdquo;为偏小班额，&ldquo;36～45人&rdquo;为正常班额，&ldquo;46～55人&rdquo;为偏大班额，&ldquo;56～65人&rdquo;为大班额，&ldquo;66人以上&rdquo;为超大班额。</div>
<div id=\"cke_pastebin\">
	　　教育部2008年的调查结果显示，在全国中小学校278万多个班级中，大班额有24.5万个，占总数的8.8%；超大班额有15.3万个，占总数的5.5%。从数据来看，县镇与农村的大班额、超大班额现象比城市严重。</div>
<div id=\"cke_pastebin\">
	　　在这些相关统计中，王雄发现，全国小学、初中和高中三个学段班额情况呈现不同的特点。在小学阶段，县镇依然是大班额和超大班额的主要区域，农村的班额总体偏小，这与当前农村学生大量流失的现实基本吻合；初中阶段，大班额与超大班额的数量比小学阶段多得多，都超过了30%，县镇最多，达到50.2%；高中阶段，小班额更少，大班额和超大班额更多。特别是县镇，大班额达到34%，超过初中的7.6%；超大班额达到29%，超过初中5.2%。农村高中的大班额占28.9%，超过初中6.3%，超大班额则超过初中8.4%。</div>
<div id=\"cke_pastebin\">
	　　综合这些数据，王雄得出三点结论：第一，小学农村的小班额较多，农村学校学生数在明显下降；第二，大班额、超大班额主要集中在县镇与城市，以县镇最多，且超过50%；第三，从小学到高中，大班额、超大班额逐步增多。</div>
<div id=\"cms_page_break\" style=\"page-break-after:always;\">
	<span style=\"display:none;\">&nbsp;</span></div>
<div id=\"cke_pastebin\">
	<strong>极大班额不是个别 中学最大班达160人</strong></div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　2010年10月27日，一篇《高中&ldquo;虚胖&rdquo;之忧》的文章，披露了山东省临淄、寿光、菏泽、新泰、潍坊等地&ldquo;超大规模&rdquo;中学不断出现，多所拥有上万人，被称为&ldquo;高中航母&rdquo;。那么，超级学校的班级是否也是超大？我国东中西部的超大班额又是如何分布的呢？</div>
<div id=\"cke_pastebin\">
	　　带着这些问题，王雄设计了问卷，调查了西部六个省份(四川、贵州、青海、西藏、甘肃和重庆)450名高中教师。结果显示，西部高中大班额所占比重达到32%，超大班额达到35.8%，远远超过全国比例。&nbsp;</div>
<div id=\"cke_pastebin\">
	　　值得提及的是，在调查中，王雄发现许多地方66人以上的班级很多，只用超大班额不足以概况整体情况，因此，他作了进一步&ldquo;升级&rdquo;命名：&ldquo;66～75人&rdquo;为超大班额，&ldquo;76～100人&rdquo;为特大班额，&ldquo;101人及以上&rdquo;为极大班额。</div>
<div id=\"cke_pastebin\">
	　　通过网络调查发现：陕西省6城市(西安、咸阳、榆林、商洛、安康和延安)的40所小学中，各校平均班额远远超过全国平均水平。大班额以上达到52.5%，超大班额为25%，特大班额为5%。值得关注的是，知名学校与弱势学校之间的班额差距很大。咸阳市8所小学中，知名学校人数比薄弱学校的人数多10倍以上，如渭城区的风轮小学有2096人，而同属这一区的西毛小学只有137人，前者是后者的15.3倍。前者的班额是54人，后者的班额只有23人。</div>
<div id=\"cke_pastebin\">
	　　安康市的情况则更为严重。安康市第一小学是该市知名小学，人数达到3149人，平均班额达到90人，这是调查中王雄发现的全国最大的小学班额。而该市汉滨区的红旗小学班额为49人，同一市的平利县柳林小学每个班平均只有20人。</div>
<div id=\"cke_pastebin\">
	　　调查中，极大班额出现在河南省。报告提及&ldquo;国内初中最大班额为驻马店上蔡县第二中学，平均120人，最大班额竟然高达160人！排名第二的是驻马店市平舆县第五中学，平均班额105人，最大班额135人；排名第三的是南阳邓州市城区一中，平均班额112人，最大班额132人；此外，上蔡县东岸乡第一初级中学平均班额123人，最大班额不清楚&rdquo;。</div>
','','1','0',',','0','1','1','0','0','','125','0.00','0','','1','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('20','1','2',',4,','项目经理伸手救工友坠入深井死亡','','','0','','','','','','','<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 昨天下午2点半，地铁六号线呼家楼站施工工地上发生一起事故，为救一名工人，项目执行经理黄治平不慎坠入满是泥浆的施工井中，虽然经过全力抢救，今天凌晨，黄治平不幸身亡。</div>
<div id=\"cke_pastebin\">
	　　据了解，事发地点位于地铁6号线呼家楼站西场区。救人英雄名叫黄治平，是中铁十九局集团北京地铁6号线02标的一名项目执行经理。</div>
<div id=\"cke_pastebin\">
	　　据黄治平生前同事介绍，昨天下午，黄治平像往常一样在工地巡视。当时有两名工人正在钻孔灌注桩作业，突然，一名陈姓工人站立不稳，眼看就要坠入井中。这时，正站在井口监督施工的黄治平伸手一拦，工人站稳了，他自己却不慎坠入直径1.8米，深约19米的施工井中。&ldquo;井底下都是泥浆，大家立即组织施救&rdquo;。10分钟后，120急救人员赶到，被救起的黄治平立即被送往朝阳医院。工地上的工友彻夜未眠，都在焦急地等待着他的消息，今天凌晨，噩耗从医院传来，因抢救无效，黄治平不幸身亡。</div>
<div id=\"cke_pastebin\">
	　　黄治平是甘肃定西人，1999年毕业于兰州铁道学院。他所负责的施工队被北京市团委授予以他名字命名的&ldquo;青年突击队&rdquo;称号。今年春节期间，他没有回家，带领工人继续施工。在施工期间，工地旁边一栋居民楼曾失火，黄治平发现后立即组织工人救火，火被扑灭后又组织工人进行捐款。</div>
','','1','0',',','0','1','1','0','0','','665','0.00','0','','0','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('21','1','2',',2,','《金陵十三钗》热拍 贝尔功课做得足张艺谋意外','','','0','','','','','金陵十三钗，贝尔，张艺谋','','<div style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01(8).jpg\" style=\"width: 400px; height: 600px; \" /><br />
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　2011年最被期待的国产大片无疑是张艺谋的《金陵十三钗》。这个讲述&ldquo;南京大屠杀&rdquo;背景下的人性故事，筹备4年，投资6亿。更重要的是，主演除了佟大为、黄海波、窦骁等，还有一个熟悉的外国面孔&mdash;&mdash;&mdash;好莱坞明星克里斯蒂安&middot;贝尔。而《金陵十三钗》则是这个以《蝙蝠侠：黑暗骑士》创下好莱坞票房奇迹，以《斗士》获得金球奖最佳男配角的好莱坞巨星首次出演的中国电影。</div>
<div id=\"cke_pastebin\">
	　　在剧组下榻的南京市溧水县郊区&ldquo;天生桥山庄&rdquo;，记者连续&ldquo;潜伏&rdquo;三天，最终捕捉到&ldquo;蝙蝠侠&rdquo;贝尔的身影。镜头证实：克里斯蒂安&middot;贝尔，这位今年席卷好莱坞各大奖项的巨星正在中国拍戏！</div>
<div id=\"cke_pastebin\">
	<strong>　　贝尔功课做得足 张艺谋很意外</strong></div>
<div id=\"cke_pastebin\">
	　　1937年，13位秦淮河妓女在南京大屠杀中为了挽救更多的生命挺身而出，闪现人性光辉，这就是《金陵十三钗》的故事。张艺谋把电影放在发生地&mdash;&mdash;&mdash;桨声灯影的秦淮源头，江苏溧水县的石湫影视基地。</div>
<div id=\"cke_pastebin\">
	　　一个是中国最著名的导演，一个是西方最拼命的演员，&ldquo;张艺谋+贝尔&rdquo;是否起了化学反应？记者在踩点拍到贝尔开工之后，又进一步打探消息，得知张艺谋和贝尔的关系突飞猛进，堪称&ldquo;相见恨晚，火花四溅&rdquo;。记者了解到，原先准备的贝尔替身形同虚设，拍戏走位都常常是贝尔亲自上阵，一般拍摄两条就OK，但他还以自己的理解加送一条。</div>
<div id=\"cke_pastebin\">
	　　贝尔与《金陵十三钗》签订了8个星期的协议，随后贝尔还要出演下一部&ldquo;蝙蝠侠&rdquo;。因此近些天在南京片场都在赶拍贝尔的戏。虽然张艺谋是圈内有名的&ldquo;精力过剩型&rdquo;导演，但他也十分尊重贝尔的好莱坞工作方式：一天8小时工作制，一周有一天休假。不过记者打探到，贝尔有一周还主动放弃了周日的休息。</div>
<div id=\"cke_pastebin\">
	　　贝尔的戏路很宽，此次在《金陵十三钗》中饰演神父，对贝尔来说也是轻车熟路。不过毕竟是张艺谋首次指导好莱坞大牌演员，双方的磨合程度也令人好奇。</div>
<div id=\"cke_pastebin\">
	　　在溧水县城，记者辗转找到了一位跟随张艺谋多年的工作人员，软磨硬泡，终于得到了一些拍摄细节。此次扮演神父前，贝尔研究了两个月的&ldquo;南京大屠杀&rdquo;的资料。中途张艺谋与其见面时，贝尔还提了很多关于这个人物的问题，连张艺谋都很意外。功课做得如此扎实，贝尔迅速进入最佳状态。有时张艺谋的一个动作，翻译还未解释，贝尔便已心领神会。贝尔甚至还跟导演探讨角色的N种演法，意见也频频被张艺谋采纳，两个人大有相见恨晚的感觉。</div>
','','1','0',',','0','1','1','0','0','','605','0.00','0','','0','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('22','1','2',',2,','张伟平花17万登广告贺贝尔获奥斯卡(图)','','','0','','','','','张伟平,张艺谋，贝尔，奥斯卡，金陵十三钗','','<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01(1).gif\" style=\"width: 300px; height: 385px; \" /><br />
	祝贺贝尔获奖广告截图</p>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 《金陵十三钗》男主角克里斯蒂安&middot;贝尔手握奥斯卡小金人的照片，日前登上了好莱坞最有影响力的娱乐刊物《综艺》和行业杂志《好莱坞报道》上面，照片的下面分别注上了中英文的祝语：&ldquo;张艺谋导演祝贺克里斯蒂安&middot;贝尔凭借影片《斗士》中的出色表演荣获奥斯卡金像奖，并向他在中国影片《南京英雄》(《金陵十三钗》海外发行译名)中的卓越表演和敬业精神致以感谢和敬意。&rdquo;</div>
<div id=\"cke_pastebin\">
	　　据新画面公司透露，这是新画面影业公司花了2.6万美金(约合人民币17万)专门为贝尔获奖刊登的祝贺广告，也是中国影视公司首次为合作的男演员专门在好莱坞顶级行业媒体刊载广告。张伟平表示，&ldquo;我们这次和贝尔合作太愉快了，得知他获得奥斯卡金像奖，我们发自内心地希望表达自己的祝福，所以选择了这样一个方式。&rdquo;</div>
','','1','0',',','0','1','1','0','0','','160','0.00','0','','0','0','0','0','admin','1300377600'),('23','1','2',',4,','动物园将旧奔驰给猴子当玩具 被大卸八块(图)','','','0','','','','','动物园，猴子','','<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01(9).jpg\" style=\"width: 450px; height: 235px; \" /><br />
	朗利特野生动物园的猴群跳上奔驰汽车</p>
<p style=\"text-align: center; \">
	<br />
	<img alt=\"\" src=\"inc/uploads/ckeditor/02(2).jpg\" style=\"width: 450px; height: 405px; \" /><br />
	轮毂帽被猴子拆了下来</p>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 据英国《每日邮报》报道，英国朗利特野生动物园近日将一辆报废的破旧奔驰给猴子当玩具，猴子们把车上能拆的东西都拆了下来，玩得不亦乐乎。</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 每一个去过野生动物园的人都知道，当你开车经过猴群的时候，千万不要逗留，这些顽皮的家伙很可能会让你的汽车面目全非。</div>
<div id=\"cke_pastebin\">
	　　朗利特野生动物园位于英国威尔特郡(Wiltshire)，由于之前两年进行整修，游客禁止驾车入内，猴子们已经很久没有见到汽车了。这次动物园重新开放，猴子们发现了一个新玩具：一辆破旧奔驰汽车。</div>
<div id=\"cke_pastebin\">
	　　这群恒河短尾猴可能是因为太久没有见到汽车，心中充满怒气，迫不及待地跳上奔驰研究起来。它们拆下行李箱、后视镜、轮毂帽、车牌、雨刷等一切能拆下的东西，甚至穿上行李箱内的衣服，玩得不亦乐乎。</div>
<div id=\"cms_page_break\" style=\"page-break-after:always;\">
	<span style=\"display:none;\">&nbsp;</span></div>
<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01(10).jpg\" style=\"width: 450px; height: 446px; \" /><br />
	后视镜是猴子最爱的玩具</p>
<p style=\"text-align: center; \">
	<br />
	<img alt=\"\" src=\"inc/uploads/ckeditor/02(3).jpg\" style=\"width: 450px; height: 377px; \" /><br />
	利用轮胎滚着走似乎也不错</p>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	　　它们是一个小家庭，共有20多只短尾猴组成，其中一只雄性短尾猴是一家之主。由于猴子天生聪明好动，对各种事物充满好奇，它们一直都对车充满喜爱。</div>
<div id=\"cke_pastebin\">
	　　朗利特野生动物园重新开放以后，每天又将有很多人驾车前来游玩，最多的时候可能一天能有2000辆车穿过猴群，它们一定会非常高兴。</div>
<div id=\"cke_pastebin\">
	　　伊恩&bull;特纳(Ian Turner)是这个野生动物园的副园长，他说，&ldquo;把废弃的汽车给猴子们当玩具，这一做法被证明很有效，猴子们心情大好，而这群猴子正是我们动物园的一个亮点。&rdquo;</div>
','','1','0',',','0','1','1','0','0','','666','0.00','0','','1','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('24','1','2',',2,','好莱坞巨星贝尔低调进《金陵十三钗》剧组(图)','','','0','','','','','好莱坞,贝尔,金陵十三钗','','<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01(11).jpg\" style=\"width: 300px; height: 229px; \" /><br />
	贝尔身着羽绒服</p>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	　　2011年最受期待的国产大片无疑是张艺谋的《金陵十三钗》。这个讲述&ldquo;南京大屠杀&rdquo;背景下的故事，筹备4年，投资6亿。更重要的是，主演中有一个熟悉的外国人面孔&mdash;&mdash;&mdash;好莱坞巨星、&ldquo;蝙蝠侠&rdquo;克里斯蒂安&middot;贝尔，出演关键人物神父。</div>
<div id=\"cke_pastebin\">
	　　日前，记者在南京秘密探班《金陵十三钗》，在剧组下榻的南京市溧水县郊区&ldquo;天生桥山庄&rdquo;，捕捉到了&ldquo;蝙蝠侠&rdquo;贝尔的身影。当日清晨7:40，克里斯蒂安&middot;贝尔走出山庄。从侧面看，贝尔身材消瘦，脸上棱角分明，嘴角还留有胡须，十分有型。记者获悉：贝尔早在大年三十已来到中国，并于大年初二与张艺谋会合，如此他已在南京拍摄了近半个月。</div>
','','1','0',',','0','1','1','0','0','','591','0.00','0','','0','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('25','1','2',',4,','网传中国水货商提编织袋在美国抢购iPad2(图)','','','0','编织袋,美国,抢购,iPad2','','','','水货,美国,抢购,iPad2','','<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01(12).jpg\" style=\"width: 300px; height: 300px; \" /><br />
	这张&ldquo;黄牛党&rdquo;提着编织袋在美国抢购iPad 2的图片被广泛转载。</p>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 倒手便赚一倍的暴利让中国水货商们大张旗鼓地到美国去&ldquo;织网&rdquo;。昨天，一张&ldquo;黄牛党&rdquo;提着编织袋在美国抢购iPad 2的图片被广泛转载，引起热议。</div>
<div id=\"cke_pastebin\">
	　　iPad2自上周发售以来便成为各路&ldquo;黄牛党&rdquo;的&ldquo;猎物&rdquo;。这则消息称，一个亚洲&ldquo;黄牛党&rdquo;团伙盘踞在纽约第五大道的苹果旗舰店，他们雇人排队购买iPad 2。由于苹果的政策是每人限购两台iPad 2，据说前天在第五大道旗舰店外排队的有200多人。而&ldquo;黄牛党&rdquo;的赚钱路径很简单：雇人购买，然后高价发往中国内地，转手的价格几乎翻了一倍。</div>
<div id=\"cke_pastebin\">
	　　事实上，在3月12日iPad 2美国发售首日，便涌现出一批来自中国的水货商。在中关村，水货商们普遍反映，目前iPad 2货源依然很紧张，价格岿然不动。其中价格最低的是WIFI 16G版，昨天的报价从6700元到7200元不等，并且都是一口价，几乎没有讨价还价的余地，&ldquo;来的价太高了，我们也不赚钱&rdquo;。而一位上游的渠道商告诉记者，前几天的到货量很少，每天只有三四台，前天晚上一下子来了30多台，不过全部被各家商户分走了，都是现款提货。至于渠道来源，水货商们大都讳莫如深，称在美国有关系。而在淘宝网上，水货商也在忙碌，不过售价比中关村要便宜些，一位商户告诉记者，昨天卖了3台。</div>
<div id=\"cke_pastebin\">
	　　苹果新品已经成为&ldquo;黄牛党&rdquo;雷打不动的目标。在中国内地的苹果旗舰店，&ldquo;黄牛&rdquo;整天徘徊其间。因为iPad 2还没有在中国内地发售，他们几乎操纵了苹果旗舰店iPhone 4的出货。记者在三里屯和西单的苹果旗舰店看到，&ldquo;黄牛&rdquo;们在现场有序地组织雇佣军&mdash;&mdash;收身份证、排队、交钱取货，出门后专人收货。而苹果店工作人员对此已习以为常。目前iPhone 4的市场价仍在6000元左右。</div>
','','1','0',',','0','1','1','0','0','','404','0.00','0','','0','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('26','1','2',',4,','男子微博上编虚假恐怖信息获刑一年','','','0','','','','','微博,虚假,恐怖,信息','','<div id=\"cke_pastebin\">
	　　为提高点击率、提升知名度，20岁的袁某疯狂&ldquo;织围脖&rdquo;，他每天电脑、手机并用，隔不了多长时间，就会更新自己的微博。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　去年9月11日，一觉醒来，袁某就突发奇想，用自己的手机编写了一条昆明一航班上有炸弹的虚假恐怖信息，还分别发送到多家民航单位的微博地址上。不一会儿，袁某的微博点击率果真大幅上升，赚足了关注度。9月13日，袁某变本加厉，继续编写更多的虚假恐怖信息发往民航单位。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　这下，袁某的微博知名度大大提升了。可除了普通网民外，这些炸弹恐怖信息也引起警方的关注。9月14日，云南省公安厅民用机场公安局经过查询，认定袁某微博上散布的是虚假恐怖信息。袁某涉嫌编造虚假恐怖信息罪，当天被刑事拘留。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　今年2月14日，这起案件在官渡区法院公开开庭审理。公诉机关指控，袁某发给民航公司的炸弹威胁信息，使各相关的航空公司和民航机场纷纷采取防范措施，增加安保人力、物力，提升了空防安全保卫级别。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　庭审中，袁某向法庭交代，给航空公司发送炸弹威胁信息是自己图好玩，但对各相关航空公司和民航机场纷纷采取的防范措施并不知情。他的辩护人则称，加强机场保安工作，是航空公司的分内职责，很难界定是袁某发送了炸弹恐怖信息所致。所以不能认定袁某的行为导致了严重扰乱社会秩序的后果。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　日前，官渡区法院在查看了公诉机关提交的昆明航空公司和中国民航云南安全监督管理局提供的说明材料等证据后，认定袁某编造爆炸恐怖信息，严重扰乱社会秩序，触犯刑法，构成编造虚假恐怖信息罪。但鉴于袁某系初犯、偶犯，归案后认罪、悔罪态度较好，所以对袁某酌情从轻处罚，判处他有期徒刑一年。</div>
','','1','0',',','0','1','1','0','0','','50','0.00','0','','0','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('27','1','2',',1,','微软宣布中止Zune播放器开发 继续提供在线服务','','','0','微软,宣布,中止,Zune播放器,开发,继续,提供,在线服务','','','','微软，Zune，播放器','','<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 据外电消息报道，微软宣布中止Zune数据音乐播放器的开发，不会再推新版本。这意味着，长达四年半的微软与苹果播放器领域之争结束。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　微软2006年推出Zune播放器，而在那之前，苹果已经在2001年推出iPod。不少业内分析师认为，微软Zune的推出，就已经是姗姗来迟。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　微软近日表示，因为Zune已不再流行，因此计划中止Zune数据音乐播放器的开发，不会再推新版本。但会继续提供在线服务。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　微软计划中止Zune数据音乐播放器的开发，不会再推新版本，因为它不流行，但是它会继续在线提供音乐和视频服务，因为Xbox游戏机和Windows Phone也使用这些服务。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　微软新闻发言人称微软依然会在北美对Zune设备提供支持，Zune软件则将成为微软其它产品的一个部分。他在邮件中写道：&ldquo;我们的长远战略是战略点是：整个Zune生态系统贯穿微软平台，我们将继续向Zune服务提供音乐和视频。&rdquo;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　Zune播放器现在还在市面上销售，在微软的官网上也没有降价。16G版Zune售价为170美元，3G版则为200美元，比竞争对手iPod Touch低三分之一。</div>
','','1','0',',','0','1','1','0','0','','291','0.00','0','','0','0','0','0','admin','1300377600'),('28','1','2',',4,','6名大三学生开公司 校方表示鼓励和倡导','','','0','','','','','','','<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01(13).jpg\" style=\"width: 300px; height: 199px; \" /><br />
	广告样版出来后，小伙子们认真审核</p>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 6名大三学生开公司 个个是经理 投资6万 招聘员工近50名 校方表示鼓励和倡导</div>
<div id=\"cke_pastebin\">
	　　拿到了工商执照和税务登记证，这个月，福建农林大学的6名大三学生注册的某广告(福州)分公司正式开张营业了。&nbsp;</div>
<div id=\"cke_pastebin\">
	　　这6人分别是：罗宇、卢燕勇、王福如、张开河、陈泉、郑发勤，半年前，都还只是单纯的在校大学生，而如今已经冠上了总经理、市场部经理、人力资源部经理、企划部经理、行政部经理、设计部经理的行头，边学习，边像模像样地做起了生意。他们出版的《爱生活》校园DM，发行量达到5万份。</div>
<div id=\"cke_pastebin\">
	　　据了解，这类在校大学生以注册公司的方式自主创业的现象，在省内尚不多见。</div>
','','1','0',',','0','1','1','0','0','','997','0.00','0','','0','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('29','1','2',',4,','代孕网站打广告招聘代孕妈妈 按姿色标价','','','0','','','','','代孕,网站,广告,招聘,代孕妈妈','','<div id=\"cke_pastebin\">
	　　近日，一些热心读者通过本报热线电话反映，最近一段时间，在临沂出现了几个代孕网站，到处招揽代人怀孕生孩子的业务。记者上网后发现，这些网站都标榜自己是&ldquo;诚信代孕业务&rdquo;。其中一家代孕网站还打出广告，面向社会招聘学历高、姿色好的&ldquo;代孕妈妈&rdquo;，并明确地标出了各种档次的代孕价格和代孕合同等。</div>
<div id=\"cke_pastebin\">
	　　■代孕妈妈按姿色标价■连换地点就是不露面■要想见面交定金八千</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	<strong>　　对话：代孕业务听起来&ldquo;很专业&rdquo;</strong></div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　3月8日上午，记者拨通临沂一家代孕网站的电话。记者在拨这个电话时，手机上显示该手机号码为广州的。接电话的这位持南方口音的男子自称姓王，是这家网站的经理，具体负责临沂片区代孕业务。下面是记者与这位&ldquo;王经理&rdquo;的通话内容。</div>
<div id=\"cke_pastebin\">
	　　记者：你好，请问你是代孕网站的吗？</div>
<div id=\"cke_pastebin\">
	　　对方：是，我是临沂代孕公司的王经理。</div>
<div id=\"cke_pastebin\">
	　　记者：我是一位代孕服务的需求者，请问怎样联系代孕业务呀？</div>
<div id=\"cke_pastebin\">
	　　对方：你先仔细看看我们网站的内容，如果确定要找人代孕的话，就要和我们签合同，首先还要先交8000元的业务定金。</div>
<div id=\"cke_pastebin\">
	　　记者：那请问王经理，你手中有没有素质高又年轻漂亮点的&ldquo;代孕妈妈&rdquo;？</div>
<div id=\"cke_pastebin\">
	　　对方：我们手里的代孕者大多数都是大学毕业的，大学、专科毕业生较多，应该全部都是比较漂亮的，相貌最好的跟电影明星似的也有几个。我们手中代孕者的资源很多，可供有代孕需求的男士挑选。</div>
<div id=\"cke_pastebin\">
	　　记者：我还想知道这些代孕者的来源和一些资料。</div>
<div id=\"cke_pastebin\">
	　　对方：她们这些&ldquo;代孕者&rdquo;分两种，一种是看了网站的介绍后自愿前来报名的；一种是我们有意去挑选的，这里面还有一部分是大学生。</div>
<div id=\"cke_pastebin\">
	　　记者：王经理，我还想知道一下，这个代孕是不是违反法律规定呀，受不受法律保护呀？</div>
<div id=\"cke_pastebin\">
	　　对方：代孕现在好像并不违法。代孕现在处于法律和道德底线的边缘，与法律并不抵触。你不知道吗？前不久，香港的一个大老板不也是给自己的儿子联系了代孕生子业务吗？不也没违法吗？</div>
<div id=\"cke_pastebin\">
	　　记者：王经理，我还想知道一下，咱们开展的代孕业务通过哪种方式进行？怎样来让代孕者怀上孕呀？</div>
<div id=\"cke_pastebin\">
	　　对方：我们采取的第一种是试管手术怀孕的形式，男女双方根本就不会见面，也绝不会有双方的身体接触，即便代孕者怀孕后，我们也尽量不让男女双方见面。第二种就是男女双方通过接触，双方共同生活一段时间，怀孕生下孩子，这种价格特别贵，需要20多万元。</div>
<div id=\"cke_pastebin\">
	　　记者：王经理，医院里做人工受精或试管婴儿前，夫妻双方要出示身份证、结婚证及相关部门的生育指标证明。我们现在要做代孕业务时，需要提供这些手续吗？</div>
<div id=\"cke_pastebin\">
	　　对方：我们与外地的好多医院私下有联系，不需要任何手续，保证能让你们这些想生孩子的客户满意的。</div>
<div id=\"cke_pastebin\">
	　　记者：王经理，在电话里，一些事情也不好细谈，能不能见面详细谈谈？有些事情当面谈谈，就能够解决了。</div>
<div id=\"cke_pastebin\">
	　　对方：这几天我一直很忙呀，有几个业务需要联络，你还是先仔细阅读网上的内容介绍，方便的时候再和你相约面谈吧。</div>
<div id=\"cms_page_break\" style=\"page-break-after:always;\">
	<span style=\"display:none;\">&nbsp;</span></div>
<div id=\"cke_pastebin\">
	<strong>　　接头：地点换了又换还是没见着面</strong></div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　记者再次登录该代孕网站发现，网站上正在招募&ldquo;代孕妈妈&rdquo;。网上标出的&ldquo;代孕妈妈&rdquo;分为七个等级，其中一级：纯待遇3万元，初中学历，容貌一般；七级：大学毕业生，相貌较好，条件非常优越，纯待遇12万元以上。同时，网上还规定每个代孕业务签订之时，代孕机构要收取1万到2万元不等的管理费用。</div>
<div id=\"cke_pastebin\">
	　　记者发现，这家代孕网站上，还登出了代孕合作协议和应聘代孕志愿者协议。每份合作协议都有30多条规定。在一份由代孕管理机构与代孕需求方签订的代孕合作协议条文中规定，甲方(代孕需求方)乙方(代孕方)双方是在完全自愿的基础上达成的代孕协议。乙方完全志愿为甲方代孕。协议期间，任何方不得在对方未发生违约的状况下中止协议约定内容，否则私自中止方属于违约。代孕方在服务期间所生养的小孩必须是甲方的亲生子(女)，不分男、女。甲乙双方不得将本次代孕服务内容和双方资料透露给除中介的第四方。甲乙双方一辈子永远不得有打探对方的一切关于真实身份资料的行为。代孕方服务期间有向家人通电话的权利，但不得告诉任何人关于居住地的详细地址，不得带任何人进入居住地，不得与未经甲方同意的任何人见面。甲方在协议期间未经代孕方许可，不得变更代孕方的居住地。</div>
<div id=\"cke_pastebin\">
	　　3月9日上午，记者再次打通了这位王先生的电话，要求见面。王经理告诉记者说，他很忙，让记者先到人民广场南侧的一西餐厅门前等一会儿，大约半个小时后过来找记者。</div>
<div id=\"cke_pastebin\">
	　　记者如约来到该西餐厅前等候。半个小时后，也没见有人与记者打招呼、接头。于是，记者又拨通了对方的电话。对方称，这会儿在滨河大道附近的凤凰广场，又让记者到这里来找。</div>
<div id=\"cke_pastebin\">
	　　10分钟后，记者赶到滨河大道附近的凤凰广场。在一个石凳上，记者又等了10多分钟，还是没有见到&ldquo;王经理&rdquo;。于是，记者又打通了他的电话。对方又称，有个急事要去处理，现在正赶往外地，问记者还有什么想法，可以在电话里沟通。</div>
<div id=\"cke_pastebin\">
	　　记者很&ldquo;认真地&rdquo;告诉他，不是和他闹着玩的，是真的想找代孕的。对方让记者向他的账户上汇8000元定金，然后就可以当面谈妥了。</div>
<div id=\"cke_pastebin\">
	　　3月10日上午，记者的手机上收到一条短信，短信上写着：你可以将款汇到这个账号里：李豆豆，卡号：518718806743XXXX。</div>
','','1','0',',','0','1','1','0','0','','694','0.00','0','','1','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('30','1','2',',4,','公司拖欠10万平米土地款2年半 国土局索赔4千万','','','0','','','','','国土局,索赔','','<div id=\"cke_pastebin\">
	　　博罗十万平方米地块疑遭囤地，事件进展如何？昨日记者获悉，博罗县国土局已于近期向博罗县人民法院正式提起诉讼，要求开发商澳达公司就35号地块赔付土地滞纳金4225.7万元，目前法院已正式受理此案，并将择期审理。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　据博罗县国土局介绍，目前已向澳达公司追回6950万元土地出让金，但澳达公司目前仍拖欠1.1723亿元地面附着物补偿金，对此有业内人士表示，澳达公司的拖欠行为已导致国家税款长期流失，而其事实上的囤地行为也至今未受到任何处罚。</div>
','','1','0',',','0','1','1','0','0','','1040','0.00','0','','0','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('31','1','2',',3,','十大猜想之三：谁将成DST中国幸运儿？','','','0','','','','','幸运儿','','<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01(14).jpg\" style=\"width: 236px; height: 290px; \" /></p>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	　　他用一个定律说服素未谋面的Facebook创始人扎克伯格接受自己的投资，他亦是Zynga和Groupon等热门互联网公司的资本推手，他是被业界惊呼&ldquo;改变了硅谷的投资方式&rdquo;的人。他就是俄罗斯互联网公司Digital Sky Technologies(以下称DST)的CEO&mdash;&mdash;Yuri Milner。这位行事低调、颇具神秘色彩的俄罗斯人，将于4月27-28日来北京参加由长城会主办的2011年全球移动互联网大会，在现场为我们分享他对社交网络的信仰和非主流的投资之道。</div>
<div id=\"cke_pastebin\">
	　　在决定投资Facebook之前，Milner有一个&ldquo;扎克伯格定律&rdquo;(Zuckerberg&rsquo;s Law)：每隔12至18个月，人们在互联网上彼此分享的信息翻一倍。将来人们会越过谷歌这样的通用搜索引擎，依靠社交网络上的朋友获取信息、做出决策。只要用户选择、搭建好自己的社交网站，它将负责过滤一切。这让Facebook发现Milner比想象的更理解社交网络及其影响力，并且这个想法与扎克伯格如此接近。4个月后，DST宣布向Facebook投资2亿美元，获得1.96%股权。</div>
<div id=\"cke_pastebin\">
	　　此前的Milner和DST名不见经传。此举让他们彷佛一夜之间从天而降，拿下最让人垂涎的交易，与硅谷最闪亮的超新星企业家成为朋友。更重要的是，已经足够风起云涌的硅谷投资圈被这些北方来客彻底打乱，甚至有人断言：Milner改变了硅谷的投资方式。</div>
<div id=\"cke_pastebin\">
	　　Milner的确不是一个传统典型的风投家。今年年初，这个俄罗斯的风险投资家，再一次将百万美元投在硅谷的新兴产业上。这一次他下注的是一家刚起步的公司。根据TechCrunch的消息，Milner给硅谷著名IT企业孵化器Y Combinator的每个项目15万美元的投资。去年晚些时候，《财富》的Chris Steiner曾在杂志上介绍过这家公司。投资还附带了一个优厚的条款：每一笔贷款都以可换票据形式支付，没有上限，没有折扣。这种附属细则足以让大部分的风投家退缩。</div>
<div id=\"cke_pastebin\">
	　　但是这种情况对于Milner来说很常见，他在Facebook，Groupon和Zynga身上也进行投资并附带优厚条款(如不要求占有董事席)，他本人对此评价很高。</div>
<div id=\"cke_pastebin\">
	　　Milner将这种投资方法称为&ldquo;晚期投资&rdquo;(late-stage investment)。2010年5月，他在TechCrunch Disrupt大会上表示，10年前他们的投资风格与传统VC无二，但近年开始转向晚期投资，这意味着平均10亿美元以上的估值和1亿美元以上的投资额。而且不同于赶在上市前夕进入、然后很快退出获利的传统晚期投资，DST愿意将投资回报周期拉得很长。在Milner看来，他们投资的公司能引领5年、10年甚至15年的潮流。既然如此，何必急于退出？</div>
<div id=\"cke_pastebin\">
	　　这种反传统智慧的投资之道涉及的资金和风险都很大，但回报远高于普通VC。目前，DST对Facebook的投资总计达8亿美元以上，占有股份近10%，在外部投资者中仅次于Accel Partners。2009年DST投入的2亿美元使Facebook估值达到100亿美元。两年后的今天，Facebook的最新估值是600亿美元。最粗略的计算是，DST的投资价值两年内翻了6倍达到60亿美元。</div>
<div id=\"cke_pastebin\">
	　　&ldquo;DST更多是资本层面上的操作，有一批操刀过国际互联网投资的欧美最强投行背景的人。他们动作很快、开价很高、眼光很准，看中一个就抓住一个，也不考虑太多所谓&lsquo;策略&rsquo;，比如不要董事会席位。而且进去就不轻易退出。&rdquo;腾讯创始人马化腾这样总结DST。</div>
<div id=\"cms_page_break\" style=\"page-break-after:always;\">
	<span style=\"display:none;\">&nbsp;</span></div>
<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/02(4).jpg\" style=\"width: 300px; height: 270px; \" /><br />
	&nbsp;</p>
<p>
	&nbsp;</p>
<div>
	<div id=\"cke_pastebin\">
		　　而Milner本人这样解释DST的独特吸引力：&rdquo;首先，我和其他投资者不一样的地方是，我同时还是企业家。就像中国的马化腾和马云，我也创建过自己的公司。这样我和企业家关系更贴近，战略、梦想、愿景等等都是我们的共同话题。其次，不像很多投资各种不同行业的基金，我们只投资面向消费者的互联网公司，非常专注，这让我们有完整的远见(vision)。第三，DST非常全球化。所以，当我们与企业家坐下来谈时，可以谈全球趋势、作为企业家的经历和我们专长的特别领域，总有很多东西可以谈。&rdquo;</div>
	<div id=\"cke_pastebin\">
		　　与所有其他优秀投资家一样，米尔纳认为投资必须重视人。10年前刚开始在俄罗斯做投资时，他低估了这一因素的重要性。比如，他曾经投资过一个发展迅速、看上去也非常有趣的公司。但与很多成功企业家从大学退学创业完全相反，这个年轻的管理团队忽然想去读商学院。最终这家公司被卖出售，DST赚了一些钱，&ldquo;但这不是一家伟大的公司&rdquo;。因此，Zynga的平克斯在回忆起与米尔纳和塔马斯的一次会议时评论道：&ldquo;他们最关心的不是我们公司，更多是我和管理团队&mdash;我们是不是真的下决心大干一场？&rdquo;现在，米尔纳认为DST所投三家公司的创始人&ldquo;都很有使命感，希望极大改变人们做事的方式。这样的人并不多&rdquo;。</div>
	<div id=\"cke_pastebin\">
		　　一个有趣的小细节是，身为投资者的米尔纳从来不用名片，并将自己的Facebook主页隐私设置成最严格的&mdash;据说他在上面只有50多个好友。整个DST的官方网站上也只有一个蓝色的LOGO和一个邮件地址。看上去，奉行晚期投资的米尔纳和DST希望自己在&ldquo;远处&rdquo;看到目标再迅速长途奔袭而去，不太愿意被找上门的交易打扰。</div>
	<div id=\"cke_pastebin\">
		　　中国自然有很多庞大的目标能被看见，遗憾的是它们大多已经上市，DST惯常的投资方法难以施展。可以肯定的是，米尔纳来中国的次数比外界想象的更多，最早一次可追溯至2003年。过去8年间中国互联网的飞速发展让其印象深刻：&ldquo;最大的变化是很多公司规模都变得很大，开始具有全球化雄心和思维。&rdquo;当被《环球企业家》问及是否找到适合中国的投资方法时，对中国主要互联网公司名字如数家珍的米尔纳非常肯定地回答&ldquo;是的&rdquo;，但不愿透露具体情况：&ldquo;我来中国也都是见人、看公司。必须先建立起联系，而这需要时间。有合作伙伴总比没有好。&rdquo;而当提及Mail.ru时，他将其描述为俄罗斯的&ldquo;腾讯+盛大+网易+搜狐&rdquo;。显而易见，除了抢占美国互联网制高点，极其勤奋的米尔纳也已完成了他的中国互联网初步教育。接下来，有理由期待更多让人击节的交易。</div>
</div>
','','1','0',',','1','1','1','0','0','','204','0.00','0','','1','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('32','1','2',',3,','中国音像协会抗议百度侵权','','','0','','','','','','','<p style=\"margin-top: 15px; margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; font-size: 14px; line-height: 23px; \">
	&nbsp;</p>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 继50余位作家和出版人发文声讨百度侵权之后，音乐圈也终于按捺不住了。16日，中国音像协会唱片工作委员会通过搜狐音乐发布了一篇抗议百度的公开信。与此同时，仍有大量的作家在申请加入《三一五中国作家讨百度书&mdash;&mdash;这是我们的权利》的署名行列。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　在国家音乐创意产业基地总裁许晓峰发起、中国音像协会唱片工作委员会署名的《抗议百度公开信》中写道，&ldquo;中国的原创音乐人并没有如同世界其他国家的音乐人一样迎来一场数字音乐的春天，反而发现自己的权益更加无法保护，因为他们面临一个更为强大、更为肆无忌惮的敌人，那就是无处不在的盗版网站。而这些盗版网站赖以生存的重要手段之一，那就是百度的深度链接。&rdquo;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　文中指出目前国内音乐网站如新浪乐库、巨鲸音乐网等通过购买版权，或经权利人许可的方式，为消费者提供免费正版音乐，并将其广告收入和权利人分享，这种商业模式已经成熟。而百度为了获得巨额流量，从而增加广告收益，在明知不法网站盗版行径的前提下仍然提供链接，&ldquo;担任盗版的帮凶，损害音乐权利人的权益。&rdquo;目前，包括高晓松、朱哲琴、汪峰、栾树、黄燎原、周云山、丁武、叶蓓、徐颢菲、刘洋、丁薇、刘卓辉、水木年华、中国摇滚榜等51位音乐人或组织明确表示支持该抗议行动。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　沈浩波和高晓松随后在微博中透露，&ldquo;讨百度书&rdquo;发表后，百度已有高层出面与两人谈判，双方达成约定：不接受解决个案，必须从根本上对全行业做出解决方案；清明节前，百度必须与行业公推代表进行透明谈判。</div>
','','1','0',',','0','1','1','0','0','','405','0.00','0','','0','0','0','0','admin','1300377600'),('33','1','2',',3,','凡客达人上线 陈年力推10亿分成计划','','','0','凡客达人','','','','','','<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 凡客诚品(VANCL)(以下简称&ldquo;凡客&rdquo;)正式推出社区化营销平台&ldquo;凡客达人&rdquo;。对此，凡客CEO陈年表示，将会拿出10亿元分成给各个店主。</div>
<div id=\"cke_pastebin\">
	　　据悉，凡客达人是一种将电子商务SNS化、线上线下结合的新型营销模式。借助这一平台，顾客可以上传凡客产品搭配图片，并附上产品链接。一旦有顾客购买，上传者即能获得提成。</div>
<div id=\"cke_pastebin\">
	　　关于10亿分成计划的具体细节，陈年在其个人微博中简单透露称，&ldquo;此计划很简单：搭配、拍照、分钱。&rdquo;此外，他还表示，凡客诚品的后台和前台还将向全体用户开放。</div>
<div id=\"cke_pastebin\">
	　　据了解，从2010年11月开始筹备，今年1月26日发布第一版，凡客达人业已试运行达两月之久。</div>
<div id=\"cke_pastebin\">
	　　华兴资本董事长包凡认为，凡客达人采用了&ldquo;让客户成为商家&rdquo;的颠覆性营销模式，既能实现平台社区化，提高用户黏度，同时能降低市场费用，并按用户行为进行精准营销。&ldquo;以后，甚至把设计都可以又用户产生。&rdquo;</div>
<div id=\"cke_pastebin\">
	　　中国广告网文章也就此分析称，这一平台的开放意味着卖家出售的将不再是产品，而是其营销能力。同时，对于凡客来讲，通过支付10%的分成让无数卖家为自己做产品营销，怎么看都是&ldquo;不错的买卖&rdquo;。</div>
<div id=\"cke_pastebin\">
	　　对于凡客达人的上线，易凯CEO王冉评论称，微博让每个人成为媒体，凡客则是&ldquo;让每个人成为设计师&rdquo;。凡客投资人之一的雷军在个人微博透露，凡客今年会有很多大动作，推出凡客达人只是其第一步。</div>
','','1','0',',','0','1','1','0','0','','845','0.00','0','','0','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('34','1','2',',3,','当当网发公告称正式停止百度广告和搜索投放','当当网,百度广告,搜索投放','','0','','','','','当当网,公告,,百度广告,搜索,投放','','<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 3月18日下午消息，当当网正式对外发布公告，称从4月1日起将全面停止百度广告和搜索引擎投放，网友届时无法从百度的习惯位置找到当当网登录入口。此前当当网联合总裁李国庆曾炮轰百度搜索&ldquo;搞流氓手段&rdquo;。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　昨日当当网联合总裁李国庆(微博)就表示，从4月开始停止在百度投放广告，并表示愿意为近期文学和音乐界多位人士声起诉百度侵权提供资金。此前李国庆就在微博上炮轰过百度，称&ldquo;百度强奸排名结果，对品牌词还收费&rdquo;。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　在今日的公告中，当当网也对停止百度广告和搜索引擎投放做出解释，称是由于&ldquo;百度肆意操控搜索结果、不尊重知识产权等垄断行为&rdquo;。并称将把原计划用于百度投放的所有费用，投入到物流提速和商品低价等方面。</div>
','','1','0',',','0','1','1','0','0','','932','0.00','0','','0','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('35','1','2',',1,','索尼获准查看PS3黑客的PayPal账户','','','0','索尼,PS3黑客,PayPal账户','','','','索尼，PS3，黑客，PayPal','','<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 索尼日前获得法院的授权可以查看破解PS3的知名黑客乔治&middot;霍兹(George Hotz)的PayPal账户。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　索尼称，外号Geohot的乔治&middot;霍兹接到了来自加州的资金捐赠以帮助他完成破解，但是乔治&middot;霍兹一直坚称他没有接受任何形式的捐赠。索尼如今已经得到授权搜集可以决定乔治&middot;霍兹是否接受捐赠完成PS3破解等活动的账户信息。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　索尼现在所要做的是，搜集2009年1月1日到2011年2月1日期间任何有关霍兹的PayPal账户信息，以取得足够的证据确认乔治&middot;霍兹获得了来自加利福尼亚的资金支持。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　索尼所获得的捐赠信息将决定索尼对乔治&middot;霍兹的起诉地点，这里主要涉及乔治&middot;霍兹的老家新泽西和索尼更加喜欢的旧金山</div>
','','1','0',',','0','1','1','0','0','','733','0.00','0','','0','0','0','0','admin','1300377600'),('36','1','2',',1,','东方传媒与联想集团签约合作','','','0','东方传媒,联想集团,签约,合作','','','','东方传媒，联想，签约','','<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 昨天上午，上海广播电视台、上海东方传媒集团有限公司(SMG)与联想集团在上海签署协议，共同宣布在移动互联视频服务领域达成战略合作。市委常委、宣传部长杨振武出席并讲话。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　杨振武指出，此次东方传媒与联想集团合作，是我国广播电视行业和微电子与科技行业一次具有开创意义的合作，是两个行业最深层次的、跨越式的合作，开创了视听新媒体产业运营新模式。双方成立合资公司，符合党中央关于推进文化产业跨所有制、跨行业发展的整体要求，有利于推进广播电视产业的大发展、大繁荣，是三网融合业务实践的进一步推进，也有利于为全国提供更好的服务，最终走向全球发展。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　据悉，协议双方将通过发挥各自在终端产品、云计算、内容资源、市场运营等方面的优势，联手开拓中国移动互联与数字家庭市场。联想(北京)有限公司与SMG旗下新媒体百视通公司在上海成立名为&ldquo;视云网络科技&rdquo;的合资企业，由百视通持有合资公司51%的股份，联想持有49%。</div>
','','1','0',',','0','1','1','0','0','','479','0.00','0','','0','0','0','0','admin','1300377600'),('37','1','2',',1,','微软宣布中止Zune播放器开发 继续提供在线服务','','','0','','','','','微软，Zune，播放器','','<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 据外电消息报道，微软宣布中止Zune数据音乐播放器的开发，不会再推新版本。这意味着，长达四年半的微软与苹果播放器领域之争结束。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　微软2006年推出Zune播放器，而在那之前，苹果已经在2001年推出iPod。不少业内分析师认为，微软Zune的推出，就已经是姗姗来迟。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　微软近日表示，因为Zune已不再流行，因此计划中止Zune数据音乐播放器的开发，不会再推新版本。但会继续提供在线服务。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　微软计划中止Zune数据音乐播放器的开发，不会再推新版本，因为它不流行，但是它会继续在线提供音乐和视频服务，因为Xbox游戏机和Windows Phone也使用这些服务。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　微软新闻发言人称微软依然会在北美对Zune设备提供支持，Zune软件则将成为微软其它产品的一个部分。他在邮件中写道：&ldquo;我们的长远战略是战略点是：整个Zune生态系统贯穿微软平台，我们将继续向Zune服务提供音乐和视频。&rdquo;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　Zune播放器现在还在市面上销售，在微软的官网上也没有降价。16G版Zune售价为170美元，3G版则为200美元，比竞争对手iPod Touch低三分之一。</div>
','','1','0',',','0','1','1','0','0','','291','0.00','0','','0','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('38','1','2',',1,','甲骨文战略：更侧重私有云','','','0','甲骨文,战略,侧重','','','','','','<div id=\"cke_pastebin\">
	　　面对云计算蓬勃发展的热潮，人们开始从更全面的角度来探索云计算的发展规律，许多企业也开始根据自身的特点和优势制定自己的云发展战略。作为全球知名的IT 企业，甲骨文公司大中华区技术总经理喻思成日前表示，甲骨文公司的云战略是既支持公有云也支持私有云，给用户以充分的选择余地。但现阶段云战略的重点则侧重于私有云方面。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　喻思成认为，对企业而言，公有云、私有云、社区云以及混合云这4种云计算部署模式各有特点，选用公有云或私有云类似于购买还是租赁的选择。选择公有云意味着要将所有东西都外包给服务提供商，而选择私有云，则企业始终能够控制安全性、法规遵从性和服务质量。此外，在支出方式上，私有云既需要资本支出，也需要运营支出，而公有云一般仅涉及纯运营费用，而且一般要按照业务类别而非IT进行计费。在多种权衡之下，更多的企业最终可能会采用公有云和私有云结合的混合云。</div>
','','1','0',',','0','1','1','0','0','','778','0.00','0','','0','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('39','1','2',',1,','微软将于今天中午发布IE9正式版','','','0','','','','','','','<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01(15).jpg\" style=\"width: 500px; height: 256px; \" /><br />
	&nbsp;</p>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	　　新浪科技讯 北京时间3月15日消息，微软宣布将于当地时间3月14日在美国德州的&ldquo;西南偏南&rdquo;影视音乐互动大会(SXSW)上发表IE9正式版，该正式版包括39个语言版本。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　IE9支持多核CPU，是微软第一款采用全面硬件加速的浏览器，界面设计简单，包含隐私保护功能，并支持HTML5、CSS3等业界统一标准。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　IE9的Beta用户测试版版于2010年9月推出，据了解，在Beta版本测试期间，IE9成为微软历史上下载数量最多的测试版浏览器，下载次数超过4000万，其在Windows 7上使用率已经超过2%。</div>
','','1','0',',','0','1','1','0','0','','656','0.00','0','','0','0','0','0','admin','1300377600'),('40','1','2',',1,','美博客：苹果iOS操作系统缺陷并非特意而为','','','0','','','','','美博客，苹果，iOS，操作系统，缺陷','','<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 北京时间3月16日凌晨消息，美国科技博客SAI撰稿人丹&middot;弗洛默(Dan Frommer)周二撰文称，苹果用于iPhone和iPad的新版iOS操作系统存在一个明显缺陷，这种缺陷可能会导致网络应用的速度减慢，特别是在网络应用从桌面图标启动时更是如此。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　弗洛默称，市场上对此存在着一种&ldquo;阴谋论&rdquo;，即苹果这样做是有目的之举，旨在阻止用户使用网络应用和鼓励用于使用来自苹果应用商店的应用，这些应用可为苹果创造营收。但他指出，这种阴谋论是没有根据的，苹果一直都在对网络应用采取激励措施，来让其能在iPhone上良好地运行。</div>
','','1','0',',','0','1','1','0','0','','265','0.00','0','','0','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('41','1','2',',2,','解构日本危机文化 细数灾难电影精神力量(图)','','','0','解构,日本,危机,文化,灾难,电影,精神,力量','','','','日本,文化,灾难,电影','','<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01(16).jpg\" style=\"width: 300px; height: 360px; \" /></p>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	　　人类有文字记载开始，似乎从未停止过对世界末日的猜测和臆想，原来还停留在&ldquo;纸上谈兵&rdquo;的阶段，自从有了电影就进化到几乎贴身体验的地步。随着电影技术的不断进阶，以特效为主的灾难片已经成为一种供大众消费的主流类型片，然而日本3月11日发生9.0级强震，之后引发海啸并发生核危机，当电影里虚构的一幕在现实中上演时，人们不得不重新看待这个时刻准备自我&ldquo;沉没&rdquo;的国家。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　岛国日本土地狭小、资源有限，加上地震、火山爆发等天灾频发，自然造就了他们强烈的危机意识，在以往的影视剧作品中，日本也热衷于表现强烈的末世情结。尽管在幻想中一次又一次被毁灭，日本在电影中还是保持着淡定沉着的姿态。面对人类在自然界面前脆弱无助的现实，日本在电影中通过毁灭和重建激发出一种近乎诡异的精神力量。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	<strong>　　● 科学家 来自《日本沉没》</strong></div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	<strong>　　电影</strong></div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　谈到日本人强烈的危机意识和末世情结，最具代表性的作品非《日本沉没》莫属。该片改编自畅销书《日本沉没》，作者小松左京是日本著名的科幻小说家。1973年出版的《日本沉没》，创下了上、下集400万册的销售记录，成为当年日本第一畅销书，并于翌年荣获第27届日本推理作家协会奖和第5届日本科幻文学星云奖。书中关于日本沉没的科学论证言之凿凿，当年即被森谷司郎拍成同名电影，但碍于技术限制，影片并无小说般引起关注，只是到2006年，东宝公司再次投入重金翻拍时才引起轰动。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　影片深刻契合了日本人的第一大环境忧患意识，即通常所说的&ldquo;国土狭小、灾害横行&rdquo;，这也是日本国民意识及价值观的基石。如果说《地震列岛》仅仅是预测到常见的地震灾害，那么《日本沉没》则将危机提升到亡国的高度。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	<strong>　　角色</strong></div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　片中的科学家经过精密的调查和研究，得出日本列岛将在一年后沉没的骇人结论。面对突如其来的自然灾难，人们表现出绝望与茫然，但坚定的科学家和救护人员却不乏乐观与从容。草剪刚饰演的科学家小野寺在救援过程中爱上了柴崎幸饰演玲子，最终为了让所有相爱的人把情感延续下去，小野毅然决然地操作潜艇潜入海底7000米处去点燃那能使日本与断裂的板块脱离的N2炸药&hellip;&hellip;他们带着甜蜜的笑容和安详的神情，以英雄主义的牺牲完成了家园的救赎。</div>
<div id=\"cms_page_break\" style=\"page-break-after:always;\">
	<span style=\"display:none;\">&nbsp;</span></div>
<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/02(5).jpg\" style=\"width: 300px; height: 354px; \" /></p>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	<strong>　　● 医生 来自《感染列岛》</strong></div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	<strong>　　电影</strong></div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　日本沉没可能是一件遥不可及的事儿，相比海啸、地震、火山等自然灾害，与新型病毒有关的事件恐怕也最能引起重视，《感染列岛》中病毒勾勒出的末日图景也更加可信。新年伊始，某市立医院接下了一个急诊病患，病人高烧、吐血、内脏受损情况十分严重，但无法确诊是什么病，由于找不到有效的治疗方法，病人很快身亡。然而医院里面的一些医疗人员也染上了这种怪病，接着又波及到患者、外来人员，最终病毒开始在全日本蔓延，患者已达数千万，受灾状况已经超过了战争。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　虽然今天的医疗卫生水平已经相当发达，但小到肉眼根本看不见的病毒依然能轻松夺取人类的生命。对于人口不断减少又十分倚重人力优势的日本，防治病毒的压力可想而知。有了多国惨重的&ldquo;前车之鉴&rdquo;，《感染列岛》选取病毒题材，无疑具有更加现实的警世意义。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	<strong>　　角色</strong></div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	　　尽管影片在2005年戛纳国际电影节上引发关注，但遗憾的是影片在叙事上略嫌虚张声势，刻意去塑造的情感冲击也显得相当平淡。不过看着医护人员逐一倒下，却继续奋勇坚持在一线，那份对待未知与死亡的态度仍然值得学习。在忙碌的日本，交织着社会冷漠和个人热情的背景下，妻夫木聪、檀丽饰演的松冈和荣子很好地展现了医生那完美主义和急救原则的矛盾，在行将崩溃的危机面前，专业医生的人性拷问也格外引人深思。</div>
','','1','0',',','1','1','1','0','0','','1117','0.00','0','','1','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('42','1','2',',4,','动物园将旧奔驰给猴子当玩具 被大卸八块(图)','','','0','','','','','动物园，猴子','','<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01(9).jpg\" style=\"width: 450px; height: 235px; \" /><br />
	朗利特野生动物园的猴群跳上奔驰汽车</p>
<p style=\"text-align: center; \">
	<br />
	<img alt=\"\" src=\"inc/uploads/ckeditor/02(2).jpg\" style=\"width: 450px; height: 405px; \" /><br />
	轮毂帽被猴子拆了下来</p>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 据英国《每日邮报》报道，英国朗利特野生动物园近日将一辆报废的破旧奔驰给猴子当玩具，猴子们把车上能拆的东西都拆了下来，玩得不亦乐乎。</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 每一个去过野生动物园的人都知道，当你开车经过猴群的时候，千万不要逗留，这些顽皮的家伙很可能会让你的汽车面目全非。</div>
<div id=\"cke_pastebin\">
	　　朗利特野生动物园位于英国威尔特郡(Wiltshire)，由于之前两年进行整修，游客禁止驾车入内，猴子们已经很久没有见到汽车了。这次动物园重新开放，猴子们发现了一个新玩具：一辆破旧奔驰汽车。</div>
<div id=\"cke_pastebin\">
	　　这群恒河短尾猴可能是因为太久没有见到汽车，心中充满怒气，迫不及待地跳上奔驰研究起来。它们拆下行李箱、后视镜、轮毂帽、车牌、雨刷等一切能拆下的东西，甚至穿上行李箱内的衣服，玩得不亦乐乎。</div>
<div id=\"cms_page_break\" style=\"page-break-after:always;\">
	<span style=\"display:none;\">&nbsp;</span></div>
<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01(10).jpg\" style=\"width: 450px; height: 446px; \" /><br />
	后视镜是猴子最爱的玩具</p>
<p style=\"text-align: center; \">
	<br />
	<img alt=\"\" src=\"inc/uploads/ckeditor/02(3).jpg\" style=\"width: 450px; height: 377px; \" /><br />
	利用轮胎滚着走似乎也不错</p>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	　　它们是一个小家庭，共有20多只短尾猴组成，其中一只雄性短尾猴是一家之主。由于猴子天生聪明好动，对各种事物充满好奇，它们一直都对车充满喜爱。</div>
<div id=\"cke_pastebin\">
	　　朗利特野生动物园重新开放以后，每天又将有很多人驾车前来游玩，最多的时候可能一天能有2000辆车穿过猴群，它们一定会非常高兴。</div>
<div id=\"cke_pastebin\">
	　　伊恩&bull;特纳(Ian Turner)是这个野生动物园的副园长，他说，&ldquo;把废弃的汽车给猴子们当玩具，这一做法被证明很有效，猴子们心情大好，而这群猴子正是我们动物园的一个亮点。&rdquo;</div>
','','1','0',',','0','1','1','0','0','','666','0.00','0','','1','0','0','0','admin','1300377600'),('43','1','2',',2,','《洛杉矶之战》受质疑 场面够大创新欠佳(图)','','','0','','','','','','','<p style=\"text-align: center; \">
	<img alt=\"\" src=\"inc/uploads/ckeditor/01(17).jpg\" style=\"width: 300px; height: 200px; \" /><br />
	《洛杉矶之战》剧照</p>
<p>
	&nbsp;</p>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 外星人、世界之战、城市覆灭，号称科幻巨制的《洛杉矶之战》样样都想沾点边，结果落了个样样不讨好，成了一部科幻外壳下的美式战争片。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 虽然讲的是&ldquo;外星人入侵地球&rdquo;的故事，但观众盼了半天，才出现了一些半机械半动物的外星人，一向被视为&ldquo;高智能&rdquo;的外星人到了这里，原来只要关了无线电就能甩掉。片中主要场景都在洛杉矶，但还是&ldquo;大胃口&rdquo;地说出&ldquo;全世界陷入战争中&rdquo;，结果所有的战斗都在海岸线10公里的范围内完成了。片中不乏桥梁断裂、空军基地被铲平、城市陷入一片火海等画面，看起来就像到了&ldquo;世界末日&rdquo;，但跟已有的灾难大片比起来，这些恐怕已成了常规画面。</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; 影片中的战争故事是十足的&ldquo;美国范儿&rdquo;，痛失战友的海军陆战队老兵重拾信心，临危受命的士兵时刻不忘&ldquo;绝不撤退&rdquo;，海军陆战队员为救平民不惜牺牲自己，&ldquo;信念&rdquo;在片中成了最大的明星。而影片的灵感其实来自真实的战争&mdash;&mdash;&ldquo;二战&rdquo;中的一天，洛杉矶上空突然飘过几件风船武器，驻扎在当地的4个防空连向空中发射了 1600发炮弹，结果折腾了几天，只击落了不到20个气球。在这段神秘的历史背景下看这部影片，倒能满足一些科幻迷的幻想。</div>
','','1','0',',','1','1','1','0','0','','383','0.00','0','','0','0','0','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('51','1','6',',26,','MYCMS服务与业务介绍','','','0','','','','','MYCMS,源码','','产品一、此处略去约八千字符 。。。','','1','0',',','0','1','1','0','0','','810','0.00','0','','0','0','0','0','admin','1280592000');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('52','1','6',',26,','SongCMS业务及技术支持','','','0','','','','','','','产品二、此处略去约三千字符 。。','','1','0',',','0','1','1','0','0','','1421','0.00','0','','0','0','0','0','admin','1280764800'),('53','1','6',',26,','OA 自动化办公系统','','','0','','','','','','','<div class=\"box\" style=\"outline-width: 0px; outline-style: initial; outline-color: initial; margin-top: 0px; margin-right: auto; margin-bottom: 0px; margin-left: auto; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; font-family: 宋体; color: rgb(51, 51, 51); font-size: 12px; width: 950px; \">
	<div class=\"frame_main\" style=\"outline-width: 0px; outline-style: initial; outline-color: initial; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 10px; padding-bottom: 0px; padding-left: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; font-family: 宋体; color: rgb(51, 51, 51); font-size: 12px; float: left; width: 640px; overflow-x: hidden; overflow-y: hidden; \">
		<div class=\"content_common\" style=\"outline-width: 0px; outline-style: initial; outline-color: initial; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; list-style-type: none; list-style-position: initial; list-style-image: initial; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; font-family: 宋体; color: rgb(51, 51, 51); font-size: 14px; line-height: 25px; clear: both; width: 620px; height: auto; overflow-x: hidden; overflow-y: hidden; \">
			产品三、此处略去约九千字符 。。</div>
	</div>
</div>
','','1','0',',','0','1','1','0','0','','1103','0.00','0','','0','0','0','0','admin','1283270400'),('54','1','6',',26,','微博系统及相关支持','','','0','','','','','微博系统及相关支持','','<div class=\"box\" style=\"outline-width: 0px; outline-style: initial; outline-color: initial; margin-top: 0px; margin-right: auto; margin-bottom: 0px; margin-left: auto; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; font-family: 宋体; color: rgb(51, 51, 51); font-size: 12px; width: 950px; \">
	<div class=\"frame_main\" style=\"outline-width: 0px; outline-style: initial; outline-color: initial; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 10px; padding-bottom: 0px; padding-left: 0px; list-style-type: none; list-style-position: initial; list-style-image: initial; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; font-family: 宋体; color: rgb(51, 51, 51); font-size: 12px; float: left; width: 640px; overflow-x: hidden; overflow-y: hidden; \">
		<div class=\"content_common\" style=\"outline-width: 0px; outline-style: initial; outline-color: initial; margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 10px; padding-right: 10px; padding-bottom: 10px; padding-left: 10px; list-style-type: none; list-style-position: initial; list-style-image: initial; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; font-family: 宋体; color: rgb(51, 51, 51); font-size: 14px; line-height: 25px; clear: both; width: 620px; height: auto; overflow-x: hidden; overflow-y: hidden; \">
			产品四、此处略去约三千字符 。。</div>
		<div>
			&nbsp;</div>
	</div>
</div>
','','1','0',',','0','1','1','0','0','','387','0.00','0','','0','0','0','0','admin','1289232000'),('55','1','6',',26,','软件使用授权许可协议','','','0','','','','','','','。。。。','','1','0',',','0','1','1','0','0','','1142','0.00','0','','0','0','0','0','admin','1283788800'),('56','1','6',',26,','服务价格及功能定制','','','0','','','','','','','。。。','','1','0',',','0','1','1','0','0','','4167','0.00','0','','0','0','0','0','admin','1294588800');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('58','1','9',',27,','急聘PHP/JAVA高级工程师、WEB前端开发工程师、移动应用开发工程师','','','0','','','','','','','急聘PHP/JAVA高级工程师、WEB前端开发工程师、移动应用开发工程师<br />
急聘PHP/JAVA高级工程师、WEB前端开发工程师、移动应用开发工程师<br />
急聘PHP/JAVA高级工程师、WEB前端开发工程师、移动应用开发工程师','','1','0',',','0','1','1','0','0','','400','0.00','0','','0','0','0','0','admin','1331395200');/* MySQLReback Separation */
 /* 插入数据 `cms_article` */
 INSERT INTO `cms_article` VALUES ('61','1','2',',1,','《战国》发&quot;影帝&quot;篇花絮 戏里戏外都是帝王','','','0','','','','','','','','','1','0',',','0','1','1','1','0','','630','0.00','0','','0','0','0','0','admin','1331568000');/* MySQLReback Separation */
 /* 创建表结构 `cms_category`  */
 DROP TABLE IF EXISTS `cms_category`;/* MySQLReback Separation */ CREATE TABLE `cms_category` (
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
) ENGINE=MyISAM AUTO_INCREMENT=33 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_category` */
 INSERT INTO `cms_category` VALUES ('1','1','行业资讯','MO001x','2','1',',1,','','','','','','0','','','','','1','1300419480'),('2','1','娱乐新闻','MO001x','2','1',',2,','','','','','','0','','','','','2','1300419587'),('3','1','互联网','MO001x','2','1',',3,','','','','','','0','','','','','3','1300419700'),('4','1','社会万象','MO001x','2','1',',4,','','','','','','0','','','','','4','1300419860'),('5','1','家用电器','MO002x','3','1',',5,','','','','','','0','','','','','1','1300456229'),('6','1','手机及配件','MO002x','3','1',',6,','','','','','','0','','','','','2','1300456242'),('7','1','电脑及耗材','MO002x','3','1',',7,','','','','','','0','','','','','3','1300456262'),('8','1','办公器材','MO002x','3','1',',8,','','','','','','0','','','','','4','1300456401'),('9','1','时尚数码','MO002x','3','1',',9,','','','','','','0','','','','','5','1300459436'),('10','1','诺基亚','MO002x','3','2',',6,10,','','','','','','0','','','','','1','1300459782'),('11','1','三星','MO002x','3','2',',6,11,','','','','','','0','','','','','2','1300459801'),('12','1','索尼爱立信','MO002x','3','2',',6,12,','','','','','','0','','','','','3','1300459816'),('13','1','电话机','MO002x','3','2',',8,13,','','','','','','0','','','','','1','1300461298'),('14','1','传真机','MO002x','3','2',',8,14,','','','','','','0','','','','','2','1300461311'),('15','1','打印机','MO002x','3','2',',8,15,','','','','','','0','','','','','3','1300461328'),('16','1','洗衣机','MO002x','3','2',',5,16,','','','','','','0','','','','','1','1300462061'),('17','1','电视机','MO002x','3','2',',5,17,','','','','','','0','','','','','2','1300462076'),('18','1','冰箱空调','MO002x','3','2',',5,18,','','','','','','0','','','','','3','1300462093'),('19','1','小家电','MO002x','3','2',',5,19,','','','','','','0','','','','','4','1300462113'),('20','1','影视娱乐','MO003x','4','1',',20,','','','','','','0','','','','','1','1300500616'),('21','1','明星写真','MO003x','4','1',',21,','','','','','','0','','','','','2','1300500674'),('22','1','应用软件','MO004x','5','1',',22,','','','','','','0','','','','','2','1300510394'),('23','1','源码下载','MO004x','5','1',',23,','','','','','','0','','','','','1','1300510363'),('24','1','素材下载','MO004x','5','1',',24,','','','','','','0','','','','','3','1300510456'),('25','1','模板下载','MO004x','5','1',',25,','','','','','','0','','','','','4','1300510581'),('26','1','产品与服务','MO001x','6','1',',26,','','','','','','0','about_channel','about_view','','','1','1300511555'),('27','1','默认分类','MO001x','9','1',',27,','','','','','','0','about_channel','about_view','','','1','1300426455'),('28','1','默认分类','MO003x','10','1',',28,','','','','','','0','about_channel','about_view','','','1','1300452807'),('29','2','Default','MO001x','16','1',',29,','','','','','','0','about_channel','about_view','','','1','1331472719'),('30','2','Default','MO001x','19','1',',30,','','','','','','0','about_channel','about_view','','','1','1331470872'),('31','2','Default','MO003x','20','1',',31,','','','','','','0','about_channel','about_view','','','1','1331470878'),('32','1','招聘','PL011x','21','1',',32,','','','在线招聘','在线招聘','在线招聘','0','job_channel','job_view','','在线招聘','20','1340870335');/* MySQLReback Separation */
 /* 创建表结构 `cms_channel`  */
 DROP TABLE IF EXISTS `cms_channel`;/* MySQLReback Separation */ CREATE TABLE `cms_channel` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_channel` */
 INSERT INTO `cms_channel` VALUES ('1','1','首 页','{home}','_self','0','0','1','','','','','','','','1','1300415159'),('2','1','资 讯','','_self','MO001x','0','1','news/index.html','news/{CID}.html','news/{Y}{M}/{ID}.html','新闻资讯','','','','2','1300417178'),('3','1','商 品','','_self','MO002x','0','1','product/index.html','product/{CID}.html','product/{Y}{M}/{ID}.html','电器商城','','','','3','1300417337'),('4','1','图 集','','_self','MO003x','0','1','photo/index.html','photo/{CID}.html','photo/{Y}{M}/{ID}.html','图片展示频道','','','','4','1300417493'),('5','1','下 载','','_self','MO004x','0','1','download/index.html','download/{CID}.html','download/{Y}{M}/{ID}.html','软件下载','','','','5','1300417588'),('6','1','服 务','','_self','MO001x','0','1','service/index.html','service/{CID}.html','service/{CID}-{ID}.html','产品与服务','','','about_channel','6','1300417612'),('7','1','在线反馈','{feedback}','_self','0','0','0','','','','','','','','7','1331463303'),('8','1','在线留言','{guestbook}','_self','0','0','0','','0','','','','','','8','1300421995'),('9','1','网站公告','','_self','MO001x','0','0','annou/index.html','annou/{PID}-{CID}.html','annou/{ID}.html','网站公告','','','about_channel','9','1300426388'),('10','1','焦点图','','_self','MO003x','0','0','','','','网站焦点图','','','','10','1300452311'),('11','2','Home','{home}','_self','0','0','1','','','','','','','','1','1300422199'),('12','2','News','','_self','MO001x','0','1','en/news/index.html','en/news/{CID}.html','en/news/{Y}{M}/{ID}.html','News Center','','','','2','1300422318'),('13','2','Shopping','','_self','MO002x','0','1','en/product/index.html','en/product/{CID}.html','en/product/{Y}{M}/{ID}.html','Shopping','','','','3','1300422856'),('14','2','Photo','','_self','MO003x','0','1','en/photo/index.html','en/photo/{CID}.html','en/photo/{Y}{M}/{ID}.html','Photo','','','','4','1300425035'),('15','2','Download','','_self','MO004x','0','1','en/download/index.html','en/download/{CID}.html','en/download/{Y}{M}/{ID}.html','Download','','','','5','1300425066'),('16','2','Services','','_self','MO001x','0','1','en/service/index.html','en/service/{CID}.html','en/service/{CID}-{ID}.html','Services','','','about_channel','6','1300425095'),('17','2','Feedback','{feedback}','_self','0','0','0','','','','','','','','7','1331469822'),('18','2','GuestBook','{guestbook}','_self','0','0','0','','','','','','','','8','1300421995'),('19','2','Announcement','','_self','MO001x','0','0','en/annou/index.html','en/annou/{PID}-{CID}.html','annou/{ID}.html','Other Articles','','','about_channel','9','1300426388'),('20','2','Focus Picture','','_self','MO003x','0','0','','','','Focus Picture','','','','10','1300452311'),('21','1','招聘','','_self','PL011x','0','1','job/index.html','job/{CID}.html','job/{CID}-{ID}.html','在线招聘','在线招聘','在线招聘','recruitment','20','1340868564');/* MySQLReback Separation */
 /* 创建表结构 `cms_download`  */
 DROP TABLE IF EXISTS `cms_download`;/* MySQLReback Separation */ CREATE TABLE `cms_download` (
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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_download` */
 INSERT INTO `cms_download` VALUES ('1','1','5',',22,','MYCMS V2.2 最新免费版下载','','0','','','','http://www.MYCMS.com','http://demo.MYCMS.com/01/','PHP5.2/MySQL5','多国语言','免费版','12.3M','','0','MYCMS官方下载|http://www.MYCMS.com
中国站长站下载|http://down.chinaz.com/soft/29558.htm
A5下载站|http://down.admin5.com/php/72683.html','MYCMS,下载','MYCMS 多语言企业网站管理系统，是一项基于PHP+MYSQL为核心开发的一套免费 + 开源的专业建站系统。软件具执行效率高、多国语言支持、后台管理功能方便等诸多优秀特点。凭借我们不断的创新精神和认真的工作态度，相信能够为您带来全新的使用体验！','','1','0','0','0','inc/uploads/download/demo_01.jpg,inc/uploads/download/demo_02.jpg,inc/uploads/download/demo_03.jpg','0','1','0','0','','995','8544','0.00','0','','1','admin','1301673600'),('2','1','5',',24,','MYCMS V2.0 商业授权版下载','','0','','MYCMS官方','','http://www.MYCMS.com','http://demo.MYCMS.com/01/','PHP5.2/MySQL5','多国语言','商业授权','12.3M','#','0','','MYCMS,下载,源码','MYCMS 多语言企业网站管理系统，是一项基于PHP+MYSQL为核心开发的一套免费 + 开源的专业建站系统。软件具执行效率高、多国语言支持、后台管理功能方便等诸多优秀特点。凭借我们不断的创新精神和认真的工作态度，相信能够为您带来全新的使用体验！','','1','0','0','0','inc/uploads/download/demo_04.jpg,inc/uploads/download/demo_05.jpg,inc/uploads/download/demo_06.jpg','0','1','0','0','','69726','3536','2880.00','0','','0','admin','1301673600'),('3','1','5',',22,','公司常用表格下载','','0','','','','','','','','','','http://www.MYCMS.com/inc/templates/frontend/technology/images/app.png','0','','','','','1','0','0','0',',','0','1','0','0','','70','542','0.00','0','','0','admin','1331395200'),('4','1','5',',23,','Windows Media Player 11 简体中文版','','0','','','','','','','','','','','0','华军软件园|http://nj.newhua.com/soft/3336.htm','','','','1','0','0','0',',','0','1','0','0','','723','5412','0.00','0','','0','admin','1331395200'),('5','1','5',',24,','Microsoft .NET Framework 2.0 (x86) 多国语言版','','0','','','','','','','','','','','0','华军软件园|http://nj.newhua.com/softdown/38669_2.htm','','。。。','','1','0','0','0',',','0','1','0','0','','155','2544','0.00','0','','0','admin','1331395200'),('6','1','5',',25,','Macromedia Dreamweaver 8.0 简体版','','0','','','','','','','','','','','0','华军软件园|http://nj.newhua.com/softdown/22017_2.htm','','','','1','0','0','0',',','0','1','0','0','','717','1254','0.00','0','','0','admin','1331395200'),('7','1','5',',22,','谷歌浏览器 Google Chrome','','0','','','','','','','','','','','0','华军软件园|http://nj.newhua.com/softdown/7993_2.htm','','','','1','0','0','0',',','0','1','0','0','','331','45219','0.00','0','','0','admin','1331395200'),('8','1','5',',25,','Daemon Tools 3.47.0 简体中文版','','0','','','','','','','','','','','0','华军软件园|http://nj.newhua.com/softdown/3617_2.htm','','','','1','0','0','0',',','0','1','0','0','','215','2541','0.00','0','','0','admin','1331395200'),('9','1','5',',23,','Mozilla Firefox 10.0.2 简体版','','0','Firefox,简体版','','','','','','','','','','0','华军软件园|http://nj.newhua.com/softdown/3600_2.htm','','','','1','0','0','0',',','0','1','0','0','','793','5422','0.00','0','','0','admin','1331395200'),('10','1','5',',24,','Macromedia Fireworks 8.0 简体版','','0','','','','','','','','','','','0','华军软件园|http://nj.newhua.com/softdown/9864_2.htm','','','','1','0','0','0',',','0','1','0','0','','797','1','0.00','0','','0','admin','1331395200'),('11','1','5',',25,','iTools简体中文版 2012 Beta 0228','','0','iTools,简体中文版','','','','','','','','','','0','华军软件园|http://nj.newhua.com/softdown/115681_2.htm','','','','1','0','0','0',',','0','1','0','0','','822','2141','0.00','0','','0','admin','1331395200');/* MySQLReback Separation */
 /* 创建表结构 `cms_guestbook`  */
 DROP TABLE IF EXISTS `cms_guestbook`;/* MySQLReback Separation */ CREATE TABLE `cms_guestbook` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `cms_ipvisit`  */
 DROP TABLE IF EXISTS `cms_ipvisit`;/* MySQLReback Separation */ CREATE TABLE `cms_ipvisit` (
  `ip` varchar(15) NOT NULL,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `ip` (`ip`,`lang`,`type`,`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_ipvisit` */
 INSERT INTO `cms_ipvisit` VALUES ('unknown','0','3','1340864370','1'),('unknown','0','3','1340864413','12');/* MySQLReback Separation */
 /* 创建表结构 `cms_job`  */
 DROP TABLE IF EXISTS `cms_job`;/* MySQLReback Separation */ CREATE TABLE `cms_job` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `channel` int(10) unsigned NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
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
) ENGINE=MyISAM AUTO_INCREMENT=62 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_job` */
 INSERT INTO `cms_job` VALUES ('58','1','9',',27,','急聘PHP/JAVA高级工程师、WEB前端开发工程师、移动应用开发工程师','','','0','','','','','','','急聘PHP/JAVA高级工程师、WEB前端开发工程师、移动应用开发工程师<br />
急聘PHP/JAVA高级工程师、WEB前端开发工程师、移动应用开发工程师<br />
急聘PHP/JAVA高级工程师、WEB前端开发工程师、移动应用开发工程师','','1','0',',','0','1','1','0','0','','400','0.00','0','','0','0','0','0','admin','1331395200');/* MySQLReback Separation */
 /* 创建表结构 `cms_links`  */
 DROP TABLE IF EXISTS `cms_links`;/* MySQLReback Separation */ CREATE TABLE `cms_links` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `cms_logs`  */
 DROP TABLE IF EXISTS `cms_logs`;/* MySQLReback Separation */ CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `pageurl` varchar(255) NOT NULL,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('1','1','[admin] 成功的登录后台。','http://localhost/admin/login.php','1','admin','unknown','1340773071'),('2','3','启用模板(free_elink0001)，操作成功','http://localhost/admin/template_manag.php?enable=free_elink0001','1','admin','unknown','1340775857'),('3','3','修改频道信息，操作成功(id:6)','http://localhost/admin/channel_update.php?id=6','1','admin','unknown','1340788872'),('4','3','修改频道信息，操作成功(id:6)','http://localhost/admin/channel_update.php?id=6','1','admin','unknown','1340788985'),('5','3','修改频道信息，操作成功(id:6)','http://localhost/admin/channel_update.php?id=6','1','admin','unknown','1340789021'),('6','3','启用模板(default)，操作成功','http://localhost/admin/template_manag.php?enable=default','1','admin','unknown','1340789034'),('7','4','模板卸载，操作成功','http://localhost/admin/template_manag.php?del=free_elink0001','1','admin','unknown','1340789100'),('8','3','启用模板(default_blue)，操作成功','http://localhost/admin/template_manag.php?enable=default_blue','1','admin','unknown','1340789178'),('9','1','[admin] 成功的登录后台。','http://localhost/admin/login.php','1','admin','unknown','1340846308'),('10','1','[admin] 成功的登录后台。','http://localhost/admin/login.php?goto=%2Fadmin%2Farticle_manage.php','1','admin','unknown','1340850179'),('11','1','[admin] 成功的登录后台。','http://localhost/admin/login.php','1','admin','unknown','1340856071'),('12','3','取消审核，操作成功(id:6)','http://localhost/admin/download_manage.php?channel=5&category=25&sort=0&page=1&trash=0&filter=0&action=unaudit&id=6','1','admin','unknown','1340867891'),('13','3','审核选中的资源，操作成功(id:6)','http://localhost/admin/download_manage.php?channel=5&category=25&sort=0&page=1&trash=0&filter=0&action=audit&id=6','1','admin','unknown','1340867895'),('14','3','将选中的资源设置为推荐，操作成功(id:6)','http://localhost/admin/download_manage.php?channel=5&category=25&sort=0&page=1&trash=0&filter=0&action=recom&id=6','1','admin','unknown','1340867902'),('15','3','取消推荐，操作成功(id:6)','http://localhost/admin/download_manage.php?channel=5&category=25&sort=0&page=1&trash=0&filter=0&action=unrecom&id=6','1','admin','unknown','1340867906'),('16','2','添加新频道，操作成功(id:21)','http://localhost/admin/channel_update.php','1','admin','unknown','1340868564'),('17','3','修改后台菜单设置(操作成功)','http://localhost/admin/set_file.php','1','admin','unknown','1340869356'),('18','3','修改后台菜单设置(操作成功)','http://localhost/admin/set_file.php','1','admin','unknown','1340869369'),('19','3','修改后台菜单设置(操作成功)','http://localhost/admin/set_file.php','1','admin','unknown','1340869382'),('20','3','修改后台菜单设置(操作成功)','http://localhost/admin/set_file.php','1','admin','unknown','1340869432'),('21','3','修改后台菜单设置(操作成功)','http://localhost/admin/set_file.php','1','admin','unknown','1340869446'),('22','3','修改频道信息，操作成功(id:21)','http://localhost/admin/channel_update.php?id=21','1','admin','unknown','1340869489'),('23','2','修改网站基本设置，操作成功','http://localhost/admin/set_web.php','1','admin','unknown','1340869530'),('24','4','删除选中的友情链接，操作成功(id:1)','http://localhost/admin/links_manage.php?page=1&action=del&id=1','1','admin','unknown','1340869582'),('25','3','修改文章内容，操作成功(id:58)','http://localhost/admin/article_update.php?id=58','1','admin','unknown','1340870039'),('26','2','添加栏目，操作成功(id:32)','http://localhost/admin/category_update.php?channel=21','1','admin','unknown','1340870335'),('27','4','彻底删除选中的内容，操作成功(id:57,50,49)','http://localhost/admin/article_manage.php','1','admin','unknown','1340870501'),('28','4','彻底删除选中的招聘，操作成功(id:48,47,46,45,44)','http://localhost/admin/job_manage.php','1','admin','unknown','1340870628'),('29','4','删除选中的招聘，操作成功(id:43)','http://localhost/admin/job_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=43','1','admin','unknown','1340870695'),('30','4','删除选中的招聘，操作成功(id:43)','http://localhost/admin/job_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=del&id=43','1','admin','unknown','1340870709'),('31','3','取消推荐，操作成功(id:43)','http://localhost/admin/job_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=unrecom&id=43','1','admin','unknown','1340870714'),('32','4','删除选中的招聘，操作成功(id:57,50)','http://localhost/admin/job_manage.php','1','admin','unknown','1340871171'),('33','4','彻底删除选中的招聘，操作成功(id:49,48,47,46,45,44,42,41,40,39,38,36,35)','http://localhost/admin/job_manage.php','1','admin','unknown','1340871197');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('34','3','，操作成功(id:58)','http://localhost/admin/job_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=unpublished&id=58','1','admin','unknown','1340871448');/* MySQLReback Separation */
 /* 插入数据 `cms_logs` */
 INSERT INTO `cms_logs` VALUES ('35','3','，操作成功(id:58)','http://localhost/admin/job_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0&action=published&id=58','1','admin','unknown','1340871456'),('36','4','删除选中的招聘，操作成功(id:37,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20,19,18,17)','http://localhost/admin/job_manage.php','1','admin','unknown','1340871778'),('37','4','彻底删除选中的招聘，操作成功(id:16,15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,56,54,55)','http://localhost/admin/job_manage.php?channel=0&category=0&sort=0&page=1&trash=0&filter=0','1','admin','unknown','1340871789'),('38','4','删除选中的招聘，操作成功(id:53,52,51)','http://localhost/admin/job_manage.php','1','admin','unknown','1340871804'),('39','4','彻底删除选中的招聘，操作成功(id:61,57,50,43,37,34,33,32,31,30,29,28,27,26,25,24,23,22,21,20)','http://localhost/admin/job_manage.php?trash=1','1','admin','unknown','1340871817'),('40','4','彻底删除选中的招聘，操作成功(id:19,18,17,53,52,51)','http://localhost/admin/job_manage.php?trash=1','1','admin','unknown','1340871832');/* MySQLReback Separation */
 /* 创建表结构 `cms_members`  */
 DROP TABLE IF EXISTS `cms_members`;/* MySQLReback Separation */ CREATE TABLE `cms_members` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `cms_module`  */
 DROP TABLE IF EXISTS `cms_module`;/* MySQLReback Separation */ CREATE TABLE `cms_module` (
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
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_module` */
 INSERT INTO `cms_module` VALUES ('1','MO001x','文章内容','inc/install/pack/article/mo001x.zip','1','article.php,list.php,view.php,{admin}/article_manage.php,{admin}/article_update.php,inc/language/frontend/chinese_simplified/article.lang.php,inc/language/frontend/chinese_simplified/list.lang.php,inc/language/frontend/chinese_simplified/view.lang.php,inc/language/frontend/english/article.lang.php,inc/language/frontend/english/list.lang.php,inc/language/frontend/english/view.lang.php,inc/language/manage/chinese_simplified/article_manage.lang.php,inc/language/manage/chinese_simplified/article_update.lang.php,inc/templates/manage/article_manage.dwt,inc/templates/manage/article_update.dwt,inc/lib/article.lib.php,inc/uploads/article','CMS官方制作','文章内容模块','1301642556'),('2','MO002x','产品(商品)','inc/install/pack/product/mo002x.zip','1','product.php,category.php,detail.php,cart.php,member/checkout.php,{admin}/product_manage.php,{admin}/product_update.php,{admin}/shop_order_manage.php,{admin}/shop_order_update.php,inc/language/frontend/chinese_simplified/product.lang.php,inc/language/frontend/chinese_simplified/category.lang.php,inc/language/frontend/chinese_simplified/detail.lang.php,inc/language/frontend/chinese_simplified/cart.lang.php,inc/language/frontend/chinese_simplified/checkout.lang.php,inc/language/frontend/english/product.lang.php,inc/language/frontend/english/category.lang.php,inc/language/frontend/english/detail.lang.php,inc/language/frontend/english/cart.lang.php,inc/language/frontend/english/checkout.lang.php,inc/language/manage/chinese_simplified/product_manage.lang.php,inc/language/manage/chinese_simplified/product_update.lang.php,inc/language/manage/chinese_simplified/shop_order_manage.lang.php,inc/language/manage/chinese_simplified/shop_order_update.lang.php,inc/templates/manage/product_manage.dwt,inc/templates/manage/product_update.dwt,inc/templates/manage/shop_order_manage.dwt,inc/templates/manage/shop_order_update.dwt,inc/lib/product.lib.php,inc/uploads/product,inc/script/shopping.js','CMS官方制作','商品（产品功能模块）','1301642676'),('3','MO003x','图片集','inc/install/pack/photo/mo003x.zip','1','photo.php,slide.php,show.php,{admin}/picture_manage.php,{admin}/picture_update.php,inc/language/frontend/chinese_simplified/photo.lang.php,inc/language/frontend/chinese_simplified/slide.lang.php,inc/language/frontend/chinese_simplified/show.lang.php,inc/language/frontend/english/photo.lang.php,inc/language/frontend/english/slide.lang.php,inc/language/frontend/english/show.lang.php,inc/language/manage/chinese_simplified/picture_manage.lang.php,inc/language/manage/chinese_simplified/picture_update.lang.php,inc/templates/manage/picture_manage.dwt,inc/templates/manage/picture_update.dwt,inc/lib/photo.lib.php,inc/uploads/picture,inc/script/hd_pics.js','CMS官方制作','图片集模块','1301642673'),('4','MO004x','软件下载','inc/install/pack/download/mo004x.zip','1','download.php,soft.php,down.php,{admin}/download_manage.php,{admin}/download_update.php,inc/language/frontend/chinese_simplified/download.lang.php,inc/language/frontend/chinese_simplified/soft.lang.php,inc/language/frontend/chinese_simplified/down.lang.php,inc/language/frontend/english/download.lang.php,inc/language/frontend/english/soft.lang.php,inc/language/frontend/english/down.lang.php,inc/language/manage/chinese_simplified/download_manage.lang.php,inc/language/manage/chinese_simplified/download_update.lang.php,inc/templates/manage/download_manage.dwt,inc/templates/manage/download_update.dwt,inc/lib/download.lib.php,inc/uploads/download','CMS官方制作','软件下载模块','1301642640'),('5','PL005x','友情链接','inc/install/pack/links/pl005x.zip','2','links.php,{admin}/links_manage.php,{admin}/links_update.php,inc/language/frontend/chinese_simplified/links.lang.php,inc/language/frontend/english/links.lang.php,inc/language/manage/chinese_simplified/links_manage.lang.php,inc/language/manage/chinese_simplified/links_update.lang.php,inc/templates/manage/links_manage.dwt,inc/templates/manage/links_update.dwt,inc/uploads/links','CMS官方制作','友情链接（合作伙伴）插件','1301642650'),('6','PL006x','在线留言','inc/install/pack/guestbook/pl006x.zip','2','guestbook.php,{admin}/guestbook_manage.php,{admin}/guestbook_reply.php,inc/language/frontend/chinese_simplified/guestbook.lang.php,inc/language/frontend/english/guestbook.lang.php,inc/language/manage/chinese_simplified/guestbook_manage.lang.php,inc/language/manage/chinese_simplified/guestbook_reply.lang.php,inc/templates/manage/guestbook_manage.dwt,inc/templates/manage/guestbook_reply.dwt','CMS官方制作','在线留言（在线反馈）插件','1301642643'),('7','PL007x','在线反馈','inc/install/pack/feedback/pl007x.zip	','2','feedback.php,inc/language/frontend/chinese_simplified/feedback.lang.php,inc/language/frontend/english/feedback.lang.php','CMS官方制作','在线反馈、在线订单、询盘、在线邮件','1301642679');/* MySQLReback Separation */
 /* 插入数据 `cms_module` */
 INSERT INTO `cms_module` VALUES ('8','PL008x','广告插件','inc/install/pack/ad/pl008x.zip','2','{admin}/ad_manage.php,{admin}/ad_update.php,inc/language/manage/chinese_simplified/ad_manage.lang.php,inc/language/manage/chinese_simplified/ad_update.lang.php,inc/templates/manage/ad_manage.dwt,inc/templates/manage/ad_update.dwt,inc/lib/ad.lib.php,inc/uploads/ad','CMS官方制作','广告管理插件','1301642552');/* MySQLReback Separation */
 /* 插入数据 `cms_module` */
 INSERT INTO `cms_module` VALUES ('9','PL009x','支付接口','inc/install/pack/payment/pl009x.zip','2','member/recharge.php,inc/plugins/payment,{admin}/shop_payment.php,inc/language/frontend/chinese_simplified/recharge.lang.php,inc/language/frontend/chinese_simplified/payment_return.lang.php,inc/language/frontend/english/recharge.lang.php,inc/language/frontend/english/payment_return.lang.php,inc/language/manage/chinese_simplified/shop_payment.lang.php,inc/templates/manage/shop_payment.dwt,inc/config/payment.config.php','CMS官方制作','电子商务支付接口','1301642669'),('10','PL010x','物流配送','inc/install/pack/shipping/pl010x.zip','2','{admin}/shop_shipping.php,inc/language/manage/chinese_simplified/shop_shipping.lang.php,inc/templates/manage/shop_shipping.dwt','CMS官方制作','物流配送方式管理插件','1301642679'),('11','PL011x','招聘','inc/install/pack/job/pl011x.zip','1','article.php,list.php,view.php,{admin}/job_update.php,inc/language/frontend/chinese_simplified/job.lang.php,inc/language/frontend/chinese_simplified/list.lang.php,inc/language/frontend/chinese_simplified/view.lang.php,inc/language/frontend/english/job.lang.php,inc/language/frontend/english/list.lang.php,inc/language/frontend/english/view.lang.php,inc/language/manage/chinese_simplified/article_manage.lang.php,inc/language/manage/chinese_simplified/article_update.lang.php,inc/templates/manage/job_manage.dwt,inc/templates/manage/job_update.dwt,inc/lib/job.lib.php,inc/uploads/job','CMS官方制作','招聘内容模块','1301642679');/* MySQLReback Separation */
 /* 创建表结构 `cms_order`  */
 DROP TABLE IF EXISTS `cms_order`;/* MySQLReback Separation */ CREATE TABLE `cms_order` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 创建表结构 `cms_picture`  */
 DROP TABLE IF EXISTS `cms_picture`;/* MySQLReback Separation */ CREATE TABLE `cms_picture` (
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
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_picture` */
 INSERT INTO `cms_picture` VALUES ('1','1','10',',28,','首页焦点图（650*260px）','','','0','home_focus','焦点图','','','','','','','1','0','inc/uploads/picture/demo_18.jpg,inc/uploads/picture/demo_20.jpg,inc/uploads/picture/demo_19.jpg','http://www.MYCMS.com/html/buy.html{I~N!T@E#R$V%A^L}http://www.MYCMS.com/service/52.html{I~N!T@E#R$V%A^L}http://www.MYCMS.com/html/host.html','0','1','0','0','','21','0.00','0','','0','0','0','admin','1292342400'),('2','1','10',',28,','资讯频道首页焦点图（278*248px）','','','0','news_focus','焦点图','','','','','','','1','0','inc/uploads/picture/demo_01.jpg,inc/uploads/picture/demo_02.jpg','view.php?id=5
环球企业家：马云的智力游戏{I~N!T@E#R$V%A^L}view.php?id=6
[电影] 新少林寺在线观看 [视频]','0','1','0','0','','182','0.00','0','','0','0','0','admin','1298217600'),('3','1','10',',28,','产品频道首页焦点图（278*348px）','','','0','product_focus','焦点图','','','','','','','1','0','inc/uploads/picture/demo_03.jpg,inc/uploads/picture/demo_04.jpg','detail.php?id=1
苹果平板电脑MB293CH/A{I~N!T@E#R$V%A^L}detail.php?id=2
尼康单反相机D90套机+4G卡+包','0','1','0','0','','32','0.00','0','','0','0','0','admin','1293984000'),('4','1','10',',28,','图片频道焦点图（525*225px）','','','0','photo_focus','焦点图','','','','','','','1','0','inc/uploads/picture/demo_14.jpg,inc/uploads/picture/demo_15.jpg,inc/uploads/picture/demo_16.jpg,inc/uploads/picture/demo_17.jpg','show.php?id=9
唐于鸿化身纯净天使{I~N!T@E#R$V%A^L}show.php?id=10
陆毅鲍蕾欧洲浪漫写真 体味初春丝丝暖意{I~N!T@E#R$V%A^L}show.php?id=9
《新还珠》杀青 琼瑶博客曝光剧照并祈福
{I~N!T@E#R$V%A^L}show.php?id=10
贾青甜蜜演绎异地纯恋','0','1','0','0','','32','0.00','0','','0','0','0','admin','1298563200'),('5','2','20',',31,','Home Page（650*260px）','','','0','home_focus','','','','','','','','1','0','inc/uploads/picture/demo_18.jpg,inc/uploads/picture/demo_19.jpg','http://www.MYCMS.com{I~N!T@E#R$V%A^L}http://www.MYCMS.com','0','1','0','0','','21','0.00','0','','0','0','0','admin','1292342400'),('6','2','20',',31,','News Channel（278*248px）','','','0','news_focus','','','','','','','','1','0','inc/uploads/picture/demo_01.jpg,inc/uploads/picture/demo_02.jpg','view.php?id=5
Global Entrepreneur{I~N!T@E#R$V%A^L}view.php?id=6
Watch Movies Online','0','1','0','0','','182','0.00','0','','0','0','0','admin','1298217600'),('7','2','20',',31,','Goods（278*348px）','','','0','product_focus','','','','','','','','1','0','inc/uploads/picture/demo_03.jpg,inc/uploads/picture/demo_04.jpg','detail.php?id=1
Apple ComputerMB293CH/A{I~N!T@E#R$V%A^L}detail.php?id=2
Digital Camera','0','1','0','0','','32','0.00','0','','0','0','0','admin','1293984000'),('8','2','20',',31,','Photo（525*225px）','','','0','photo_focus','','','','','','','','1','0','inc/uploads/picture/demo_14.jpg,inc/uploads/picture/demo_15.jpg,inc/uploads/picture/demo_16.jpg,inc/uploads/picture/demo_17.jpg','show.php?id=9
Star Photo{I~N!T@E#R$V%A^L}show.php?id=10
Star photo{I~N!T@E#R$V%A^L}show.php?id=9
Star photo
{I~N!T@E#R$V%A^L}show.php?id=10
Star photo','0','1','0','0','','32','0.00','0','','0','0','0','admin','1298563200'),('9','1','4',',21,','唐于鸿化身纯净天使','','','0','','唐于鸿,化身,纯净,天使','','','','唐于鸿','近日接连的地震天灾给大家的生活蒙上一层阴影，大家祈祷灾区人民早日脱离危险，重新回到平静幸福的生活。&ldquo;百变女郎&rdquo;唐于鸿化身纯净天使，送上最诚挚的祝福。','','1','0','inc/uploads/picture/demo_05.jpg,inc/uploads/picture/demo_06.jpg,inc/uploads/picture/demo_07.jpg,inc/uploads/picture/demo_08.jpg,inc/uploads/picture/demo_09.jpg','{I~N!T@E#R$V%A^L}雪天使{I~N!T@E#R$V%A^L}天使爱美丽{I~N!T@E#R$V%A^L}春姑娘{I~N!T@E#R$V%A^L}少女的祈祷','0','1','0','0','','36','0.00','0','','0','0','0','admin','1300464000'),('10','1','4',',20,','杨千嬅自称真人版败犬女王 相信成功源自勇气','','','0','','杨千嬅,真人,败犬女王','','','','杨千嬅','杨千嬅应邀为VOGUE拍时尚大片，与大家分享入行15年的喜怒哀乐。就像她说的那样&ldquo;我心口写着勇字&rdquo;，自称真人版败犬女王的千嬅亲身证明了成功源自勇气。','','1','0','inc/uploads/picture/demo_10.jpg,inc/uploads/picture/demo_11.jpg,inc/uploads/picture/demo_12.jpg,inc/uploads/picture/demo_13.jpg','{I~N!T@E#R$V%A^L}杨千嬅华丽写真气场十足 1{I~N!T@E#R$V%A^L}杨千嬅华丽写真气场十足 2{I~N!T@E#R$V%A^L}杨千嬅华丽写真气场十足 3','0','1','0','0','','101','0.00','0','','0','0','0','admin','1300464000');/* MySQLReback Separation */
 /* 创建表结构 `cms_product`  */
 DROP TABLE IF EXISTS `cms_product`;/* MySQLReback Separation */ CREATE TABLE `cms_product` (
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
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('1','1','3',',6,10,','诺基亚手机N97','','','0','0','4800.00','4650.00','部','30','21','','诺基亚，N97','','inc/uploads/product/201103/01(1).jpg,inc/uploads/product/201103/02.jpg,inc/uploads/product/201103/03.jpg,inc/uploads/product/201103/04.jpg','0','<div id=\"cke_pastebin\">
	* 手机类型 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>智能手机</div>
<div id=\"cke_pastebin\">
	* 操作系统 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>SymbianOS S60 V5版操作系统</div>
<div id=\"cke_pastebin\">
	* 硬件系统 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>434MHz主频的处理器</div>
<div id=\"cke_pastebin\">
	* 理论待机时间 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>约432小时（视网络,使用状况及手机卡而定）</div>
<div id=\"cke_pastebin\">
	* 屏幕 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>屏幕色彩:1600万色 主屏尺寸:3.5英寸 屏幕材质:TFT 主屏参数:360&times;640像素分辨率&nbsp;</div>
<div id=\"cke_pastebin\">
	* 支持16:9显示比例 触摸屏:支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 网络频率 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>手机制式:GSM 支持频段:GSM850/900/1800/1900MHz&nbsp;</div>
<div id=\"cke_pastebin\">
	* 铃声 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>和弦铃声:64和弦 铃音描述:支持MP3铃声&nbsp;</div>
<div id=\"cke_pastebin\">
	* 理论通话时间 &nbsp;约9小时30分钟（视网络,使用状况及手机卡而定）</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	产品外形</div>
<div id=\"cke_pastebin\">
	* 外观设计 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>侧滑盖</div>
<div id=\"cke_pastebin\">
	* 产品尺寸 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>117.2x55.3x15.9 mm</div>
<div id=\"cke_pastebin\">
	* 手机重量 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>150g</div>
<div id=\"cke_pastebin\">
	* 机身颜色 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>黑色、银白色</div>
<div id=\"cke_pastebin\">
	* 机身特点 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持重力感应</div>
<div id=\"cke_pastebin\">
	* QWERTY全键盘 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>是</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	娱乐功能</div>
<div id=\"cke_pastebin\">
	* 视频播放 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持MPEG4/WMV/3gp格式</div>
<div id=\"cke_pastebin\">
	* 音乐播放 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持MP3/WMA/WAV/eAAC+格式</div>
<div id=\"cke_pastebin\">
	* 支持立体声扬声器</div>
<div id=\"cke_pastebin\">
	* 游戏 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>内置</div>
<div id=\"cke_pastebin\">
	* JAVA扩展 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>Java功能:支持MIDP 2.1&nbsp;</div>
<div id=\"cke_pastebin\">
	* 摄像功能描述 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>摄像头:内置&nbsp;</div>
<div id=\"cke_pastebin\">
	* 摄像头 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>视频拍摄:支持VGA分辨率，30fps的视频拍摄 拍照功能描述:有LED闪光灯</div>
<div id=\"cke_pastebin\">
	卡尔蔡司镜头</div>
<div id=\"cke_pastebin\">
	* 最大支持2584&times;1938像素的照片拍摄 摄像头像素:500万像素&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	数据功能</div>
<div id=\"cke_pastebin\">
	* 蓝牙功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持蓝牙2.0，A2DP立体声</div>
<div id=\"cke_pastebin\">
	* 数据线接口 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>micro USB2.0</div>
<div id=\"cke_pastebin\">
	* 内存容量 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>32GB的存储空间，128MB内存</div>
<div id=\"cke_pastebin\">
	* 存储卡 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持最大16GB的存储卡扩展</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	基本功能</div>
<div id=\"cke_pastebin\">
	* 免提通话 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 输入法 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>手写输入:手写+键盘&nbsp;</div>
<div id=\"cke_pastebin\">
	* 信息功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>SMS短信:支持 MMS短信:支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 网络功能</div>
<div id=\"cke_pastebin\">
	* E-Mail <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* WLAN功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 浏览器 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>WAP浏览器:支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	其他功能</div>
<div id=\"cke_pastebin\">
	* 录音功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* PDA功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>内置PDF浏览器，支持Word、Excel、PowerPoint文档浏览</div>
<div id=\"cke_pastebin\">
	* 情景模式 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 待机图片 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 闹钟功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 日历功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 计算器 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 无线数据 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>GPRS/EDGE/HSDPA</div>
<div id=\"cke_pastebin\">
	* 自动开关机 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 图形菜单 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* GPS功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持A-GPS、诺基亚地图</div>
<div id=\"cke_pastebin\">
	* 可以将地理信息连同照片和视频发送到社会化网络社区中</div>
<div id=\"cke_pastebin\">
	* 其它参数 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>3.5毫米耳机接口</div>
<div id=\"cke_pastebin\">
	* 其它功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持TV-OUT</div>
<div id=\"cke_pastebin\">
	（商品资料仅供参考，请以商场实物为准）</div>
','','N97','','','黑色,白色,红色','','1','0','0','0','0','1','1','1','0','0','','47','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('2','1','3',',6,11,','三星手机S5230','','','0','0','980.00','860.00','部','6','84','','三星，S5230','','inc/uploads/product/201103/01(1).jpg,inc/uploads/product/201103/01(2).jpg,inc/uploads/product/201103/02(1).jpg,inc/uploads/product/201103/03(1).jpg','0','<div id=\"cke_pastebin\">
	- 时尚全触摸屏设计，内置手写笔</div>
<div id=\"cke_pastebin\">
	- 11.9毫米纤薄机身</div>
<div id=\"cke_pastebin\">
	- 3.0英寸WQVGA(240x400)分辨率，26万色TFT彩屏</div>
<div id=\"cke_pastebin\">
	- 最新Touchwiz操作界面，方便手指点触，操作更灵敏，反应速度超越思绪；</div>
<div id=\"cke_pastebin\">
	- 你可以挑选常用功能放在桌面小组件中，随意拖拽，同时点击即快速进入应用程序，制定我自己的实用小组件，便捷操作轻松点触；</div>
<div id=\"cke_pastebin\">
	- 自带重力感应器，在浏览图片、上网、观看视频时，可以横、竖屏自动切换，无论站立或是平躺都能享受最佳浏览体验；</div>
<div id=\"cke_pastebin\">
	- 振动触摸，轻触的瞬间，灵机一动。</div>
<div id=\"cke_pastebin\">
	- 三星S5230C机身预装百度搜索，并将其放在桌面小组件中，方便实用；</div>
<div id=\"cke_pastebin\">
	- 支持www网页浏览，具有网页缩放、主页、书签、后退等功能，如同PC的网页浏览器，随时方便查询信息。</div>
<div id=\"cke_pastebin\">
	- 320万像素数码相机，可拍摄最大分辨率2048x1536的照片，为你带来更专业的拍摄享受；</div>
<div id=\"cke_pastebin\">
	- 拥有笑脸拍摄模式，自动抓拍人物笑脸，拍摄对象在大笑或微笑时相机会自动拍摄及时捕捉</div>
<div id=\"cke_pastebin\">
	- 支持自动全景拍照功能，拍摄过程中，只需缓慢移动镜头，手机功能会自动检测下一帧图片并拍摄，最后自动拼接成全景照片，为你展现不一样的宽广视角；</div>
<div id=\"cke_pastebin\">
	- 趣味相框、多种拍摄模式和拍摄效果设置，专业全面的功能支持，满足你的各种拍摄需求；</div>
<div id=\"cke_pastebin\">
	- 支持最大为QVGA的分辨率，15帧/秒的视频录制，将生动的场景随时再现。</div>
<div id=\"cke_pastebin\">
	- 拥有DNSe数字自然音效</div>
<div id=\"cke_pastebin\">
	- 支持MP3/AAC/AAC+/e-AAC+/WMA/WAV多种格式音乐文件</div>
<div id=\"cke_pastebin\">
	- 音乐库管理</div>
<div id=\"cke_pastebin\">
	- 支持蓝牙立体声耳机</div>
<div id=\"cke_pastebin\">
	- 具有音乐识别功能，当你听到某首歌，你只需选录一段音乐，音乐识别功能会帮助你查找歌名及歌手信息，做真正的音乐达人。</div>
<div id=\"cke_pastebin\">
	- 支持MPEG4/H.263/H.264/WMV格件，最大为QVGA分辨率</div>
<div id=\"cke_pastebin\">
	* 手机外型 直板</div>
<div id=\"cke_pastebin\">
	* 网络参数</div>
<div id=\"cke_pastebin\">
	&nbsp; 网络类型： 2G GSM&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 频率： EDGE 850MHz/900MHz/1800MHz/1900MHz &nbsp;</div>
<div id=\"cke_pastebin\">
	* 基本参数</div>
<div id=\"cke_pastebin\">
	&nbsp; 尺寸： 104 x 53 x 11.9毫米&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 重量： 92克&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 电池容量： 1,000mAh&nbsp;</div>
<div id=\"cke_pastebin\">
	* 显示屏幕 &nbsp;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 屏幕尺寸： 3.0英寸 &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 分辨率： WQVGA&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 色彩： 26万色&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 材质： TFT&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 触摸屏： 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 手写输入： 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 数码相机 &nbsp;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 主数码相机： 像　素 320万像素&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 可拍摄最大分辨率 2048 x 1536 &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 笑脸模式 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 数码变焦 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 存　储 &nbsp;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 用户内存： 85MB &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 扩展存储： MicroSD 最大8GB &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 大容量存储器： 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; SMS容量： 500条 &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 电话簿容量： 2,000条&nbsp;</div>
<div id=\"cke_pastebin\">
	* 系统软件 &nbsp;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 操作系统： 三星专有&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 浏览器： 支持WWW和WAP2.0&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; MMS： 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; JAVA： 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 多媒体 &nbsp;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 铃　声： 和　弦 64和弦 &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; MP3铃声 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 音频播放： 音乐格式 MP3/AAC/AAC+/e-AAC+/WMA/WAV &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; DNse 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 蓝牙立体声耳机 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; MTP 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; DRM 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;视频播放： 播放格式 H.263,H.264,MPEG4,WMV &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;视频质量 QVGA@15fps&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;录制视频： 录制格式 H.263,MPEG4 &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;视频质量 QVGA@15fps&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;FM收音机： &nbsp; 支持FM收音机\\支持收听中录音&nbsp;</div>
<div id=\"cke_pastebin\">
	* 其它功能</div>
<div id=\"cke_pastebin\">
	&nbsp; 连接性： 蓝牙 蓝牙2.1</div>
<div id=\"cke_pastebin\">
	&nbsp; USB USB2.0</div>
<div id=\"cke_pastebin\">
	&nbsp; 感应器： &nbsp; 支持重力感应器</div>
<div id=\"cke_pastebin\">
	&nbsp; 信息： 电子邮件 支持</div>
<div id=\"cke_pastebin\">
	&nbsp; QQ 支持</div>
<div id=\"cke_pastebin\">
	&nbsp; 办公： 文档浏览器 支持</div>
<div id=\"cke_pastebin\">
	&nbsp; 通话： 免提通话 支持</div>
<div id=\"cke_pastebin\">
	&nbsp; 其它： 在线Widget 支持</div>
<div id=\"cke_pastebin\">
	&nbsp; 游戏 支持</div>
<div id=\"cke_pastebin\">
	（商品资料如果因厂家产品升级或其他原因与实物存在差异，均以商场的实物为准）</div>
','','S5230','','117.2x55.3x15.9 mm','黑色,白色,红色','','1','0','0','0','0','1','1','1','0','0','','291','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('3','1','3',',6,12,',' 索尼爱立信手机T707','','','0','0','1398.00','1280.00','部','6','84','',' 索尼,爱立信,T707','','inc/uploads/product/201103/01(3).jpg,inc/uploads/product/201103/01(4).jpg,inc/uploads/product/201103/02(2).jpg,inc/uploads/product/201103/03(2).jpg','0','<div id=\"cke_pastebin\">
	* 上市日期:2009年 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 屏幕 &nbsp;屏幕色彩:26万色 外屏参数:128x36像素 主屏尺寸:2.4英寸 屏幕材质:TFT 主屏参数:240x320像素 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 网络频率 &nbsp;手机制式:GSM 支持频段:GSM 850/900/1800/1900&nbsp;</div>
<div id=\"cke_pastebin\">
	UMTS/HSDPA 2100MHz &nbsp;</div>
<div id=\"cke_pastebin\">
	* 铃声 &nbsp;和弦铃声:和弦 铃音描述:支持MP3, AAC等铃声 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 产品外形外观设计 &nbsp;翻盖&nbsp;</div>
<div id=\"cke_pastebin\">
	* 产品尺寸 &nbsp;93.0 x 50.0 x 14.1 毫米&nbsp;</div>
<div id=\"cke_pastebin\">
	* 手机重量 &nbsp;95.0 克&nbsp;</div>
<div id=\"cke_pastebin\">
	* 机身颜色 &nbsp;黑&nbsp;</div>
<div id=\"cke_pastebin\">
	* 娱乐功能音乐播放 &nbsp;内置媒体播放器</div>
<div id=\"cke_pastebin\">
	* 您喜欢的音乐可按艺术家、专辑和曲目排序欣赏。创建自己的播放列表。</div>
<div id=\"cke_pastebin\">
	* 可通过光碟专辑图片或其它图片选择音乐</div>
<div id=\"cke_pastebin\">
	* 支持曲目识别、PlayNow功能、米加低音等&nbsp;</div>
<div id=\"cke_pastebin\">
	* 游戏 &nbsp;内置3D游戏&nbsp;</div>
<div id=\"cke_pastebin\">
	* JAVA扩展 &nbsp;Java功能:支持 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 摄像功能描述 &nbsp;摄像头:内置 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 摄像头 &nbsp;拍照功能描述:支持照片修复、实时抓拍动作、图片加注拍摄地点地理信息以及优化图片品质。 摄像头像素:320万像素 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 收音机 &nbsp;支持调频收音机配RDS功能</div>
<div id=\"cke_pastebin\">
	* 全天候调频收音机娱乐享受&nbsp;</div>
<div id=\"cke_pastebin\">
	* 数据功能蓝牙功能 &nbsp;支持立体声蓝牙&nbsp;</div>
<div id=\"cke_pastebin\">
	* 数据线接口 &nbsp;USB&nbsp;</div>
<div id=\"cke_pastebin\">
	* 内存容量 &nbsp;100MB用户内存&nbsp;</div>
<div id=\"cke_pastebin\">
	* 存储卡 &nbsp;支持M2存储卡扩展（最高至16GB ）&nbsp;</div>
<div id=\"cke_pastebin\">
	* 基本功能免提通话 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 输入法 &nbsp;联想文本输入法&nbsp;</div>
<div id=\"cke_pastebin\">
	* 信息功能 &nbsp;SMS短信:支持 MMS短信:支持 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 网络功能E-Mail &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 浏览器 &nbsp;WWW浏览器:支持标准协议、图像和视频的全功能互联网浏览器。 WAP浏览器: * 支持WAP 2.0以及WAP 1.2.1 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 其他功能录音功能 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 情景模式 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 待机图片 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 闹钟功能 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 日历功能 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 计算器 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 无线数据 &nbsp;GPRS、EDGE&nbsp;</div>
<div id=\"cke_pastebin\">
	* 秒表 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 其它参数 &nbsp;支持PC电脑同步</div>
<div id=\"cke_pastebin\">
	* 内置调制解调器</div>
<div id=\"cke_pastebin\">
	（商品资料仅供参考，请以商场实物为准）</div>
','','T707','','117.2x55.3x15.9 mm','白色,红色','','1','0','0','0','1','1','1','1','0','0','','453','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('4','1','3',',6,10,','诺基亚手机N5130（红）','','','0','0','730.00','650.00','部','3','41','','诺基亚，N5130','','inc/uploads/product/201103/01(5).jpg,inc/uploads/product/201103/01(6).jpg,inc/uploads/product/201103/02(3).jpg,inc/uploads/product/201103/03(3).jpg','0','<div id=\"cke_pastebin\">
	物理特征、电源和存储器</div>
<div id=\"cke_pastebin\">
	尺寸&nbsp;</div>
<div id=\"cke_pastebin\">
	机型：经典&nbsp;</div>
<div id=\"cke_pastebin\">
	尺寸：107.5 x 46.7 x 14.8 毫米&nbsp;</div>
<div id=\"cke_pastebin\">
	重量：88 克（含电池）&nbsp;</div>
<div id=\"cke_pastebin\">
	体积：65 立方厘米&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	屏幕和 3D</div>
<div id=\"cke_pastebin\">
	尺寸：2.0 英寸&nbsp;</div>
<div id=\"cke_pastebin\">
	分辨率：320 x 240 像素（QVGA）&nbsp;</div>
<div id=\"cke_pastebin\">
	最高支持 256k 色&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	按键和输入法&nbsp;</div>
<div id=\"cke_pastebin\">
	数字键盘&nbsp;</div>
<div id=\"cke_pastebin\">
	专用音乐和音量键&nbsp;</div>
<div id=\"cke_pastebin\">
	声控命令&nbsp;</div>
','','N5130','','117.2x55.3x15.9 mm','红色','','1','0','0','0','0','1','1','1','0','0','','83','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('5','1','3',',8,13,','TCL电话机HCD868(13B)TSD','','','0','0','78.00','72.00','','20','125','','','','inc/uploads/product/201103/01(7).jpg,inc/uploads/product/201103/01(8).jpg','0','<div id=\"cke_pastebin\">
	* 双制式来电显示（99组）&nbsp;</div>
<div id=\"cke_pastebin\">
	* 去电号码及通话时间翻查（31组）&nbsp;</div>
<div id=\"cke_pastebin\">
	* 长途锁&nbsp;</div>
<div id=\"cke_pastebin\">
	* 防并机盗打&nbsp;</div>
<div id=\"cke_pastebin\">
	* 来电回拨&nbsp;</div>
<div id=\"cke_pastebin\">
	* 本地区号及长途码设置功能</div>
<div id=\"cke_pastebin\">
	* 可预拨号码&nbsp;</div>
<div id=\"cke_pastebin\">
	* 位号码显示、时间、日期及各种功能提示符号显示</div>
','','HCD868(13B)TSD','','117.2x55.3x15.9 mm','白色','','1','0','0','0','0','1','1','1','0','0','','533','0','0.00','0','','0','admin','1300377600'),('6','1','3',',8,13,','步步高电话机HCD007(182)TSDL','','','0','0','167.00','152.00','部','24','74','','步步高,电话机','','inc/uploads/product/201103/01(9).jpg,inc/uploads/product/201103/01(10).jpg,inc/uploads/product/201103/02(4).jpg,inc/uploads/product/201103/03(4).jpg','0','<div id=\"cke_pastebin\">
	*具有日期、时钟、拨号、通话计时等显示功能&nbsp;</div>
<div id=\"cke_pastebin\">
	*具有预置拨号功能，可编辑、删改未拨出的号码</div>
<div id=\"cke_pastebin\">
	*具有单键重拨和IP速拨功能</div>
<div id=\"cke_pastebin\">
	*显示屏液晶亮度八级可调</div>
<div id=\"cke_pastebin\">
	*本地区号过滤功能</div>
<div id=\"cke_pastebin\">
	*65组来电、20组去电、55组贵宾号码存贮并可查阅</div>
<div id=\"cke_pastebin\">
	*3组闹铃设置且闹铃声音三种可选</div>
<div id=\"cke_pastebin\">
	*来电语音报号和异地查询新来电功能功能</div>
<div id=\"cke_pastebin\">
	*并机接口和机械锁</div>
<div id=\"cke_pastebin\">
	*免扰和保密功能&nbsp;</div>
<div id=\"cke_pastebin\">
	*显示屏和拨号键盘具有夜光照明功能</div>
<div id=\"cke_pastebin\">
	*通话部分采用特殊电路设计，功耗低、输出大</div>
<div id=\"cke_pastebin\">
	*可显示总来电数、重复、保密、出局等多种动态信息</div>
<div id=\"cke_pastebin\">
	*防雷击保护电路，使防雷性能优于国家标准&nbsp;</div>
','','HCD007(182)TSDL','','117.2x55.3x15.9 mm','白色','','1','0','0','0','0','1','1','1','0','0','','57','0','0.00','0','','0','admin','1300377600'),('7','1','3',',8,13,','飞利浦电话机DCTG-792','','','0','0','522.00','486.00','部','120','5412','','飞利浦,电话机','','inc/uploads/product/201103/01(11).jpg,inc/uploads/product/201103/01(12).jpg,inc/uploads/product/201103/02(5).jpg,inc/uploads/product/201103/03(5).jpg','0','<div id=\"cke_pastebin\">
	* 功能特点： 2.4G数字技术</div>
<div id=\"cke_pastebin\">
	* 品牌性质：合资</div>
<div id=\"cke_pastebin\">
	* 话机类型：字母机</div>
<div id=\"cke_pastebin\">
	* 拨号方式：预置拨号</div>
<div id=\"cke_pastebin\">
	* 来电显示：双制式来电显示</div>
<div id=\"cke_pastebin\">
	* 电话薄可存取号码数座机10/子机100。</div>
<div id=\"cke_pastebin\">
	* 来电存取号码数座机/子机各100组。</div>
<div id=\"cke_pastebin\">
	* 去电存取号码数座机/子机各10组。</div>
<div id=\"cke_pastebin\">
	* 铃声种类座机10/子机18组和弦。</div>
<div id=\"cke_pastebin\">
	* 通话/铃声音量可调。</div>
<div id=\"cke_pastebin\">
	* 停电座机可用。</div>
<div id=\"cke_pastebin\">
	* 子机支持VIP铃声选择。</div>
<div id=\"cke_pastebin\">
	* 座机支持单键快速拨号。</div>
<div id=\"cke_pastebin\">
	* 座机支持记忆拨号。</div>
<div id=\"cke_pastebin\">
	* 子机/座机支持来铃静音。</div>
<div id=\"cke_pastebin\">
	* 子机/座机支持闹钟。</div>
<div id=\"cke_pastebin\">
	* 三方通话。</div>
<div id=\"cke_pastebin\">
	* 外线转接/内部通话。</div>
<div id=\"cke_pastebin\">
	* 子机与子机对讲。</div>
<div id=\"cke_pastebin\">
	* IP功能。</div>
<div id=\"cke_pastebin\">
	* 免提通话。</div>
<div id=\"cke_pastebin\">
	* 电池低电提示及告警。</div>
<div id=\"cke_pastebin\">
	* 通话计时。</div>
<div id=\"cke_pastebin\">
	* 通话超距离告警。</div>
<div id=\"cke_pastebin\">
	* 本地区号过滤。</div>
<div id=\"cke_pastebin\">
	* 密码锁。</div>
<div id=\"cke_pastebin\">
	* 子机按键锁。</div>
<div id=\"cke_pastebin\">
	* 可带4部子机。</div>
','','DCTG-792','','117.2x55.3x15.9 mm','白色','','1','0','0','0','0','1','1','1','0','0','','97','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('8','1','3',',8,13,','飞利浦电话机CTZO-682A','','','0','0','388.00','368.00','部','12','35','','飞利浦,电话机','','inc/uploads/product/201103/01(13).jpg,inc/uploads/product/201103/01(14).jpg,inc/uploads/product/201103/02(6).jpg','0','<div id=\"cke_pastebin\">
	* FSK/DTMF 双制式来电显示</div>
<div id=\"cke_pastebin\">
	* 时尚化的人性设计</div>
<div id=\"cke_pastebin\">
	* 座机和弦铃声及来电语言报号</div>
<div id=\"cke_pastebin\">
	* 手机自动接听及挂机，手机闹钟功能</div>
<div id=\"cke_pastebin\">
	* 健康安全的贴心设计</div>
<div id=\"cke_pastebin\">
	* 一个座机最多可配三个子机</div>
<div id=\"cke_pastebin\">
	* DTMF/FSK制式全面兼容，适用于各种交换机</div>
<div id=\"cke_pastebin\">
	* 20信道自动/手动选择空闲信道</div>
<div id=\"cke_pastebin\">
	资料仅供参考，详情请以产品或说明书为准！</div>
','','CTZO-682A','','117.2x55.3x15.9 mm','白色','','1','0','0','0','0','1','1','1','0','0','','879','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('9','1','3',',5,16,','美的洗衣机MB50-2501GF','','','0','0','1398.00','1300.00','台','20','125','','美的，洗衣机','','inc/uploads/product/201103/01(15).jpg,inc/uploads/product/201103/01(16).jpg','0','<div id=\"cke_pastebin\">
	美的波轮洗衣机 &nbsp;净星系列</div>
<div id=\"cke_pastebin\">
	型号：MB50-2501GF</div>
<div id=\"cke_pastebin\">
	抑菌舱洗涤科技 &nbsp; &nbsp; 健康洗衣有保障</div>
<div id=\"cke_pastebin\">
	智能模糊控制 &nbsp; &nbsp; &nbsp; 洗的净洗的省</div>
<div id=\"cke_pastebin\">
	魔力S波轮 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;洗涤均匀不缠绕</div>
<div id=\"cke_pastebin\">
	程序自设定<span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span> &nbsp; &nbsp; &nbsp; &nbsp;随心洗涤衣物</div>
<div id=\"cke_pastebin\">
	电子水位设计 &nbsp; &nbsp; &nbsp; 节水精确掌握</div>
<div id=\"cke_pastebin\">
	预约洗涤程序 &nbsp; &nbsp; &nbsp; 轻松享受生活</div>
<div id=\"cke_pastebin\">
	动态数码屏显示 &nbsp; &nbsp; 实时掌控洗涤</div>
<div id=\"cke_pastebin\">
	魔术式过滤网 &nbsp; &nbsp; &nbsp; 过滤线屑更高效</div>
<div id=\"cke_pastebin\">
	洗涤容量：5.0kg</div>
<div id=\"cke_pastebin\">
	洗涤功率：340w</div>
<div id=\"cke_pastebin\">
	能效等级：2级</div>
<div id=\"cke_pastebin\">
	外形尺寸：515mm&times;525mm&times;906mm（长&times;宽&times;高）</div>
<div id=\"cke_pastebin\">
	整机净重：31kg</div>
','','MB50-2501GF','','515x525x906mm','白色','','1','0','0','0','0','1','1','1','0','0','','138','0','0.00','0','','0','admin','1300377600'),('10','1','3',',5,16,','博世洗衣机WVH24460TI','','','0','0','7130.00','6800.00','台','230','47','','博世,洗衣机','','inc/uploads/product/201103/01(17).jpg,inc/uploads/product/201103/01(18).jpg','0','<div id=\"cke_pastebin\">
	* 颜色 白&nbsp;</div>
<div id=\"cke_pastebin\">
	* 显示屏 超大LCD&nbsp;</div>
<div id=\"cke_pastebin\">
	* 尺寸(高/宽/厚)(毫米) 850*600*600&nbsp;</div>
<div id=\"cke_pastebin\">
	* 面板按键 触摸键&nbsp;</div>
<div id=\"cke_pastebin\">
	* 能耗等级 1级&nbsp;</div>
<div id=\"cke_pastebin\">
	* 最高脱水速度(转/分) 1200&nbsp;</div>
<div id=\"cke_pastebin\">
	* 最大洗涤量(公斤) 7.0&nbsp;</div>
<div id=\"cke_pastebin\">
	* 最大干衣量(公斤) 4.0&nbsp;</div>
<div id=\"cke_pastebin\">
	* 附件功能 &nbsp;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 超快15&#39; &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 棉-强净60&#39; &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 个性洗 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 强烘干 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 弱烘干 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 冲浪洗滚筒 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 双水路喷淋系统 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 3D位移传感器 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 冷热双气流循环 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 感湿控湿技术 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 电脑变速洗 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 童锁 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 夜间洗 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 带预洗 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 加漂洗 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 轻松熨 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 自动烘 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 按时烘 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 免排水 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 调节水温 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 预约结束 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 调整转速 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 最多衣量提示 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 衣量自检＋泡沫自检＋故障自检 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 智能不平衡检测 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 电脑智能提示 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 结束蜂鸣 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	* 网站商品图片及资料仅供参考，请以实物为准</div>
','','WVH24460TI','','515x525x906mm','白色','','1','0','0','0','0','1','1','1','0','0','','309','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('11','1','3',',7,','苹果平板电脑MB293CH/A','','','0','0','3688.00','3652.00','台','32','12','','苹果，平板电脑','','inc/uploads/product/201103/01(19).jpg,inc/uploads/product/201103/01(20).jpg,inc/uploads/product/201103/02(7).jpg,inc/uploads/product/201103/03(6).jpg','0','<div id=\"cke_pastebin\">
	基本参数&nbsp;</div>
<div id=\"cke_pastebin\">
	产品类型 平板电脑</div>
<div id=\"cke_pastebin\">
	wifi版本&nbsp;</div>
<div id=\"cke_pastebin\">
	操作系统 Mac OS&nbsp;</div>
<div id=\"cke_pastebin\">
	处理器&nbsp;</div>
<div id=\"cke_pastebin\">
	处理器型号 1GHz A4&nbsp;</div>
<div id=\"cke_pastebin\">
	存储设备&nbsp;</div>
<div id=\"cke_pastebin\">
	硬盘容量 32GB&nbsp;</div>
<div id=\"cke_pastebin\">
	显示屏&nbsp;</div>
<div id=\"cke_pastebin\">
	屏幕尺寸 9.7&nbsp;</div>
<div id=\"cke_pastebin\">
	屏幕分辨率 1024&times;768&nbsp;</div>
<div id=\"cke_pastebin\">
	屏幕描述 多点触摸IPS屏，防指纹涂层，LED&nbsp;</div>
<div id=\"cke_pastebin\">
	显卡/音频&nbsp;</div>
<div id=\"cke_pastebin\">
	音频系统 内置音效芯片&nbsp;</div>
<div id=\"cke_pastebin\">
	摄像头/网络通信&nbsp;</div>
<div id=\"cke_pastebin\">
	无线网卡 支持802.11a/b/g/n无线协议&nbsp;</div>
<div id=\"cke_pastebin\">
	支持蓝牙 支持&nbsp;</div>
','','MB293CH/A','','242.8×189.7×13.4mm','黑色,白色','','1','0','0','0','1','1','1','1','0','0','','326','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('12','1','3',',7,','联想笔记本电脑G450LXT3100W41G250PLx(XX)-CN','','','0','0','3100.00','2890.00','台','24','52','','联想，笔记本，电脑','','inc/uploads/product/201103/01(21).jpg,inc/uploads/product/201103/01(22).jpg,inc/uploads/product/201103/02(8).jpg,inc/uploads/product/201103/03(7).jpg','0','<div id=\"cke_pastebin\">
	* 处理器 英特尔&reg; 奔腾&reg; 处理器T3100双核64(CeleronCore1.9G/1M) &nbsp;</div>
<div id=\"cke_pastebin\">
	* 内存 1GB (DDR3 1066MHz)&nbsp;</div>
<div id=\"cke_pastebin\">
	* 二级缓存 1M&nbsp;</div>
<div id=\"cke_pastebin\">
	* 硬盘 250G SATA（5400rpm）&nbsp;</div>
<div id=\"cke_pastebin\">
	* 无线局域网卡 802.11B+G 无线网卡&nbsp;</div>
<div id=\"cke_pastebin\">
	* 光驱 超级DVD刻录光驱&nbsp;</div>
<div id=\"cke_pastebin\">
	* 显示屏 14.0&quot; LED背光液晶屏，16:9黄金比例&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 分辨率 1366&times;768 32位真彩色, &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 显卡 英特尔&reg; GMA 4500M集成显卡&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 显示内存 128MB系统显存&nbsp;</div>
<div id=\"cke_pastebin\">
	* 键盘 联想高触感笔记本键盘 + 快捷触控按键&nbsp;</div>
<div id=\"cke_pastebin\">
	* 视频输出 标准VGA &nbsp;</div>
<div id=\"cke_pastebin\">
	* 摄像头 30万像素网络摄像头&nbsp;</div>
<div id=\"cke_pastebin\">
	* 声音系统 2*2W立体声音响 + 抗噪麦克风&nbsp;</div>
<div id=\"cke_pastebin\">
	* 网络连接 10M/100M以太自适应网卡&nbsp;</div>
<div id=\"cke_pastebin\">
	* 标准接口 3个USB2.0接口，34mm Express Card接口，VGA接口，RJ45，麦克风和立体声音频输出插孔&nbsp;</div>
<div id=\"cke_pastebin\">
	* 电源 65W电源适配器&nbsp;</div>
<div id=\"cke_pastebin\">
	* 电池类型 高性能6芯锂离子电池&nbsp;</div>
<div id=\"cke_pastebin\">
	* 尺寸 345 x 235 x 26.2 - 35.9 mm&nbsp;</div>
<div id=\"cke_pastebin\">
	* 重量 2.35Kg(含有6芯电池，具体重量依据产品出货配置为准)&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	* 特色功能 Smart Audio音响控制系统</div>
<div id=\"cke_pastebin\">
	* 高速系统修复和恢复功能的一键拯救系统</div>
','','G450LXT3100','','345x235x26.2mm','黑色','','1','0','0','0','0','1','1','1','0','0','','887','0','0.00','0','','0','admin','1300377600'),('13','1','3',',7,',' 长城笔记本电脑T33U','','','0','0','3200.00','2680.00','台','3','21','',' 长城,笔记本,电脑','','inc/uploads/product/201103/01(23).jpg,inc/uploads/product/201103/01(24).jpg','0','<div id=\"cke_pastebin\">
	品牌 长城 Great Wall&nbsp;</div>
<div id=\"cke_pastebin\">
	系列 T系列&nbsp;</div>
<div id=\"cke_pastebin\">
	型号 T33U&nbsp;</div>
<div id=\"cke_pastebin\">
	颜色 黑色&nbsp;</div>
<div id=\"cke_pastebin\">
	平台 Intel&nbsp;</div>
<div id=\"cke_pastebin\">
	软件&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	随机系统 DOS&nbsp;</div>
<div id=\"cke_pastebin\">
	处理器&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	CPU型号 SU2300&nbsp;</div>
<div id=\"cke_pastebin\">
	CPU速度 1.2GHz&nbsp;</div>
<div id=\"cke_pastebin\">
	系统总线 800MHz&nbsp;</div>
<div id=\"cke_pastebin\">
	二级缓存 1MB&nbsp;</div>
<div id=\"cke_pastebin\">
	芯片组&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	芯片组 GS40+ICH9M-SFF &nbsp;</div>
','','T33U','','345x235x26.2mm','黑色','','1','0','0','0','0','1','1','1','0','0','','247','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('14','1','3',',7,','东芝笔记本电脑L600-26S','','','0','0','4499.00','4200.00','台','12','25','','东芝,笔记本,电脑','','inc/uploads/product/201103/01(25).jpg,inc/uploads/product/201103/01(26).jpg,inc/uploads/product/201103/02(9).jpg','0','<div id=\"cke_pastebin\">
	品牌： 东芝&nbsp;</div>
<div id=\"cke_pastebin\">
	系列： 东芝L600系列&nbsp;</div>
<div id=\"cke_pastebin\">
	型号： L600-26S&nbsp;</div>
<div id=\"cke_pastebin\">
	处理器： Intel Core i5-450M(2.4GHz)&nbsp;</div>
<div id=\"cke_pastebin\">
	主板芯片组： Intel HM55&nbsp;</div>
<div id=\"cke_pastebin\">
	内存容量： 2GB&nbsp;</div>
<div id=\"cke_pastebin\">
	硬盘容量： 320GB&nbsp;</div>
<div id=\"cke_pastebin\">
	光驱类型： DVD刻录机&nbsp;</div>
<div id=\"cke_pastebin\">
	屏幕尺寸： 14英寸&nbsp;</div>
<div id=\"cke_pastebin\">
	显卡芯片： ATI Mobility Radeon HD 5145&nbsp;</div>
<div id=\"cke_pastebin\">
	网卡： 内置10-100M网卡&nbsp;</div>
<div id=\"cke_pastebin\">
	内置摄像头： 内置摄像头&nbsp;</div>
<div id=\"cke_pastebin\">
	USB： 2个,USB2.0&nbsp;</div>
<div id=\"cke_pastebin\">
	读卡器： 内置,五合一读卡器,SD,MS,MS Pro,MMC,SDHC&nbsp;</div>
<div id=\"cke_pastebin\">
	其它接口： Esata Combo(eSATA/USB2.0),VGA接口,HDMI接口,RJ45,声音输入,声音输出孔,直流电源插孔,安全锁孔&nbsp;</div>
<div id=\"cke_pastebin\">
	重量： 约2.2Kg&nbsp;</div>
<div id=\"cke_pastebin\">
	操作系统： Windows 7 Home Basic&nbsp;</div>
','','L600-26S','','242.8×189.7×13.4mm','黑色','','1','0','0','0','0','1','1','1','0','0','','51','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('15','1','3',',9,','尼康单反相机D90套机+4G卡+包','','','0','0','7450.00','7200.00','个','25','541','','尼康，相机','','inc/uploads/product/201103/01(27).jpg,inc/uploads/product/201103/01(28).jpg,inc/uploads/product/201103/02(10).jpg,inc/uploads/product/201103/03(8).jpg','0','<div id=\"cke_pastebin\">
	* 有效像素 1,230 万&nbsp;</div>
<div id=\"cke_pastebin\">
	* 影像感应器 Nikon DX 格式 (23.6 x 15.8 mm) CMOS 感应器&nbsp;</div>
<div id=\"cke_pastebin\">
	* 影像尺寸(像素)&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 4,288 x 2,848 [L], 3,216 x 2,136 [M],&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 2,144 x 1,424 [S];&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 数码短片: 1240 x 720 / 24fps, 640 x 424 / 24fps,&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 320 x 216 / 24fps&nbsp;</div>
<div id=\"cke_pastebin\">
	* 感光度 ISO 200 至 3200，以 1/3 EV 为步长调校；</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ISO 200以下时，感光度以约 0.3、0.7 或 1 EV&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(ISO 100相当值)作定级递减；</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;高于ISO3200 时，感光度以约0.3、0.7或 1 EV</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(ISO 6400 相当值)作定级递增。&nbsp;</div>
','','D90','','132x103x77mm ','黑色','','1','0','0','0','1','1','1','1','0','0','','550','0','0.00','0','','0','admin','1300377600'),('16','1','3',',9,','富士数码相机S1500','','','0','0','1350.00','1280.00','个','22','65','','富士,数码相机','','inc/uploads/product/201103/01(29).jpg,inc/uploads/product/201103/01(30).jpg,inc/uploads/product/201103/02(11).jpg,inc/uploads/product/201103/03(9).jpg','0','<div id=\"cke_pastebin\">
	* 数码相机类型： 长焦数码相机&nbsp;</div>
<div id=\"cke_pastebin\">
	* 有效像素： 1000万像素&nbsp;</div>
<div id=\"cke_pastebin\">
	* 光学变焦倍数： 12倍光学变焦&nbsp;</div>
<div id=\"cke_pastebin\">
	* 数码变焦倍数： 5.7倍数码变焦&nbsp;</div>
<div id=\"cke_pastebin\">
	* 操作模式： 全自动,带全手动功能&nbsp;</div>
<div id=\"cke_pastebin\">
	* 传感器类型： CCD传感器&nbsp;</div>
<div id=\"cke_pastebin\">
	* 传感器尺寸： 1/ 2.3英寸&nbsp;</div>
<div id=\"cke_pastebin\">
	* 最大分辨率： 3648&times;2736&nbsp;</div>
<div id=\"cke_pastebin\">
	* 短片拍摄功能： 640 x 480 像素,30 帧/秒</div>
<div id=\"cke_pastebin\">
	* 液晶屏特性： 23万像素,低温多晶硅TFT(WV膜),约97%视野覆盖率60帧/秒&nbsp;</div>
<div id=\"cke_pastebin\">
	* 取景器类型： 液晶屏取景,电子取景器,0.2英寸,约20万像素彩色FLCD 覆盖率约97%&nbsp;</div>
<div id=\"cke_pastebin\">
	* 镜头类型： 伸缩式&nbsp;</div>
<div id=\"cke_pastebin\">
	* 变焦方式： 电子&nbsp;</div>
<div id=\"cke_pastebin\">
	* 焦距(相当于35mm)： 33-396mm&nbsp;</div>
<div id=\"cke_pastebin\">
	* 起始焦距： 33&nbsp;</div>
','','S1500','','132x103x77mm ','黑色','','1','0','0','0','1','1','1','1','0','0','','221','0','0.00','0','','0','admin','1300377600'),('17','1','3',',9,','爱立电MP3HM-1025','','','0','0','510.00','500.00','个','221','2100','','爱立电,MP3','','inc/uploads/product/201103/01(31).jpg,inc/uploads/product/201103/01(32).jpg,inc/uploads/product/201103/02(12).jpg,inc/uploads/product/201103/03(10).jpg','0','<div id=\"cke_pastebin\">
	* 内存大小：128MB</div>
<div id=\"cke_pastebin\">
	* 电池类型：内置锂电</div>
<div id=\"cke_pastebin\">
	* 品牌性质：国产</div>
<div id=\"cke_pastebin\">
	* 颜色：蓝色</div>
<div id=\"cke_pastebin\">
	* 体积大小：51*38*11（mm）</div>
<div id=\"cke_pastebin\">
	* 传输方式：电脑USB</div>
<div id=\"cke_pastebin\">
	* 支持MP3\\WMA播放音乐格式</div>
<div id=\"cke_pastebin\">
	* 英汉词典支持便携式查询，词汇量达15万</div>
<div id=\"cke_pastebin\">
	* 内置FM调频</div>
<div id=\"cke_pastebin\">
	* 强大的&ldquo;变速复读&rdquo;功能，5级变速，变速不变调，一口气复读功能学好帮手</div>
<div id=\"cke_pastebin\">
	* SP/LP双模式数码录音功能</div>
<div id=\"cke_pastebin\">
	* 标准U盘功能（Windows98以上系统无需驱动）</div>
<div id=\"cke_pastebin\">
	* 点阵LCD液晶显示，七彩背光</div>
<div id=\"cke_pastebin\">
	* TXT文本阅读</div>
','','MP3HM-1025','','51x38x11mm','黑色,白色','','1','0','0','0','0','1','1','1','0','0','','75','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('18','1','3',',9,','佳能照相机EOS550DKIT(EF-S18-55IS)','','','0','0','5799.00','5480.00','个','3','24','','佳能,照相机','','inc/uploads/product/201103/01(33).jpg,inc/uploads/product/201103/01(34).jpg,inc/uploads/product/201103/02(13).jpg,inc/uploads/product/201103/03(11).jpg','0','基本规格&nbsp;<br />
发布日期&nbsp;2010年02月&nbsp;<br />
机身类型&nbsp;APS-C规格数码单反&nbsp;<br />
手动操作&nbsp;全手动支持&nbsp;<br />
传感器类型&nbsp;CMOS&nbsp;<br />
感光元件尺寸&nbsp;22.3&times;14.9mm&nbsp;<br />
传感器描述&nbsp;长宽比：3：2&nbsp;<br />
除尘功能：自动，手动，添加除尘数据&nbsp;<br />
总像素数&nbsp;1870万&nbsp;<br />
有效像素&nbsp;1800万&nbsp;<br />
影像处理器&nbsp;DIGIC&nbsp;4&nbsp;<br />
镜头特点&nbsp;<br />
镜头说明&nbsp;兼容镜头：佳能EF系列镜头（包括EF-S系列镜头）（35毫米换算焦距约为镜头焦距的1.6倍）&nbsp;镜头卡口：佳能EF卡口&nbsp;<br />
对焦方式&nbsp;类型：TTL辅助影像重合，相位检测自动对焦点：9个自动对焦点&nbsp;测光范围：EV&nbsp;-0.5&nbsp;-&nbsp;18（23℃/73℉，ISO&nbsp;100）&nbsp;对焦模式：单次自动对焦，人工智能伺服自动对焦，人工智能自动对焦，手动对焦（MF）&nbsp;自动对焦辅助光：由内置闪光灯发出的短促连续闪光&nbsp;<br />
对焦点数&nbsp;9点&nbsp;<br />
变焦方式&nbsp;机械','','EOS550DKIT','','22.3×14.9mm','黑色','','1','0','0','0','0','1','1','1','0','0','','397','0','0.00','0','','0','admin','1300464000');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('19','1','3',',5,19,','飞利浦电须刀HS190','','','0','0','569.00','530.00','个','28','12','','飞利浦,电须刀','','inc/uploads/product/201103/01(35).jpg,inc/uploads/product/201103/01(36).jpg,inc/uploads/product/201103/02(14).jpg,inc/uploads/product/201103/03(12).jpg','0','<div id=\"cke_pastebin\">
	* 具备Microgroove&ldquo;贴面网缝&rdquo;刀头</div>
<div id=\"cke_pastebin\">
	* 外型轻巧时尚，线条流丽</div>
<div id=\"cke_pastebin\">
	* 配有银色收藏盒方便携带</div>
<div id=\"cke_pastebin\">
	* 旋转式剃须系统</div>
<div id=\"cke_pastebin\">
	* HS190干电式双层刀片</div>
<div id=\"cke_pastebin\">
	* 贴面网设计</div>
<div id=\"cke_pastebin\">
	* 两节五号碱性电池操作</div>
<div id=\"cke_pastebin\">
	* 附精美收藏盒</div>
<div id=\"cke_pastebin\">
	* 适用刀头HQ4</div>
','','HS190','','HQ4','黑色,白色','','1','0','0','0','1','1','1','1','0','0','','358','0','0.00','0','','0','admin','1300464000'),('20','1','3',',5,17,','长虹 3DTV63938FS 3D网络/超薄全高清','','','0','0','25999.00','24800.00','台','3','6','','Changhon,长虹,3D网络,超薄,全高清','','inc/uploads/product/201103/01(37).jpg,inc/uploads/product/201103/01(38).jpg,inc/uploads/product/201103/01(39).jpg','0','产品名称：Changhong/长虹 3DTV63938FS<br />
品牌: Changhong/长虹<br />
长虹型号: 3DTV63938FS<br />
屏幕尺寸: 63英寸<br />
屏幕比例: 宽屏16:9<br />
分辨率: 1920&times;1080<br />
特色功能: USB媒体播放<br />
输入输出接口: 网络端口LAN<br />
售后服务: 全国联保<br />
价格区间: 20000以上<br />
最佳观看距离: 大于5.0米<br />
颜色分类: 底座 &nbsp;挂架<br />
套餐: 官方标配','','3DTV63938FS 3D','','3DTV63938FS','黑色','','1','0','0','0','1','1','1','1','0','0','','446','0','0.00','0','','0','admin','1300464000');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('21','1','3',',6,10,','诺基亚手机N97','','','0','0','4800.00','4650.00','部','30','21','','诺基亚，N97','','inc/uploads/product/201103/01(1).jpg,inc/uploads/product/201103/02.jpg,inc/uploads/product/201103/03.jpg,inc/uploads/product/201103/04.jpg','0','<div id=\"cke_pastebin\">
	* 手机类型 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>智能手机</div>
<div id=\"cke_pastebin\">
	* 操作系统 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>SymbianOS S60 V5版操作系统</div>
<div id=\"cke_pastebin\">
	* 硬件系统 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>434MHz主频的处理器</div>
<div id=\"cke_pastebin\">
	* 理论待机时间 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>约432小时（视网络,使用状况及手机卡而定）</div>
<div id=\"cke_pastebin\">
	* 屏幕 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>屏幕色彩:1600万色 主屏尺寸:3.5英寸 屏幕材质:TFT 主屏参数:360&times;640像素分辨率&nbsp;</div>
<div id=\"cke_pastebin\">
	* 支持16:9显示比例 触摸屏:支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 网络频率 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>手机制式:GSM 支持频段:GSM850/900/1800/1900MHz&nbsp;</div>
<div id=\"cke_pastebin\">
	* 铃声 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>和弦铃声:64和弦 铃音描述:支持MP3铃声&nbsp;</div>
<div id=\"cke_pastebin\">
	* 理论通话时间 &nbsp;约9小时30分钟（视网络,使用状况及手机卡而定）</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	产品外形</div>
<div id=\"cke_pastebin\">
	* 外观设计 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>侧滑盖</div>
<div id=\"cke_pastebin\">
	* 产品尺寸 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>117.2x55.3x15.9 mm</div>
<div id=\"cke_pastebin\">
	* 手机重量 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>150g</div>
<div id=\"cke_pastebin\">
	* 机身颜色 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>黑色、银白色</div>
<div id=\"cke_pastebin\">
	* 机身特点 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持重力感应</div>
<div id=\"cke_pastebin\">
	* QWERTY全键盘 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>是</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	娱乐功能</div>
<div id=\"cke_pastebin\">
	* 视频播放 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持MPEG4/WMV/3gp格式</div>
<div id=\"cke_pastebin\">
	* 音乐播放 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持MP3/WMA/WAV/eAAC+格式</div>
<div id=\"cke_pastebin\">
	* 支持立体声扬声器</div>
<div id=\"cke_pastebin\">
	* 游戏 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>内置</div>
<div id=\"cke_pastebin\">
	* JAVA扩展 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>Java功能:支持MIDP 2.1&nbsp;</div>
<div id=\"cke_pastebin\">
	* 摄像功能描述 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>摄像头:内置&nbsp;</div>
<div id=\"cke_pastebin\">
	* 摄像头 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>视频拍摄:支持VGA分辨率，30fps的视频拍摄 拍照功能描述:有LED闪光灯</div>
<div id=\"cke_pastebin\">
	卡尔蔡司镜头</div>
<div id=\"cke_pastebin\">
	* 最大支持2584&times;1938像素的照片拍摄 摄像头像素:500万像素&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	数据功能</div>
<div id=\"cke_pastebin\">
	* 蓝牙功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持蓝牙2.0，A2DP立体声</div>
<div id=\"cke_pastebin\">
	* 数据线接口 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>micro USB2.0</div>
<div id=\"cke_pastebin\">
	* 内存容量 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>32GB的存储空间，128MB内存</div>
<div id=\"cke_pastebin\">
	* 存储卡 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持最大16GB的存储卡扩展</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	基本功能</div>
<div id=\"cke_pastebin\">
	* 免提通话 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 输入法 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>手写输入:手写+键盘&nbsp;</div>
<div id=\"cke_pastebin\">
	* 信息功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>SMS短信:支持 MMS短信:支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 网络功能</div>
<div id=\"cke_pastebin\">
	* E-Mail <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* WLAN功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 浏览器 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>WAP浏览器:支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	其他功能</div>
<div id=\"cke_pastebin\">
	* 录音功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* PDA功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>内置PDF浏览器，支持Word、Excel、PowerPoint文档浏览</div>
<div id=\"cke_pastebin\">
	* 情景模式 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 待机图片 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 闹钟功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 日历功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 计算器 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 无线数据 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>GPRS/EDGE/HSDPA</div>
<div id=\"cke_pastebin\">
	* 自动开关机 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 图形菜单 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* GPS功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持A-GPS、诺基亚地图</div>
<div id=\"cke_pastebin\">
	* 可以将地理信息连同照片和视频发送到社会化网络社区中</div>
<div id=\"cke_pastebin\">
	* 其它参数 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>3.5毫米耳机接口</div>
<div id=\"cke_pastebin\">
	* 其它功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持TV-OUT</div>
<div id=\"cke_pastebin\">
	（商品资料仅供参考，请以商场实物为准）</div>
','','N97','','','黑色,白色,红色','','1','0','0','0','0','1','1','1','0','0','','97','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('22','1','3',',6,11,','三星手机S5230','','','0','0','980.00','860.00','部','6','84','','三星，S5230','','inc/uploads/product/201103/01(1).jpg,inc/uploads/product/201103/01(2).jpg,inc/uploads/product/201103/02(1).jpg,inc/uploads/product/201103/03(1).jpg','0','<div id=\"cke_pastebin\">
	- 时尚全触摸屏设计，内置手写笔</div>
<div id=\"cke_pastebin\">
	- 11.9毫米纤薄机身</div>
<div id=\"cke_pastebin\">
	- 3.0英寸WQVGA(240x400)分辨率，26万色TFT彩屏</div>
<div id=\"cke_pastebin\">
	- 最新Touchwiz操作界面，方便手指点触，操作更灵敏，反应速度超越思绪；</div>
<div id=\"cke_pastebin\">
	- 你可以挑选常用功能放在桌面小组件中，随意拖拽，同时点击即快速进入应用程序，制定我自己的实用小组件，便捷操作轻松点触；</div>
<div id=\"cke_pastebin\">
	- 自带重力感应器，在浏览图片、上网、观看视频时，可以横、竖屏自动切换，无论站立或是平躺都能享受最佳浏览体验；</div>
<div id=\"cke_pastebin\">
	- 振动触摸，轻触的瞬间，灵机一动。</div>
<div id=\"cke_pastebin\">
	- 三星S5230C机身预装百度搜索，并将其放在桌面小组件中，方便实用；</div>
<div id=\"cke_pastebin\">
	- 支持www网页浏览，具有网页缩放、主页、书签、后退等功能，如同PC的网页浏览器，随时方便查询信息。</div>
<div id=\"cke_pastebin\">
	- 320万像素数码相机，可拍摄最大分辨率2048x1536的照片，为你带来更专业的拍摄享受；</div>
<div id=\"cke_pastebin\">
	- 拥有笑脸拍摄模式，自动抓拍人物笑脸，拍摄对象在大笑或微笑时相机会自动拍摄及时捕捉</div>
<div id=\"cke_pastebin\">
	- 支持自动全景拍照功能，拍摄过程中，只需缓慢移动镜头，手机功能会自动检测下一帧图片并拍摄，最后自动拼接成全景照片，为你展现不一样的宽广视角；</div>
<div id=\"cke_pastebin\">
	- 趣味相框、多种拍摄模式和拍摄效果设置，专业全面的功能支持，满足你的各种拍摄需求；</div>
<div id=\"cke_pastebin\">
	- 支持最大为QVGA的分辨率，15帧/秒的视频录制，将生动的场景随时再现。</div>
<div id=\"cke_pastebin\">
	- 拥有DNSe数字自然音效</div>
<div id=\"cke_pastebin\">
	- 支持MP3/AAC/AAC+/e-AAC+/WMA/WAV多种格式音乐文件</div>
<div id=\"cke_pastebin\">
	- 音乐库管理</div>
<div id=\"cke_pastebin\">
	- 支持蓝牙立体声耳机</div>
<div id=\"cke_pastebin\">
	- 具有音乐识别功能，当你听到某首歌，你只需选录一段音乐，音乐识别功能会帮助你查找歌名及歌手信息，做真正的音乐达人。</div>
<div id=\"cke_pastebin\">
	- 支持MPEG4/H.263/H.264/WMV格件，最大为QVGA分辨率</div>
<div id=\"cke_pastebin\">
	* 手机外型 直板</div>
<div id=\"cke_pastebin\">
	* 网络参数</div>
<div id=\"cke_pastebin\">
	&nbsp; 网络类型： 2G GSM&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 频率： EDGE 850MHz/900MHz/1800MHz/1900MHz &nbsp;</div>
<div id=\"cke_pastebin\">
	* 基本参数</div>
<div id=\"cke_pastebin\">
	&nbsp; 尺寸： 104 x 53 x 11.9毫米&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 重量： 92克&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 电池容量： 1,000mAh&nbsp;</div>
<div id=\"cke_pastebin\">
	* 显示屏幕 &nbsp;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 屏幕尺寸： 3.0英寸 &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 分辨率： WQVGA&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 色彩： 26万色&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 材质： TFT&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 触摸屏： 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 手写输入： 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 数码相机 &nbsp;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 主数码相机： 像　素 320万像素&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 可拍摄最大分辨率 2048 x 1536 &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 笑脸模式 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 数码变焦 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 存　储 &nbsp;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 用户内存： 85MB &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 扩展存储： MicroSD 最大8GB &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 大容量存储器： 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; SMS容量： 500条 &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 电话簿容量： 2,000条&nbsp;</div>
<div id=\"cke_pastebin\">
	* 系统软件 &nbsp;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 操作系统： 三星专有&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 浏览器： 支持WWW和WAP2.0&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; MMS： 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; JAVA： 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 多媒体 &nbsp;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 铃　声： 和　弦 64和弦 &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; MP3铃声 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 音频播放： 音乐格式 MP3/AAC/AAC+/e-AAC+/WMA/WAV &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; DNse 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 蓝牙立体声耳机 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; MTP 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; DRM 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;视频播放： 播放格式 H.263,H.264,MPEG4,WMV &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;视频质量 QVGA@15fps&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;录制视频： 录制格式 H.263,MPEG4 &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;视频质量 QVGA@15fps&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;FM收音机： &nbsp; 支持FM收音机\\支持收听中录音&nbsp;</div>
<div id=\"cke_pastebin\">
	* 其它功能</div>
<div id=\"cke_pastebin\">
	&nbsp; 连接性： 蓝牙 蓝牙2.1</div>
<div id=\"cke_pastebin\">
	&nbsp; USB USB2.0</div>
<div id=\"cke_pastebin\">
	&nbsp; 感应器： &nbsp; 支持重力感应器</div>
<div id=\"cke_pastebin\">
	&nbsp; 信息： 电子邮件 支持</div>
<div id=\"cke_pastebin\">
	&nbsp; QQ 支持</div>
<div id=\"cke_pastebin\">
	&nbsp; 办公： 文档浏览器 支持</div>
<div id=\"cke_pastebin\">
	&nbsp; 通话： 免提通话 支持</div>
<div id=\"cke_pastebin\">
	&nbsp; 其它： 在线Widget 支持</div>
<div id=\"cke_pastebin\">
	&nbsp; 游戏 支持</div>
<div id=\"cke_pastebin\">
	（商品资料如果因厂家产品升级或其他原因与实物存在差异，均以商场的实物为准）</div>
','','S5230','','117.2x55.3x15.9 mm','黑色,白色,红色','','1','0','0','0','0','1','1','1','0','0','','289','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('23','1','3',',6,12,',' 索尼爱立信手机T707','','','0','0','1398.00','1280.00','部','6','84','',' 索尼,爱立信,T707','','inc/uploads/product/201103/01(3).jpg,inc/uploads/product/201103/01(4).jpg,inc/uploads/product/201103/02(2).jpg,inc/uploads/product/201103/03(2).jpg','0','<div id=\"cke_pastebin\">
	* 上市日期:2009年 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 屏幕 &nbsp;屏幕色彩:26万色 外屏参数:128x36像素 主屏尺寸:2.4英寸 屏幕材质:TFT 主屏参数:240x320像素 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 网络频率 &nbsp;手机制式:GSM 支持频段:GSM 850/900/1800/1900&nbsp;</div>
<div id=\"cke_pastebin\">
	UMTS/HSDPA 2100MHz &nbsp;</div>
<div id=\"cke_pastebin\">
	* 铃声 &nbsp;和弦铃声:和弦 铃音描述:支持MP3, AAC等铃声 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 产品外形外观设计 &nbsp;翻盖&nbsp;</div>
<div id=\"cke_pastebin\">
	* 产品尺寸 &nbsp;93.0 x 50.0 x 14.1 毫米&nbsp;</div>
<div id=\"cke_pastebin\">
	* 手机重量 &nbsp;95.0 克&nbsp;</div>
<div id=\"cke_pastebin\">
	* 机身颜色 &nbsp;黑&nbsp;</div>
<div id=\"cke_pastebin\">
	* 娱乐功能音乐播放 &nbsp;内置媒体播放器</div>
<div id=\"cke_pastebin\">
	* 您喜欢的音乐可按艺术家、专辑和曲目排序欣赏。创建自己的播放列表。</div>
<div id=\"cke_pastebin\">
	* 可通过光碟专辑图片或其它图片选择音乐</div>
<div id=\"cke_pastebin\">
	* 支持曲目识别、PlayNow功能、米加低音等&nbsp;</div>
<div id=\"cke_pastebin\">
	* 游戏 &nbsp;内置3D游戏&nbsp;</div>
<div id=\"cke_pastebin\">
	* JAVA扩展 &nbsp;Java功能:支持 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 摄像功能描述 &nbsp;摄像头:内置 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 摄像头 &nbsp;拍照功能描述:支持照片修复、实时抓拍动作、图片加注拍摄地点地理信息以及优化图片品质。 摄像头像素:320万像素 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 收音机 &nbsp;支持调频收音机配RDS功能</div>
<div id=\"cke_pastebin\">
	* 全天候调频收音机娱乐享受&nbsp;</div>
<div id=\"cke_pastebin\">
	* 数据功能蓝牙功能 &nbsp;支持立体声蓝牙&nbsp;</div>
<div id=\"cke_pastebin\">
	* 数据线接口 &nbsp;USB&nbsp;</div>
<div id=\"cke_pastebin\">
	* 内存容量 &nbsp;100MB用户内存&nbsp;</div>
<div id=\"cke_pastebin\">
	* 存储卡 &nbsp;支持M2存储卡扩展（最高至16GB ）&nbsp;</div>
<div id=\"cke_pastebin\">
	* 基本功能免提通话 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 输入法 &nbsp;联想文本输入法&nbsp;</div>
<div id=\"cke_pastebin\">
	* 信息功能 &nbsp;SMS短信:支持 MMS短信:支持 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 网络功能E-Mail &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 浏览器 &nbsp;WWW浏览器:支持标准协议、图像和视频的全功能互联网浏览器。 WAP浏览器: * 支持WAP 2.0以及WAP 1.2.1 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 其他功能录音功能 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 情景模式 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 待机图片 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 闹钟功能 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 日历功能 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 计算器 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 无线数据 &nbsp;GPRS、EDGE&nbsp;</div>
<div id=\"cke_pastebin\">
	* 秒表 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 其它参数 &nbsp;支持PC电脑同步</div>
<div id=\"cke_pastebin\">
	* 内置调制解调器</div>
<div id=\"cke_pastebin\">
	（商品资料仅供参考，请以商场实物为准）</div>
','','T707','','117.2x55.3x15.9 mm','白色,红色','','1','0','0','0','1','1','1','1','0','0','','81','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('24','1','3',',6,10,','诺基亚手机N5130（红）','','','0','0','730.00','650.00','部','3','41','','诺基亚，N5130','','inc/uploads/product/201103/01(5).jpg,inc/uploads/product/201103/01(6).jpg,inc/uploads/product/201103/02(3).jpg,inc/uploads/product/201103/03(3).jpg','0','<div id=\"cke_pastebin\">
	物理特征、电源和存储器</div>
<div id=\"cke_pastebin\">
	尺寸&nbsp;</div>
<div id=\"cke_pastebin\">
	机型：经典&nbsp;</div>
<div id=\"cke_pastebin\">
	尺寸：107.5 x 46.7 x 14.8 毫米&nbsp;</div>
<div id=\"cke_pastebin\">
	重量：88 克（含电池）&nbsp;</div>
<div id=\"cke_pastebin\">
	体积：65 立方厘米&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	屏幕和 3D</div>
<div id=\"cke_pastebin\">
	尺寸：2.0 英寸&nbsp;</div>
<div id=\"cke_pastebin\">
	分辨率：320 x 240 像素（QVGA）&nbsp;</div>
<div id=\"cke_pastebin\">
	最高支持 256k 色&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	按键和输入法&nbsp;</div>
<div id=\"cke_pastebin\">
	数字键盘&nbsp;</div>
<div id=\"cke_pastebin\">
	专用音乐和音量键&nbsp;</div>
<div id=\"cke_pastebin\">
	声控命令&nbsp;</div>
','','N5130','','117.2x55.3x15.9 mm','红色','','1','0','0','0','0','1','1','1','0','0','','82','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('25','1','3',',8,13,','TCL电话机HCD868(13B)TSD','','','0','0','78.00','72.00','','20','125','','','','inc/uploads/product/201103/01(7).jpg,inc/uploads/product/201103/01(8).jpg','0','<div id=\"cke_pastebin\">
	* 双制式来电显示（99组）&nbsp;</div>
<div id=\"cke_pastebin\">
	* 去电号码及通话时间翻查（31组）&nbsp;</div>
<div id=\"cke_pastebin\">
	* 长途锁&nbsp;</div>
<div id=\"cke_pastebin\">
	* 防并机盗打&nbsp;</div>
<div id=\"cke_pastebin\">
	* 来电回拨&nbsp;</div>
<div id=\"cke_pastebin\">
	* 本地区号及长途码设置功能</div>
<div id=\"cke_pastebin\">
	* 可预拨号码&nbsp;</div>
<div id=\"cke_pastebin\">
	* 位号码显示、时间、日期及各种功能提示符号显示</div>
','','HCD868(13B)TSD','','117.2x55.3x15.9 mm','白色','','1','0','0','0','0','1','1','1','0','0','','70','0','0.00','0','','0','admin','1300377600'),('26','1','3',',8,13,','步步高电话机HCD007(182)TSDL','','','0','0','167.00','152.00','部','24','12','','步步高,电话机','','inc/uploads/product/201103/01(9).jpg,inc/uploads/product/201103/01(10).jpg,inc/uploads/product/201103/02(4).jpg,inc/uploads/product/201103/03(4).jpg','0','<div id=\"cke_pastebin\">
	*具有日期、时钟、拨号、通话计时等显示功能&nbsp;</div>
<div id=\"cke_pastebin\">
	*具有预置拨号功能，可编辑、删改未拨出的号码</div>
<div id=\"cke_pastebin\">
	*具有单键重拨和IP速拨功能</div>
<div id=\"cke_pastebin\">
	*显示屏液晶亮度八级可调</div>
<div id=\"cke_pastebin\">
	*本地区号过滤功能</div>
<div id=\"cke_pastebin\">
	*65组来电、20组去电、55组贵宾号码存贮并可查阅</div>
<div id=\"cke_pastebin\">
	*3组闹铃设置且闹铃声音三种可选</div>
<div id=\"cke_pastebin\">
	*来电语音报号和异地查询新来电功能功能</div>
<div id=\"cke_pastebin\">
	*并机接口和机械锁</div>
<div id=\"cke_pastebin\">
	*免扰和保密功能&nbsp;</div>
<div id=\"cke_pastebin\">
	*显示屏和拨号键盘具有夜光照明功能</div>
<div id=\"cke_pastebin\">
	*通话部分采用特殊电路设计，功耗低、输出大</div>
<div id=\"cke_pastebin\">
	*可显示总来电数、重复、保密、出局等多种动态信息</div>
<div id=\"cke_pastebin\">
	*防雷击保护电路，使防雷性能优于国家标准&nbsp;</div>
','','HCD007(182)TSDL','','117.2x55.3x15.9 mm','白色','','1','0','0','0','1','1','1','1','0','0','','60','0','0.00','0','','0','admin','1300377600'),('27','1','3',',8,13,','飞利浦电话机DCTG-792','','','0','0','522.00','486.00','部','120','25','','飞利浦,电话机','','inc/uploads/product/201103/01(11).jpg,inc/uploads/product/201103/01(12).jpg,inc/uploads/product/201103/02(5).jpg,inc/uploads/product/201103/03(5).jpg','0','<div id=\"cke_pastebin\">
	* 功能特点： 2.4G数字技术</div>
<div id=\"cke_pastebin\">
	* 品牌性质：合资</div>
<div id=\"cke_pastebin\">
	* 话机类型：字母机</div>
<div id=\"cke_pastebin\">
	* 拨号方式：预置拨号</div>
<div id=\"cke_pastebin\">
	* 来电显示：双制式来电显示</div>
<div id=\"cke_pastebin\">
	* 电话薄可存取号码数座机10/子机100。</div>
<div id=\"cke_pastebin\">
	* 来电存取号码数座机/子机各100组。</div>
<div id=\"cke_pastebin\">
	* 去电存取号码数座机/子机各10组。</div>
<div id=\"cke_pastebin\">
	* 铃声种类座机10/子机18组和弦。</div>
<div id=\"cke_pastebin\">
	* 通话/铃声音量可调。</div>
<div id=\"cke_pastebin\">
	* 停电座机可用。</div>
<div id=\"cke_pastebin\">
	* 子机支持VIP铃声选择。</div>
<div id=\"cke_pastebin\">
	* 座机支持单键快速拨号。</div>
<div id=\"cke_pastebin\">
	* 座机支持记忆拨号。</div>
<div id=\"cke_pastebin\">
	* 子机/座机支持来铃静音。</div>
<div id=\"cke_pastebin\">
	* 子机/座机支持闹钟。</div>
<div id=\"cke_pastebin\">
	* 三方通话。</div>
<div id=\"cke_pastebin\">
	* 外线转接/内部通话。</div>
<div id=\"cke_pastebin\">
	* 子机与子机对讲。</div>
<div id=\"cke_pastebin\">
	* IP功能。</div>
<div id=\"cke_pastebin\">
	* 免提通话。</div>
<div id=\"cke_pastebin\">
	* 电池低电提示及告警。</div>
<div id=\"cke_pastebin\">
	* 通话计时。</div>
<div id=\"cke_pastebin\">
	* 通话超距离告警。</div>
<div id=\"cke_pastebin\">
	* 本地区号过滤。</div>
<div id=\"cke_pastebin\">
	* 密码锁。</div>
<div id=\"cke_pastebin\">
	* 子机按键锁。</div>
<div id=\"cke_pastebin\">
	* 可带4部子机。</div>
','','DCTG-792','','117.2x55.3x15.9 mm','白色','','1','0','0','0','0','1','1','1','0','0','','787','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('28','1','3',',8,13,','飞利浦电话机CTZO-682A','','','0','0','388.00','368.00','部','12','35','','飞利浦,电话机','','inc/uploads/product/201103/01(13).jpg,inc/uploads/product/201103/01(14).jpg,inc/uploads/product/201103/02(6).jpg','0','<div id=\"cke_pastebin\">
	* FSK/DTMF 双制式来电显示</div>
<div id=\"cke_pastebin\">
	* 时尚化的人性设计</div>
<div id=\"cke_pastebin\">
	* 座机和弦铃声及来电语言报号</div>
<div id=\"cke_pastebin\">
	* 手机自动接听及挂机，手机闹钟功能</div>
<div id=\"cke_pastebin\">
	* 健康安全的贴心设计</div>
<div id=\"cke_pastebin\">
	* 一个座机最多可配三个子机</div>
<div id=\"cke_pastebin\">
	* DTMF/FSK制式全面兼容，适用于各种交换机</div>
<div id=\"cke_pastebin\">
	* 20信道自动/手动选择空闲信道</div>
<div id=\"cke_pastebin\">
	资料仅供参考，详情请以产品或说明书为准！</div>
','','CTZO-682A','','117.2x55.3x15.9 mm','白色','','1','0','0','0','0','1','1','1','0','0','','27','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('29','1','3',',5,16,','美的洗衣机MB50-2501GF','','','0','0','1398.00','1300.00','台','20','125','','美的，洗衣机','','inc/uploads/product/201103/01(15).jpg,inc/uploads/product/201103/01(16).jpg','0','<div id=\"cke_pastebin\">
	美的波轮洗衣机 &nbsp;净星系列</div>
<div id=\"cke_pastebin\">
	型号：MB50-2501GF</div>
<div id=\"cke_pastebin\">
	抑菌舱洗涤科技 &nbsp; &nbsp; 健康洗衣有保障</div>
<div id=\"cke_pastebin\">
	智能模糊控制 &nbsp; &nbsp; &nbsp; 洗的净洗的省</div>
<div id=\"cke_pastebin\">
	魔力S波轮 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;洗涤均匀不缠绕</div>
<div id=\"cke_pastebin\">
	程序自设定<span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span> &nbsp; &nbsp; &nbsp; &nbsp;随心洗涤衣物</div>
<div id=\"cke_pastebin\">
	电子水位设计 &nbsp; &nbsp; &nbsp; 节水精确掌握</div>
<div id=\"cke_pastebin\">
	预约洗涤程序 &nbsp; &nbsp; &nbsp; 轻松享受生活</div>
<div id=\"cke_pastebin\">
	动态数码屏显示 &nbsp; &nbsp; 实时掌控洗涤</div>
<div id=\"cke_pastebin\">
	魔术式过滤网 &nbsp; &nbsp; &nbsp; 过滤线屑更高效</div>
<div id=\"cke_pastebin\">
	洗涤容量：5.0kg</div>
<div id=\"cke_pastebin\">
	洗涤功率：340w</div>
<div id=\"cke_pastebin\">
	能效等级：2级</div>
<div id=\"cke_pastebin\">
	外形尺寸：515mm&times;525mm&times;906mm（长&times;宽&times;高）</div>
<div id=\"cke_pastebin\">
	整机净重：31kg</div>
','','MB50-2501GF','','515x525x906mm','白色','','1','0','0','0','0','1','1','1','0','0','','138','0','0.00','0','','0','admin','1300377600'),('30','1','3',',5,16,','博世洗衣机WVH24460TI','','','0','0','7130.00','6800.00','台','230','41','','博世,洗衣机','','inc/uploads/product/201103/01(17).jpg,inc/uploads/product/201103/01(18).jpg','0','<div id=\"cke_pastebin\">
	* 颜色 白&nbsp;</div>
<div id=\"cke_pastebin\">
	* 显示屏 超大LCD&nbsp;</div>
<div id=\"cke_pastebin\">
	* 尺寸(高/宽/厚)(毫米) 850*600*600&nbsp;</div>
<div id=\"cke_pastebin\">
	* 面板按键 触摸键&nbsp;</div>
<div id=\"cke_pastebin\">
	* 能耗等级 1级&nbsp;</div>
<div id=\"cke_pastebin\">
	* 最高脱水速度(转/分) 1200&nbsp;</div>
<div id=\"cke_pastebin\">
	* 最大洗涤量(公斤) 7.0&nbsp;</div>
<div id=\"cke_pastebin\">
	* 最大干衣量(公斤) 4.0&nbsp;</div>
<div id=\"cke_pastebin\">
	* 附件功能 &nbsp;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 超快15&#39; &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 棉-强净60&#39; &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 个性洗 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 强烘干 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 弱烘干 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 冲浪洗滚筒 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 双水路喷淋系统 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 3D位移传感器 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 冷热双气流循环 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 感湿控湿技术 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 电脑变速洗 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 童锁 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 夜间洗 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 带预洗 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 加漂洗 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 轻松熨 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 自动烘 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 按时烘 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 免排水 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 调节水温 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 预约结束 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 调整转速 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 最多衣量提示 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 衣量自检＋泡沫自检＋故障自检 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 智能不平衡检测 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 电脑智能提示 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 结束蜂鸣 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	* 网站商品图片及资料仅供参考，请以实物为准</div>
','','WVH24460TI','','515x525x906mm','白色','','1','0','0','0','0','1','1','1','0','0','','315','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('31','1','3',',7,','苹果平板电脑MB293CH/A','','','0','0','3688.00','3652.00','台','32','12','','苹果，平板电脑','','inc/uploads/product/201103/01(19).jpg,inc/uploads/product/201103/01(20).jpg,inc/uploads/product/201103/02(7).jpg,inc/uploads/product/201103/03(6).jpg','0','<div id=\"cke_pastebin\">
	基本参数&nbsp;</div>
<div id=\"cke_pastebin\">
	产品类型 平板电脑</div>
<div id=\"cke_pastebin\">
	wifi版本&nbsp;</div>
<div id=\"cke_pastebin\">
	操作系统 Mac OS&nbsp;</div>
<div id=\"cke_pastebin\">
	处理器&nbsp;</div>
<div id=\"cke_pastebin\">
	处理器型号 1GHz A4&nbsp;</div>
<div id=\"cke_pastebin\">
	存储设备&nbsp;</div>
<div id=\"cke_pastebin\">
	硬盘容量 32GB&nbsp;</div>
<div id=\"cke_pastebin\">
	显示屏&nbsp;</div>
<div id=\"cke_pastebin\">
	屏幕尺寸 9.7&nbsp;</div>
<div id=\"cke_pastebin\">
	屏幕分辨率 1024&times;768&nbsp;</div>
<div id=\"cke_pastebin\">
	屏幕描述 多点触摸IPS屏，防指纹涂层，LED&nbsp;</div>
<div id=\"cke_pastebin\">
	显卡/音频&nbsp;</div>
<div id=\"cke_pastebin\">
	音频系统 内置音效芯片&nbsp;</div>
<div id=\"cke_pastebin\">
	摄像头/网络通信&nbsp;</div>
<div id=\"cke_pastebin\">
	无线网卡 支持802.11a/b/g/n无线协议&nbsp;</div>
<div id=\"cke_pastebin\">
	支持蓝牙 支持&nbsp;</div>
','','MB293CH/A','','242.8×189.7×13.4mm','黑色,白色','','1','0','0','0','1','1','1','1','0','0','','757','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('32','1','3',',7,','联想笔记本电脑G450LXT3100W41G250PLx(XX)-CN','','','0','0','3100.00','2890.00','台','24','52','','联想，笔记本，电脑','','inc/uploads/product/201103/01(21).jpg,inc/uploads/product/201103/01(22).jpg,inc/uploads/product/201103/02(8).jpg,inc/uploads/product/201103/03(7).jpg','0','<div id=\"cke_pastebin\">
	* 处理器 英特尔&reg; 奔腾&reg; 处理器T3100双核64(CeleronCore1.9G/1M) &nbsp;</div>
<div id=\"cke_pastebin\">
	* 内存 1GB (DDR3 1066MHz)&nbsp;</div>
<div id=\"cke_pastebin\">
	* 二级缓存 1M&nbsp;</div>
<div id=\"cke_pastebin\">
	* 硬盘 250G SATA（5400rpm）&nbsp;</div>
<div id=\"cke_pastebin\">
	* 无线局域网卡 802.11B+G 无线网卡&nbsp;</div>
<div id=\"cke_pastebin\">
	* 光驱 超级DVD刻录光驱&nbsp;</div>
<div id=\"cke_pastebin\">
	* 显示屏 14.0&quot; LED背光液晶屏，16:9黄金比例&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 分辨率 1366&times;768 32位真彩色, &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 显卡 英特尔&reg; GMA 4500M集成显卡&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 显示内存 128MB系统显存&nbsp;</div>
<div id=\"cke_pastebin\">
	* 键盘 联想高触感笔记本键盘 + 快捷触控按键&nbsp;</div>
<div id=\"cke_pastebin\">
	* 视频输出 标准VGA &nbsp;</div>
<div id=\"cke_pastebin\">
	* 摄像头 30万像素网络摄像头&nbsp;</div>
<div id=\"cke_pastebin\">
	* 声音系统 2*2W立体声音响 + 抗噪麦克风&nbsp;</div>
<div id=\"cke_pastebin\">
	* 网络连接 10M/100M以太自适应网卡&nbsp;</div>
<div id=\"cke_pastebin\">
	* 标准接口 3个USB2.0接口，34mm Express Card接口，VGA接口，RJ45，麦克风和立体声音频输出插孔&nbsp;</div>
<div id=\"cke_pastebin\">
	* 电源 65W电源适配器&nbsp;</div>
<div id=\"cke_pastebin\">
	* 电池类型 高性能6芯锂离子电池&nbsp;</div>
<div id=\"cke_pastebin\">
	* 尺寸 345 x 235 x 26.2 - 35.9 mm&nbsp;</div>
<div id=\"cke_pastebin\">
	* 重量 2.35Kg(含有6芯电池，具体重量依据产品出货配置为准)&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	* 特色功能 Smart Audio音响控制系统</div>
<div id=\"cke_pastebin\">
	* 高速系统修复和恢复功能的一键拯救系统</div>
','','G450LXT3100','','345x235x26.2mm','黑色','','1','0','0','0','0','1','1','1','0','0','','89','0','0.00','0','','0','admin','1300377600'),('33','1','3',',7,',' 长城笔记本电脑T33U','','','0','0','3200.00','2680.00','台','3','21','',' 长城,笔记本,电脑','','inc/uploads/product/201103/01(23).jpg,inc/uploads/product/201103/01(24).jpg','0','<div id=\"cke_pastebin\">
	品牌 长城 Great Wall&nbsp;</div>
<div id=\"cke_pastebin\">
	系列 T系列&nbsp;</div>
<div id=\"cke_pastebin\">
	型号 T33U&nbsp;</div>
<div id=\"cke_pastebin\">
	颜色 黑色&nbsp;</div>
<div id=\"cke_pastebin\">
	平台 Intel&nbsp;</div>
<div id=\"cke_pastebin\">
	软件&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	随机系统 DOS&nbsp;</div>
<div id=\"cke_pastebin\">
	处理器&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	CPU型号 SU2300&nbsp;</div>
<div id=\"cke_pastebin\">
	CPU速度 1.2GHz&nbsp;</div>
<div id=\"cke_pastebin\">
	系统总线 800MHz&nbsp;</div>
<div id=\"cke_pastebin\">
	二级缓存 1MB&nbsp;</div>
<div id=\"cke_pastebin\">
	芯片组&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	芯片组 GS40+ICH9M-SFF &nbsp;</div>
','','T33U','','345x235x26.2mm','黑色','','1','0','0','0','0','1','1','1','0','0','','305','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('34','1','3',',7,','东芝笔记本电脑L600-26S','','','0','0','4499.00','4200.00','台','12','25','','东芝,笔记本,电脑','','inc/uploads/product/201103/01(25).jpg,inc/uploads/product/201103/01(26).jpg,inc/uploads/product/201103/02(9).jpg','0','<div id=\"cke_pastebin\">
	品牌： 东芝&nbsp;</div>
<div id=\"cke_pastebin\">
	系列： 东芝L600系列&nbsp;</div>
<div id=\"cke_pastebin\">
	型号： L600-26S&nbsp;</div>
<div id=\"cke_pastebin\">
	处理器： Intel Core i5-450M(2.4GHz)&nbsp;</div>
<div id=\"cke_pastebin\">
	主板芯片组： Intel HM55&nbsp;</div>
<div id=\"cke_pastebin\">
	内存容量： 2GB&nbsp;</div>
<div id=\"cke_pastebin\">
	硬盘容量： 320GB&nbsp;</div>
<div id=\"cke_pastebin\">
	光驱类型： DVD刻录机&nbsp;</div>
<div id=\"cke_pastebin\">
	屏幕尺寸： 14英寸&nbsp;</div>
<div id=\"cke_pastebin\">
	显卡芯片： ATI Mobility Radeon HD 5145&nbsp;</div>
<div id=\"cke_pastebin\">
	网卡： 内置10-100M网卡&nbsp;</div>
<div id=\"cke_pastebin\">
	内置摄像头： 内置摄像头&nbsp;</div>
<div id=\"cke_pastebin\">
	USB： 2个,USB2.0&nbsp;</div>
<div id=\"cke_pastebin\">
	读卡器： 内置,五合一读卡器,SD,MS,MS Pro,MMC,SDHC&nbsp;</div>
<div id=\"cke_pastebin\">
	其它接口： Esata Combo(eSATA/USB2.0),VGA接口,HDMI接口,RJ45,声音输入,声音输出孔,直流电源插孔,安全锁孔&nbsp;</div>
<div id=\"cke_pastebin\">
	重量： 约2.2Kg&nbsp;</div>
<div id=\"cke_pastebin\">
	操作系统： Windows 7 Home Basic&nbsp;</div>
','','L600-26S','','242.8×189.7×13.4mm','黑色','','1','0','0','0','0','1','1','1','0','0','','38','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('35','1','3',',9,','尼康单反相机D90套机+4G卡+包','','','0','0','7450.00','7200.00','个','25','65','','尼康，相机','','inc/uploads/product/201103/01(27).jpg,inc/uploads/product/201103/01(28).jpg,inc/uploads/product/201103/02(10).jpg,inc/uploads/product/201103/03(8).jpg','0','<div id=\"cke_pastebin\">
	* 有效像素 1,230 万&nbsp;</div>
<div id=\"cke_pastebin\">
	* 影像感应器 Nikon DX 格式 (23.6 x 15.8 mm) CMOS 感应器&nbsp;</div>
<div id=\"cke_pastebin\">
	* 影像尺寸(像素)&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 4,288 x 2,848 [L], 3,216 x 2,136 [M],&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 2,144 x 1,424 [S];&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 数码短片: 1240 x 720 / 24fps, 640 x 424 / 24fps,&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 320 x 216 / 24fps&nbsp;</div>
<div id=\"cke_pastebin\">
	* 感光度 ISO 200 至 3200，以 1/3 EV 为步长调校；</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ISO 200以下时，感光度以约 0.3、0.7 或 1 EV&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(ISO 100相当值)作定级递减；</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;高于ISO3200 时，感光度以约0.3、0.7或 1 EV</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(ISO 6400 相当值)作定级递增。&nbsp;</div>
','','D90','','132x103x77mm ','黑色','','1','0','0','0','1','1','1','1','0','0','','334','0','0.00','0','','0','admin','1300377600'),('36','1','3',',9,','富士数码相机S1500','','','0','0','1350.00','1280.00','个','22','65','','富士,数码相机','','inc/uploads/product/201103/01(29).jpg,inc/uploads/product/201103/01(30).jpg,inc/uploads/product/201103/02(11).jpg,inc/uploads/product/201103/03(9).jpg','0','<div id=\"cke_pastebin\">
	* 数码相机类型： 长焦数码相机&nbsp;</div>
<div id=\"cke_pastebin\">
	* 有效像素： 1000万像素&nbsp;</div>
<div id=\"cke_pastebin\">
	* 光学变焦倍数： 12倍光学变焦&nbsp;</div>
<div id=\"cke_pastebin\">
	* 数码变焦倍数： 5.7倍数码变焦&nbsp;</div>
<div id=\"cke_pastebin\">
	* 操作模式： 全自动,带全手动功能&nbsp;</div>
<div id=\"cke_pastebin\">
	* 传感器类型： CCD传感器&nbsp;</div>
<div id=\"cke_pastebin\">
	* 传感器尺寸： 1/ 2.3英寸&nbsp;</div>
<div id=\"cke_pastebin\">
	* 最大分辨率： 3648&times;2736&nbsp;</div>
<div id=\"cke_pastebin\">
	* 短片拍摄功能： 640 x 480 像素,30 帧/秒</div>
<div id=\"cke_pastebin\">
	* 液晶屏特性： 23万像素,低温多晶硅TFT(WV膜),约97%视野覆盖率60帧/秒&nbsp;</div>
<div id=\"cke_pastebin\">
	* 取景器类型： 液晶屏取景,电子取景器,0.2英寸,约20万像素彩色FLCD 覆盖率约97%&nbsp;</div>
<div id=\"cke_pastebin\">
	* 镜头类型： 伸缩式&nbsp;</div>
<div id=\"cke_pastebin\">
	* 变焦方式： 电子&nbsp;</div>
<div id=\"cke_pastebin\">
	* 焦距(相当于35mm)： 33-396mm&nbsp;</div>
<div id=\"cke_pastebin\">
	* 起始焦距： 33&nbsp;</div>
','','S1500','','132x103x77mm ','黑色','','1','0','0','0','1','1','1','1','0','0','','218','0','0.00','0','','0','admin','1300377600'),('37','1','3',',9,','爱立电MP3HM-1025','','','0','0','510.00','500.00','个','221','65','','爱立电,MP3','','inc/uploads/product/201103/01(31).jpg,inc/uploads/product/201103/01(32).jpg,inc/uploads/product/201103/02(12).jpg,inc/uploads/product/201103/03(10).jpg','0','<div id=\"cke_pastebin\">
	* 内存大小：128MB</div>
<div id=\"cke_pastebin\">
	* 电池类型：内置锂电</div>
<div id=\"cke_pastebin\">
	* 品牌性质：国产</div>
<div id=\"cke_pastebin\">
	* 颜色：蓝色</div>
<div id=\"cke_pastebin\">
	* 体积大小：51*38*11（mm）</div>
<div id=\"cke_pastebin\">
	* 传输方式：电脑USB</div>
<div id=\"cke_pastebin\">
	* 支持MP3\\WMA播放音乐格式</div>
<div id=\"cke_pastebin\">
	* 英汉词典支持便携式查询，词汇量达15万</div>
<div id=\"cke_pastebin\">
	* 内置FM调频</div>
<div id=\"cke_pastebin\">
	* 强大的&ldquo;变速复读&rdquo;功能，5级变速，变速不变调，一口气复读功能学好帮手</div>
<div id=\"cke_pastebin\">
	* SP/LP双模式数码录音功能</div>
<div id=\"cke_pastebin\">
	* 标准U盘功能（Windows98以上系统无需驱动）</div>
<div id=\"cke_pastebin\">
	* 点阵LCD液晶显示，七彩背光</div>
<div id=\"cke_pastebin\">
	* TXT文本阅读</div>
','','MP3HM-1025','','51x38x11mm','黑色,白色','','1','0','0','0','0','1','1','1','0','0','','55','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('38','1','3',',9,','佳能照相机EOS550DKIT(EF-S18-55IS)','','','0','0','5799.00','5480.00','个','3','24','','佳能,照相机','','inc/uploads/product/201103/01(33).jpg,inc/uploads/product/201103/01(34).jpg,inc/uploads/product/201103/02(13).jpg,inc/uploads/product/201103/03(11).jpg','0','基本规格&nbsp;<br />
发布日期&nbsp;2010年02月&nbsp;<br />
机身类型&nbsp;APS-C规格数码单反&nbsp;<br />
手动操作&nbsp;全手动支持&nbsp;<br />
传感器类型&nbsp;CMOS&nbsp;<br />
感光元件尺寸&nbsp;22.3&times;14.9mm&nbsp;<br />
传感器描述&nbsp;长宽比：3：2&nbsp;<br />
除尘功能：自动，手动，添加除尘数据&nbsp;<br />
总像素数&nbsp;1870万&nbsp;<br />
有效像素&nbsp;1800万&nbsp;<br />
影像处理器&nbsp;DIGIC&nbsp;4&nbsp;<br />
镜头特点&nbsp;<br />
镜头说明&nbsp;兼容镜头：佳能EF系列镜头（包括EF-S系列镜头）（35毫米换算焦距约为镜头焦距的1.6倍）&nbsp;镜头卡口：佳能EF卡口&nbsp;<br />
对焦方式&nbsp;类型：TTL辅助影像重合，相位检测自动对焦点：9个自动对焦点&nbsp;测光范围：EV&nbsp;-0.5&nbsp;-&nbsp;18（23℃/73℉，ISO&nbsp;100）&nbsp;对焦模式：单次自动对焦，人工智能伺服自动对焦，人工智能自动对焦，手动对焦（MF）&nbsp;自动对焦辅助光：由内置闪光灯发出的短促连续闪光&nbsp;<br />
对焦点数&nbsp;9点&nbsp;<br />
变焦方式&nbsp;机械','','EOS550DKIT','','22.3×14.9mm','黑色','','1','0','0','0','1','1','1','1','0','0','','508','0','0.00','0','','0','admin','1300464000');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('39','1','3',',5,19,','飞利浦电须刀HS190','','','0','0','569.00','530.00','个','28','21','','飞利浦,电须刀','','inc/uploads/product/201103/01(35).jpg,inc/uploads/product/201103/01(36).jpg,inc/uploads/product/201103/02(14).jpg,inc/uploads/product/201103/03(12).jpg','0','<div id=\"cke_pastebin\">
	* 具备Microgroove&ldquo;贴面网缝&rdquo;刀头</div>
<div id=\"cke_pastebin\">
	* 外型轻巧时尚，线条流丽</div>
<div id=\"cke_pastebin\">
	* 配有银色收藏盒方便携带</div>
<div id=\"cke_pastebin\">
	* 旋转式剃须系统</div>
<div id=\"cke_pastebin\">
	* HS190干电式双层刀片</div>
<div id=\"cke_pastebin\">
	* 贴面网设计</div>
<div id=\"cke_pastebin\">
	* 两节五号碱性电池操作</div>
<div id=\"cke_pastebin\">
	* 附精美收藏盒</div>
<div id=\"cke_pastebin\">
	* 适用刀头HQ4</div>
','','HS190','','HQ4','黑色,白色','','1','0','0','0','0','1','1','1','0','0','','410','0','0.00','0','','0','admin','1300464000'),('40','1','3',',5,17,','长虹 3DTV63938FS 3D网络/超薄全高清','','','0','0','25999.00','24800.00','台','3','6','长虹,3DTV63938FS,3D网络,超薄,高清','Changhon,长虹,3D网络,超薄,全高清','','inc/uploads/product/201103/01(37).jpg,inc/uploads/product/201103/01(38).jpg,inc/uploads/product/201103/01(39).jpg','0','产品名称：Changhong/长虹 3DTV63938FS<br />
品牌: Changhong/长虹<br />
长虹型号: 3DTV63938FS<br />
屏幕尺寸: 63英寸<br />
屏幕比例: 宽屏16:9<br />
分辨率: 1920&times;1080<br />
特色功能: USB媒体播放<br />
输入输出接口: 网络端口LAN<br />
售后服务: 全国联保<br />
价格区间: 20000以上<br />
最佳观看距离: 大于5.0米<br />
颜色分类: 底座 &nbsp;挂架<br />
套餐: 官方标配','','3DTV63938FS 3D','','3DTV63938FS','黑色','','1','0','0','0','1','1','1','1','0','0','','453','0','0.00','0','','0','admin','1300464000');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('41','1','3',',6,10,','诺基亚手机N97','','','0','0','4800.00','4650.00','部','30','21','','诺基亚，N97','','inc/uploads/product/201103/01(1).jpg,inc/uploads/product/201103/02.jpg,inc/uploads/product/201103/03.jpg,inc/uploads/product/201103/04.jpg','0','<div id=\"cke_pastebin\">
	* 手机类型 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>智能手机</div>
<div id=\"cke_pastebin\">
	* 操作系统 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>SymbianOS S60 V5版操作系统</div>
<div id=\"cke_pastebin\">
	* 硬件系统 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>434MHz主频的处理器</div>
<div id=\"cke_pastebin\">
	* 理论待机时间 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>约432小时（视网络,使用状况及手机卡而定）</div>
<div id=\"cke_pastebin\">
	* 屏幕 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>屏幕色彩:1600万色 主屏尺寸:3.5英寸 屏幕材质:TFT 主屏参数:360&times;640像素分辨率&nbsp;</div>
<div id=\"cke_pastebin\">
	* 支持16:9显示比例 触摸屏:支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 网络频率 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>手机制式:GSM 支持频段:GSM850/900/1800/1900MHz&nbsp;</div>
<div id=\"cke_pastebin\">
	* 铃声 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>和弦铃声:64和弦 铃音描述:支持MP3铃声&nbsp;</div>
<div id=\"cke_pastebin\">
	* 理论通话时间 &nbsp;约9小时30分钟（视网络,使用状况及手机卡而定）</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	产品外形</div>
<div id=\"cke_pastebin\">
	* 外观设计 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>侧滑盖</div>
<div id=\"cke_pastebin\">
	* 产品尺寸 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>117.2x55.3x15.9 mm</div>
<div id=\"cke_pastebin\">
	* 手机重量 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>150g</div>
<div id=\"cke_pastebin\">
	* 机身颜色 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>黑色、银白色</div>
<div id=\"cke_pastebin\">
	* 机身特点 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持重力感应</div>
<div id=\"cke_pastebin\">
	* QWERTY全键盘 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>是</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	娱乐功能</div>
<div id=\"cke_pastebin\">
	* 视频播放 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持MPEG4/WMV/3gp格式</div>
<div id=\"cke_pastebin\">
	* 音乐播放 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持MP3/WMA/WAV/eAAC+格式</div>
<div id=\"cke_pastebin\">
	* 支持立体声扬声器</div>
<div id=\"cke_pastebin\">
	* 游戏 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>内置</div>
<div id=\"cke_pastebin\">
	* JAVA扩展 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>Java功能:支持MIDP 2.1&nbsp;</div>
<div id=\"cke_pastebin\">
	* 摄像功能描述 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>摄像头:内置&nbsp;</div>
<div id=\"cke_pastebin\">
	* 摄像头 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>视频拍摄:支持VGA分辨率，30fps的视频拍摄 拍照功能描述:有LED闪光灯</div>
<div id=\"cke_pastebin\">
	卡尔蔡司镜头</div>
<div id=\"cke_pastebin\">
	* 最大支持2584&times;1938像素的照片拍摄 摄像头像素:500万像素&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	数据功能</div>
<div id=\"cke_pastebin\">
	* 蓝牙功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持蓝牙2.0，A2DP立体声</div>
<div id=\"cke_pastebin\">
	* 数据线接口 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>micro USB2.0</div>
<div id=\"cke_pastebin\">
	* 内存容量 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>32GB的存储空间，128MB内存</div>
<div id=\"cke_pastebin\">
	* 存储卡 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持最大16GB的存储卡扩展</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	基本功能</div>
<div id=\"cke_pastebin\">
	* 免提通话 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 输入法 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>手写输入:手写+键盘&nbsp;</div>
<div id=\"cke_pastebin\">
	* 信息功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>SMS短信:支持 MMS短信:支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 网络功能</div>
<div id=\"cke_pastebin\">
	* E-Mail <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* WLAN功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 浏览器 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>WAP浏览器:支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	其他功能</div>
<div id=\"cke_pastebin\">
	* 录音功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* PDA功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>内置PDF浏览器，支持Word、Excel、PowerPoint文档浏览</div>
<div id=\"cke_pastebin\">
	* 情景模式 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 待机图片 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 闹钟功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 日历功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 计算器 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 无线数据 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>GPRS/EDGE/HSDPA</div>
<div id=\"cke_pastebin\">
	* 自动开关机 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* 图形菜单 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持</div>
<div id=\"cke_pastebin\">
	* GPS功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持A-GPS、诺基亚地图</div>
<div id=\"cke_pastebin\">
	* 可以将地理信息连同照片和视频发送到社会化网络社区中</div>
<div id=\"cke_pastebin\">
	* 其它参数 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>3.5毫米耳机接口</div>
<div id=\"cke_pastebin\">
	* 其它功能 <span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span>支持TV-OUT</div>
<div id=\"cke_pastebin\">
	（商品资料仅供参考，请以商场实物为准）</div>
','','N97','','','黑色,白色,红色','','1','0','0','0','0','1','1','1','0','0','','709','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('42','1','3',',6,11,','三星手机S5230','','','0','0','980.00','860.00','部','6','84','','三星，S5230','','inc/uploads/product/201103/01(1).jpg,inc/uploads/product/201103/01(2).jpg,inc/uploads/product/201103/02(1).jpg,inc/uploads/product/201103/03(1).jpg','0','<div id=\"cke_pastebin\">
	- 时尚全触摸屏设计，内置手写笔</div>
<div id=\"cke_pastebin\">
	- 11.9毫米纤薄机身</div>
<div id=\"cke_pastebin\">
	- 3.0英寸WQVGA(240x400)分辨率，26万色TFT彩屏</div>
<div id=\"cke_pastebin\">
	- 最新Touchwiz操作界面，方便手指点触，操作更灵敏，反应速度超越思绪；</div>
<div id=\"cke_pastebin\">
	- 你可以挑选常用功能放在桌面小组件中，随意拖拽，同时点击即快速进入应用程序，制定我自己的实用小组件，便捷操作轻松点触；</div>
<div id=\"cke_pastebin\">
	- 自带重力感应器，在浏览图片、上网、观看视频时，可以横、竖屏自动切换，无论站立或是平躺都能享受最佳浏览体验；</div>
<div id=\"cke_pastebin\">
	- 振动触摸，轻触的瞬间，灵机一动。</div>
<div id=\"cke_pastebin\">
	- 三星S5230C机身预装百度搜索，并将其放在桌面小组件中，方便实用；</div>
<div id=\"cke_pastebin\">
	- 支持www网页浏览，具有网页缩放、主页、书签、后退等功能，如同PC的网页浏览器，随时方便查询信息。</div>
<div id=\"cke_pastebin\">
	- 320万像素数码相机，可拍摄最大分辨率2048x1536的照片，为你带来更专业的拍摄享受；</div>
<div id=\"cke_pastebin\">
	- 拥有笑脸拍摄模式，自动抓拍人物笑脸，拍摄对象在大笑或微笑时相机会自动拍摄及时捕捉</div>
<div id=\"cke_pastebin\">
	- 支持自动全景拍照功能，拍摄过程中，只需缓慢移动镜头，手机功能会自动检测下一帧图片并拍摄，最后自动拼接成全景照片，为你展现不一样的宽广视角；</div>
<div id=\"cke_pastebin\">
	- 趣味相框、多种拍摄模式和拍摄效果设置，专业全面的功能支持，满足你的各种拍摄需求；</div>
<div id=\"cke_pastebin\">
	- 支持最大为QVGA的分辨率，15帧/秒的视频录制，将生动的场景随时再现。</div>
<div id=\"cke_pastebin\">
	- 拥有DNSe数字自然音效</div>
<div id=\"cke_pastebin\">
	- 支持MP3/AAC/AAC+/e-AAC+/WMA/WAV多种格式音乐文件</div>
<div id=\"cke_pastebin\">
	- 音乐库管理</div>
<div id=\"cke_pastebin\">
	- 支持蓝牙立体声耳机</div>
<div id=\"cke_pastebin\">
	- 具有音乐识别功能，当你听到某首歌，你只需选录一段音乐，音乐识别功能会帮助你查找歌名及歌手信息，做真正的音乐达人。</div>
<div id=\"cke_pastebin\">
	- 支持MPEG4/H.263/H.264/WMV格件，最大为QVGA分辨率</div>
<div id=\"cke_pastebin\">
	* 手机外型 直板</div>
<div id=\"cke_pastebin\">
	* 网络参数</div>
<div id=\"cke_pastebin\">
	&nbsp; 网络类型： 2G GSM&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 频率： EDGE 850MHz/900MHz/1800MHz/1900MHz &nbsp;</div>
<div id=\"cke_pastebin\">
	* 基本参数</div>
<div id=\"cke_pastebin\">
	&nbsp; 尺寸： 104 x 53 x 11.9毫米&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 重量： 92克&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 电池容量： 1,000mAh&nbsp;</div>
<div id=\"cke_pastebin\">
	* 显示屏幕 &nbsp;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 屏幕尺寸： 3.0英寸 &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 分辨率： WQVGA&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 色彩： 26万色&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 材质： TFT&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 触摸屏： 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 手写输入： 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 数码相机 &nbsp;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 主数码相机： 像　素 320万像素&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 可拍摄最大分辨率 2048 x 1536 &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 笑脸模式 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 数码变焦 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 存　储 &nbsp;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 用户内存： 85MB &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 扩展存储： MicroSD 最大8GB &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 大容量存储器： 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; SMS容量： 500条 &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 电话簿容量： 2,000条&nbsp;</div>
<div id=\"cke_pastebin\">
	* 系统软件 &nbsp;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 操作系统： 三星专有&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 浏览器： 支持WWW和WAP2.0&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; MMS： 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; JAVA： 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 多媒体 &nbsp;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 铃　声： 和　弦 64和弦 &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; MP3铃声 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 音频播放： 音乐格式 MP3/AAC/AAC+/e-AAC+/WMA/WAV &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; DNse 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 蓝牙立体声耳机 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; MTP 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; DRM 支持&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;视频播放： 播放格式 H.263,H.264,MPEG4,WMV &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;视频质量 QVGA@15fps&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;录制视频： 录制格式 H.263,MPEG4 &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;视频质量 QVGA@15fps&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;FM收音机： &nbsp; 支持FM收音机\\支持收听中录音&nbsp;</div>
<div id=\"cke_pastebin\">
	* 其它功能</div>
<div id=\"cke_pastebin\">
	&nbsp; 连接性： 蓝牙 蓝牙2.1</div>
<div id=\"cke_pastebin\">
	&nbsp; USB USB2.0</div>
<div id=\"cke_pastebin\">
	&nbsp; 感应器： &nbsp; 支持重力感应器</div>
<div id=\"cke_pastebin\">
	&nbsp; 信息： 电子邮件 支持</div>
<div id=\"cke_pastebin\">
	&nbsp; QQ 支持</div>
<div id=\"cke_pastebin\">
	&nbsp; 办公： 文档浏览器 支持</div>
<div id=\"cke_pastebin\">
	&nbsp; 通话： 免提通话 支持</div>
<div id=\"cke_pastebin\">
	&nbsp; 其它： 在线Widget 支持</div>
<div id=\"cke_pastebin\">
	&nbsp; 游戏 支持</div>
<div id=\"cke_pastebin\">
	（商品资料如果因厂家产品升级或其他原因与实物存在差异，均以商场的实物为准）</div>
','','S5230','','117.2x55.3x15.9 mm','黑色,白色,红色','','1','0','0','0','0','1','1','1','0','0','','300','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('43','1','3',',6,12,',' 索尼爱立信手机T707','','','0','0','1398.00','1280.00','部','6','84','',' 索尼,爱立信,T707','','inc/uploads/product/201103/01(3).jpg,inc/uploads/product/201103/01(4).jpg,inc/uploads/product/201103/02(2).jpg,inc/uploads/product/201103/03(2).jpg','0','<div id=\"cke_pastebin\">
	* 上市日期:2009年 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 屏幕 &nbsp;屏幕色彩:26万色 外屏参数:128x36像素 主屏尺寸:2.4英寸 屏幕材质:TFT 主屏参数:240x320像素 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 网络频率 &nbsp;手机制式:GSM 支持频段:GSM 850/900/1800/1900&nbsp;</div>
<div id=\"cke_pastebin\">
	UMTS/HSDPA 2100MHz &nbsp;</div>
<div id=\"cke_pastebin\">
	* 铃声 &nbsp;和弦铃声:和弦 铃音描述:支持MP3, AAC等铃声 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 产品外形外观设计 &nbsp;翻盖&nbsp;</div>
<div id=\"cke_pastebin\">
	* 产品尺寸 &nbsp;93.0 x 50.0 x 14.1 毫米&nbsp;</div>
<div id=\"cke_pastebin\">
	* 手机重量 &nbsp;95.0 克&nbsp;</div>
<div id=\"cke_pastebin\">
	* 机身颜色 &nbsp;黑&nbsp;</div>
<div id=\"cke_pastebin\">
	* 娱乐功能音乐播放 &nbsp;内置媒体播放器</div>
<div id=\"cke_pastebin\">
	* 您喜欢的音乐可按艺术家、专辑和曲目排序欣赏。创建自己的播放列表。</div>
<div id=\"cke_pastebin\">
	* 可通过光碟专辑图片或其它图片选择音乐</div>
<div id=\"cke_pastebin\">
	* 支持曲目识别、PlayNow功能、米加低音等&nbsp;</div>
<div id=\"cke_pastebin\">
	* 游戏 &nbsp;内置3D游戏&nbsp;</div>
<div id=\"cke_pastebin\">
	* JAVA扩展 &nbsp;Java功能:支持 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 摄像功能描述 &nbsp;摄像头:内置 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 摄像头 &nbsp;拍照功能描述:支持照片修复、实时抓拍动作、图片加注拍摄地点地理信息以及优化图片品质。 摄像头像素:320万像素 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 收音机 &nbsp;支持调频收音机配RDS功能</div>
<div id=\"cke_pastebin\">
	* 全天候调频收音机娱乐享受&nbsp;</div>
<div id=\"cke_pastebin\">
	* 数据功能蓝牙功能 &nbsp;支持立体声蓝牙&nbsp;</div>
<div id=\"cke_pastebin\">
	* 数据线接口 &nbsp;USB&nbsp;</div>
<div id=\"cke_pastebin\">
	* 内存容量 &nbsp;100MB用户内存&nbsp;</div>
<div id=\"cke_pastebin\">
	* 存储卡 &nbsp;支持M2存储卡扩展（最高至16GB ）&nbsp;</div>
<div id=\"cke_pastebin\">
	* 基本功能免提通话 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 输入法 &nbsp;联想文本输入法&nbsp;</div>
<div id=\"cke_pastebin\">
	* 信息功能 &nbsp;SMS短信:支持 MMS短信:支持 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 网络功能E-Mail &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 浏览器 &nbsp;WWW浏览器:支持标准协议、图像和视频的全功能互联网浏览器。 WAP浏览器: * 支持WAP 2.0以及WAP 1.2.1 &nbsp;</div>
<div id=\"cke_pastebin\">
	* 其他功能录音功能 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 情景模式 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 待机图片 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 闹钟功能 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 日历功能 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 计算器 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 无线数据 &nbsp;GPRS、EDGE&nbsp;</div>
<div id=\"cke_pastebin\">
	* 秒表 &nbsp;支持&nbsp;</div>
<div id=\"cke_pastebin\">
	* 其它参数 &nbsp;支持PC电脑同步</div>
<div id=\"cke_pastebin\">
	* 内置调制解调器</div>
<div id=\"cke_pastebin\">
	（商品资料仅供参考，请以商场实物为准）</div>
','','T707','','117.2x55.3x15.9 mm','白色,红色','','1','0','0','0','1','1','1','1','0','0','','262','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('44','1','3',',6,10,','诺基亚手机N5130（红）','','','0','0','730.00','650.00','部','3','41','','诺基亚，N5130','','inc/uploads/product/201103/01(5).jpg,inc/uploads/product/201103/01(6).jpg,inc/uploads/product/201103/02(3).jpg,inc/uploads/product/201103/03(3).jpg','0','<div id=\"cke_pastebin\">
	物理特征、电源和存储器</div>
<div id=\"cke_pastebin\">
	尺寸&nbsp;</div>
<div id=\"cke_pastebin\">
	机型：经典&nbsp;</div>
<div id=\"cke_pastebin\">
	尺寸：107.5 x 46.7 x 14.8 毫米&nbsp;</div>
<div id=\"cke_pastebin\">
	重量：88 克（含电池）&nbsp;</div>
<div id=\"cke_pastebin\">
	体积：65 立方厘米&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	屏幕和 3D</div>
<div id=\"cke_pastebin\">
	尺寸：2.0 英寸&nbsp;</div>
<div id=\"cke_pastebin\">
	分辨率：320 x 240 像素（QVGA）&nbsp;</div>
<div id=\"cke_pastebin\">
	最高支持 256k 色&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	按键和输入法&nbsp;</div>
<div id=\"cke_pastebin\">
	数字键盘&nbsp;</div>
<div id=\"cke_pastebin\">
	专用音乐和音量键&nbsp;</div>
<div id=\"cke_pastebin\">
	声控命令&nbsp;</div>
','','N5130','','117.2x55.3x15.9 mm','红色','','1','0','0','0','0','1','1','1','0','0','','559','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('45','1','3',',8,13,','TCL电话机HCD868(13B)TSD','','','0','0','78.00','72.00','','20','125','','','','inc/uploads/product/201103/01(7).jpg,inc/uploads/product/201103/01(8).jpg','0','<div id=\"cke_pastebin\">
	* 双制式来电显示（99组）&nbsp;</div>
<div id=\"cke_pastebin\">
	* 去电号码及通话时间翻查（31组）&nbsp;</div>
<div id=\"cke_pastebin\">
	* 长途锁&nbsp;</div>
<div id=\"cke_pastebin\">
	* 防并机盗打&nbsp;</div>
<div id=\"cke_pastebin\">
	* 来电回拨&nbsp;</div>
<div id=\"cke_pastebin\">
	* 本地区号及长途码设置功能</div>
<div id=\"cke_pastebin\">
	* 可预拨号码&nbsp;</div>
<div id=\"cke_pastebin\">
	* 位号码显示、时间、日期及各种功能提示符号显示</div>
','','HCD868(13B)TSD','','117.2x55.3x15.9 mm','白色','','1','0','0','0','1','1','1','1','0','0','','81','0','0.00','0','','0','admin','1300377600'),('46','1','3',',8,13,','步步高电话机HCD007(182)TSDL','','','0','0','167.00','152.00','部','24','521','','步步高,电话机','','inc/uploads/product/201103/01(9).jpg,inc/uploads/product/201103/01(10).jpg,inc/uploads/product/201103/02(4).jpg,inc/uploads/product/201103/03(4).jpg','0','<div id=\"cke_pastebin\">
	*具有日期、时钟、拨号、通话计时等显示功能&nbsp;</div>
<div id=\"cke_pastebin\">
	*具有预置拨号功能，可编辑、删改未拨出的号码</div>
<div id=\"cke_pastebin\">
	*具有单键重拨和IP速拨功能</div>
<div id=\"cke_pastebin\">
	*显示屏液晶亮度八级可调</div>
<div id=\"cke_pastebin\">
	*本地区号过滤功能</div>
<div id=\"cke_pastebin\">
	*65组来电、20组去电、55组贵宾号码存贮并可查阅</div>
<div id=\"cke_pastebin\">
	*3组闹铃设置且闹铃声音三种可选</div>
<div id=\"cke_pastebin\">
	*来电语音报号和异地查询新来电功能功能</div>
<div id=\"cke_pastebin\">
	*并机接口和机械锁</div>
<div id=\"cke_pastebin\">
	*免扰和保密功能&nbsp;</div>
<div id=\"cke_pastebin\">
	*显示屏和拨号键盘具有夜光照明功能</div>
<div id=\"cke_pastebin\">
	*通话部分采用特殊电路设计，功耗低、输出大</div>
<div id=\"cke_pastebin\">
	*可显示总来电数、重复、保密、出局等多种动态信息</div>
<div id=\"cke_pastebin\">
	*防雷击保护电路，使防雷性能优于国家标准&nbsp;</div>
','','HCD007(182)TSDL','','117.2x55.3x15.9 mm','白色','','1','0','0','0','0','1','1','1','0','0','','509','0','0.00','0','','0','admin','1300377600'),('47','1','3',',8,13,','飞利浦电话机DCTG-792','','','0','0','522.00','486.00','部','120','65','','飞利浦,电话机','','inc/uploads/product/201103/01(11).jpg,inc/uploads/product/201103/01(12).jpg,inc/uploads/product/201103/02(5).jpg,inc/uploads/product/201103/03(5).jpg','0','<div id=\"cke_pastebin\">
	* 功能特点： 2.4G数字技术</div>
<div id=\"cke_pastebin\">
	* 品牌性质：合资</div>
<div id=\"cke_pastebin\">
	* 话机类型：字母机</div>
<div id=\"cke_pastebin\">
	* 拨号方式：预置拨号</div>
<div id=\"cke_pastebin\">
	* 来电显示：双制式来电显示</div>
<div id=\"cke_pastebin\">
	* 电话薄可存取号码数座机10/子机100。</div>
<div id=\"cke_pastebin\">
	* 来电存取号码数座机/子机各100组。</div>
<div id=\"cke_pastebin\">
	* 去电存取号码数座机/子机各10组。</div>
<div id=\"cke_pastebin\">
	* 铃声种类座机10/子机18组和弦。</div>
<div id=\"cke_pastebin\">
	* 通话/铃声音量可调。</div>
<div id=\"cke_pastebin\">
	* 停电座机可用。</div>
<div id=\"cke_pastebin\">
	* 子机支持VIP铃声选择。</div>
<div id=\"cke_pastebin\">
	* 座机支持单键快速拨号。</div>
<div id=\"cke_pastebin\">
	* 座机支持记忆拨号。</div>
<div id=\"cke_pastebin\">
	* 子机/座机支持来铃静音。</div>
<div id=\"cke_pastebin\">
	* 子机/座机支持闹钟。</div>
<div id=\"cke_pastebin\">
	* 三方通话。</div>
<div id=\"cke_pastebin\">
	* 外线转接/内部通话。</div>
<div id=\"cke_pastebin\">
	* 子机与子机对讲。</div>
<div id=\"cke_pastebin\">
	* IP功能。</div>
<div id=\"cke_pastebin\">
	* 免提通话。</div>
<div id=\"cke_pastebin\">
	* 电池低电提示及告警。</div>
<div id=\"cke_pastebin\">
	* 通话计时。</div>
<div id=\"cke_pastebin\">
	* 通话超距离告警。</div>
<div id=\"cke_pastebin\">
	* 本地区号过滤。</div>
<div id=\"cke_pastebin\">
	* 密码锁。</div>
<div id=\"cke_pastebin\">
	* 子机按键锁。</div>
<div id=\"cke_pastebin\">
	* 可带4部子机。</div>
','','DCTG-792','','117.2x55.3x15.9 mm','白色','','1','0','0','0','0','1','1','1','0','0','','70','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('48','1','3',',8,13,','飞利浦电话机CTZO-682A','','','0','0','388.00','368.00','部','12','35','','飞利浦,电话机','','inc/uploads/product/201103/01(13).jpg,inc/uploads/product/201103/01(14).jpg,inc/uploads/product/201103/02(6).jpg','0','<div id=\"cke_pastebin\">
	* FSK/DTMF 双制式来电显示</div>
<div id=\"cke_pastebin\">
	* 时尚化的人性设计</div>
<div id=\"cke_pastebin\">
	* 座机和弦铃声及来电语言报号</div>
<div id=\"cke_pastebin\">
	* 手机自动接听及挂机，手机闹钟功能</div>
<div id=\"cke_pastebin\">
	* 健康安全的贴心设计</div>
<div id=\"cke_pastebin\">
	* 一个座机最多可配三个子机</div>
<div id=\"cke_pastebin\">
	* DTMF/FSK制式全面兼容，适用于各种交换机</div>
<div id=\"cke_pastebin\">
	* 20信道自动/手动选择空闲信道</div>
<div id=\"cke_pastebin\">
	资料仅供参考，详情请以产品或说明书为准！</div>
','','CTZO-682A','','117.2x55.3x15.9 mm','白色','','1','0','0','0','1','1','1','1','0','0','','68','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('49','1','3',',5,16,','美的洗衣机MB50-2501GF','','','0','0','1398.00','1300.00','台','20','125','美的,洗衣机,MB50-2501GF','美的，洗衣机','','inc/uploads/product/201103/01(15).jpg,inc/uploads/product/201103/01(16).jpg','0','<div id=\"cke_pastebin\">
	美的波轮洗衣机 &nbsp;净星系列</div>
<div id=\"cke_pastebin\">
	型号：MB50-2501GF</div>
<div id=\"cke_pastebin\">
	抑菌舱洗涤科技 &nbsp; &nbsp; 健康洗衣有保障</div>
<div id=\"cke_pastebin\">
	智能模糊控制 &nbsp; &nbsp; &nbsp; 洗的净洗的省</div>
<div id=\"cke_pastebin\">
	魔力S波轮 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;洗涤均匀不缠绕</div>
<div id=\"cke_pastebin\">
	程序自设定<span class=\"Apple-tab-span\" style=\"white-space:pre\"> </span> &nbsp; &nbsp; &nbsp; &nbsp;随心洗涤衣物</div>
<div id=\"cke_pastebin\">
	电子水位设计 &nbsp; &nbsp; &nbsp; 节水精确掌握</div>
<div id=\"cke_pastebin\">
	预约洗涤程序 &nbsp; &nbsp; &nbsp; 轻松享受生活</div>
<div id=\"cke_pastebin\">
	动态数码屏显示 &nbsp; &nbsp; 实时掌控洗涤</div>
<div id=\"cke_pastebin\">
	魔术式过滤网 &nbsp; &nbsp; &nbsp; 过滤线屑更高效</div>
<div id=\"cke_pastebin\">
	洗涤容量：5.0kg</div>
<div id=\"cke_pastebin\">
	洗涤功率：340w</div>
<div id=\"cke_pastebin\">
	能效等级：2级</div>
<div id=\"cke_pastebin\">
	外形尺寸：515mm&times;525mm&times;906mm（长&times;宽&times;高）</div>
<div id=\"cke_pastebin\">
	整机净重：31kg</div>
','','MB50-2501GF','','515x525x906mm','白色','','1','0','0','0','0','1','1','1','0','0','','158','0','0.00','0','','0','admin','1300377600'),('50','1','3',',5,16,','博世洗衣机WVH24460TI','','','0','0','7130.00','6800.00','台','230','524','','博世,洗衣机','','inc/uploads/product/201103/01(17).jpg,inc/uploads/product/201103/01(18).jpg','0','<div id=\"cke_pastebin\">
	* 颜色 白&nbsp;</div>
<div id=\"cke_pastebin\">
	* 显示屏 超大LCD&nbsp;</div>
<div id=\"cke_pastebin\">
	* 尺寸(高/宽/厚)(毫米) 850*600*600&nbsp;</div>
<div id=\"cke_pastebin\">
	* 面板按键 触摸键&nbsp;</div>
<div id=\"cke_pastebin\">
	* 能耗等级 1级&nbsp;</div>
<div id=\"cke_pastebin\">
	* 最高脱水速度(转/分) 1200&nbsp;</div>
<div id=\"cke_pastebin\">
	* 最大洗涤量(公斤) 7.0&nbsp;</div>
<div id=\"cke_pastebin\">
	* 最大干衣量(公斤) 4.0&nbsp;</div>
<div id=\"cke_pastebin\">
	* 附件功能 &nbsp;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 超快15&#39; &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 棉-强净60&#39; &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 个性洗 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 强烘干 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 弱烘干 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 冲浪洗滚筒 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 双水路喷淋系统 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 3D位移传感器 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 冷热双气流循环 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 感湿控湿技术 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 电脑变速洗 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 童锁 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 夜间洗 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 带预洗 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 加漂洗 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 轻松熨 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 自动烘 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 按时烘 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 免排水 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 调节水温 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 预约结束 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 调整转速 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 最多衣量提示 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 衣量自检＋泡沫自检＋故障自检 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 智能不平衡检测 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 电脑智能提示 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 结束蜂鸣 &radic;&nbsp;</div>
<div id=\"cke_pastebin\">
	* 网站商品图片及资料仅供参考，请以实物为准</div>
','','WVH24460TI','','515x525x906mm','白色','','1','0','0','0','0','1','1','1','0','0','','358','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('51','1','3',',7,','苹果平板电脑MB293CH/A','','','0','0','3688.00','3652.00','台','32','12','','苹果，平板电脑','','inc/uploads/product/201103/01(19).jpg,inc/uploads/product/201103/01(20).jpg,inc/uploads/product/201103/02(7).jpg,inc/uploads/product/201103/03(6).jpg','0','<div id=\"cke_pastebin\">
	基本参数&nbsp;</div>
<div id=\"cke_pastebin\">
	产品类型 平板电脑</div>
<div id=\"cke_pastebin\">
	wifi版本&nbsp;</div>
<div id=\"cke_pastebin\">
	操作系统 Mac OS&nbsp;</div>
<div id=\"cke_pastebin\">
	处理器&nbsp;</div>
<div id=\"cke_pastebin\">
	处理器型号 1GHz A4&nbsp;</div>
<div id=\"cke_pastebin\">
	存储设备&nbsp;</div>
<div id=\"cke_pastebin\">
	硬盘容量 32GB&nbsp;</div>
<div id=\"cke_pastebin\">
	显示屏&nbsp;</div>
<div id=\"cke_pastebin\">
	屏幕尺寸 9.7&nbsp;</div>
<div id=\"cke_pastebin\">
	屏幕分辨率 1024&times;768&nbsp;</div>
<div id=\"cke_pastebin\">
	屏幕描述 多点触摸IPS屏，防指纹涂层，LED&nbsp;</div>
<div id=\"cke_pastebin\">
	显卡/音频&nbsp;</div>
<div id=\"cke_pastebin\">
	音频系统 内置音效芯片&nbsp;</div>
<div id=\"cke_pastebin\">
	摄像头/网络通信&nbsp;</div>
<div id=\"cke_pastebin\">
	无线网卡 支持802.11a/b/g/n无线协议&nbsp;</div>
<div id=\"cke_pastebin\">
	支持蓝牙 支持&nbsp;</div>
','','MB293CH/A','','242.8×189.7×13.4mm','黑色,白色','','1','0','0','0','1','1','1','1','0','0','','338','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('52','1','3',',7,','联想笔记本电脑G450LXT3100W41G250PLx(XX)-CN','','','0','0','3100.00','2890.00','台','24','52','','联想，笔记本，电脑','','inc/uploads/product/201103/01(21).jpg,inc/uploads/product/201103/01(22).jpg,inc/uploads/product/201103/02(8).jpg,inc/uploads/product/201103/03(7).jpg','0','<div id=\"cke_pastebin\">
	* 处理器 英特尔&reg; 奔腾&reg; 处理器T3100双核64(CeleronCore1.9G/1M) &nbsp;</div>
<div id=\"cke_pastebin\">
	* 内存 1GB (DDR3 1066MHz)&nbsp;</div>
<div id=\"cke_pastebin\">
	* 二级缓存 1M&nbsp;</div>
<div id=\"cke_pastebin\">
	* 硬盘 250G SATA（5400rpm）&nbsp;</div>
<div id=\"cke_pastebin\">
	* 无线局域网卡 802.11B+G 无线网卡&nbsp;</div>
<div id=\"cke_pastebin\">
	* 光驱 超级DVD刻录光驱&nbsp;</div>
<div id=\"cke_pastebin\">
	* 显示屏 14.0&quot; LED背光液晶屏，16:9黄金比例&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 分辨率 1366&times;768 32位真彩色, &nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 显卡 英特尔&reg; GMA 4500M集成显卡&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 显示内存 128MB系统显存&nbsp;</div>
<div id=\"cke_pastebin\">
	* 键盘 联想高触感笔记本键盘 + 快捷触控按键&nbsp;</div>
<div id=\"cke_pastebin\">
	* 视频输出 标准VGA &nbsp;</div>
<div id=\"cke_pastebin\">
	* 摄像头 30万像素网络摄像头&nbsp;</div>
<div id=\"cke_pastebin\">
	* 声音系统 2*2W立体声音响 + 抗噪麦克风&nbsp;</div>
<div id=\"cke_pastebin\">
	* 网络连接 10M/100M以太自适应网卡&nbsp;</div>
<div id=\"cke_pastebin\">
	* 标准接口 3个USB2.0接口，34mm Express Card接口，VGA接口，RJ45，麦克风和立体声音频输出插孔&nbsp;</div>
<div id=\"cke_pastebin\">
	* 电源 65W电源适配器&nbsp;</div>
<div id=\"cke_pastebin\">
	* 电池类型 高性能6芯锂离子电池&nbsp;</div>
<div id=\"cke_pastebin\">
	* 尺寸 345 x 235 x 26.2 - 35.9 mm&nbsp;</div>
<div id=\"cke_pastebin\">
	* 重量 2.35Kg(含有6芯电池，具体重量依据产品出货配置为准)&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	* 特色功能 Smart Audio音响控制系统</div>
<div id=\"cke_pastebin\">
	* 高速系统修复和恢复功能的一键拯救系统</div>
','','G450LXT3100','','345x235x26.2mm','黑色','','1','0','0','0','0','1','1','1','0','0','','166','0','0.00','0','','0','admin','1300377600'),('53','1','3',',7,','长城笔记本电脑T33U','','','0','0','3200.00','2680.00','台','3','21','长城,笔记本,电脑,T33U',' 长城,笔记本,电脑','','inc/uploads/product/201103/01(23).jpg,inc/uploads/product/201103/01(24).jpg','0','<div id=\"cke_pastebin\">
	品牌 长城 Great Wall&nbsp;</div>
<div id=\"cke_pastebin\">
	系列 T系列&nbsp;</div>
<div id=\"cke_pastebin\">
	型号 T33U&nbsp;</div>
<div id=\"cke_pastebin\">
	颜色 黑色&nbsp;</div>
<div id=\"cke_pastebin\">
	平台 Intel&nbsp;</div>
<div id=\"cke_pastebin\">
	软件&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	随机系统 DOS&nbsp;</div>
<div id=\"cke_pastebin\">
	处理器&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	CPU型号 SU2300&nbsp;</div>
<div id=\"cke_pastebin\">
	CPU速度 1.2GHz&nbsp;</div>
<div id=\"cke_pastebin\">
	系统总线 800MHz&nbsp;</div>
<div id=\"cke_pastebin\">
	二级缓存 1MB&nbsp;</div>
<div id=\"cke_pastebin\">
	芯片组&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp;</div>
<div id=\"cke_pastebin\">
	芯片组 GS40+ICH9M-SFF &nbsp;</div>
','','T33U','','345x235x26.2mm','黑色','','1','0','0','0','0','1','1','1','0','0','','263','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('54','1','3',',7,','东芝笔记本电脑L600-26S','','','0','0','4499.00','4200.00','台','12','25','东芝,笔记本,电脑,L600-26S','东芝,笔记本,电脑','','inc/uploads/product/201103/01(25).jpg,inc/uploads/product/201103/01(26).jpg,inc/uploads/product/201103/02(9).jpg','0','<div id=\"cke_pastebin\">
	品牌： 东芝&nbsp;</div>
<div id=\"cke_pastebin\">
	系列： 东芝L600系列&nbsp;</div>
<div id=\"cke_pastebin\">
	型号： L600-26S&nbsp;</div>
<div id=\"cke_pastebin\">
	处理器： Intel Core i5-450M(2.4GHz)&nbsp;</div>
<div id=\"cke_pastebin\">
	主板芯片组： Intel HM55&nbsp;</div>
<div id=\"cke_pastebin\">
	内存容量： 2GB&nbsp;</div>
<div id=\"cke_pastebin\">
	硬盘容量： 320GB&nbsp;</div>
<div id=\"cke_pastebin\">
	光驱类型： DVD刻录机&nbsp;</div>
<div id=\"cke_pastebin\">
	屏幕尺寸： 14英寸&nbsp;</div>
<div id=\"cke_pastebin\">
	显卡芯片： ATI Mobility Radeon HD 5145&nbsp;</div>
<div id=\"cke_pastebin\">
	网卡： 内置10-100M网卡&nbsp;</div>
<div id=\"cke_pastebin\">
	内置摄像头： 内置摄像头&nbsp;</div>
<div id=\"cke_pastebin\">
	USB： 2个,USB2.0&nbsp;</div>
<div id=\"cke_pastebin\">
	读卡器： 内置,五合一读卡器,SD,MS,MS Pro,MMC,SDHC&nbsp;</div>
<div id=\"cke_pastebin\">
	其它接口： Esata Combo(eSATA/USB2.0),VGA接口,HDMI接口,RJ45,声音输入,声音输出孔,直流电源插孔,安全锁孔&nbsp;</div>
<div id=\"cke_pastebin\">
	重量： 约2.2Kg&nbsp;</div>
<div id=\"cke_pastebin\">
	操作系统： Windows 7 Home Basic&nbsp;</div>
','','L600-26S','','242.8×189.7×13.4mm','黑色','','1','0','0','0','0','1','1','1','0','0','','669','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('55','1','3',',9,','尼康单反相机D90套机+4G卡+包','','','0','0','7450.00','7200.00','个','25','63','尼康,单反,相机,D90,套机,4G卡','尼康，相机','','inc/uploads/product/201103/01(27).jpg,inc/uploads/product/201103/01(28).jpg,inc/uploads/product/201103/02(10).jpg,inc/uploads/product/201103/03(8).jpg','0','<div id=\"cke_pastebin\">
	* 有效像素 1,230 万&nbsp;</div>
<div id=\"cke_pastebin\">
	* 影像感应器 Nikon DX 格式 (23.6 x 15.8 mm) CMOS 感应器&nbsp;</div>
<div id=\"cke_pastebin\">
	* 影像尺寸(像素)&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 4,288 x 2,848 [L], 3,216 x 2,136 [M],&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 2,144 x 1,424 [S];&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; 数码短片: 1240 x 720 / 24fps, 640 x 424 / 24fps,&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; 320 x 216 / 24fps&nbsp;</div>
<div id=\"cke_pastebin\">
	* 感光度 ISO 200 至 3200，以 1/3 EV 为步长调校；</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;ISO 200以下时，感光度以约 0.3、0.7 或 1 EV&nbsp;</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(ISO 100相当值)作定级递减；</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;高于ISO3200 时，感光度以约0.3、0.7或 1 EV</div>
<div id=\"cke_pastebin\">
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;(ISO 6400 相当值)作定级递增。&nbsp;</div>
','','D90','','132x103x77mm ','黑色','','1','0','0','0','1','1','1','1','0','0','','365','0','0.00','0','','0','admin','1300377600'),('56','1','3',',9,','富士数码相机S1500','','','0','0','1350.00','1280.00','个','22','65','富士,数码,相机,S1500','富士,数码相机','','inc/uploads/product/201103/01(29).jpg,inc/uploads/product/201103/01(30).jpg,inc/uploads/product/201103/02(11).jpg,inc/uploads/product/201103/03(9).jpg','0','<div id=\"cke_pastebin\">
	* 数码相机类型： 长焦数码相机&nbsp;</div>
<div id=\"cke_pastebin\">
	* 有效像素： 1000万像素&nbsp;</div>
<div id=\"cke_pastebin\">
	* 光学变焦倍数： 12倍光学变焦&nbsp;</div>
<div id=\"cke_pastebin\">
	* 数码变焦倍数： 5.7倍数码变焦&nbsp;</div>
<div id=\"cke_pastebin\">
	* 操作模式： 全自动,带全手动功能&nbsp;</div>
<div id=\"cke_pastebin\">
	* 传感器类型： CCD传感器&nbsp;</div>
<div id=\"cke_pastebin\">
	* 传感器尺寸： 1/ 2.3英寸&nbsp;</div>
<div id=\"cke_pastebin\">
	* 最大分辨率： 3648&times;2736&nbsp;</div>
<div id=\"cke_pastebin\">
	* 短片拍摄功能： 640 x 480 像素,30 帧/秒</div>
<div id=\"cke_pastebin\">
	* 液晶屏特性： 23万像素,低温多晶硅TFT(WV膜),约97%视野覆盖率60帧/秒&nbsp;</div>
<div id=\"cke_pastebin\">
	* 取景器类型： 液晶屏取景,电子取景器,0.2英寸,约20万像素彩色FLCD 覆盖率约97%&nbsp;</div>
<div id=\"cke_pastebin\">
	* 镜头类型： 伸缩式&nbsp;</div>
<div id=\"cke_pastebin\">
	* 变焦方式： 电子&nbsp;</div>
<div id=\"cke_pastebin\">
	* 焦距(相当于35mm)： 33-396mm&nbsp;</div>
<div id=\"cke_pastebin\">
	* 起始焦距： 33&nbsp;</div>
','','S1500','','132x103x77mm ','黑色','','1','0','0','0','1','1','1','1','0','0','','345','0','0.00','0','','0','admin','1300377600'),('57','1','3',',6,12,','爱立电MP3HM-1025','','','0','0','510.00','500.00','个','221','21','','爱立电,MP3','','inc/uploads/product/201103/01(31).jpg,inc/uploads/product/201103/01(32).jpg,inc/uploads/product/201103/02(12).jpg,inc/uploads/product/201103/03(10).jpg','0','<div id=\"cke_pastebin\">
	* 内存大小：128MB</div>
<div id=\"cke_pastebin\">
	* 电池类型：内置锂电</div>
<div id=\"cke_pastebin\">
	* 品牌性质：国产</div>
<div id=\"cke_pastebin\">
	* 颜色：蓝色</div>
<div id=\"cke_pastebin\">
	* 体积大小：51*38*11（mm）</div>
<div id=\"cke_pastebin\">
	* 传输方式：电脑USB</div>
<div id=\"cke_pastebin\">
	* 支持MP3\\WMA播放音乐格式</div>
<div id=\"cke_pastebin\">
	* 英汉词典支持便携式查询，词汇量达15万</div>
<div id=\"cke_pastebin\">
	* 内置FM调频</div>
<div id=\"cke_pastebin\">
	* 强大的&ldquo;变速复读&rdquo;功能，5级变速，变速不变调，一口气复读功能学好帮手</div>
<div id=\"cke_pastebin\">
	* SP/LP双模式数码录音功能</div>
<div id=\"cke_pastebin\">
	* 标准U盘功能（Windows98以上系统无需驱动）</div>
<div id=\"cke_pastebin\">
	* 点阵LCD液晶显示，七彩背光</div>
<div id=\"cke_pastebin\">
	* TXT文本阅读</div>
','','MP3HM-1025','','51x38x11mm','黑色,白色','','1','0','0','0','0','1','1','1','0','0','','749','0','0.00','0','','0','admin','1300377600');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('58','1','3',',9,','佳能照相机EOS550DKIT(EF-S18-55IS)','','','0','0','5799.00','5480.00','个','3','24','佳能,照相机,EOS550DKIT','佳能,照相机','','inc/uploads/product/201103/01(33).jpg,inc/uploads/product/201103/01(34).jpg,inc/uploads/product/201103/02(13).jpg,inc/uploads/product/201103/03(11).jpg','0','基本规格&nbsp;<br />
发布日期&nbsp;2010年02月&nbsp;<br />
机身类型&nbsp;APS-C规格数码单反&nbsp;<br />
手动操作&nbsp;全手动支持&nbsp;<br />
传感器类型&nbsp;CMOS&nbsp;<br />
感光元件尺寸&nbsp;22.3&times;14.9mm&nbsp;<br />
传感器描述&nbsp;长宽比：3：2&nbsp;<br />
除尘功能：自动，手动，添加除尘数据&nbsp;<br />
总像素数&nbsp;1870万&nbsp;<br />
有效像素&nbsp;1800万&nbsp;<br />
影像处理器&nbsp;DIGIC&nbsp;4&nbsp;<br />
镜头特点&nbsp;<br />
镜头说明&nbsp;兼容镜头：佳能EF系列镜头（包括EF-S系列镜头）（35毫米换算焦距约为镜头焦距的1.6倍）&nbsp;镜头卡口：佳能EF卡口&nbsp;<br />
对焦方式&nbsp;类型：TTL辅助影像重合，相位检测自动对焦点：9个自动对焦点&nbsp;测光范围：EV&nbsp;-0.5&nbsp;-&nbsp;18（23℃/73℉，ISO&nbsp;100）&nbsp;对焦模式：单次自动对焦，人工智能伺服自动对焦，人工智能自动对焦，手动对焦（MF）&nbsp;自动对焦辅助光：由内置闪光灯发出的短促连续闪光&nbsp;<br />
对焦点数&nbsp;9点&nbsp;<br />
变焦方式&nbsp;机械','','EOS550DKIT','','22.3×14.9mm','黑色','','1','0','0','0','1','1','1','1','0','0','','491','0','0.00','0','','0','admin','1300464000');/* MySQLReback Separation */
 /* 插入数据 `cms_product` */
 INSERT INTO `cms_product` VALUES ('59','1','3',',5,19,','飞利浦电须刀HS190','','','0','0','569.00','530.00','个','28','321','飞利浦,电须刀,HS190','飞利浦,电须刀','','inc/uploads/product/201103/01(35).jpg,inc/uploads/product/201103/01(36).jpg,inc/uploads/product/201103/02(14).jpg,inc/uploads/product/201103/03(12).jpg','0','<div id=\"cke_pastebin\">
	* 具备Microgroove&ldquo;贴面网缝&rdquo;刀头</div>
<div id=\"cke_pastebin\">
	* 外型轻巧时尚，线条流丽</div>
<div id=\"cke_pastebin\">
	* 配有银色收藏盒方便携带</div>
<div id=\"cke_pastebin\">
	* 旋转式剃须系统</div>
<div id=\"cke_pastebin\">
	* HS190干电式双层刀片</div>
<div id=\"cke_pastebin\">
	* 贴面网设计</div>
<div id=\"cke_pastebin\">
	* 两节五号碱性电池操作</div>
<div id=\"cke_pastebin\">
	* 附精美收藏盒</div>
<div id=\"cke_pastebin\">
	* 适用刀头HQ4</div>
','','HS190','','HQ4','黑色,白色','','1','0','0','0','1','1','1','1','0','0','','2501','0','0.00','0','','0','admin','1300464000'),('60','1','3',',5,','长虹 3DTV63938FS 3D网络/超薄全高清长虹 3DTV63938FS 3D网络/超薄全高清','','','0','0','25999.00','24800.00','台','3','6','长虹,3DTV,63938FS,3D网络,超薄,高清','Changhon,长虹,3D网络,超薄,全高清','','inc/uploads/product/201103/01(37).jpg,inc/uploads/product/201103/01(38).jpg,inc/uploads/product/201103/01(39).jpg','0','产品名称：Changhong/长虹 3DTV63938FS<br />
品牌: Changhong/长虹<br />
长虹型号: 3DTV63938FS<br />
屏幕尺寸: 63英寸<br />
屏幕比例: 宽屏16:9<br />
分辨率: 1920&times;1080<br />
特色功能: USB媒体播放<br />
输入输出接口: 网络端口LAN<br />
售后服务: 全国联保<br />
价格区间: 20000以上<br />
最佳观看距离: 大于5.0米<br />
颜色分类: 底座 &nbsp;挂架<br />
套餐: 官方标配','','','','3DTV63938FS','黑色','','1','0','0','0','0','1','1','1','0','0','','970','0','0.00','0','','0','admin','1300464000');/* MySQLReback Separation */
 /* 创建表结构 `cms_rank`  */
 DROP TABLE IF EXISTS `cms_rank`;/* MySQLReback Separation */ CREATE TABLE `cms_rank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rankname` text NOT NULL,
  `discount` float unsigned NOT NULL DEFAULT '10',
  `scores` int(10) unsigned NOT NULL DEFAULT '0',
  `money` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `auto` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_rank` */
 INSERT INTO `cms_rank` VALUES ('1','注册会员,Ordinary','10','0','0.00','0','1'),('2','中级会员,Intermediate','10','200','0.00','1','1'),('3','高级会员,Senior Member','10','20000','0.00','1','1'),('4','VIP会员,VIP','10','0','1000.00','0','1'),('5','代理商,Agents','8.5','0','10000.00','0','1');/* MySQLReback Separation */
 /* 创建表结构 `cms_shipping`  */
 DROP TABLE IF EXISTS `cms_shipping`;/* MySQLReback Separation */ CREATE TABLE `cms_shipping` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `title` varchar(100) NOT NULL,
  `freight` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `topay` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `insure` float unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  `enable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_shipping` */
 INSERT INTO `cms_shipping` VALUES ('1','1','中国邮政EMS','35.00','0','0','中国邮政特快专递服务','1');/* MySQLReback Separation */
 /* 创建表结构 `cms_tag`  */
 DROP TABLE IF EXISTS `cms_tag`;/* MySQLReback Separation */ CREATE TABLE `cms_tag` (
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
) ENGINE=MyISAM AUTO_INCREMENT=116 DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_tag` */
 INSERT INTO `cms_tag` VALUES ('72','1','长虹','MO002x','1','2','1331577099','1331577140'),('73','1','3DTV','MO002x','0','1','1331577099','1331577099'),('74','1','63938FS','MO002x','0','1','1331577099','1331577099'),('75','1','3D网络','MO002x','0','2','1331577099','1331577140'),('76','1','超薄','MO002x','0','2','1331577099','1331577140'),('77','1','高清','MO002x','0','2','1331577099','1331577140'),('78','1','飞利浦','MO002x','1','1','1331577108','1331577108'),('79','1','电须刀','MO002x','0','1','1331577108','1331577108'),('80','1','HS190','MO002x','0','1','1331577108','1331577108'),('81','1','佳能','MO002x','0','1','1331577119','1331577119'),('82','1','照相机','MO002x','0','1','1331577119','1331577119'),('83','1','EOS550DKIT','MO002x','0','1','1331577119','1331577119'),('84','1','3DTV63938FS','MO002x','0','1','1331577140','1331577140'),('85','1','富士','MO002x','1','1','1331577148','1331577148'),('86','1','数码','MO002x','0','1','1331577148','1331577148'),('87','1','相机','MO002x','0','2','1331577148','1331577164'),('88','1','S1500','MO002x','0','1','1331577148','1331577148'),('89','1','尼康','MO002x','0','1','1331577164','1331577164'),('90','1','单反','MO002x','0','1','1331577164','1331577164'),('91','1','D90','MO002x','0','1','1331577164','1331577164'),('92','1','套机','MO002x','0','1','1331577164','1331577164'),('93','1','4G卡','MO002x','0','1','1331577164','1331577164'),('94','1','东芝','MO002x','0','1','1331577176','1331577176'),('95','1','笔记本','MO002x','0','2','1331577176','1331577189'),('96','1','电脑','MO002x','0','2','1331577176','1331577189'),('97','1','L600-26S','MO002x','0','1','1331577176','1331577176'),('98','1','长城','MO002x','0','1','1331577189','1331577189'),('99','1','T33U','MO002x','0','1','1331577189','1331577189'),('100','1','美的','MO002x','1','1','1331577199','1331577199'),('101','1','洗衣机','MO002x','0','1','1331577199','1331577199'),('102','1','MB50-2501GF','MO002x','0','1','1331577199','1331577199'),('103','1','杨千嬅','MO003x','0','1','1331577273','1331577273'),('104','1','真人','MO003x','0','1','1331577273','1331577273'),('105','1','败犬女王','MO003x','1','1','1331577273','1331577273'),('106','1','唐于鸿','MO003x','0','1','1331577326','1331577326'),('107','1','化身','MO003x','0','1','1331577326','1331577326'),('108','1','纯净','MO003x','0','1','1331577326','1331577326'),('109','1','天使','MO003x','0','1','1331577326','1331577326'),('110','1','焦点图','MO003x','0','4','1331577343','1331577358'),('112','1','简体版','MO004x','2','1','1331577622','1331577622'),('113','1','iTools','MO004x','2','1','1331577634','1331577634'),('114','1','简体中文版','MO004x','1','1','1331577634','1331577634'),('115','1','Firefox','MO004x','2','1','1331577950','1331577950');/* MySQLReback Separation */
 /* 创建表结构 `cms_transaction`  */
 DROP TABLE IF EXISTS `cms_transaction`;/* MySQLReback Separation */ CREATE TABLE `cms_transaction` (
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
  PRIMARY KEY (`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;/* MySQLReback Separation */
 /* 插入数据 `cms_website` */
 INSERT INTO `cms_website` VALUES ('1','中文站','chinese_simplified','default_blue','html/index.html','我的网站','inc/images/logo.png','','','Copyright © 2008-2011 All Rights Reserved.','yourname@example.com','123456789','yourname@msn.com','020 - 88835256','020 - 75863382','上海市浦东新区川沙路 352-82 号'),('2','English','english','default','html/index-en.html','My Website','inc/images/logo.png','','','Copyright © 2008-2011 MYCMS. All Rights Reserved.','myname@example.com','987654321','myname@msn.com','0754 - 58746632','0786 - 65879651','Floor 14, Huiyin Plaza North building, No. 2018, Huashan Road, Shanghai.');/* MySQLReback Separation */