<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_shipping`;");
E_C("CREATE TABLE `cms_shipping` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `title` varchar(100) NOT NULL,
  `freight` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `topay` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `insure` float unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  `enable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC");
E_D("replace into `cms_shipping` values('1','1','中国邮政EMS','35.00','0','0','中国邮政特快专递服务','1');");
require("../../inc/footer.php");?>