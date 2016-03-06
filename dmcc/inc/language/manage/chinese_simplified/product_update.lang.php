<?phpdefined('ADMIN_PATH') or die('Access Denied.');// @后台页面语言包（简体中文）$language['page'] = array(	'title' => array('添加商品','修改商品'),	'add_upload' => '添加图片上传',	'del_upload' => '删除图片上传',	'section' => array('第','张','裁切：宽','× 高','添加水印','图片裁切及水印缺省值设置'),	'basic' => '基本信息',	'advanced' => '高级参数',		'channel' => '所属频道：',	'channel_add' => '添加频道',	'select_channel' => '请选择频道',	'category' => '所属栏目：',	'select_category' => '请选择栏目',	'category_add' => '添加栏目',	'full_title' => '完整标题：',	'brief' => '简略标题：',	'brief_title' => '非必要，不填写则采用完整标题。不是所有模板都用到该字<br />段，该项对部分模板布局可能有用，比如避免系统自动截断<br />过长的标题时，一般在网站首页或其它不足以显示完整标题<br />的位置调用。',	'attribute' => '标题属性：',	'color' => '标题颜色',	'bold' => '字体加粗',	'virtual' => array('商品类型：','普通商品','虚拟商品'),	'virtual_title' => '虚拟商品：无实物性质，网上发布时默认无法选择物流运输的商<br />品。可由虚拟货币或现实货币交易买卖的虚拟商品或者虚拟社会<br />服务等，如：QQ号、充值卡号、游戏装备、空间、域名等。在<br />购买时不显示配送方式、收货人信息等流程，不计算运费、保价<br />费、手续费、包装等费用。',	'model' => '商品型号：',	'market' => '市 场 价：',	'yuan' => '元',	'price' => '销 售 价：',	'price_title' => '优惠价，当前销售价格。',	'units' => '计量单位：',	'select' => '选择',	'inventory' => '库 存 数：',	'sales' => '已 售 出：',		'brand' => '品牌：',	'coding' => '商品编码：',	'speci' => '商品规格：',	'optional' => '可选颜色：',	'optional_title' => '可供购买者选择的颜色，多个颜色之间用逗号隔开。',	'template' => '自定义模板文件：',	'template_title' => '模板文件名称，不含后缀名。不填写将使用当前栏目里定义的内页模板文件名。<br />如果所属分类中全部没有定义模板文件，将采用当前页程序文件名作为缺省值。',	'comment' => array('是否允许评论：','允许评论','禁止评论'),	'recom' => array('是否推荐：','推荐','不推荐'),	'published' => array('是否发布：','立即发布','保存草稿'),	'published_title' => '未发布的商品不会在前台页面中显示。',	'status' => array('销售状态：','销售中','停止销售'),	'status_title' => '停止销售的商品会在前台页面中显示，但禁止用户订购。',	'audit' => array('审核状态：','通过','待审'),	'permission' => '阅读权限：',	'permission_title' => '对该商品设置阅读权限，在其它商品列表<br />调用时会显示设置了阅读权限的商品标题。',	'unlimited' => '开放浏览(无限制)',	'filename' => '自定义文件名：',	'filename_title' => '单独定义当前内容页静态文件名，不支持变量，含路径和完整文件<br />名，如：html/main_products.html，不填写则使用当前频道中定<br />义的 &quot;内容页静态规则&quot; 进行命名。启用真静态时有效。',	'click' => '浏览次数：',	'favorite' => '收藏人数：',	'money' => '消费金钱：',	'money_title' => '浏览该商品所需的金钱数(单位：元)。用户只需购买一次将永久可以浏览该内容。',	'integral' => '消费积分：',	'integral_title' => '浏览该商品所需要的积分，在用户帐户扣除相应的积分后即可永久浏览该商品内页。',	'buyuser' => '已购买的会员：',	'buyuser_title' => '已经购买该商品浏览权限的会员ID，用英文逗号隔开。',	'sort' => '自定义排序：',	'sort_title' => '部分模板会使用该字段进行排序，根据用户需要时按<br />该字段进行降序(值越大越靠前)排列。默认建议全部<br />设置为0，部分需要排在前面的可以设置为1或更大值。',	'addtime' => '发布日期：',			'tag' => 'TAG标签：',	'tag_title' => '用逗号分开(全角、半角逗号均可)，单个标签不得大于 12 个字符。',	'upload' => '商品图片：',	'upload_title' => 'n 为索引值：<br />0第一张,1第二张,2第三张,依此类推。<br />第一张图片一般只用来作为缩略图',	'cut' => '裁切及水印：',	'keyword' => 'SEO关键字：',	'introduction' => '商品简要介绍：',	'introduction_title' => '如果填写，会被用来作为SEO描述内容，否则将<br />从详细介绍中截取。部分模板可能会用到该字段。',	'make' => array('发布选项：','生成内容页HTML静态文件'),	'page' => array('内容分页：','不分页','手动分页','自动分页，每页大约字符数：'),	'page_title' => '手动分页：请直接点击编辑器工具栏中的 &quot;插入分页符&quot; 即可<br />自动分页：指定每页要显示的字符数(含HTML标记)，这个字符值只是一个<br />大约值，自动分页会在当前页所有HTML标签闭合后且最接近该字符值的地<br />方插入分页符，尽可能保证表格等标签不会被分割、避免出现乱码等情况。',	'content' => '商品详细介绍：',			'detect' => array('请选择商品所属栏目。','请填写商品完整标题。'),	'nodata' => '数据不存在或者已经删除。',		'notes' => array(		'图片裁切及水印功能需 GD 2.0.1 或更高版本支持；',		'裁切会对图片大小进行智能分析，程序将最少量切去图片边缘部分后压缩到指定大小以保证图片不失真、不变形。',	),);