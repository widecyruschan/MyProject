<script  src="/inc/templates/frontend/default/script/swfobject_source.js" type=text/javascript></script>
<div id="fullScreen"></div> <script type=text/javascript>
   var s2 = new SWFObject("/flash/NavTop.swf", "index", "100%", "200", "10", "#ffffff");
   s2.addParam("wmode", "transparent");
   s2.addParam("AllowscriptAccess", "sameDomain");
   s2.write("fullScreen");
  </script>	
  
  <!--div id="focusBar" > <a href="javascript:void(0)" class="arrL" onclick="prePage()">&nbsp;</a><a href="javascript:void(0)" class="arrR" onclick="nextPage()">&nbsp;</a>{:$i=1:}
  <ul class="mypng">{:foreach photo::data(1,3,0,32) as $pic:}
    <li id="focusIndex{:$i:}" style="{:if $i==1:}display:block;{:/if:}background:url({:$pic['picture'][0]:}) repeat;">
      <div class="focusL"><a href="{:$pic['sourceurl']:}"><img src="/{:$pic['picture'][1]:}" width="480px" height="175px" /></a></div>
      <div class="focusR"><a href="{:$pic['sourceurl']:}"><img src="/{:$pic['picture'][2]:}" width="480px" height="175px" /></a></div>
      {:$i=$i+1:}
    </li>{:/foreach:}
  </ul>
</div-->