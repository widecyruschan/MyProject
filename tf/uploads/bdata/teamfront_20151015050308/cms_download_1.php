<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_download`;");
E_C("CREATE TABLE `cms_download` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `lang` tinyint(3) unsigned NOT NULL default '1',
  `channel` int(10) unsigned NOT NULL default '0',
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `color` varchar(7) NOT NULL,
  `bold` tinyint(1) unsigned NOT NULL default '0',
  `tag` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `sourceurl` varchar(50) NOT NULL,
  `demourl` varchar(50) NOT NULL,
  `environment` varchar(100) NOT NULL,
  `softlang` varchar(50) NOT NULL,
  `authorization` varchar(50) NOT NULL,
  `size` varchar(20) NOT NULL,
  `local` varchar(255) NOT NULL,
  `mode` tinyint(1) unsigned NOT NULL default '0',
  `mirror` text NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(50) NOT NULL,
  `comment` tinyint(1) unsigned NOT NULL default '0',
  `commenttotal` int(10) unsigned NOT NULL default '0',
  `agree` int(10) unsigned NOT NULL default '0',
  `disagree` int(10) unsigned NOT NULL default '0',
  `picture` text NOT NULL,
  `recom` tinyint(1) unsigned NOT NULL default '0',
  `audit` tinyint(1) unsigned NOT NULL default '0',
  `recycle` tinyint(1) unsigned NOT NULL default '0',
  `permission` varchar(255) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `click` int(10) unsigned NOT NULL default '0',
  `count` int(10) unsigned NOT NULL default '0',
  `money` decimal(8,2) unsigned NOT NULL default '0.00',
  `integral` int(10) unsigned NOT NULL default '0',
  `buyuser` text NOT NULL,
  `sort` int(10) unsigned NOT NULL default '0',
  `publisher` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC");
require("../../inc/footer.php");?>