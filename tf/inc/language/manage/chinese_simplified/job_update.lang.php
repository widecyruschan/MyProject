<?php

defined('ADMIN_PATH') or die('Access Denied.');

// @后台页面语言包（简体中文）

$language['page'] = array(
	'title' => array('发布招聘内容','修改招聘内容'),
	
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
	'full_title' => '完整标题：',
	'brief' => '简略标题：',
	'brief_title' => '不填写则采用完整标题。该项对部分模板非常有用，<br />一般在网站首页或其它不足以显示完整标题的位置调用。',
	'attribute' => '标题属性：',
	'color' => '标题颜色',
	'bold' => '字体加粗',
	'tag' => 'TAG标签：',
	'tag_title' => '用逗号分开(全角、半角逗号均可)，单个标签不得大于 12 个字符。',
	'upload' => '内容图片：',
	'upload_title' => 'n 为索引值：<br />0第一张,1第二张,2第三张,依此类推。<br />第一张图片一般只用来作为缩略图',
	'cut' => '裁切及水印：',
	'keyword' => 'SEO关键字：',
	'introduction' => '内容摘要：',
	'introduction_title' => '如果填写，会被用来作为SEO描述内容，否则将<br />从详细内容中截取。部分模板可能会用到该字段。',
	'make' => array('发布选项：','生成内容页HTML静态文件'),
	'page' => array('内容分页：','不分页','手动分页','自动分页，每页大约字符数：'),
	'page_title' => '手动分页：请直接点击编辑器工具栏中的 &quot;插入分页符&quot; 即可<br />自动分页：指定每页要显示的字符数(含HTML标记)，这个字符值只是一个<br />大约值，自动分页会在当前页所有HTML标签闭合后且最接近该字符值的地<br />方插入分页符，尽可能保证表格等标签不会被分割、避免出现乱码等情况。',
	'content' => '招聘内容：',
	
	'author' => '招聘作者：',
	'source' => '招聘来源：',
	'sourceurl' => '来源网址：',
	'template' => '自定义模板文件：',
	'template_title' => '模板文件名称，不含后缀名。不填写将使用当前栏目里定义的内页模板文件名。<br />如果所属分类中全部没有定义模板文件，将采用当前页程序文件名作为缺省值。',
	'comment' => array('是否允许评论：','允许评论','禁止评论'),
	'recom' => array('是否推荐：','推荐','不推荐'),
	'published' => array('是否发布：','立即发布','保存草稿'),
	'audit' => array('审核状态：','通过','待审'),
	'permission' => '阅读权限：',
	'permission_title' => '对该招聘内容设置阅读权限，在其它招聘列<br />表调用时会显示设置了阅读权限的招聘标题。',
	'unlimited' => '开放浏览(无限制)',
	'filename' => '自定义文件名：',
	'filename_title' => '单独定义当前内容页静态文件名，不支持变量，含路径和完整<br />文件名，如：html/about.html，不填写则使用当前频道中定<br />义的 &quot;内容页静态规则&quot; 进行命名。启用真静态时有效。',
	'click' => '浏览次数：',
	'money' => '消费金钱：',
	'money_title' => '浏览该招聘所需的金钱数(单位：元)。用<br />户只需购买一次将永久可以浏览该内容。',
	'integral' => '消费积分：',
	'integral_title' => '浏览该招聘所需要的积分，在用户帐户扣<br />除相应的积分后即可永久浏览该招聘内页。',
	'buyuser' => '已购买的会员：',
	'buyuser_title' => '已经购买该内容浏览权限的会员ID，用英文逗号隔开。',
	'sort' => '自定义排序：',
	'sort_title' => '部分模板会使用该字段进行排序，根据用户需要时按<br />该字段进行降序(值越大越靠前)排列。默认建议全部<br />设置为0，部分需要排在前面的可以设置为1或更大值。',
	'addtime' => '发布日期：',
	
	'detect' => array('请选择招聘所属栏目。','请填写招聘完整标题。'),
	'nodata' => '数据不存在或者已经删除。',

	'notes' => array(
		'图片裁切及水印功能需 GD 2.0.1 或更高版本支持；',
		'裁切会对图片大小进行智能分析，程序将最少量切去图片边缘部分后压缩到指定大小以保证图片不失真、不变形。',
	),
);