<? if(!defined('IN')) exit('Access Denied');?><?php include template("header.htm"); ?>          <div id="main">              <div id="content">                   <div class="right">                              <div class="subwrapbox">                                     <div class="text">                                        <div class="info">                                           <h1><?=$title?></h1>                                           <p>更新时间:<?=$time?>　　浏览次数:<?=$hits?></p>                                        </div>                                        <div class="content">                                        <?=$articles_content?>                                        </div>                                     </div>                              </div>                   </div>                                      <div class="left">                        <div class="menubox">                                  <div class="top"></div>                                  <ul class="menulist">                                  <? $PHPCMSarray=navigation(1)?><? if(is_array($PHPCMSarray)) for($i=0; $i<count($PHPCMSarray); $i++) { ?><li  class="ledtmenu"><a href="<?=$PHPCMSarray[$i]["url"]?>" title="<?=$PHPCMSarray[$i]["title"]?>"><?=$PHPCMSarray[$i]["title"]?></a> <ul class="ul_filters"> <?php $PHPCMSSubarray=Subnavigation($PHPCMSarray[$i]["ids"]);  if(is_array($PHPCMSSubarray)) for($j=0; $j<count($PHPCMSSubarray); $j++) { ?><li><a href="<?php echo $PHPCMSSubarray[$j]["classurl"]?>" title="<?php echo $PHPCMSSubarray[$j]["titles"]?>"><?php echo $PHPCMSSubarray[$j]["titles"]?></a></li><?php } ?>                                                                           </ul></li><? } ?>                                                                    </ul>                                <div class="bot"></div>                         </div>                   </div>                                 </div>          </div><?php include template("footer.htm"); ?>