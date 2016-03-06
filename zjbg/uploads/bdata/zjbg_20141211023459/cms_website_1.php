<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_website`;");
E_C("CREATE TABLE `cms_website` (
  `lang` tinyint(3) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `dir` varchar(30) NOT NULL,
  `template` varchar(30) NOT NULL,
  `static` varchar(50) NOT NULL,
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC");
E_D("replace into `cms_website` values('1','电脑版','chinese_simplified','default','html/index.html','广州军区珠江宾馆','inc/uploads/other/201404/20140410231002954.png','交互设计，视觉设计，网站研发，App程序开发','广州军区珠江宾馆','Copyright © 2014 Cyrus Chan. All Rights Reserved.','widecyruschan@yahoo.com.hk','59660349','yourname@msn.com','020 - 88835256','020 - 75863382','.');");
E_D("replace into `cms_website` values('2','手机版','chinese_simplified','default_wap','html/index-wap.html','My Website','inc/images/logo.png','','','Copyright © 2008-2011 MYCMS. All Rights Reserved.','myname@example.com','987654321','myname@msn.com','0754 - 58746632','0786 - 65879651','Floor 14, Huiyin Plaza North building, No. 2018, Huashan Road, Shanghai.');");
require("../../inc/footer.php");?>