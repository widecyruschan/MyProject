
DROP TABLE IF EXISTS `cms_ad`;
CREATE TABLE `cms_ad` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `aid` varchar(30) NOT NULL,
  `title` varchar(50) NOT NULL,
  `url` varchar(100) NOT NULL,
  `code` text NOT NULL,
  `weight` tinyint(2) unsigned NOT NULL DEFAULT '1',
  `click` int(10) NOT NULL DEFAULT '-1',
  `limit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `start` int(10) unsigned NOT NULL DEFAULT '0',
  `end` int(10) unsigned NOT NULL DEFAULT '0',
  `expired` text NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `enable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cms_admin`;
CREATE TABLE `cms_admin` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `encryption` varchar(8) NOT NULL,
  `loginip` varchar(31) NOT NULL,
  `logintime` varchar(21) NOT NULL,
  `frequency` int(10) unsigned NOT NULL DEFAULT '0',
  `purviews` text NOT NULL,
  `level` tinyint(2) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cms_article`;
CREATE TABLE `cms_article` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `channel` int(10) unsigned NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `brief` varchar(50) NOT NULL,
  `color` varchar(7) NOT NULL,
  `bold` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `sourceurl` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `introduction` text NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(50) NOT NULL,
  `comment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `commenttotal` int(10) unsigned NOT NULL DEFAULT '0',
  `picture` text NOT NULL,
  `recom` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recycle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(255) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `money` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `buyuser` text NOT NULL,
  `page` int(5) unsigned NOT NULL DEFAULT '0',
  `agree` int(10) unsigned NOT NULL DEFAULT '0',
  `disagree` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `publisher` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `lang` (`lang`,`channel`,`category`,`published`,`audit`,`recycle`),
  KEY `title` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cms_category`;
