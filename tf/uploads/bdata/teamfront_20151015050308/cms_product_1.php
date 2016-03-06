<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_product`;");
E_C("CREATE TABLE `cms_product` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `lang` tinyint(3) unsigned NOT NULL default '1',
  `channel` int(10) unsigned NOT NULL default '0',
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `brief` varchar(50) NOT NULL,
  `color` varchar(7) NOT NULL,
  `bold` tinyint(1) unsigned NOT NULL default '0',
  `virtual` tinyint(1) unsigned NOT NULL default '0',
  `market` decimal(8,2) unsigned NOT NULL default '0.00',
  `price` decimal(8,2) unsigned NOT NULL default '0.00',
  `units` varchar(20) NOT NULL,
  `inventory` int(12) unsigned NOT NULL default '0',
  `sales` int(12) unsigned NOT NULL default '0',
  `tag` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `introduction` text NOT NULL,
  `picture` text NOT NULL,
  `page` int(5) unsigned NOT NULL default '0',
  `content` mediumtext NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `coding` varchar(50) NOT NULL,
  `speci` varchar(50) NOT NULL,
  `optional` varchar(255) NOT NULL,
  `template` varchar(50) NOT NULL,
  `comment` tinyint(1) unsigned NOT NULL default '0',
  `commenttotal` int(10) unsigned NOT NULL default '0',
  `agree` int(10) unsigned NOT NULL default '0',
  `disagree` int(10) unsigned NOT NULL default '0',
  `recom` tinyint(1) unsigned NOT NULL default '0',
  `published` tinyint(1) unsigned NOT NULL default '0',
  `status` tinyint(1) unsigned NOT NULL default '0',
  `audit` tinyint(1) unsigned NOT NULL default '0',
  `recycle` tinyint(1) unsigned NOT NULL default '0',
  `permission` varchar(255) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `click` int(10) unsigned NOT NULL default '0',
  `favorite` int(10) unsigned NOT NULL default '0',
  `money` decimal(8,2) unsigned NOT NULL default '0.00',
  `integral` int(10) unsigned NOT NULL default '0',
  `buyuser` text NOT NULL,
  `sort` int(10) unsigned NOT NULL default '0',
  `publisher` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=61 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC");
require("../../inc/footer.php");?>