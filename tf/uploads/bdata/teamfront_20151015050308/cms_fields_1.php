<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_fields`;");
E_C("CREATE TABLE `cms_fields` (
  `fid` int(11) NOT NULL auto_increment,
  `channelID` varchar(20) default NULL,
  `fieldsname` varchar(20) default NULL,
  `fields` varchar(50) default '0',
  `fieldstype` varchar(20) character set utf8 collate utf8_bin default NULL,
  `fieldslong` smallint(5) default '0',
  `selects` text,
  `fieldorder` int(10) default '0',
  `issubmit` tinyint(1) default '1',
  `lists` tinyint(1) default '0',
  `fieldshow` tinyint(1) default '1',
  `types` text,
  PRIMARY KEY  (`fid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT");
E_D("replace into `cms_fields` values('2','2','Client','Client','varchar','255','','0','1','1','1','');");
require("../../inc/footer.php");?>