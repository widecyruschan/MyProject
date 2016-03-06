<?phprequire("../../inc/header.php");/*		SoftName : EmpireBak Version 2010		Author   : wm_chief		Copyright: Powered by www.phome.net*/DoSetDbChar('utf8');E_D("DROP TABLE IF EXISTS `cms_module`;");E_C("CREATE TABLE `cms_module` (  `id` int(10) unsigned NOT NULL auto_increment,  `modcode` varchar(6) NOT NULL,  `modname` varchar(255) NOT NULL,  `installpath` varchar(50) NOT NULL,  `type` tinyint(1) unsigned NOT NULL default '0',  `files` text NOT NULL,  `develop` varchar(255) NOT NULL,  `info` varchar(255) NOT NULL,  `addtime` int(10) unsigned NOT NULL default '0',  PRIMARY KEY  (`id`),  UNIQUE KEY `modcode` (`modcode`)) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8");E_D("replace into `cms_module` values('1','MO001x','文章内容','inc/install/pack/article/mo001x.zip','1','article.php,list.php,view.php,{admin}/article_manage.php,{admin}/article_update.php,inc/language/frontend/chinese_simplified/article.lang.php,inc/language/frontend/chinese_simplified/list.lang.php,inc/language/frontend/chinese_simplified/view.lang.php,inc/language/frontend/english/article.lang.php,inc/language/frontend/english/list.lang.php,inc/language/frontend/english/view.lang.php,inc/language/manage/chinese_simplified/article_manage.lang.php,inc/language/manage/chinese_simplified/article_update.lang.php,inc/templates/manage/article_manage.dwt,inc/templates/manage/article_update.dwt,inc/lib/article.lib.php,inc/uploads/article','MYCMS官方制作','文章内容模块','1301642556');");E_D("replace into `cms_module` values('2','MO002x','产品(商品)','inc/install/pack/product/mo002x.zip','1','product.php,category.php,detail.php,cart.php,member/checkout.php,{admin}/product_manage.php,{admin}/product_update.php,{admin}/shop_order_manage.php,{admin}/shop_order_update.php,inc/language/frontend/chinese_simplified/product.lang.php,inc/language/frontend/chinese_simplified/category.lang.php,inc/language/frontend/chinese_simplified/detail.lang.php,inc/language/frontend/chinese_simplified/cart.lang.php,inc/language/frontend/chinese_simplified/checkout.lang.php,inc/language/frontend/english/product.lang.php,inc/language/frontend/english/category.lang.php,inc/language/frontend/english/detail.lang.php,inc/language/frontend/english/cart.lang.php,inc/language/frontend/english/checkout.lang.php,inc/language/manage/chinese_simplified/product_manage.lang.php,inc/language/manage/chinese_simplified/product_update.lang.php,inc/language/manage/chinese_simplified/shop_order_manage.lang.php,inc/language/manage/chinese_simplified/shop_order_update.lang.php,inc/templates/manage/product_manage.dwt,inc/templates/manage/product_update.dwt,inc/templates/manage/shop_order_manage.dwt,inc/templates/manage/shop_order_update.dwt,inc/lib/product.lib.php,inc/uploads/product,inc/script/shopping.js','MYCMS官方制作','商品（产品功能模块）','1301642676');");E_D("replace into `cms_module` values('3','MO003x','图片集','inc/install/pack/photo/mo003x.zip','1','photo.php,slide.php,show.php,{admin}/picture_manage.php,{admin}/picture_update.php,inc/language/frontend/chinese_simplified/photo.lang.php,inc/language/frontend/chinese_simplified/slide.lang.php,inc/language/frontend/chinese_simplified/show.lang.php,inc/language/frontend/english/photo.lang.php,inc/language/frontend/english/slide.lang.php,inc/language/frontend/english/show.lang.php,inc/language/manage/chinese_simplified/picture_manage.lang.php,inc/language/manage/chinese_simplified/picture_update.lang.php,inc/templates/manage/picture_manage.dwt,inc/templates/manage/picture_update.dwt,inc/lib/photo.lib.php,inc/uploads/picture,inc/script/hd_pics.js','MYCMS官方制作','图片集模块','1301642673');");E_D("replace into `cms_module` values('4','MO004x','软件下载','inc/install/pack/download/mo004x.zip','1','download.php,soft.php,down.php,{admin}/download_manage.php,{admin}/download_update.php,inc/language/frontend/chinese_simplified/download.lang.php,inc/language/frontend/chinese_simplified/soft.lang.php,inc/language/frontend/chinese_simplified/down.lang.php,inc/language/frontend/english/download.lang.php,inc/language/frontend/english/soft.lang.php,inc/language/frontend/english/down.lang.php,inc/language/manage/chinese_simplified/download_manage.lang.php,inc/language/manage/chinese_simplified/download_update.lang.php,inc/templates/manage/download_manage.dwt,inc/templates/manage/download_update.dwt,inc/lib/download.lib.php,inc/uploads/download','MYCMS官方制作','软件下载模块','1301642640');");E_D("replace into `cms_module` values('5','PL005x','友情链接','inc/install/pack/links/pl005x.zip','2','links.php,{admin}/links_manage.php,{admin}/links_update.php,inc/language/frontend/chinese_simplified/links.lang.php,inc/language/frontend/english/links.lang.php,inc/language/manage/chinese_simplified/links_manage.lang.php,inc/language/manage/chinese_simplified/links_update.lang.php,inc/templates/manage/links_manage.dwt,inc/templates/manage/links_update.dwt,inc/uploads/links','MYCMS官方制作','友情链接（合作伙伴）插件','1301642650');");E_D("replace into `cms_module` values('6','PL006x','在线留言','inc/install/pack/guestbook/pl006x.zip','2','guestbook.php,{admin}/guestbook_manage.php,{admin}/guestbook_reply.php,inc/language/frontend/chinese_simplified/guestbook.lang.php,inc/language/frontend/english/guestbook.lang.php,inc/language/manage/chinese_simplified/guestbook_manage.lang.php,inc/language/manage/chinese_simplified/guestbook_reply.lang.php,inc/templates/manage/guestbook_manage.dwt,inc/templates/manage/guestbook_reply.dwt','MYCMS官方制作','在线留言（在线反馈）插件','1301642643');");E_D("replace into `cms_module` values('7','PL007x','在线反馈','inc/install/pack/feedback/pl007x.zip	','2','feedback.php,inc/language/frontend/chinese_simplified/feedback.lang.php,inc/language/frontend/english/feedback.lang.php','MYCMS官方制作','在线反馈、在线订单、询盘、在线邮件','0');");E_D("replace into `cms_module` values('8','PL008x','广告插件','inc/install/pack/ad/pl008x.zip','2','{admin}/ad_manage.php,{admin}/ad_update.php,inc/language/manage/chinese_simplified/ad_manage.lang.php,inc/language/manage/chinese_simplified/ad_update.lang.php,inc/templates/manage/ad_manage.dwt,inc/templates/manage/ad_update.dwt,inc/lib/ad.lib.php,inc/uploads/ad','MYCMS官方制作','广告管理插件','1301642552');");E_D("replace into `cms_module` values('9','PL009x','支付接口','inc/install/pack/payment/pl009x.zip','2','member/recharge.php,inc/plugins/payment,{admin}/shop_payment.php,inc/language/frontend/chinese_simplified/recharge.lang.php,inc/language/frontend/chinese_simplified/payment_return.lang.php,inc/language/frontend/english/recharge.lang.php,inc/language/frontend/english/payment_return.lang.php,inc/language/manage/chinese_simplified/shop_payment.lang.php,inc/templates/manage/shop_payment.dwt,inc/config/payment.config.php','MYCMS官方制作','电子商务支付接口','1301642669');");E_D("replace into `cms_module` values('10','PL010x','物流配送','inc/install/pack/shipping/pl010x.zip','2','{admin}/shop_shipping.php,inc/language/manage/chinese_simplified/shop_shipping.lang.php,inc/templates/manage/shop_shipping.dwt','MYCMS官方制作','物流配送方式管理插件','1301642679');");require("../../inc/footer.php");?>