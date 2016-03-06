<?php
E_D("DROP TABLE IF EXISTS `cms_admin`;");
E_C("CREATE TABLE `cms_admin` (
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
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC");
E_D("replace into `cms_admin` values('1','admin','8c96c2b08e407ba6db191e03a2f94997','b2zVLf8B','127.0.0.1,127.0.0.1','1417746136,1418109447','61','','1');");
