<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_ipvisit`;");
E_C("CREATE TABLE `cms_ipvisit` (
  `ip` varchar(15) NOT NULL,
  `lang` tinyint(3) unsigned NOT NULL default '0',
  `type` tinyint(3) unsigned NOT NULL default '0',
  `addtime` int(10) unsigned NOT NULL default '0',
  `oid` int(10) unsigned NOT NULL default '0',
  UNIQUE KEY `ip` (`ip`,`lang`,`type`,`oid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC");
E_D("replace into `cms_ipvisit` values('unknown','0','3','1373620258','3');");
require("../../inc/footer.php");?>