<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_picture_field`;");
E_C("CREATE TABLE `cms_picture_field` (
  `id` varchar(45) NOT NULL,
  `aid` mediumint(8) unsigned DEFAULT '0',
  `body` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC");
E_D("replace into `cms_picture_field` values('','14','');");
require("../../inc/footer.php");?>