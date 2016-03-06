
<div class="zpConFullScreen"><img src="/inc/templates/frontend/default/images/mainbg.jpg" width="100%"/></div>
<div class="topHeader">
  <div id="header">
    <div id="logo"><a href="/"><img src="{:$web['logo']:}" width="433" height="62" /></a></div>
    <div class="top_nav" id="menuNav">{:foreach channel::navigation() as $n:}<a href="{:$n['URL']:}">{:$n['title']:}
      <div class="navBg"></div>
      </a>{:/foreach:}</div>
  </div>
</div>
