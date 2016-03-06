<div class="subFullScreen"></div>
<div class="topHeader">
  <div id="header">
    <ul class="top_nav" id="nav">{:foreach channel::navigation() as $i => $n:}<li class="current_page_item" {:if $i==3:}style="margin-left: 165px;"{:/if:}><a href="{:$n['URL']:}">{:$n['title']:}
      </a><ul class="children"> {:foreach channel::navigation($n['id']) as $s:}<li class="page_item"><a href="{:$s['URL']:}" target="{:$s['target']:}"  >{:$s['title']:}</a><ul class="children"> {:foreach channel::navigation($s['id']) as $a:}<li class="page_item"><a href="{:$a['URL']:}" target="{:$a['target']:}"  >{:$a['title']:}</a></li>{:/foreach:}</ul></li>{:/foreach:}</ul></li>{:/foreach:}</ul>
      
      
  </div>
</div>