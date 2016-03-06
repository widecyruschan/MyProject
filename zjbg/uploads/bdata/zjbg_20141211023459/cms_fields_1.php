<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_fields`;");
E_C("CREATE TABLE `cms_fields` (
  `fid` int(11) NOT NULL AUTO_INCREMENT,
  `channelID` varchar(20) DEFAULT NULL,
  `fieldsname` varchar(20) DEFAULT NULL,
  `fields` varchar(50) DEFAULT '0',
  `fieldstype` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `fieldslong` smallint(5) DEFAULT '0',
  `selects` text,
  `fieldorder` int(10) DEFAULT '0',
  `issubmit` tinyint(1) DEFAULT '1',
  `lists` tinyint(1) DEFAULT '0',
  `fieldshow` tinyint(1) DEFAULT '1',
  `types` text,
  PRIMARY KEY (`fid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 ROW_FORMAT=COMPACT");
require("../../inc/footer.php");?>