<? if(!defined('IN')) exit('Access Denied');?><div class="left">                        <div class="menubox">                                  <ul class="menulist">                                  <? $PHPCMSarray=navigation(1)?><? if(is_array($PHPCMSarray)) for($i=0; $i<count($PHPCMSarray); $i++) { ?><li  class="ledtmenu"><a href="<?=$PHPCMSarray[$i]["url"]?>" title="<?=$PHPCMSarray[$i]["title"]?>"><?=$PHPCMSarray[$i]["title"]?></a> <ul class="ul_filters"> <?php $PHPCMSSubarray=Subnavigation($PHPCMSarray[$i]["ids"]);  if(is_array($PHPCMSSubarray)) for($j=0; $j<count($PHPCMSSubarray); $j++) { ?><li><a href="<?php echo $PHPCMSSubarray[$j]["classurl"]?>" title="<?php echo $PHPCMSSubarray[$j]["titles"]?>"><?php echo $PHPCMSSubarray[$j]["titles"]?></a></li><?php } ?>                                                                           </ul></li><? } ?>                                                                    </ul>                         </div>                   </div>