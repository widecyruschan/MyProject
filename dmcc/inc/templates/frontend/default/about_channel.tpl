{:$a = array_shift(article::data(2,1,0,$mycms['channel']['id'])):}
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <title>{:$mycms['channel']['seotitle']:}</title>
    <meta name="keywords" content="{:$mycms['channel']['seokey']:}" />
    <meta name="description" content="{:$mycms['channel']['seodescr']:}" />
    <meta name="copyright" content="2009-2011 MYCMS {:$mycms['version']:}" />
    <link href="/inc/templates/frontend/default/style/tg_style.css" rel="stylesheet" type="text/css" />
    <link href="/inc/templates/frontend/default/style/news.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript" src="{:$web['path']:}script/jquery-1.4.2.min.js"></script>
    <script type="text/javascript" src="{:$web['path']:}script/scrolltopcontrol.js"></script>
</head>
<body>
    <div class="topHeader">
      <div id="header">
        <div id="logo"><a href="/"><img src="{:$web['logo']:}" width="365" height="62" /></a></div>
        


        <div class="top_nav" id="menuNav">{:foreach channel::navigation() as $n:}<a href="{:$n['URL']:}">{:$n['title']:}
          <div class="navBg"></div>
          </a>{:/foreach:}</div>
      </div>
    </div>
    	<div class="frame_main">
    		<div class="titlebar">
    			<ol class="title">{:cut_str($a['title'],40, ''):}</ol>
    			<ol class="location">{:$lang['page']['location']:}<a href="./">{:$lang['page']['home']:}</a> &gt;&gt; <a href="{:misc::get_url('channel',1,$mycms['channel_id']):}">{:$mycms['channel']['title']:}</a> &gt;&gt; {:$a['title']:}</ol>
    		</div>
    		<div class="content_common">
    			{:if $a['page'] > 0:}{:$a['content'] = misc::content_page($a['content'],$a['page'],$a['id']):}{:/if:}{:*<!--内容分页，如果不需要对内容进行分页时可以删除-->*:}
    			{:$a['content']:}		
    		</div>
    		
    		{:*<!--内容分页、启用了内容分时显示，可以删除 -->*:}
    		{:if $a['page'] > 0:}{:include file='component_page_style.tpl':}{:/if:}
    	</div>
    </div>
    {:include file='component_footer.tpl':}
</body>
</html>