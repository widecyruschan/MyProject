<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_rank`;");
E_C("CREATE TABLE `cms_rank` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `rankname` text NOT NULL,
  `discount` float unsigned NOT NULL DEFAULT '10',
  `scores` int(10) unsigned NOT NULL DEFAULT '0',
  `money` decimal(8,2) unsigned NOT NULL DEFAULT '0.00',
  `auto` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC");
E_D("replace into `cms_rank` values('1','注册会员,Ordinary','10','0','0.00','0','1');");
E_D("replace into `cms_rank` values('2','中级会员,Intermediate','10','200','0.00','1','1');");
E_D("replace into `cms_rank` values('3','高级会员,Senior Member','10','20000','0.00','1','1');");
E_D("replace into `cms_rank` values('4','VIP会员,VIP','10','0','1000.00','0','1');");
E_D("replace into `cms_rank` values('5','代理商,Agents','8.5','0','10000.00','0','1');");
require("../../inc/footer.php");?>