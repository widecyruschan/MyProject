<?phpdefined('ADMIN_PATH') or die('Access Denied.');// @后台页面语言包（简体中文）$language['page'] = array(	'title' => '系统全局参数设置',	'debugging' => array('网站模式：','正常模式','调试模式'),	'debugging_title' => '1、正常模式：将屏蔽所有的错误信息及提示，网站正常运营时必须启用此模式。<br />2、调试模式：显示除了公告以外的所有错误信息及语法标准提示信息、模板缓<br />存功能会被禁用、显示数据库连接错误信息、显示数据查询错误信息、出错的<br />SQL语句会被完整的显示出来。此模式只限于开发和调试阶段启用，它决不能使<br />用于网站正常环境下。',	'static' => array('静态方式：','不使用静态','生成真静态','伪静态'),	'static_title' => '当网站数据比较多的时候，建议生成静态，这样可以很好的加快网站<br />访问速度，同时也有利于百度与谷歌等搜索引擎的收录。伪静态默认<br />为 Apache 伪静态规则，Nginx 伪静态规则请查阅官方技术文档。',	'url' => '网站访问地址：',	'config_title' => '非常重要，请正确填写，否则可能造成图片不能正确显示、<br />链接出错、样式丢失等。格式：<span class=\'green\'>http://www.gzcgc.com/</span>',	'home' => '首页文件：',	'home_title' => '默认首页文件，如果您有一个 Flash 首页可以通过修改该项来实<br />现。在 Flash 首页中使用链接 <span class=\'green\'>index.php?1</span> 即可进入程序首页。',	'lang_total' => '网站开通几种语言：',	'lang_total_title' => '一个小于 256 的整数，最多支持 255 种语言。新增其它语言时请添加语<br />言包，系统默认只安装中、英两种语言包。将下载后的语言包或翻译好的<br />语言包拷贝至 <span class=\'green\'>inc/language/frontend</span> 目录下，并在网站基本设置中为<br />每一种语言选择语言包。',	'lang_default' => '默认语言：',	'lang_default_title' => '网站默认语言，在用户没有选择语言时采用该语言作为默认站点。',	'admin_dir' => '网站后台目录名：',	'admin_dir_title' => '出于安全的考虑，网站安装后请修改。程序将重命名后台管理目<br />录，请勿使用中文及特殊字符。不要使用admin、manage等易<br />猜的后台目录名。',	'status' => array('网站状态：','开启','关闭'),	'status_title' => '网站关闭后前台不可以访问，网站维护、数据备份等情况下可以关闭网站。',	'maintenance' => '维护说明：',	'maintenance_title' => '在网站关闭状态下显示，支持Html语法。',	'zone' => '服务器时区设置：',	'zone_title' => '当地时间与 GMT 的时差。调节后的服务器时间：'.date('Y-m-d H:i:s',$gmt_time),	'icp' => '网站备案号：',	'traffic_statistics' => '流量统计代码：',	'traffic_statistics_title' => '网站第三方流量统计代码。',	'guestbook_show' => array('留言显示状态：','显示审核后的留言','全部显示'),		'template' => array(		'caching' => array('网站缓存功能：','开启','禁用'),		'caching_title' => '如果您的系统使用的是动态模式，强烈建议开启该功能，开启后将大<br />幅提升访问速度。在模板制作和调试过程中可以禁用缓存功能，这将<br />强迫每次访问都重新生成页面缓存，仅有利于测试。',		'cache_lifetime' => array('缓存有效时间：','秒'),		'cache_lifetime_title' => '模板缓存有效时间，一旦这个时间失效，将会重新生成缓存文<br />件。-1 永不过期，其它数字为模板缓存有效时间，单位：秒。',		'auto_clear_caching' => array('自动更新缓存：','开启','关闭'),		'auto_clear_caching_title' => '后台更新数据时自动清空模板缓存。后台修改数据、添加数<br />据等一般性操作都将会自动清空缓存文件，可能有部分操作<br />需要你手动清空缓存后才能生效。',		'force_compile' => array('强制编译：','是','否'),		'force_compile_title' => '强迫每次访问都重新生成编译文件，默认情况下，它是无效<br />的，它对于开发和调试很方便，但它决不能使用于网站正常<br />环境下，如果启动了缓存，每次将会重新生成缓存文件。',		'customize_page' => '自定义页面：',		'customize_page_title' => '填写自定义页面使用的模板文件名称 (不含后缀)，使用逗号隔开。您可以添加任意的自定义页<br />面，该应用页支持所有模块的一些基本方法，如需要添加一个页面调用公告、TAG、专题、排<br />行榜等某些特定的数据。具体操作如下：<br />1、新建一个名为 <span class=\'green\'>MyPage.tpl</span> 的模板文件 (当然您可以随便命名)，在该模板页调用相关数据<br />2、将该自定义模板文件上传至当前使用的模板目录下并在这里添加上 <span class=\'green\'>MyPage</span><br />3、通过 <span class=\'green\'>app?a=MyPage</span> 的链接形式访问该页，您可以在频道管理中以外部链接的形式添加<br />到导航栏中等等。系统会编译该模板并自动加载与之同名的语言包文件。',	),		'upload' => array(		'type' => '允许上传的文件类型：',		'type_title' => '文件后缀名，用逗号隔开。',		'max_annex' => '允许上传的最大附件：',		'max_picture' => '允许上传的最大图片：',		'date_dir' => array('自动创建子目录：','是','否'),		'date_dir_title' => '上传文件是否按照当前日期自动创建子目录 (如：201006)',		'naming' => array('上传文件命名方式：','使用上传时间 + 3位随机数命名','使用源文件名，如果文件存在则覆盖','使用源文件名，如果文件存在则自动重命名'),		'naming_title' => '如果源文件名中含有中文或特殊字符，系统将会自动重命名。',	),		'mail' => array(		'title' => '请务必配置正确，确保能自动发送邮件，在很多页面会用<br />到，如：会员找回密码、注册帐号验证、会员订单提交通<br />知、会员支付及充值通知、产品询盘、会员产品续费通知、<br />在线反馈等',		'mailer' => array('邮件发送方式：','SMTP','PHP Mail','Sendmail','Gmail'),		'frommail' => '发件箱地址：',		'fromname' => '发件人姓名：',		'smtphost' => 'SMTP服务器：',				'smptport' => 'SMTP端口：',		'smtpauth' => array('SMTP身份验证：','是','否'),		'smtpuser' => 'SMTP登陆用户名：',		'smtppass' => 'SMTP登录密码：',		'starttls' => 'SMTP安全连接：',		'test' => array('发送一封测试邮件：','是，发送至：','默认不发送测试邮件，如果选择&quot;是&quot;，提交<br />后系统会发送一封测试邮件至该邮箱中。'),	),			'ftp' => array(		'enable' => array('启用FTP上传文件：','是','否'),		'host' => 'FTP主机地址：',		'port' => 'FTP端口：',		'user' => 'FTP用户名：',		'pwd' => 'FTP密码：',		'root' => '网站位于FTP中的目录：',		'title' => '如果您的环境支持FTP传输，请填写FTP相关参数并开启该功能。<br />在软件下载等模块上传大型的附件时可能需要开启该功能支持。',	),		'failure' => '操作失败，无法更新配置文件！\r请确认您是否有相应文件的写入权限：\rinc/config/globals.config.php',	'update_page' => '修改系统全局设置',		'test_mail' => array(		0 => 'MYCMS 邮件服务器配置测试',		1 => '恭喜您，配置成功。<br />这是一封系统配置测试邮件，提交来自：',		2 => '邮件发送方式：',		3 => '发件地址：',		4 => '发件人：',		5 => '提交时间：',		6 => '测试邮件已发送，请登录该邮箱接收：',		7 => '测试邮件发送失败，服务器返回信息：',	),		'msg' => array(		0 => '后台管理目录名必须由 4-20 个字母、数字或下划线组成且只能以字母开头，不支持中文和特殊字符。',		1 => '操作失败，无法修改后台管理目录名，请手动重命名。',		2 => '拷贝 .htaccess 文件失败，请确认您是否有相应的权限。或者手动将 inc/data/.htaccess 文件拷贝至网站根目录下。',		3 => '删除 .htaccess 文件失败，请确认您是否有相应的权限。或者手动将网站根目录下的 .htaccess 文件删除。',	),);