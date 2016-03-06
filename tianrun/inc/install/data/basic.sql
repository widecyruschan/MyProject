
INSERT INTO `cms_website` (`lang`,`name`,`dir`,`template`,`static`,`title`,`logo`,`keyword`,`description`,`copyright`,`email`,`qq`,`msn`,`phone`,`fax`,`address`) VALUES
(1,'中文站','chinese_simplified','default','html/index.html','我的网站','inc/images/logo.png','','','Copyright © 2008-2011 MYCMS. All Rights Reserved.','yourname@example.com','123456789','yourname@msn.com','020 - 88835256','020 - 75863382','上海市浦东新区川沙路 352-82 号'),
(2,'English','english','default','html/index-en.html','My Website','inc/images/logo.png','','','Copyright © 2008-2011 MYCMS. All Rights Reserved.','myname@example.com','987654321','myname@msn.com','0754 - 58746632','0786 - 65879651','Floor 14, Huiyin Plaza North building, No. 2018, Huashan Road, Shanghai.');

INSERT INTO `cms_rank` (`id`, `rankname`, `discount`, `scores`, `money`, `auto`, `enable`) VALUES
(1, '注册会员,Ordinary', 10, 0, 0.00, 0, 1),
(2, '中级会员,Intermediate', 10, 200, 0.00, 1, 1),
(3, '高级会员,Senior Member', 10, 20000, 0.00, 1, 1),
(4, 'VIP会员,VIP', 10, 0, 1000.00, 0, 1),
(5, '代理商,Agents', 8.5, 0, 10000.00, 0, 1);

INSERT INTO `cms_shipping` (`id`, `lang`, `title`, `freight`, `topay`, `insure`, `description`, `enable`) VALUES
(1, 1, '中国邮政EMS', 35.00, 0, 0, '中国邮政特快专递服务', 1);

