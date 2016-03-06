<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_transaction`;");
E_C("CREATE TABLE `cms_transaction` (
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
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC");
require("../../inc/footer.php");?>