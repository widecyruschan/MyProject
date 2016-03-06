<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_admin`;");
E_C("CREATE TABLE `cms_admin` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC");
E_D("replace into `cms_admin` values('1','admin','8c96c2b08e407ba6db191e03a2f94997','b2zVLf8B','14.30.0.8,116.22.232.71','1421392524,1421636208','55','','1');");
require("../../inc/footer.php");?>