INSERT INTO `cms_module` (`id`, `modcode`, `modname`, `installpath`, `type`, `files`, `develop`, `info`, `addtime`) VALUES
(1, 'MO001x', '文章内容', 'inc/install/pack/article/mo001x.zip', 1, 'article.php,list.php,view.php,{admin}/article_manage.php,{admin}/article_update.php,inc/language/frontend/chinese_simplified/article.lang.php,inc/language/frontend/chinese_simplified/list.lang.php,inc/language/frontend/chinese_simplified/view.lang.php,inc/language/frontend/english/article.lang.php,inc/language/frontend/english/list.lang.php,inc/language/frontend/english/view.lang.php,inc/language/manage/chinese_simplified/article_manage.lang.php,inc/language/manage/chinese_simplified/article_update.lang.php,inc/templates/manage/article_manage.dwt,inc/templates/manage/article_update.dwt,inc/lib/article.lib.php,inc/uploads/article', 'MYCMS官方制作', '文章内容模块', 1301642556),
(2, 'MO002x', '产品(商品)', 'inc/install/pack/product/mo002x.zip', 1, 'product.php,category.php,detail.php,cart.php,member/checkout.php,{admin}/product_manage.php,{admin}/product_update.php,{admin}/shop_order_manage.php,{admin}/shop_order_update.php,inc/language/frontend/chinese_simplified/product.lang.php,inc/language/frontend/chinese_simplified/category.lang.php,inc/language/frontend/chinese_simplified/detail.lang.php,inc/language/frontend/chinese_simplified/cart.lang.php,inc/language/frontend/chinese_simplified/checkout.lang.php,inc/language/frontend/english/product.lang.php,inc/language/frontend/english/category.lang.php,inc/language/frontend/english/detail.lang.php,inc/language/frontend/english/cart.lang.php,inc/language/frontend/english/checkout.lang.php,inc/language/manage/chinese_simplified/product_manage.lang.php,inc/language/manage/chinese_simplified/product_update.lang.php,inc/language/manage/chinese_simplified/shop_order_manage.lang.php,inc/language/manage/chinese_simplified/shop_order_update.lang.php,inc/templates/manage/product_manage.dwt,inc/templates/manage/product_update.dwt,inc/templates/manage/shop_order_manage.dwt,inc/templates/manage/shop_order_update.dwt,inc/lib/product.lib.php,inc/uploads/product,inc/script/shopping.js', 'MYCMS官方制作', '商品（产品功能模块）', 1301642676),
(3, 'MO003x', '图片集', 'inc/install/pack/photo/mo003x.zip', 1, 'photo.php,slide.php,show.php,{admin}/picture_manage.php,{admin}/picture_update.php,inc/language/frontend/chinese_simplified/photo.lang.php,inc/language/frontend/chinese_simplified/slide.lang.php,inc/language/frontend/chinese_simplified/show.lang.php,inc/language/frontend/english/photo.lang.php,inc/language/frontend/english/slide.lang.php,inc/language/frontend/english/show.lang.php,inc/language/manage/chinese_simplified/picture_manage.lang.php,inc/language/manage/chinese_simplified/picture_update.lang.php,inc/templates/manage/picture_manage.dwt,inc/templates/manage/picture_update.dwt,inc/lib/photo.lib.php,inc/uploads/picture,inc/script/hd_pics.js', 'MYCMS官方制作', '图片集模块', 1301642673),
(4, 'MO004x', '软件下载', 'inc/install/pack/download/mo004x.zip', 1, 'download.php,soft.php,down.php,{admin}/download_manage.php,{admin}/download_update.php,inc/language/frontend/chinese_simplified/download.lang.php,inc/language/frontend/chinese_simplified/soft.lang.php,inc/language/frontend/chinese_simplified/down.lang.php,inc/language/frontend/english/download.lang.php,inc/language/frontend/english/soft.lang.php,inc/language/frontend/english/down.lang.php,inc/language/manage/chinese_simplified/download_manage.lang.php,inc/language/manage/chinese_simplified/download_update.lang.php,inc/templates/manage/download_manage.dwt,inc/templates/manage/download_update.dwt,inc/lib/download.lib.php,inc/uploads/download', 'MYCMS官方制作', '软件下载模块', 1301642640),
(5, 'PL005x', '友情链接', 'inc/install/pack/links/pl005x.zip', 2, 'links.php,{admin}/links_manage.php,{admin}/links_update.php,inc/language/frontend/chinese_simplified/links.lang.php,inc/language/frontend/english/links.lang.php,inc/language/manage/chinese_simplified/links_manage.lang.php,inc/language/manage/chinese_simplified/links_update.lang.php,inc/templates/manage/links_manage.dwt,inc/templates/manage/links_update.dwt,inc/uploads/links', 'MYCMS官方制作', '友情链接（合作伙伴）插件', 1301642650),
(6, 'PL006x', '在线留言', 'inc/install/pack/guestbook/pl006x.zip', 2, 'guestbook.php,{admin}/guestbook_manage.php,{admin}/guestbook_reply.php,inc/language/frontend/chinese_simplified/guestbook.lang.php,inc/language/frontend/english/guestbook.lang.php,inc/language/manage/chinese_simplified/guestbook_manage.lang.php,inc/language/manage/chinese_simplified/guestbook_reply.lang.php,inc/templates/manage/guestbook_manage.dwt,inc/templates/manage/guestbook_reply.dwt', 'MYCMS官方制作', '在线留言（在线反馈）插件', 1301642643),
(7, 'PL007x', '在线反馈', 'inc/install/pack/feedback/pl007x.zip	', 2, 'feedback.php,inc/language/frontend/chinese_simplified/feedback.lang.php,inc/language/frontend/english/feedback.lang.php', 'MYCMS官方制作', '在线反馈、在线订单、询盘、在线邮件', 0),
(8, 'PL008x', '广告插件', 'inc/install/pack/ad/pl008x.zip', 2, '{admin}/ad_manage.php,{admin}/ad_update.php,inc/language/manage/chinese_simplified/ad_manage.lang.php,inc/language/manage/chinese_simplified/ad_update.lang.php,inc/templates/manage/ad_manage.dwt,inc/templates/manage/ad_update.dwt,inc/lib/ad.lib.php,inc/uploads/ad', 'MYCMS官方制作', '广告管理插件', 1301642552),
(9, 'PL009x', '支付接口', 'inc/install/pack/payment/pl009x.zip', 2, 'member/recharge.php,inc/plugins/payment,{admin}/shop_payment.php,inc/language/frontend/chinese_simplified/recharge.lang.php,inc/language/frontend/chinese_simplified/payment_return.lang.php,inc/language/frontend/english/recharge.lang.php,inc/language/frontend/english/payment_return.lang.php,inc/language/manage/chinese_simplified/shop_payment.lang.php,inc/templates/manage/shop_payment.dwt,inc/config/payment.config.php', 'MYCMS官方制作', '电子商务支付接口', 1301642669),
(10, 'PL010x', '物流配送', 'inc/install/pack/shipping/pl010x.zip', 2, '{admin}/shop_shipping.php,inc/language/manage/chinese_simplified/shop_shipping.lang.php,inc/templates/manage/shop_shipping.dwt', 'MYCMS官方制作', '物流配送方式管理插件', 1301642679);

