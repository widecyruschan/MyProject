<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');E_D("DROP TABLE IF EXISTS `cms_article`;");E_C("CREATE TABLE `cms_article` (  `id` int(10) unsigned NOT NULL auto_increment,  `lang` tinyint(3) unsigned NOT NULL default '1',  `channel` int(10) unsigned NOT NULL default '0',  `category` varchar(255) NOT NULL,  `title` varchar(255) NOT NULL,  `brief` varchar(50) NOT NULL,  `color` varchar(7) NOT NULL,  `bold` tinyint(1) unsigned NOT NULL default '0',  `tag` varchar(100) NOT NULL,  `author` varchar(50) NOT NULL,  `source` varchar(50) NOT NULL,  `sourceurl` varchar(50) NOT NULL,  `keyword` varchar(100) NOT NULL,  `introduction` text NOT NULL,  `content` mediumtext NOT NULL,  `template` varchar(50) NOT NULL,  `comment` tinyint(1) unsigned NOT NULL default '0',  `commenttotal` int(10) unsigned NOT NULL default '0',  `picture` text NOT NULL,  `recom` tinyint(1) unsigned NOT NULL default '0',  `published` tinyint(1) unsigned NOT NULL default '0',  `audit` tinyint(1) unsigned NOT NULL default '0',  `recycle` tinyint(1) unsigned NOT NULL default '0',  `permission` varchar(255) NOT NULL,  `filename` varchar(50) NOT NULL,  `click` int(10) unsigned NOT NULL default '0',  `money` decimal(8,2) unsigned NOT NULL default '0.00',  `integral` int(10) unsigned NOT NULL default '0',  `buyuser` text NOT NULL,  `page` int(5) unsigned NOT NULL default '0',  `agree` int(10) unsigned NOT NULL default '0',  `disagree` int(10) unsigned NOT NULL default '0',  `sort` int(10) unsigned NOT NULL default '0',  `publisher` varchar(20) NOT NULL,  `addtime` int(10) unsigned NOT NULL default '0',  `backgroudColour` varchar(45) default NULL,  PRIMARY KEY  (`id`),  KEY `lang` (`lang`,`channel`,`category`,`published`,`audit`,`recycle`),  KEY `title` (`title`)) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8");E_D("replace into `cms_article` values('62','1','33','','女士形象素质培训','。','','0','女士形象素质培训','','','','女士形象素质培训','优雅改变命运，品味价值无限！所有优秀的女性都有个渴望：那就是让自己的形象有品味、有个性，显得高雅。追求“有品味和高雅”是优秀女性心底的呼声。它既表现了拥有者非同一般的综合素质，也更因为社会给“有品味和高雅”者大开绿灯。','<img alt=\"\" src=\"/inc/uploads/ckeditor/20140523145452857.jpg\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/20140523145523114.jpg\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/IMGP2858_1.jpg\" style=\"width: 1000px; height: 462px;\" /><br />\r\n<br />\r\n&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 英皇国际形象礼仪学院、英皇子慧形象策划机构以她20多年的形象素质培训经验，不但培养最优秀的人才，培养打造拥有贵族素质的优雅女士和魅力绅士，更提供 最成功的就业模式和创业系统！唯一拥有最完善、最系统的培训教程，最实用的教学模式，让您在短时间内成为拥有贵族素质的优雅女士和魅力绅士，并成为优秀的 整体形象设计师，帮助您实现美丽梦想，让您的人生更精彩。<br />\r\n<br />\r\n个人魅力形象提升班<br />\r\n1.《魅力女仕初级班》9800元<br />\r\n2.《气质女仕中级班》13800元<br />\r\n3.《品位女仕高级班》13800元<br />\r\n4.一次性报读《个人魅力形象提升全科班》（包含初、中、高级班）优惠价28000元，为您节省9400元，并送价值3800元的彩妆产品及工具。<br />\r\n<br />\r\n<pre>\r\n《个人魅力形象提升班》周末班</pre>\r\n<pre>\r\n６月６日一８月３１日</pre>\r\n<pre>\r\n优雅改变命运，品味价值无限！所有优秀的女性都有个渴望：那就是让自己的形象有品味、有个性，显得高雅。追求&ldquo;有品味和高雅&rdquo;是优秀女性心底的呼声。它既表现了拥有者非同一般的综合素质，也更因为社会给&ldquo;有品味和高雅&rdquo;者大开绿灯。</pre>\r\n&nbsp;<br />\r\n【学习对象】<br />\r\n&middot;想进一步提升综合形象素质的女性<br />\r\n&middot;在婚姻危机中为爱情困惑，渴望解读爱的秘密的女性<br />\r\n&middot;事业有成，但尚未把女人做到极致优雅美好境界的女性<br />\r\n&middot;爱美却盲目投入，尽管大量购买名牌，然而收效甚微的女性<br />\r\n&middot;希望美丽与智慧集于一身的女性<br />\r\n&middot;希望家庭幸福的女性<br />\r\n&middot;希望事业、爱情完美结合的女性<br />\r\n&middot;希望改变命运的女性<br />\r\n&middot;希望得到更多人关注和得到更多真心尊重的女性<br />\r\n&middot;希望自己成为一位优雅淑女<br />\r\n【学习成果】<br />\r\n&middot;掌握服饰、妆容、配饰等各种形象打造技能<br />\r\n&middot;了解服装的语言、极大提高着装品位<br />\r\n&middot;掌握优雅的肢体语言<br />\r\n&middot;掌握各种场合的礼仪礼节<br />\r\n&middot;掌握优美的动听语气、语言<br />\r\n&middot;掌握女性魅力的本质以及修炼女性魅力的技巧<br />\r\n&middot;成为一个美丽与智慧并重的幸福女性<br />\r\n&middot;认识男性的性格特性、获得与男性愉悦相处技巧<br />\r\n&middot;建立自信心态的方法，成为一个人人羡慕的精致女人<br />\r\n&nbsp;<br />\r\n《女士魅力形象提升全科班》<br />\r\n<pre>\r\n【学习时间】192课时，24天</pre>\r\n<pre>\r\n&nbsp;《魅力女仕初级班》学习时间：64课时，8天\r\n《气质女仕中级班》学习时间：64课时，8天\r\n《品位女仕高级班》学习时间：64课时，8天</pre>','Portfolio_view','1','0','inc/uploads/article/201405/20140523202248193.jpg,,,inc/uploads/article/201405/20140523201802716.jpg','1','1','1','0','0','','963','0.00','0','','0','0','0','999','cyruschan','1373385600','#fcfbf7');");E_D("replace into `cms_article` values('65','1','2','','学院简介','About Us','','0','About Us','','','','About Us','双晖传媒（TGVISION）成立于2006年，我们是一支融交互、创新、视觉设计、产品研发 于一体的专业品牌策划与制作团队，鼎力为国内外知名企业提供全方位多平台的产品服务解决方案。以专业的交互设计、创新理念、视觉呈现，服务国内外企业多达 100余家，成功案例300余例。涉及IT、汽车、教育、房地产、金融等各个行业，拥有包括中国移动、中国电信、百度、新浪、淘宝、索尼、联想、人民网、 中国日报等企业在内的成功案例，在国内拥有较高美誉。','<img alt=\"\" src=\"/inc/uploads/ckeditor/about.jpg\" style=\"width: 890px; height: 587px;\" /><br />\r\n','','1','0','inc/uploads/article/201307/20130716112058339.jpg','1','1','1','0','0','','356','0.00','0','','0','0','0','0','cyruschan','1310745600','');");E_D("replace into `cms_article` values('66','1','33','','整体形象设计师培训','。','','0','《世界》杂志APP','','','','整体形象设计师培训','整体形象设计师年收入已经达到10万、20万至100万以上！\r\n英皇国际形象礼仪学院、英皇子慧形象设计学院不但培养最优秀的人才，更提供最成功的就业模式和创业系统！唯一拥有最完善、最系统的培训教程，最实用的教学模式，让您在短时间内成为优秀的整体形象设计师，让您的人生更精彩。\r\n','<div class=\"main\" style=\"padding-bottom:40px;\">\r\n	<img alt=\"\" src=\"/inc/uploads/article/201405/20140523110802366.jpg\" style=\"width: 1000px; height: 440px;\" /><br />\r\n	<br />\r\n	<img alt=\"\" src=\"/inc/uploads/ckeditor/20140523031036604.JPG\" style=\"width: 1000px; height: 521px;\" /><br />\r\n	<br />\r\n	<img alt=\"\" src=\"/inc/uploads/ckeditor/20140523031101950.jpg\" style=\"width: 1000px; height: 541px;\" /><br />\r\n	<br />\r\n	<img alt=\"\" src=\"/inc/uploads/ckeditor/20140523031122569.JPG\" style=\"width: 1000px; height: 667px;\" /><br />\r\n	<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 英皇国际形象礼仪学院、英皇子慧形象设计学院不但培养最优秀的人才，更提供最成功的就业模式和创业系统！唯一拥有最完善、最系统的培训教程，最实用的教学模式，让您在短时间内成为优秀的整体形象设计师，帮助您实现美丽梦想，让您的人生更精彩。英皇国际形象礼仪学院、英皇子慧形象策划机构以她20多年的形象素质培训经验，不但培养最优秀的人才，培养打造拥有贵族素质的优雅女士和魅力绅士，更提供 最成功的就业模式和创业系统！唯一拥有最完善、最系统的培训教程，最实用的教学模式，让您在短时间内成为拥有贵族素质的优雅女士和魅力绅士，并成为优秀的 整体形象设计师，帮助您实现美丽梦想，让您的人生更精彩。<br />\r\n	<br />\r\n	<strong><span style=\"font-size:14px;\">课程安排：</span></strong><br />\r\n	1.《形象设计师初级班》9800元<br />\r\n	2.《形象设计师中级班》13800元<br />\r\n	3.《形象设计师高级班》13800元<br />\r\n	4.一次性报读《整体形象设计师全科班》（包含初、中、高级及讲师班）优惠价28000元，为您节省9400元，并送价值3800元的彩妆产品及工具。（整体形象设计师年收入已经达到10万、20万、30万、50万、100万以上！）<br />\r\n	<br />\r\n	<br />\r\n	<span style=\"font-size:16px;\"><strong>《整体形象设计师培训班》</strong></span><br />\r\n	<br />\r\n	６月３日&mdash;７月４日<br />\r\n	整体形象设计师是无数人向往的职业，是一个美丽时尚的产业，是一个可以接触到影视偶像、企业偶像，并有机会进入贵族圈平台的专业。<br />\r\n	1. 学习优异者可以成为英皇国际形象礼仪学院签约导师，有机会参予欧洲和香港高端游学团，并免费旅游；<br />\r\n	2. 招生对象：男、女不限，年龄不限，(长年招生)<br />\r\n	<br />\r\n	<strong><span style=\"font-size:14px;\">【学习对象】</span></strong><br />\r\n	&middot;想进一步提升自我形象素质, 渴望从事整体形象设计事业的女性或男性<br />\r\n	<br />\r\n	<strong><span style=\"font-size:14px;\">【学习成果】</span></strong><br />\r\n	&middot;掌握服饰、配饰等各种形象打造技能<br />\r\n	&middot;了解服装的语言、极大提高着装品位<br />\r\n	&middot;掌握优雅的肢体语言<br />\r\n	&middot;掌握各种场合的礼仪礼节<br />\r\n	&middot;掌握优美的动听语气、语言<br />\r\n	&middot;掌握女性魅力的本质以及修炼女性魅力的技巧<br />\r\n	&middot;掌握风格、色彩定位方法<br />\r\n	&middot;掌握化妆、发型与脸形、风格造型定位与方法技巧<br />\r\n	&middot;掌握体现形象、气质的心理学科方法<br />\r\n	&middot;掌握演讲技巧、建立自信心态的方法<br />\r\n	&middot;成为优秀自信的整体形象设计师并颁发英皇国际形象礼仪学院毕业证书<br />\r\n	<br />\r\n	<strong><span style=\"font-size:16px;\">《整体形象设计师全科班》</span></strong><br />\r\n	<br />\r\n	【学习时间】 192课时，24天<br />\r\n	<br />\r\n	《形象设计师初级班》学习时间：64课时，8天<br />\r\n	<br />\r\n	《形象设计师中级班》学习时间：64课时，8天<br />\r\n	<br />\r\n	《形象设计师高级班》学习时间：64课时，8天<br />\r\n	&nbsp;</div>','Portfolio_view','1','0','inc/uploads/article/201405/20140523105336192.jpg,inc/uploads/article/201307/20130720100640541.jpg,inc/uploads/article/201405/20140523110722559.jpg,inc/uploads/article/201405/20140523111548980.jpg','0','1','1','0','0','','351','0.00','0','','0','0','0','999','cyruschan','1374249600','');");E_D("replace into `cms_article` values('67','1','25','','我们的环境','我们的环境','','0','我们的环境','','','','我们的环境','双晖传媒主张拥有自由、舒适、专业、易交流的开放式办公环境。分享设计的快乐，享受创新所带来的无限可能！期待你的加入！','双晖传媒主张拥有自由、舒适、专业、易交流的开放式办公环境。分享设计的快乐，享受创新所带来的无限可能！期待你的加入！<br />\r\n<br />\r\n<span style=\"color: #ff6600\"><strong><span style=\"color: #ff6600\"><a href=\"http://tg-vision.com/#aboutjob\"><span style=\"color: #ff6600\">了解招聘职位详情</span></a></span></strong></span><span style=\"color: #ff6600\"><strong><br />\r\n</strong><br />\r\n<img alt=\"tgvision.jpg\" height=\"2431\" src=\"http://tg-vision.com/d/file/news/shuanghui/201306/79e877a194ca26a5740e51f9ba8b1564.jpg\" width=\"700\" /></span>','','1','0','inc/uploads/article/201307/20130720164117655.jpg,inc/uploads/article/201307/20130720164014531.jpg,inc/uploads/article/201307/20130720163736768.jpg','1','1','1','1','0','','746','0.00','0','','0','0','0','0','admin','1374249600','');");E_D("replace into `cms_article` values('68','1','22','','第一步旅游APP','第一步旅游APP','','0','第一步旅游APP','','','','第一步旅游APP','双晖传媒合作第一步旅游，为旗下官方网站及APP客户端打造全新视觉体验。采用简约扁平的设计风格和鲜亮明快的色彩搭配，呈现轻松愉快的个人定制旅行氛围的同时去掉冗余的元素来增强内容的展示比重。最大的优化了界面交互流程和页面浏览体验。友好的界面为用户带来高品质的旅行定制享受。','<div class=\"main\" id=\"conpicDiv\" style=\"padding-bottom:40px;\">\r\n	<p>\r\n		<img alt=\"diyibu_p1.jpg\" height=\"557\" src=\"http://tg-vision.com/d/file/portfolio/app/201305/2fb96bdbbeb3ed141b54a6bf33823558.jpg\" width=\"1000\" /><img alt=\"diyibu_p2.jpg\" height=\"1001\" src=\"http://tg-vision.com/d/file/portfolio/app/201305/c245800030bc015f97fd601460ecafbb.jpg\" width=\"1000\" /><img alt=\"diyibu_p3.jpg\" height=\"951\" src=\"http://tg-vision.com/d/file/portfolio/app/201305/0a29c78a63e13edfce2058144a28bb37.jpg\" width=\"1000\" /><img alt=\"diyibu_p4.jpg\" height=\"951\" src=\"http://tg-vision.com/d/file/portfolio/app/201305/3fe28915bf977c9bd70b164fe708953d.jpg\" width=\"1000\" /><img alt=\"diyibu_p5.jpg\" height=\"951\" src=\"http://tg-vision.com/d/file/portfolio/app/201305/7860fab413655aa175ffd940d73e66d9.jpg\" width=\"1000\" /></p>\r\n</div>','','1','0','http://tg-vision.com/d/file/portfolio/app/201305/d45b9dd30bad8f9ea4f7579aede5a7b8.jpg,http://tg-vision.com/d/file/MobileApp/201306/160b446cdb18ecbabcc4efffd474f4f5.jpg,http://tg-vision.com/d/file/portfolio/app/201305/319256e0c2f9e42b6d3a0056ee7ce9d9.jpg,http://tg-vision.com/d/file/portfolio/app/201305/319256e0c2f9e42b6d3a0056ee7ce9d9.jpg,http://tg-vision.com/d/file/portfolio/app/201305/5cf7586420b58d4b19271320687b87eb.jpg','0','1','1','1','0','','693','0.00','0','','0','0','0','0','admin','1374768000','#FFFFFF');");E_D("replace into `cms_article` values('70','1','29','','实习设计师助理','','','0','','','','','','','<ul>\r\n	<li>\r\n		岗位职责：</li>\r\n	<li>\r\n		参与项目设计执行流程，了解产品开发全过程。辅助设计师完成重大项目。参与一定的产品分析，交互设计，产品界面视觉设计及规范文档整理工作；</li>\r\n	<li>\r\n		任职要求：</li>\r\n	<li>\r\n		精通设计类相关软件，热衷于界面设计与交互设计；具有一定的交互分析以及理解能力；优秀的视觉设计感觉与潜力；有完整独立作品可供参考。</li>\r\n	<li>\r\n		招聘人数：1</li>\r\n	<li>\r\n		工作地点：北京</li>\r\n	<li>\r\n		请发简历到：hr@tg-vision.com</li>\r\n</ul>\r\n','','1','0',',','0','1','1','1','0','','769','0.00','0','','0','0','0','0','admin','1374854400','');");E_D("replace into `cms_article` values('79','1','33','','男士形象素质培训','.','','0','男士形象素质培训','','','','男士形象素质培训','做男人，可以不是帅男人，可以不是腰缠万贯的男人，可以不是权利在握的男人，但是一定应该努力去做一个有绅士魅力的男人，这才是一个真正成功的男人。','<p>\r\n	<img alt=\"\" src=\"/inc/uploads/ckeditor/get (4).jpg\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/L1053653.jpg\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/L1053739.jpg\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/20140523155355173.jpg\" style=\"width: 1000px; height: 1227px;\" /><br />\r\n	<br />\r\n	<strong><span style=\"font-size:16px;\">《男仕形象魅力进修班》</span></strong>13800元<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 做男人，可以不是帅男人，可以不是腰缠万贯的男人，可以不是权利在握的男人，但是一定应该努力去做一个有绅士魅力的男人，这才是一个真正成功的男人。<br />\r\n	&nbsp;<br />\r\n	&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 所有优秀的男性都有一个渴望：那就是让自己的形象有品味、显得高雅，希望给别人留下良好的印象。如何才能快速拥有贵族男人的行为素质和适合自己的独特魅力？在这里你会重新发现自己更多的优点，为你度身订造重新塑造自己独有的人格魅力。让你更自信、赢得更理想的未来，让你的生命更精彩！<br />\r\n	&nbsp;<br />\r\n	【学习成果】<br />\r\n	&middot;了解服装的语言，极大提高着装品位<br />\r\n	&middot;学习社交礼仪，掌握各种场合的礼仪仪节<br />\r\n	&middot;掌握高雅的肢体语言<br />\r\n	&middot;掌握富有磁性的动听语气、语言<br />\r\n	&middot;掌握男性魅力的本质以及修炼男性魅力的技巧<br />\r\n	&middot;认识女性的性格特性,获得与女性愉悦相处技巧<br />\r\n	&middot;掌握各种场合下体现男性魅力的方法<br />\r\n	&middot;成为一个有品位的拥有成功者形象的魅力绅士</p>\r\n<pre>\r\n【学习时间】64课时，8天</pre>','','1','0','inc/uploads/article/201405/20140523235218051.jpg,,,inc/uploads/article/201405/20140523235235286.png','0','1','1','0','0','','884','0.00','0','','0','0','0','997','cyruschan','1397318400','');");E_D("replace into `cms_article` values('80','1','33','','企业形象礼仪培训','','','0','企业形象礼仪培训','','','','企业形象礼仪培训','英皇国际形象礼仪学院、英皇子慧形象策划机构以她20多年的形象素质培训经验，不但培养最优秀的人才，培养打造拥有贵族素质的优雅女士和魅力绅士，更提供最成功的就业模式和创业系统！唯一拥有最完善、最系统的培训教程，最实用的教学模式，让您在短时间内成为拥有贵族素质的优雅女士和魅力绅士，并成为优秀的整体形象设计师，帮助您实现美丽梦想，让您的人生更精彩。','<img alt=\"\" src=\"/inc/uploads/ckeditor/20140523163342813.JPG\" style=\"width: 1000px; height: 667px;\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/20140523163428409.JPG\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/20140523163454931.JPG\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/20140523163515018.JPG\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/20140523163543712.JPG\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/20140523163605303.JPG\" /><br />','','1','0','inc/uploads/article/201405/20140524003059481.jpg,,,inc/uploads/article/201405/20140524003151666.jpg','0','1','1','0','0','','902','0.00','0','','0','0','0','996','cyruschan','1397318400','');");E_D("replace into `cms_article` values('81','1','34','','香港高端游学','','','0','香港高端游学','','','','香港高端游学','','香港高端游学','','1','0',',','0','1','1','0','0','','83','0.00','0','','0','0','0','995','cyruschan','1397318400','');");E_D("replace into `cms_article` values('82','1','34','','欧洲高端游学','','','0','欧洲高端游学','','','','欧洲高端游学','欧洲高端游学','欧洲高端游学','','1','0',',','0','1','1','0','0','','506','0.00','0','','0','0','0','994','cyruschan','1397318400','');");E_D("replace into `cms_article` values('84','1','34','','酒会活动策划执行','','','0','酒会活动策划执行','','','','酒会活动策划执行','酒会活动策划执行','<img alt=\"\" src=\"/inc/uploads/ckeditor/L1053653(1).jpg\" style=\"width: 1000px; height: 1510px;\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/20140524095059562.jpg\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/mmexport1377334309840.jpg\" /><br />','Portfolio_view','1','0','inc/uploads/article/201405/20140524173727722.jpg,,,inc/uploads/article/201405/20140524175029860.jpg','0','1','1','0','0','','828','0.00','0','','0','0','0','0','cyruschan','1400256000','');");E_D("replace into `cms_article` values('85','1','27','','英皇国际形象礼仪学员40秒介绍','','','0','英皇国际形象礼仪学员40秒介绍','','','','英皇国际形象礼仪学员40秒介绍','英皇国际形象礼仪学员40秒介绍','<p style=\"text-align: center;\">\r\n	<br />\r\n	<embed align=\"middle\" allowscriptaccess=\"always\" height=\"480\" quality=\"high\" src=\"http://player.youku.com/player.php/sid/XNzEyNDc5NTA0/v.swf\" type=\"application/x-shockwave-flash\" width=\"800\"></embed></p>','','1','0',',','0','1','1','0','0','','1000','0.00','0','','0','0','0','0','cyruschan','1400256000','');");E_D("replace into `cms_article` values('83','1','34','','形象、气质、品位订制','','','0','形象、气质、品位订制','','','','形象、气质、品位订制','英皇子慧形象设计学院的形体训练修体法，不仅利用了芭蕾、舞蹈、体操舒展的动作训练,而且也传播了人体的优雅姿态及艺术精髓，培养了自身的内涵修养，使人的精神和形体之美达到和谐统一，提高练习者现代气质和高雅风度。','<p>\r\n	<span style=\"font-size:16px;\"><strong>气质与形象&mdash;&mdash;好气质不能忽略好&ldquo;包装&rdquo;</strong></span></p>\r\n<p>\r\n	<br />\r\n	<img alt=\"\" src=\"/inc/uploads/ckeditor/20140524092433468.jpg\" style=\"width: 1000px; height: 667px;\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/3878631366527035904_1230x920_220.jpg\" /><img alt=\"\" src=\"/inc/uploads/ckeditor/2013-01-17 12_39_35.jpg\" /><br />\r\n	<br />\r\n	英皇子慧形象设计学院，教会普通人做生活的明星，提升生活质量和品位。英皇国际形象礼仪学院、英皇子慧形象设计学院，融合心理学和形象学的相关理论，从现实的角度，运用专业知识进行形象气质魅力的整体设计和包装，发现并挖掘存在于每个人身上的独特气质和潜能，从而让学员们在短时间内展现内外相结合的整体和谐之美。<br />\r\n	形体气质训练是一项优美、高雅的运动，主要通过舒展优美的舞蹈基础练习，通过基本站立姿势，训练正确的立、坐、卧和走、可塑造优美的体态，培养高雅的气质。<br />\r\n	英皇子慧形象设计学院的形体训练修体法，不仅利用了芭蕾、舞蹈、体操舒展的动作训练,而且也传播了人体的优雅姿态及艺术精髓，培养了自身的内涵修养，使人的精神和形体之美达到和谐统一，提高练习者现代气质和高雅风度。<br />\r\n	<br />\r\n	【课程价值】<br />\r\n	修正肢体&mdash;&mdash;通过借用&ldquo;望、闻、问、切&rdquo;，运用&ldquo;提、收、松、挺&rdquo;的方法， 在自己先天自然条件基础上找出属于自己最佳状态！体验到自我提升和成長 。<br />\r\n	解决问题&mdash;&mdash;帮助个人诊断肢体问题并突破瓶颈，探寻阻碍美丽的原因，找出隐藏于障碍中的资源,在寻找美的过程中,激活内在的潜力,以促成所必需且根本的改变。<br />\r\n	<br />\r\n	修体的功效:<br />\r\n	减肥塑形： 控制、消减、铲除多余脂肪，让女性人体曲线更动人。<br />\r\n	改善形体：开肩拉颈、舒展脊椎、提收臀部，加强腿部及各关节的柔韧与力度，收获健康之美。<br />\r\n	提升气质：通过大方得体的仪态举止训练，调动内在自然能量，焕发不凡的气质魅力 。 健康美颜：疏通内部气息，促进内分泌系统有序化，让面部肌理舒张，肢体充满活力，从而达到养颜美容的效果。<br />\r\n	减压养心：通过音乐情景等训练，令心情舒坦，心态平和，提升自信，让女性的美由内而外拓展开放。<br />\r\n	<br />\r\n	透过自身的动力，了解到自己外在肢体问题的根源， 通过调动潜能养成习惯，从而不依赖外界的力量获得终身美丽的方法。<br />\r\n	<br />\r\n	&nbsp;</p>','','1','0','inc/uploads/article/201405/20140524171804253.jpg,,,inc/uploads/article/201405/20140524172318066.jpg','0','1','1','0','0','','314','0.00','0','','0','0','0','992','cyruschan','1397318400','');");E_D("replace into `cms_article` values('86','1','25','','朱子慧MICHELLE(香港)','朱子慧','','0','朱子慧MICHELLE(香港)','','','','朱子慧MICHELLE(香港)','朱子慧17岁开始学习形象设计专科，20岁正式成为形象设计师，1988年致今一直以来专注于个人及企业的形象包装和素质礼仪培训','朱子慧MICHELLE(香港)<br />\r\n中国香港形象素质培训专家<br />\r\n英皇国际形象礼仪学院&mdash;&mdash;院长<br />\r\n英皇子慧形象策划机构&mdash;&mdash;创办人<br />\r\n英皇子慧五行色彩风格&mdash;&mdash;创始人<br />\r\n广东工业大学形象礼仪培训&mdash;&mdash;客座教授<br />\r\n广东金融学院形象礼仪培训&mdash;&mdash;客座教授<br />\r\n<br />\r\n朱 子慧17岁开始学习形象设计专科，20岁正式成为形象设计师，1988年致今一直以来专注于个人及企业的形象包装和素质礼仪培训，多年来朱子慧的学生遍布 香港、美国，台湾、新加坡、中国内地等国家。培养出了众多贵族气质的绅士，淑女，及整体形象设计师。备受众学员的一致认同和好评。<br />\r\n朱子慧导师结合西方素质教育经验与中国文化特点，成功总结、研究出一系列适合东方人士的绅士，淑女素质提升课程，帮助中国有志于提高个人综合形象素质的人们获得优质、深度、高效的提升。<br />','','1','0','inc/uploads/article/201405/20140525003425268.jpg,,,inc/uploads/article/201405/20140525003527115.jpg','0','1','1','0','0','','142','0.00','0','','0','0','0','999','cyruschan','1400947200','');");E_D("replace into `cms_article` values('87','1','25','','徐颖—形体、礼仪培训高级导师','徐颖','','0','','','','','徐颖—形体、礼仪培训高级导师','广东舞蹈学院中国舞专业\r\n湖南涉外经济学院航空乘务专业\r\n英皇国际形象礼仪学院形体、礼仪专业导师','徐颖&mdash;&mdash;形体、礼仪培训高级导师<br />\r\n广东舞蹈学院中国舞专业<br />\r\n湖南涉外经济学院航空乘务专业<br />\r\n英皇国际形象礼仪学院形体、礼仪专业导师','','1','0','inc/uploads/article/201405/20140525003708070.jpg,,,inc/uploads/article/201405/20140525003716340.jpg','0','1','1','0','0','','268','0.00','0','','0','0','0','0','cyruschan','1400947200','');");require("../../inc/footer.php");?>