<?php@include("../../inc/header.php");/*		SoftName : EmpireBak Version 2008		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');E_D("DROP TABLE IF EXISTS `tun2_products`;");E_C("CREATE TABLE `tun2_products` (  `id` int(11) NOT NULL AUTO_INCREMENT,  `bid` int(11) NOT NULL DEFAULT '0',  `size` varchar(200) NOT NULL DEFAULT '',  `price` varchar(200) NOT NULL DEFAULT '',  PRIMARY KEY (`id`)) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=utf8");E_D("replace into `tun2_products` values('14','24','','');");E_D("replace into `tun2_products` values('15','25','','');");E_D("replace into `tun2_products` values('16','26','2个月','10万');");E_D("replace into `tun2_products` values('17','27','','');");E_D("replace into `tun2_products` values('19','53','','');");E_D("replace into `tun2_products` values('20','54','','');");E_D("replace into `tun2_products` values('21','55','','');");E_D("replace into `tun2_products` values('22','56','','');");@include("../../inc/footer.php");?>