INSERT INTO `cms_channel` (`id`, `lang`, `title`, `url`, `target`, `module`, `permission`, `show`, `pathhome`, `pathcategory`, `pathcontent`, `seotitle`, `seokey`, `seodescr`, `template`, `sort`, `addtime`) VALUES
(1, 1, '首 页', '{home}', '_self', '0', '0', 1, '', '', '', '', '', '', '', 1, 1300415159),
(2, 1, '资 讯', '', '_self', 'MO001x', '0', 1, 'news/index.html', 'news/{CID}.html', 'news/{Y}{M}/{ID}.html', '新闻资讯', '', '', '', 2, 1300417178),
(3, 1, '商 品', '', '_self', 'MO002x', '0', 1, 'product/index.html', 'product/{CID}.html', 'product/{Y}{M}/{ID}.html', '电器商城', '', '', '', 3, 1300417337),
(4, 1, '图 集', '', '_self', 'MO003x', '0', 1, 'photo/index.html', 'photo/{CID}.html', 'photo/{Y}{M}/{ID}.html', '图片展示频道', '', '', '', 4, 1300417493),
(5, 1, '下 载', '', '_self', 'MO004x', '0', 1, 'download/index.html', 'download/{CID}.html', 'download/{Y}{M}/{ID}.html', '软件下载', '', '', '', 5, 1300417588),
(6, 1, '服 务', '', '_self', 'MO001x', '0', 1, 'service/index.html', 'service/{CID}.html', 'service/{CID}-{ID}.html', '产品与服务', '', '', 'about_channel', 6, 1300417612),
(7, 1, '在线反馈', '{feedback}', '_self', '0', '0', 0, '', '', '', '', '', '', '', 7, 1331463303),
(8, 1, '在线留言', '{guestbook}', '_self', '0', '0', 0, '', '0', '', '', '', '', '', 8, 1300421995),
(9, 1, '网站公告', '', '_self', 'MO001x', '0', 0, 'annou/index.html', 'annou/{PID}-{CID}.html', 'annou/{ID}.html', '网站公告', '', '', 'about_channel', 9, 1300426388),
(10, 1, '焦点图', '', '_self', 'MO003x', '0', 0, '', '', '', '网站焦点图', '', '', '', 10, 1300452311),
(11, 2, 'Home', '{home}', '_self', '0', '0', 1, '', '', '', '', '', '', '', 1, 1300422199),
(12, 2, 'News', '', '_self', 'MO001x', '0', 1, 'en/news/index.html', 'en/news/{CID}.html', 'en/news/{Y}{M}/{ID}.html', 'News Center', '', '', '', 2, 1300422318),
(13, 2, 'Shopping', '', '_self', 'MO002x', '0', 1, 'en/product/index.html', 'en/product/{CID}.html', 'en/product/{Y}{M}/{ID}.html', 'Shopping', '', '', '', 3, 1300422856),
(14, 2, 'Photo', '', '_self', 'MO003x', '0', 1, 'en/photo/index.html', 'en/photo/{CID}.html', 'en/photo/{Y}{M}/{ID}.html', 'Photo', '', '', '', 4, 1300425035),
(15, 2, 'Download', '', '_self', 'MO004x', '0', 1, 'en/download/index.html', 'en/download/{CID}.html', 'en/download/{Y}{M}/{ID}.html', 'Download', '', '', '', 5, 1300425066),
(16, 2, 'Services', '', '_self', 'MO001x', '0', 1, 'en/service/index.html', 'en/service/{CID}.html', 'en/service/{CID}-{ID}.html', 'Services', '', '', 'about_channel', 6, 1300425095),
(17, 2, 'Feedback', '{feedback}', '_self', '0', '0', 0, '', '', '', '', '', '', '', 7, 1331469822),
(18, 2, 'GuestBook', '{guestbook}', '_self', '0', '0', 0, '', '', '', '', '', '', '', 8, 1300421995),
(19, 2, 'Announcement', '', '_self', 'MO001x', '0', 0, 'en/annou/index.html', 'en/annou/{PID}-{CID}.html', 'annou/{ID}.html', 'Other Articles', '', '', 'about_channel', 9, 1300426388),
(20, 2, 'Focus Picture', '', '_self', 'MO003x', '0', 0, '', '', '', 'Focus Picture', '', '', '', 10, 1300452311);

