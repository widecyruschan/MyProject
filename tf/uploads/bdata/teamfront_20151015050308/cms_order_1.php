<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_order`;");
E_C("CREATE TABLE `cms_order` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `lang` tinyint(3) unsigned NOT NULL default '1',
  `oid` varchar(20) NOT NULL,
  `uid` int(10) unsigned NOT NULL default '0',
  `pid` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `amount` decimal(8,2) unsigned NOT NULL default '0.00',
  `attribute` text NOT NULL,
  `status` tinyint(1) NOT NULL default '0',
  `dispatching` int(6) unsigned NOT NULL default '0',
  `waybill` varchar(100) NOT NULL,
  `freight` decimal(8,2) NOT NULL default '0.00',
  `customer` tinyint(1) unsigned NOT NULL default '0',
  `vouch` tinyint(1) unsigned NOT NULL default '0',
  `consignee` varchar(100) NOT NULL,
  `email` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `zipcode` varchar(20) NOT NULL,
  `tel` varchar(30) NOT NULL,
  `mobile` varchar(30) NOT NULL,
  `building` varchar(50) NOT NULL,
  `besttime` varchar(120) NOT NULL,
  `message` varchar(255) NOT NULL,
  `reply` varchar(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC");
require("../../inc/footer.php");?>