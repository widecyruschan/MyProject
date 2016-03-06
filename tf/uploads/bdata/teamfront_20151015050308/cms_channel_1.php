<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_channel`;");
E_C("CREATE TABLE `cms_channel` (
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
) ENGINE=MyISAM AUTO_INCREMENT=50 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC");
E_D("replace into `cms_channel` values('1','1','首页','HOME','{home}','_self','0','0','1','','','','','','','','1','1300415159','0',',1,','0','');");
E_D("replace into `cms_channel` values('2','1','关于我们','About Us','','_self','MO001x','0','1','About/index.html','About/{CID}.html','About/{Y}{M}/{ID}.html','关于我们','关于我们','关于我们','about_channel','2','1300417178','0',',2,','0','');");
E_D("replace into `cms_channel` values('4','1','图 集','','','_self','MO003x','0','0','photo/index.html','photo/{CID}.html','photo/{Y}{M}/{ID}.html','图片展示频道','','','','99','1300417493','0',',4,','0','');");
E_D("replace into `cms_channel` values('6','1','业务范围','Business','','_self','MO001x','0','1','Business/index.html','Business/{CID}.html','Business/{CID}-{ID}.html','业务范围','业务范围','业务范围','about_channel','3','1300417612','0',',6,','0','');");
E_D("replace into `cms_channel` values('35','1','首页轮播','index','','_self','MO003x','0','0','','','','首页轮播','首页轮播','','','20','1399790122','4',',35,','2','');");
E_D("replace into `cms_channel` values('36','1','内页轮播','sub','','_self','MO003x','0','0','','','','内页轮播','内页轮播','内页轮播','','20','1399790613','4',',36,','2','');");
E_D("replace into `cms_channel` values('11','2','首页','','{home}','_self','','0','1','','','','','','','','1','1300422199','0',',11,','0','');");
E_D("replace into `cms_channel` values('12','2','学院简介','About','','_self','MO001x','0','1','en/news/index.html','en/news/{CID}.html','en/news/{Y}{M}/{ID}.html','News Center','','','about_channel','2','1300422318','0',',12,','0','');");
E_D("replace into `cms_channel` values('13','2','学院项目','','','_self','MO001x','0','1','en/product/index.html','en/product/{CID}.html','en/product/{Y}{M}/{ID}.html','Shopping','','','News','3','1300422856','0',',13,','0','');");
E_D("replace into `cms_channel` values('14','2','形象礼仪系列课程','','','_self','MO001x','0','1','en/photo/index.html','en/photo/{CID}.html','en/photo/{Y}{M}/{ID}.html','Photo','','','News','4','1300425035','13',',13,14,','2','');");
E_D("replace into `cms_channel` values('15','2','贵格订制系列课程','','','_self','MO001x','0','1','en/download/index.html','en/download/{CID}.html','en/download/{Y}{M}/{ID}.html','Download','','','News','5','1300425066','13',',13,15,','2','');");
E_D("replace into `cms_channel` values('16','2','形象变身','','','_self','MO001x','0','1','en/service/index.html','en/service/{CID}.html','en/service/{CID}-{ID}.html','Services','','','about_channel','6','1300425095','0',',16,','0','');");
E_D("replace into `cms_channel` values('17','2','专业团队','','{feedback}','_self','MO001x','0','1','','','','','','','about_channel','7','1331469822','0',',17,','0','');");
E_D("replace into `cms_channel` values('18','2','活动课程分享','','{guestbook}','_self','MO001x','0','1','','','','','','','News','8','1300421995','0',',18,','0','');");
E_D("replace into `cms_channel` values('19','2','形象提升学堂','','','_self','MO001x','0','1','en/annou/index.html','en/annou/{PID}-{CID}.html','annou/{ID}.html','Other Articles','','','News','9','1300426388','0',',19,','0','');");
E_D("replace into `cms_channel` values('20','2','VIP专享','','','_self','MO001x','0','1','','','','Focus Picture','','','News','10','1300452311','0',',20,','0','');");
E_D("replace into `cms_channel` values('22','1','产品简介','Product','','_self','MO001x','0','1','Portfolio/MobileAPP/index.html','Portfolio/MobileAPP/{CID}.html','Portfolio/MobileAPP/{Y}{M}/{ID}.html','产品简介','产品简介','产品简介','about_channel','4','1373643737','0',',22,','0','');");
E_D("replace into `cms_channel` values('25','1','最新动态','News','','_self','MO001x','0','1','News/index.html','News/{CID}.html','News/{Y}{M}/{ID}.html','最新动态','最新动态','最新动态','News','5','1373767844','0',',25,','0','');");
E_D("replace into `cms_channel` values('29','1','联系我们','Contact us','','_self','MO001x','0','1','Join/index.html','Join/{CID}.html','Join/{Y}{M}/{ID}.html','Contact us','Contact us','Contact us','about_channel','6','1373939084','0',',29,','0','');");
E_D("replace into `cms_channel` values('37','1','香港保险','insurance','','_self','MO001x','0','1','','','','香港保险','香港保险','香港保险','about_channel','20','1399997372','22',',37,','2','');");
E_D("replace into `cms_channel` values('38','1','海外移民','expatriates','','_self','MO001x','0','1','','','','expatriates','expatriates','expatriates','about_channel','20','1399997487','22',',22,38,','2','');");
E_D("replace into `cms_channel` values('39','1','大额资产','largest assets','','_self','MO001x','0','1','','','','largest assets','largest assets','largest assets','about_channel','20','1399997775','22',',39,','2','');");
E_D("replace into `cms_channel` values('42','1','新加坡','Singapore','','_self','MO001x','0','1','','','','Singapore','Singapore','Singapore','about_channel','2','1402246562','38',',22,38,42,','3','');");
E_D("replace into `cms_channel` values('43','1','爱尔兰','Ireland','','_self','MO001x','0','1','','','','Ireland','Ireland','Ireland','about_channel','3','1402246779','38',',22,38,,','3','');");
E_D("replace into `cms_channel` values('44','1','德国','Germany','','_self','MO001x','0','1','','','','Germany','Germany','Germany','about_channel','4','1402247061','38',',22,38,,','3','');");
E_D("replace into `cms_channel` values('45','1','西班牙','Spain','','_self','MO001x','0','1','','','','','','','about_channel','5','1402247163','38',',22,38,,','3','');");
E_D("replace into `cms_channel` values('46','1','加拿大','Canada','','_self','MO001x','0','1','','','','Canada','Canada','Canada','about_channel','6','1402247232','38',',46,','3','');");
E_D("replace into `cms_channel` values('47','1','澳大利亚','Australia','','_self','MO001x','0','1','','','','Australia','Australia','Australia','about_channel','7','1402247274','38',',47,','3','');");
E_D("replace into `cms_channel` values('48','1','新西兰','New Zealand','','_self','MO001x','0','1','','','','New Zealand','New Zealand','New Zealand','about_channel','8','1402247309','38',',48,','3','');");
E_D("replace into `cms_channel` values('49','1','圣基茨岛','St. Kitts','','_self','MO001x','0','1','','','','St. Kitts','St. Kitts','St. Kitts','about_channel','9','1402247355','38',',49,','3','');");
require("../../inc/footer.php");?>