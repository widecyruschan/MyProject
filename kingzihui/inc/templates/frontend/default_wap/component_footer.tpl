
<div class="footer">
  <div class="main">
    <div id="footerLogo"><img src="/inc/templates/frontend/default/images/footer_logo.jpg" width="180" height="110" /></div>
    <div class="footerLinks"><span class="tit"></span>
      <div class="linksList">
        <ul>{:foreach misc::links(3,0) as $n:}<li><a href="{:$n['weburl']:}" target="_blank" title="{:$n['webname']:}">{:$n['webname']:}</a></li>{:/foreach:}</ul>
      </div>
    </div>
    <div class="footerContact"><span class="tit">&nbsp;</span><span class="add">{:$web['address']:}</span> <span class="tel">&nbsp;</span> <span class="yellow">{:$web['email'][0]:}</span></div>
  </div>
</div>


