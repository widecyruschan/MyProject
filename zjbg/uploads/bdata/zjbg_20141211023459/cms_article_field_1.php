<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_article_field`;");
E_C("CREATE TABLE `cms_article_field` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `aid` int(10) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT");
E_D("replace into `cms_article_field` values('1','62');");
E_D("replace into `cms_article_field` values('2','66');");
E_D("replace into `cms_article_field` values('3','68');");
E_D("replace into `cms_article_field` values('4','71');");
E_D("replace into `cms_article_field` values('6','72');");
require("../../inc/footer.php");?>