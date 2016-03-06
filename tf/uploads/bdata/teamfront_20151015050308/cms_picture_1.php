<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');
E_D("DROP TABLE IF EXISTS `cms_picture`;");
E_C("CREATE TABLE `cms_picture` (
  `id` int(10) unsigned NOT NULL auto_increment,
  `lang` tinyint(3) unsigned NOT NULL default '1',
  `channel` int(10) unsigned NOT NULL default '0',
  `category` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `brief` varchar(50) NOT NULL,
  `color` varchar(7) NOT NULL,
  `bold` tinyint(1) unsigned NOT NULL default '0',
  `aid` varchar(30) NOT NULL,
  `tag` varchar(100) NOT NULL,
  `author` varchar(50) NOT NULL,
  `source` varchar(50) NOT NULL,
  `sourceurl` varchar(50) NOT NULL,
  `keyword` varchar(100) NOT NULL,
  `content` mediumtext NOT NULL,
  `template` varchar(50) NOT NULL,
  `comment` tinyint(1) unsigned NOT NULL default '0',
  `commenttotal` int(10) unsigned NOT NULL default '0',
  `picture` text NOT NULL,
  `description` mediumtext NOT NULL,
  `recom` tinyint(1) unsigned NOT NULL default '0',
  `audit` tinyint(1) unsigned NOT NULL default '0',
  `recycle` tinyint(1) unsigned NOT NULL default '0',
  `permission` varchar(255) NOT NULL,
  `filename` varchar(50) NOT NULL,
  `click` int(10) unsigned NOT NULL default '0',
  `money` decimal(8,2) unsigned NOT NULL default '0.00',
  `integral` int(10) unsigned NOT NULL default '0',
  `buyuser` text NOT NULL,
  `agree` int(10) unsigned NOT NULL default '0',
  `disagree` int(10) unsigned NOT NULL default '0',
  `sort` int(10) unsigned NOT NULL default '0',
  `publisher` varchar(20) NOT NULL,
  `addtime` int(10) unsigned NOT NULL default '0',
  PRIMARY KEY  (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC");
E_D("replace into `cms_picture` values('11','1','35','','首页广告1','首页广告1','','0','','','','','/view.php?id=62','首页广告1','','','1','0','inc/uploads/picture/201405/20140510162519695.png,inc/uploads/picture/201405/20140510162528149.png','首页广告1{I~N!T@E#R\$V%A^L}首页广告1','0','1','0','0','','415','0.00','0','','0','0','0','cyruschan','1373558400');");
E_D("replace into `cms_picture` values('13','1','35','','首页广告2','首页广告2','','0','','','','','','','','','1','0','inc/uploads/picture/201405/20140516224347074.png,inc/uploads/picture/201405/20140516224354835.png','{I~N!T@E#R\$V%A^L}','0','1','0','0','','15','0.00','0','','0','0','0','cyruschan','1373558400');");
E_D("replace into `cms_picture` values('14','1','35','','首页广告3','','','0','','','','','','','','','1','0','inc/uploads/picture/201405/20140510232842142.png,inc/uploads/picture/201405/20140510232847953.png','{I~N!T@E#R\$V%A^L}','0','1','0','0','','444','0.00','0','','0','0','0','cyruschan','1373558400');");
E_D("replace into `cms_picture` values('16','1','36','','内页轮播1','','','0','','','','','','','内页轮播1','','1','0','inc/uploads/picture/201405/20140518100807607.png,inc/uploads/picture/201405/20140518100929897.png','{I~N!T@E#R\$V%A^L}','0','1','0','0','','898','0.00','0','','0','0','0','cyruschan','1400342400');");
E_D("replace into `cms_picture` values('17','1','36','','内页轮播2','','','0','','','','','','','','','1','0','inc/uploads/picture/201405/20140518101232896.png,inc/uploads/picture/201405/20140518101238048.png','{I~N!T@E#R\$V%A^L}','0','1','0','0','','83','0.00','0','','0','0','0','cyruschan','1400342400');");
require("../../inc/footer.php");?>