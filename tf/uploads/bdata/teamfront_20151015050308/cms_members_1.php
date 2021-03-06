<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_members`;");
E_C("CREATE TABLE `cms_members` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `encryption` varchar(8) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL default '0',
  `email` varchar(50) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL default '3',
  `nickname` varchar(20) NOT NULL,
  `money` decimal(8,2) NOT NULL default '0.00',
  `usemoney` decimal(8,2) unsigned NOT NULL default '0.00',
  `scores` int(10) unsigned NOT NULL default '0',
  `level` smallint(5) unsigned NOT NULL default '1',
  `problem` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `companyweb` varchar(100) NOT NULL,
  `companyaddress` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `frequency` int(10) unsigned NOT NULL default '0',
  `jointime` int(10) unsigned NOT NULL default '0',
  `joinip` varchar(15) NOT NULL,
  `logintime` varchar(21) NOT NULL,
  `loginip` varchar(31) NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL default '2',
  `effective` tinyint(1) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC");
require("../../inc/footer.php");?>