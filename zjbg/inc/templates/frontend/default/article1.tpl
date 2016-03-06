  <div class="zp_list">
    {:foreach article::data(1,9,0,$mycms['channel']['id'],1,0,0,0,0,1) as $a:}
    <div class="zp_box" onclick="zpConShow('{:$a['URL']:}')">
      <div class="pop_tit"><span class="p_tit1" title="{:$a['title']:}">{:$a['title_format']:}</span><br />
        <span class="p_tit2">{:$a['channelEn']:}</span></div>
     <img src="{:$a['picture'][0]:}"/></div>
      {:/foreach:}
  </div>
{:include file='component_page_style.tpl':}