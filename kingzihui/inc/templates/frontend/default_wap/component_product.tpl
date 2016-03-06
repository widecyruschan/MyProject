<div class="left_head"></div>
<div class="menu_box">
	<ol class="menu_top"></ol>
	{:foreach category::data(2,$mycms['channel_id']) as $n:}
	<ol class="menu_middle">
		{:str_repeat('　　',$n['level']-1):}{:* /// 等级缩进，添加与等级数相同的空格字符 *:}
		{:if $n['level'] == 1:}<img src="{:$web['path']:}images/common.gif" width="9" height="15" />
		{:else:}<img src="{:$web['path']:}images/common2.gif" width="9" height="15" />{:/if:}
		<a href="{:$n['URL']:}">{:$n['title']:}</a>
	</ol>
	{:/foreach:}
	<ol class="menu_bottom"></ol>
</div>
<div class="left_footer"></div>