<?php

defined('ADMIN_PATH') or die('Access Denied.');

// @后台页面语言包（简体中文）

$language['page'] = array(
	'title' => array('添加下载资源','修改下载资源'),
	
	'add_upload' => '添加图片上传',
	'del_upload' => '删除图片上传',
	'section' => array('第','张','裁切：宽','× 高','添加水印','图片裁切及水印缺省值设置'),
	'basic' => '基本信息',
	'advanced' => '高级参数',
	
	'channel' => '所属频道：',
	'channel_add' => '添加频道',
	'select_channel' => '请选择频道',
	'category' => '所属栏目：',
	'select_category' => '请选择栏目',
	'category_add' => '添加栏目',
	'full_title' => '下载标题：',
	'attribute' => '标题属性：',
	'color' => '标题颜色',
	'bold' => '字体加粗',
	'tag' => 'TAG标签：',
	'tag_title' => '用逗号分开(全角、半角逗号均可)，单个标签不得大于 12 个字符。',
	'upload' => '资源图片：',
	'upload_title' => 'n 为索引值：<br />0第一张,1第二张,2第三张,依此类推。<br />第一张图片一般只用来作为缩略图',
	'cut' => '裁切及水印：',
	'keyword' => 'SEO关键字：',
	
	'local' => '本地地址：',
	'local_title' => '请上传或填写本地下载路径。',
	'mode' => array('下载方式：','隐藏真实路径','直接跳转至真实下载路径'),
	'mirror' => '镜像下载：',
	'mode_title' => '该设置只对本地下载有效，镜像下载将直接跳转至您填写的下载地址。<br />1、隐藏真实路径：该方式通过 readfile 函数将源文件读取并写入到<br />&nbsp;　&nbsp;缓冲区下载。可以有效的隐藏源文件地址，对于出售、权限限制<br />&nbsp;　&nbsp;等受保护的下载资源非常有效。<br />2、直接跳转至真实下载路径：如果您的下载地址是一个页面，通常<br />&nbsp;　&nbsp;选择这种方式，将直接跳转至您填写的下载地址。',
	'mirror_title' => '每个镜像一行，用回车分开。镜像名称与下载地址之间用&quot;|&quot;隔开，如：<br /><span class=\'green\'>广东电信|http://www.abc.com/file.rar<br />北方网通|http://www.123.com/file.rar</span>',
	'rename' => array('随机重命名：','是','否','为了防止暴力猜测受保护限制的下载资源的真实地址，<br />请选择随机重命名。系统将在表单提交后对上传文件<br />进行加密并随机重命名。'),
	'make' => array('发布选项：','生成内容页HTML静态文件'),
	
	'content' => '详细介绍：',
	'detect' => array('请选择资源所属栏目。','请填写下载资源标题。'),
	
	'author' => '软件作者：',
	'source' => '资源来源：',
	'sourceurl' => '官方网址：',
	'demourl' => '演示网址：',
	'environment' => '运行环境：',
	'softlang' => '软件语言：',
	'authorization' => '授权方式：',
	'size' => '软件大小：',
	'template' => '自定义模板：',
	'template_title' => '模板文件名称，不含后缀名。不填写将使用当前栏目里定义的内页模板文件名。<br />如果所属分类中全部没有定义模板文件，将采用当前页程序文件名作为缺省值。',
	'comment' => array('是否允许评论：','允许评论','禁止评论'),
	'recom' => array('是否推荐：','推荐','不推荐'),
	'audit' => array('审核状态：','通过','待审'),
	'permission' => '下载权限：',
	'permission_title' => '对该资源设置下载权限，在其它下载列表调用时会显示设置了下载权限的资源标题。',
	'unlimited' => '开放下载(无限制)',
	'filename' => '自定义文件名：',
	'filename_title' => '单独定义当前内容页静态文件名，不支持变量，含路径和完整文件<br />名，如：html/company_profile.html，不填写则使用当前频道中<br />定义的 &quot;内容页静态规则&quot; 进行命名。启用真静态时有效。',
	'click' => '浏览次数：',
	'count' => '下载次数：',
	'money' => '消费金钱：',
	'money_title' => '下载该资源所需的金钱数(单位：元)。用户只需购买一次将永久可以下载该资源。',
	'integral' => '消费积分：',
	'integral_title' => '下载该资源所需要的积分，在用户帐户扣除相应的积分后即可永久下载该资源。',
	'buyuser' => '已购买的会员：',
	'buyuser_title' => '已经购买该资源下载权限的会员ID，用英文逗号隔开。',
	'sort' => '排序：',
	'sort_title' => '部分模板会使用该字段进行排序，根据用户需要时按<br />该字段进行降序(值越大越靠前)排列。默认建议全部<br />设置为0，部分需要排在前面的可以设置为1或更大值。',
	'addtime' => '发布日期：',
	
	'not_rename' => '无法重命名。',
	'nodata' => '数据不存在或者已经删除。',
	
	'information' => array(
		'文件过大时请采用FTP上传至服务器后填写文件地址，本页适用于上传10M以下的文件(视服务器及网络状况而定)；',
		'当前服务器上传限制：',
		'网站全局设置中允许上传的文件类型：',
	),
);