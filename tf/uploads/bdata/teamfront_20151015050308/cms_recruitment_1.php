<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_recruitment`;");
E_C("CREATE TABLE `cms_recruitment` (
  `id` int(11) NOT NULL auto_increment,
  `bid` int(11) NOT NULL,
  `experience` mediumtext NOT NULL,
  `properties` mediumtext NOT NULL,
  `degree` mediumtext NOT NULL,
  `number` mediumtext NOT NULL,
  `recommend` mediumtext NOT NULL,
  `lang` int(11) default NULL,
  `audit` int(11) default NULL,
  `recycle` int(11) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC");
E_D("replace into `cms_recruitment` values('1','11','3年以上','全职','本科以上','5','<dl style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; border-style: initial; border-color: initial; vertical-align: baseline; text-align: left; border-style: initial; border-color: initial; background-color: rgb(255, 255, 255); \"><dd style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; border-style: initial; border-color: initial; vertical-align: baseline; border-style: initial; border-color: initial; float: left; width: 650px; font: normal normal normal 12px/24px simsun; word-break: break-all; word-wrap: break-word; \">1、有一年以上php+mysql编程开发经验，精通PHP+MySQL网站编程，熟悉面向对象的开发方式，熟悉在linux环境下配置&nbsp;php+mysql的运行环境；&nbsp;&nbsp;<br />2、具备较强的程序调试能力与程序故障分析能力&nbsp;；&nbsp;<br />3、熟悉Ajax，DIV+CSS，html，javascript等相关Web技术，熟悉至少一种目前主流的编程框架；&nbsp;<br />4、具有优良的编程风格和习惯，富于团队精神和敬业精神；&nbsp;<br />5、沟通能力强，能承受工作压力。&nbsp;<br /><br /></dd></dl><div class=\"explain\" style=\"margin-top: 10px; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; vertical-align: baseline; text-align: left; float: left; width: 650px; height: 30px; background-color: rgb(255, 255, 255); \"><p style=\"margin-top: 0px; margin-right: 0px; margin-bottom: 0px; margin-left: 30px; padding-top: 0px; padding-right: 0px; padding-bottom: 0px; padding-left: 0px; border-top-width: 0px; border-right-width: 0px; border-bottom-width: 0px; border-left-width: 0px; border-style: initial; border-color: initial; border-style: initial; border-color: initial; vertical-align: baseline; border-style: initial; border-color: initial; font: normal normal normal 12px/30px simsun; \">请发简历，写明工作经历，薪资待遇要求。</p></div>','1',NULL,NULL);");
require("../../inc/footer.php");?>