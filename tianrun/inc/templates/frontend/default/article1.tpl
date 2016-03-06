  <div class="zp_list">
    {:foreach article::data(1,9,0,$mycms['channel']['id'],1) as $a:}
    <div class="zp_box">
      <div class="pop_tit"><span class="p_tit1" title="{:$a['title']:}">{:$a['title_format']:}</span><br />
        <span class="p_tit2">{:$a['channelEn']:}</span></div>
      <a href="javascript:zpConShow('{:$a['URL']:}');"><img src="{:$a['picture'][0]:} " /></a></div>
      {:/foreach:}
  </div>
{:include file='component_page_style.tpl':}