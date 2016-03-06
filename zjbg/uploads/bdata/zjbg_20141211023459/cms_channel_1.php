<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_channel`;");
E_C("CREATE TABLE `cms_channel` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned DEFAULT '1',
  `title` varchar(255) DEFAULT NULL,
  `titleEn` varchar(255) DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(10) DEFAULT NULL,
  `module` varchar(6) DEFAULT NULL,
  `permission` varchar(255) DEFAULT NULL,
  `show` tinyint(1) unsigned DEFAULT '1',
  `pathhome` varchar(50) DEFAULT NULL,
  `pathcategory` varchar(50) DEFAULT NULL,
  `pathcontent` varchar(50) DEFAULT NULL,
  `seotitle` varchar(255) DEFAULT NULL,
  `seokey` varchar(255) DEFAULT NULL,
  `seodescr` varchar(255) DEFAULT NULL,
  `template` varchar(50) DEFAULT NULL,
  `sort` smallint(5) unsigned DEFAULT '0',
  `addtime` int(10) unsigned DEFAULT '0',
  `UpChannelID` int(10) unsigned DEFAULT '0',
  `nexus` varchar(45) DEFAULT NULL,
  `level` varchar(45) DEFAULT NULL,
  `templatecontent` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=51 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC");
E_D("replace into `cms_channel` values('1','1','首页','HOME','{home}','_self','0','0','1','','','','','','','','1','1300415159','0',',1,','0','');");
E_D("replace into `cms_channel` values('2','1','关于珠江','About ZhuJiang','','_self','MO001x','0','0','About/index.html','About/{CID}.html','About/{Y}{M}/{ID}.html','关于我们','关于珠江','关于珠江','about_channel','2','1300417178','0',',2,','0','');");
E_D("replace into `cms_channel` values('4','1','图 集','','','_self','MO003x','0','0','photo/index.html','photo/{CID}.html','photo/{Y}{M}/{ID}.html','图片展示频道','','','','99','1300417493','0',',4,','0','');");
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
E_D("replace into `cms_channel` values('22','1','客房服务','Room Service','/article.php?pid=38','_self','','0','1','Portfolio/MobileAPP/index.html','Portfolio/MobileAPP/{CID}.html','Portfolio/MobileAPP/{Y}{M}/{ID}.html','客房服务','Room Service','Room Service','about_channel','3','1373643737','0',',22,','0','');");
E_D("replace into `cms_channel` values('25','1','餐饮服务','catering','','_self','MO001x','0','1','News/index.html','News/{CID}.html','News/{Y}{M}/{ID}.html','餐饮服务','catering,餐饮服务','catering,餐饮服务','about_channel','4','1373767844','0',',25,','0','');");
E_D("replace into `cms_channel` values('29','1','新闻资讯','News','','_self','MO001x','0','1','Join/index.html','Join/{CID}.html','Join/{Y}{M}/{ID}.html','新闻资讯','新闻资讯','News','News','6','1373939084','0',',29,','0','');");
E_D("replace into `cms_channel` values('37','1','历史文化','History','','_self','MO001x','0','1','','','','历史文化','历史文化,History','历史文化,History','about_channel','3','1399997372','2',',2,,','2','');");
E_D("replace into `cms_channel` values('38','1','客房总览','Overview','','_self','MO001x','0','1','','','','客房总览','Overview','Overview','about_channel','1','1399997487','22',',22,,','2','');");
E_D("replace into `cms_channel` values('42','1','管理&amp;服务宗旨','Service','','_self','MO001x','0','1','','','','管理,服务宗旨','Service','Service','about_channel','5','1402246562','2',',2,,','2','');");
E_D("replace into `cms_channel` values('41','1','荣誉录','Honor','','_self','MO001x','0','1','','','','荣誉录','Honor','Honor','about_channel','4','1402124272','2',',2,,','2','');");
E_D("replace into `cms_channel` values('43','1','标准套房','Standard suite','','_self','MO001x','0','1','','','','标准套房','Standard suite','Standard suite','about_channel','2','1402246779','22',',22,,','2','');");
E_D("replace into `cms_channel` values('44','1','豪华套房','Deluxe Suite','','_self','MO001x','0','1','','','','Germany','Deluxe Suite','Deluxe Suite','about_channel','3','1402247061','22',',22,,','2','');");
E_D("replace into `cms_channel` values('45','1','会议中心','Conference','','_self','MO001x','0','1','','','','会议中心','Conference','Conference','about_channel','5','1402247163','0',',45,','0','');");
E_D("replace into `cms_channel` values('46','1','在线订房','Online booking','','_self','MO001x','0','1','','','','在线订房','Online booking','Online booking','about_channel','6','1402247232','0',',46,','0','');");
E_D("replace into `cms_channel` values('47','1','留言反馈','NoteBook','/guestbook.php','_blank','','0','1','','','','留言反馈','NoteBook','NoteBook','guestbook','7','1402247274','0',',47,','0','');");
E_D("replace into `cms_channel` values('48','1','联系我们','Contact Us','','_self','MO001x','0','1','','','','联系我们','Contact Us','Contact Us','about_channel','8','1402247309','0',',48,','0','');");
E_D("replace into `cms_channel` values('50','1','总经理致词','Manager Speech','','_self','MO001x','0','1','','','','总经理致词','Manager Speech','Manager Speech','about_channel','2','1416896610','2',',2,,','2','');");
require("../../inc/footer.php");?>