<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_tag`;");
E_C("CREATE TABLE `cms_tag` (
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
) ENGINE=MyISAM AUTO_INCREMENT=138 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC");
E_D("replace into `cms_tag` values('122','1','第一步旅游APP','MO001x','0','1','1374831428','1374831428');");
E_D("replace into `cms_tag` values('121','1','我们的环境','MO001x','0','1','1374309347','1374309347');");
E_D("replace into `cms_tag` values('133','1','联系方式','MO001x','0','1','1399983811','1399983811');");
E_D("replace into `cms_tag` values('120','1','《世界》杂志APP','MO001x','0','1','1374286068','1374286068');");
E_D("replace into `cms_tag` values('125','1','Business etiquette','MO001x','0','1','1397318465','1397318465');");
E_D("replace into `cms_tag` values('126','1','职场礼仪','MO001x','0','1','1397318521','1397318521');");
E_D("replace into `cms_tag` values('127','1','贵格订制系列课程','MO001x','0','1','1397318706','1397318706');");
E_D("replace into `cms_tag` values('135','1','qq','MO001x','0','1','1402121692','1402121692');");
E_D("replace into `cms_tag` values('134','1','专题讲座','MO001x','0','1','1399998131','1399998131');");
E_D("replace into `cms_tag` values('137','1','豪华套房','MO001x','0','1','1418112306','1418112306');");
E_D("replace into `cms_tag` values('131','1','公司简介','MO001x','0','1','1399981652','1399981652');");
E_D("replace into `cms_tag` values('136','1','General manager','MO001x','0','1','1417747843','1417747843');");
require("../../inc/footer.php");?>