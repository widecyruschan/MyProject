<?php
E_D("DROP TABLE IF EXISTS `cms_product_field`;");
E_C("CREATE TABLE `cms_product_field` (
  `aid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `body` mediumtext NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC");
