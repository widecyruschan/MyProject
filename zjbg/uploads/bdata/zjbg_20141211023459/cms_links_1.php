<?php
E_D("DROP TABLE IF EXISTS `cms_links`;");
E_C("CREATE TABLE `cms_links` (
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
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC");