INSERT INTO `cms_category` (`id`, `lang`, `title`, `module`, `channel`, `level`, `nexus`, `htmllist`, `htmlcontent`, `seotitle`, `seokey`, `seodescr`, `permission`, `templatelist`, `templatecontent`, `picture`, `introduction`, `sort`, `addtime`) VALUES
(1, 1, '行业资讯', 'MO001x', 2, 1, ',1,', '', '', '', '', '', '0', '', '', '', '', 1, 1300419480),
(2, 1, '娱乐新闻', 'MO001x', 2, 1, ',2,', '', '', '', '', '', '0', '', '', '', '', 2, 1300419587),
(3, 1, '互联网', 'MO001x', 2, 1, ',3,', '', '', '', '', '', '0', '', '', '', '', 3, 1300419700),
(4, 1, '社会万象', 'MO001x', 2, 1, ',4,', '', '', '', '', '', '0', '', '', '', '', 4, 1300419860),
(5, 1, '家用电器', 'MO002x', 3, 1, ',5,', '', '', '', '', '', '0', '', '', '', '', 1, 1300456229),
(6, 1, '手机及配件', 'MO002x', 3, 1, ',6,', '', '', '', '', '', '0', '', '', '', '', 2, 1300456242),
(7, 1, '电脑及耗材', 'MO002x', 3, 1, ',7,', '', '', '', '', '', '0', '', '', '', '', 3, 1300456262),
(8, 1, '办公器材', 'MO002x', 3, 1, ',8,', '', '', '', '', '', '0', '', '', '', '', 4, 1300456401),
(9, 1, '时尚数码', 'MO002x', 3, 1, ',9,', '', '', '', '', '', '0', '', '', '', '', 5, 1300459436),
(10, 1, '诺基亚', 'MO002x', 3, 2, ',6,10,', '', '', '', '', '', '0', '', '', '', '', 1, 1300459782),
(11, 1, '三星', 'MO002x', 3, 2, ',6,11,', '', '', '', '', '', '0', '', '', '', '', 2, 1300459801),
(12, 1, '索尼爱立信', 'MO002x', 3, 2, ',6,12,', '', '', '', '', '', '0', '', '', '', '', 3, 1300459816),
(13, 1, '电话机', 'MO002x', 3, 2, ',8,13,', '', '', '', '', '', '0', '', '', '', '', 1, 1300461298),
(14, 1, '传真机', 'MO002x', 3, 2, ',8,14,', '', '', '', '', '', '0', '', '', '', '', 2, 1300461311),
(15, 1, '打印机', 'MO002x', 3, 2, ',8,15,', '', '', '', '', '', '0', '', '', '', '', 3, 1300461328),
(16, 1, '洗衣机', 'MO002x', 3, 2, ',5,16,', '', '', '', '', '', '0', '', '', '', '', 1, 1300462061),
(17, 1, '电视机', 'MO002x', 3, 2, ',5,17,', '', '', '', '', '', '0', '', '', '', '', 2, 1300462076),
(18, 1, '冰箱空调', 'MO002x', 3, 2, ',5,18,', '', '', '', '', '', '0', '', '', '', '', 3, 1300462093),
(19, 1, '小家电', 'MO002x', 3, 2, ',5,19,', '', '', '', '', '', '0', '', '', '', '', 4, 1300462113),
(20, 1, '影视娱乐', 'MO003x', 4, 1, ',20,', '', '', '', '', '', '0', '', '', '', '', 1, 1300500616),
(21, 1, '明星写真', 'MO003x', 4, 1, ',21,', '', '', '', '', '', '0', '', '', '', '', 2, 1300500674),
(22, 1, '应用软件', 'MO004x', 5, 1, ',22,', '', '', '', '', '', '0', '', '', '', '', 2, 1300510394),
(23, 1, '源码下载', 'MO004x', 5, 1, ',23,', '', '', '', '', '', '0', '', '', '', '', 1, 1300510363),
(24, 1, '素材下载', 'MO004x', 5, 1, ',24,', '', '', '', '', '', '0', '', '', '', '', 3, 1300510456),
(25, 1, '模板下载', 'MO004x', 5, 1, ',25,', '', '', '', '', '', '0', '', '', '', '', 4, 1300510581),
(26, 1, '产品与服务', 'MO001x', 6, 1, ',26,', '', '', '', '', '', '0', 'about_channel', 'about_view', '', '', 1, 1300511555),
(27, 1, '默认分类', 'MO001x', 9, 1, ',27,', '', '', '', '', '', '0', 'about_channel', 'about_view', '', '', 1, 1300426455),
(28, 1, '默认分类', 'MO003x', 10, 1, ',28,', '', '', '', '', '', '0', 'about_channel', 'about_view', '', '', 1, 1300452807),
(29, 2, 'Default', 'MO001x', 16, 1, ',29,', '', '', '', '', '', '0', 'about_channel', 'about_view', '', '', 1, 1331472719),
(30, 2, 'Default', 'MO001x', 19, 1, ',30,', '', '', '', '', '', '0', 'about_channel', 'about_view', '', '', 1, 1331470872),
(31, 2, 'Default', 'MO003x', 20, 1, ',31,', '', '', '', '', '', '0', 'about_channel', 'about_view', '', '', 1, 1331470878);
