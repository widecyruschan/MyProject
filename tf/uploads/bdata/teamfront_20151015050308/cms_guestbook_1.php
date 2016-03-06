<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_guestbook`;");
E_C("CREATE TABLE `cms_guestbook` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `lang` tinyint(3) unsigned NOT NULL default '1',
  `nickname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `company` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL default '2',
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `visible` tinyint(1) unsigned NOT NULL default '0',
  `username` varchar(20) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  `audit` tinyint(1) unsigned NOT NULL default '0',
  `reply` text NOT NULL,
  `replyadmin` varchar(30) NOT NULL,
  `replytime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=53 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC");
require("../../inc/footer.php");?>