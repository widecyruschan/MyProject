
{:include file='component_header.tpl':}
<div class="box">
	<div class="frame_side">
		<div class="left_head"></div>
		<div class="menu_box">
			<ol class="menu_top"></ol>
			{:foreach article::data(2,30,0,0,$a['category_split']['end_id']) as $c:}
			<ol class="menu_middle">
				<img src="{:$web['path']:}images/common2.gif" width="9" height="15" />
				<a href="{:$c['URL']:}">{:$c['title']:}</a>
			</ol>
			{:/foreach:}
			<ol class="menu_bottom"></ol>
		</div>
		<div class="left_footer"></div>
	</div>
	<div class="frame_main">
		<div class="titlebar">
			<ol class="title">{:cut_str($a['title'],40,''):}</ol>
			<ol class="location">{:$lang['page']['location']:}<a href="./">{:$lang['page']['home']:}</a> &gt;&gt; <a href="{:misc::get_url('channel',1,$mycms['channel_id']):}">{:$a['channel']:}</a> &gt;&gt; {:$lang['page']['main']:}</ol>
		</div>
		<div class="content_common">{:$a['content']:}</div>
		
		{:*<!--内容分页、启用了内容分页时显示，可以删除 -->*:}
		{:if $a['page'] > 0:}{:include file='component_page_style.tpl':}{:/if:}
	</div>
</div>
{:include file='component_footer.tpl':}
</body>
</html>