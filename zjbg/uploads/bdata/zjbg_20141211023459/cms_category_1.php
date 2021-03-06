<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_category`;");
E_C("CREATE TABLE `cms_category` (
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
  `bid` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `nexus` (`nexus`)
) ENGINE=MyISAM AUTO_INCREMENT=32 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC");
E_D("replace into `cms_category` values('1','1','行业资讯','MO001x','2','1',',1,','','','','','','0','','','','','1','1300419480','0');");
E_D("replace into `cms_category` values('2','1','娱乐新闻','MO001x','2','1',',2,','','','','','','0','','','','','2','1300419587','0');");
E_D("replace into `cms_category` values('3','1','互联网','MO001x','2','1',',3,','','','','','','0','','','','','3','1300419700','0');");
E_D("replace into `cms_category` values('4','1','社会万象','MO001x','2','1',',4,','','','','','','0','','','','','4','1300419860','0');");
E_D("replace into `cms_category` values('5','1','家用电器','MO002x','3','1',',5,','','','','','','0','','','','','1','1300456229','0');");
E_D("replace into `cms_category` values('6','1','手机及配件','MO002x','3','1',',6,','','','','','','0','','','','','2','1300456242','0');");
E_D("replace into `cms_category` values('7','1','电脑及耗材','MO002x','3','1',',7,','','','','','','0','','','','','3','1300456262','0');");
E_D("replace into `cms_category` values('8','1','办公器材','MO002x','3','1',',8,','','','','','','0','','','','','4','1300456401','0');");
E_D("replace into `cms_category` values('9','1','时尚数码','MO002x','3','1',',9,','','','','','','0','','','','','5','1300459436','0');");
E_D("replace into `cms_category` values('10','1','诺基亚','MO002x','3','2',',6,10,','','','','','','0','','','','','1','1300459782','0');");
E_D("replace into `cms_category` values('11','1','三星','MO002x','3','2',',6,11,','','','','','','0','','','','','2','1300459801','0');");
E_D("replace into `cms_category` values('12','1','索尼爱立信','MO002x','3','2',',6,12,','','','','','','0','','','','','3','1300459816','0');");
E_D("replace into `cms_category` values('13','1','电话机','MO002x','3','2',',8,13,','','','','','','0','','','','','1','1300461298','0');");
E_D("replace into `cms_category` values('14','1','传真机','MO002x','3','2',',8,14,','','','','','','0','','','','','2','1300461311','0');");
E_D("replace into `cms_category` values('15','1','打印机','MO002x','3','2',',8,15,','','','','','','0','','','','','3','1300461328','0');");
E_D("replace into `cms_category` values('16','1','洗衣机','MO002x','3','2',',5,16,','','','','','','0','','','','','1','1300462061','0');");
E_D("replace into `cms_category` values('17','1','电视机','MO002x','3','2',',5,17,','','','','','','0','','','','','2','1300462076','0');");
E_D("replace into `cms_category` values('18','1','冰箱空调','MO002x','3','2',',5,18,','','','','','','0','','','','','3','1300462093','0');");
E_D("replace into `cms_category` values('19','1','小家电','MO002x','3','2',',5,19,','','','','','','0','','','','','4','1300462113','0');");
E_D("replace into `cms_category` values('20','1','影视娱乐','MO003x','4','1',',20,','','','','','','0','','','','','1','1300500616','0');");
E_D("replace into `cms_category` values('21','1','明星写真','MO003x','4','1',',21,','','','','','','0','','','','','2','1300500674','0');");
E_D("replace into `cms_category` values('22','1','应用软件','MO004x','5','1',',22,','','','','','','0','','','','','2','1300510394','0');");
E_D("replace into `cms_category` values('23','1','源码下载','MO004x','5','1',',23,','','','','','','0','','','','','1','1300510363','0');");
E_D("replace into `cms_category` values('24','1','素材下载','MO004x','5','1',',24,','','','','','','0','','','','','3','1300510456','0');");
E_D("replace into `cms_category` values('25','1','模板下载','MO004x','5','1',',25,','','','','','','0','','','','','4','1300510581','0');");
E_D("replace into `cms_category` values('26','1','产品与服务','MO001x','6','1',',26,','','','','','','0','about_channel','about_view','','','1','1300511555','0');");
E_D("replace into `cms_category` values('27','1','默认分类','MO001x','9','1',',27,','','','','','','0','about_channel','about_view','','','1','1300426455','0');");
E_D("replace into `cms_category` values('28','1','默认分类','MO003x','10','1',',28,','','','','','','0','about_channel','about_view','','','1','1300452807','0');");
E_D("replace into `cms_category` values('29','2','Default','MO001x','16','1',',29,','','','','','','0','about_channel','about_view','','','1','1331472719','0');");
E_D("replace into `cms_category` values('30','2','Default','MO001x','19','1',',30,','','','','','','0','about_channel','about_view','','','1','1331470872','0');");
E_D("replace into `cms_category` values('31','2','Default','MO003x','20','1',',31,','','','','','','0','about_channel','about_view','','','1','1331470878','0');");
require("../../inc/footer.php");?>