CREATE TABLE `cms_category` (
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
  `introduction` TEXT NOT NULL,
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `nexus` (`nexus`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cms_channel`;
CREATE TABLE `cms_channel` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `title` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `target` varchar(10) NOT NULL,
  `module` varchar(6) NOT NULL,
  `permission` varchar(255) NOT NULL,
  `show` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pathhome` varchar(50) NOT NULL,
  `pathcategory` varchar(50) NOT NULL,
  `pathcontent` varchar(50) NOT NULL,
  `seotitle` varchar(255) NOT NULL,
  `seokey` varchar(255) NOT NULL,
  `seodescr` varchar(255) NOT NULL,
  `template` varchar(50) NOT NULL,
  `sort` smallint(5) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cms_download`;
CREATE TABLE `cms_download` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `channel` int(10) unsigned NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `color` varchar(7) NOT NULL,
  `bold` tinyint(1) unsigned NOT NULL DEFAULT '0',
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
  `mode` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `mirror` text NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(50) NOT NULL,
  `comment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `commenttotal` int(10) unsigned NOT NULL DEFAULT '0',
  `agree` int(10) unsigned NOT NULL DEFAULT '0',
  `disagree` int(10) unsigned NOT NULL DEFAULT '0',
  `picture` text NOT NULL,
  `recom` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recycle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(255) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `count` int(10) unsigned NOT NULL DEFAULT '0',
  `money` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `buyuser` text NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `publisher` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cms_guestbook`;
CREATE TABLE `cms_guestbook` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `nickname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `company` varchar(50) NOT NULL,
  `address` varchar(255) NOT NULL,
  `qq` varchar(20) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `visible` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `reply` text NOT NULL,
  `replyadmin` varchar(30) NOT NULL,
  `replytime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cms_ipvisit`;
CREATE TABLE `cms_ipvisit` (
  `ip` varchar(15) NOT NULL,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  `oid` int(10) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `ip` (`ip`,`lang`,`type`,`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cms_links`;
CREATE TABLE `cms_links` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `webname` varchar(50) NOT NULL,
  `color` varchar(7) NOT NULL,
  `weburl` varchar(100) NOT NULL,
  `logourl` varchar(100) NOT NULL,
  `webmaster` varchar(50) NOT NULL,
  `contact` varchar(50) NOT NULL,
  `info` text NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cms_logs`;
CREATE TABLE `cms_logs` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `type` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `info` text NOT NULL,
  `pageurl` varchar(255) NOT NULL,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '0',
  `username` varchar(20) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cms_members`;
CREATE TABLE `cms_members` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `encryption` varchar(8) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `email` varchar(50) NOT NULL,
  `qq` varchar(15) NOT NULL,
  `sex` tinyint(1) unsigned NOT NULL DEFAULT '3',
  `nickname` varchar(20) NOT NULL,
  `money` decimal(8,2) NOT NULL DEFAULT '0.00',
  `usemoney` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `scores` int(10) unsigned NOT NULL DEFAULT '0',
  `level` smallint(5) unsigned NOT NULL DEFAULT '1',
  `problem` varchar(255) NOT NULL,
  `answer` varchar(255) NOT NULL,
  `companyname` varchar(255) NOT NULL,
  `companyweb` varchar(100) NOT NULL,
  `companyaddress` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `fax` varchar(20) NOT NULL,
  `frequency` int(10) unsigned NOT NULL DEFAULT '0',
  `jointime` int(10) unsigned NOT NULL DEFAULT '0',
  `joinip` varchar(15) NOT NULL,
  `logintime` varchar(21) NOT NULL,
  `loginip` varchar(31) NOT NULL,
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '2',
  `effective` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cms_module`;
CREATE TABLE `cms_module` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `modcode` varchar(6) NOT NULL,
  `modname` varchar(255) NOT NULL,
  `installpath` varchar(50) NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `files` text NOT NULL,
  `develop` varchar(255) NOT NULL,
  `info` varchar(255) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `modcode` (`modcode`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cms_order`;
CREATE TABLE `cms_order` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `oid` varchar(20) NOT NULL,
  `uid` int(10) unsigned NOT NULL DEFAULT '0',
  `pid` varchar(255) NOT NULL,
  `number` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `amount` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `attribute` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `dispatching` int(6) unsigned NOT NULL DEFAULT '0',
  `waybill` varchar(100) NOT NULL,
  `freight` decimal(8,2) NOT NULL DEFAULT '0.00',
  `customer` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `vouch` tinyint(1) unsigned NOT NULL DEFAULT '0',
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
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cms_picture`;
CREATE TABLE `cms_picture` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `channel` int(10) unsigned NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `brief` varchar(50) NOT NULL,
  `color` varchar(7) NOT NULL,
  `bold` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `aid` varchar(30) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `sourceurl` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(50) NOT NULL,
  `comment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `commenttotal` int(10) unsigned NOT NULL DEFAULT '0',
  `picture` text NOT NULL,
  `description` mediumtext NOT NULL,
  `recom` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recycle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(255) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `money` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `buyuser` text NOT NULL,
  `agree` int(10) unsigned NOT NULL DEFAULT '0',
  `disagree` int(10) unsigned NOT NULL DEFAULT '0',
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `publisher` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cms_product`;
CREATE TABLE `cms_product` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `channel` int(10) unsigned NOT NULL DEFAULT '0',
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `brief` varchar(50) NOT NULL,
  `color` varchar(7) NOT NULL,
  `bold` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `virtual` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `market` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `price` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `units` varchar(20) NOT NULL,
  `inventory` int(12) unsigned NOT NULL DEFAULT '0',
  `sales` int(12) unsigned NOT NULL DEFAULT '0',
  `tag` varchar(100) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `introduction` text NOT NULL,
  `picture` text NOT NULL,
  `page` int(5) unsigned NOT NULL DEFAULT '0',
  `content` mediumtext NOT NULL,
  `brand` varchar(50) NOT NULL,
  `model` varchar(50) NOT NULL,
  `coding` varchar(50) NOT NULL,
  `speci` varchar(50) NOT NULL,
  `optional` varchar(255) NOT NULL,
  `template` varchar(50) NOT NULL,
  `comment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `commenttotal` int(10) unsigned NOT NULL DEFAULT '0',
  `agree` int(10) unsigned NOT NULL DEFAULT '0',
  `disagree` int(10) unsigned NOT NULL DEFAULT '0',
  `recom` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `published` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `audit` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `recycle` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `permission` varchar(255) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `click` int(10) unsigned NOT NULL DEFAULT '0',
  `favorite` int(10) unsigned NOT NULL DEFAULT '0',
  `money` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `integral` int(10) unsigned NOT NULL DEFAULT '0',
  `buyuser` text NOT NULL,
  `sort` int(10) unsigned NOT NULL DEFAULT '0',
  `publisher` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cms_rank`;
CREATE TABLE `cms_rank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rankname` text NOT NULL,
  `discount` float unsigned NOT NULL DEFAULT '10',
  `scores` int(10) unsigned NOT NULL DEFAULT '0',
  `money` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `auto` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cms_shipping`;
CREATE TABLE `cms_shipping` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `lang` tinyint(3) unsigned NOT NULL DEFAULT '1',
  `title` varchar(100) NOT NULL,
  `freight` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `topay` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `insure` float unsigned NOT NULL DEFAULT '0',
  `description` varchar(255) NOT NULL,
  `enable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cms_tag`;
CREATE TABLE `cms_tag` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cms_transaction`;
CREATE TABLE `cms_transaction` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `oid` varchar(20) NOT NULL,
  `uid` int(10) unsigned NOT NULL,
  `type` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `amount` decimal(8,2) NOT NULL DEFAULT '0.00',
  `result` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `info` varchar(255) NOT NULL,
  `ip` varchar(15) NOT NULL,
  `addtime` int(10) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

DROP TABLE IF EXISTS `cms_website`;
CREATE TABLE `cms_website` (
  `lang` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `dir` varchar(30) NOT NULL,
  `template` varchar(30) NOT NULL,
  `static` VARCHAR(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `logo` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `copyright` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `qq` varchar(255) NOT NULL,
  `msn` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `fax` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`lang`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;