<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_article_field`;");
E_C("CREATE TABLE `cms_article_field` (
  `id` int(11) NOT NULL auto_increment,
  `aid` int(10) NOT NULL default '0',
  `Client` varchar(255) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT");
E_D("replace into `cms_article_field` values('1','62','寰球汽车传媒集团');");
E_D("replace into `cms_article_field` values('2','66','《世界》杂志');");
E_D("replace into `cms_article_field` values('3','68','第一步');");
E_D("replace into `cms_article_field` values('4','71','LaluzAPP');");
E_D("replace into `cms_article_field` values('6','72','China Daily 中国日报');");
require("../../inc/footer.php");?>