<div class="pages">{:if $page_data['total_page'] > 1:}

	{:if $page_data['page'] > 1:}
	<a class="page" href="{:$page_data['first_url']:}">{:$lang['common']['first']:}</a>
	{:else:}
	<a class="page">{:$lang['common']['first']:}</a>
	{:/if:}
	{:foreach $page_data['number'] as $i => $n:}
		{:if $i != $page_data['page']:}<a href="{:$n:}" class="page">{:$i:}</a>
		{:else:}<a  class="page">{:$i:}</a>{:/if:}
	{:/foreach:}	
	{:if $page_data['page'] < $page_data['total_page']:}
	<a href="{:$page_data['next_url']:}" class="page">{:$lang['common']['next']:}</a>
	{:else:}
	<a class="page">{:$lang['common']['next']:}</a>
	{:/if:}{:/if:}
</div>
	
