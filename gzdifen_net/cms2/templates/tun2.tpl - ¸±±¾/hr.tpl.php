<? if(!defined('IN')) exit('Access Denied');?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title><?=$title?>   <?=$columnsname?>   <?=$web_name?></title><meta name="Keywords" content="<?=$keywords?>" /><meta name="Description" content="<?=$description?>" /><link rel="stylesheet" type="text/css" href="<?=$webdir?>templates/<?=$skindir?>/css/style.css"/><link rel="stylesheet" type="text/css" href="/templates/tun2/css/style.css"/><script type="text/javascript" src="<?=$webdir?>templates/<?=$skindir?>/js/jquery-1.3.2.min.js"></script><script type="text/javascript" src="<?=$webdir?>templates/<?=$skindir?>/js/jquery.tools.min.js"></script><script type="text/javascript" src="<?=$webdir?>templates/<?=$skindir?>/js/custom.js"></script></head><body>    <div id="header"><div id="logo"><a href="main.php"><img src="<?=$webdir?>templates/<?=$skindir?>/images/logo1.png" width="307" height="47" /></a></div >      <div id="nav">|<!--顶级菜单-->                    <? $tun2array=navigation(1)?><? if(is_array($tun2array)) for($i=0; $i<count($tun2array); $i++) { ?>&nbsp;<a href="<?=$tun2array[$i]["classurl"]?>"><?=$tun2array[$i]["classname"]?></a>&nbsp;|<? } ?><!--顶级菜单结束--></div><div id="headerline"> </div>    </div><div id="wrap">    <div id="banner">          <?php                  $db1->query("SELECT * FROM `".$DB_dbprefix."columns` where id=".$_GET['id']."");    $db1->next_record();    if ($db1->Record["bid"]==0){    $subtitle=$db1->Record["subtitle"];    $description=$db1->Record["description"];    $imgID=$_GET['id'];    }else{     $db2->query("SELECT * FROM `".$DB_dbprefix."columns` where id=".$db1->Record["bid"]."");    $db2->next_record();        if ($db2->Record["bid"]==0){            $imgID=$db1->Record["bid"];            $subtitle=$db1->Record["subtitle"];            $description=$db1->Record["description"];        }else{            $subtitle=$db2->Record["subtitle"];            $description=$db2->Record["description"];            $imgID=$db2->Record["bid"];        }                }                              $db->query("SELECT * FROM `".$DB_dbprefix."slide` where classID=".$imgID." ORDER BY `swith` DESC  LIMIT 0 , 8");                  $inximg=0;                  while ( $db->next_record( ) ){                  if($inximg==0){                  $Inximages=$db->Record["images"];                  $addressURL=$db->Record["address"];                  $ImagesNmae=$db->Record["name"];                  }else{                  $Inximages=$Inximages."|".$db->Record["images"];                  $addressURL=$addressURL."|".$db->Record["address"];                  $ImagesNmae=$ImagesNmae."|".$db->Record["name"];                  }                 $inximg++;                  }                  ?>                    <SCRIPT type=text/javascript src="<?=$webdir?>templates/<?=$skindir?>/images/swfobject_source.js"></SCRIPT> <DIV id="bannerTop"> <SCRIPT type=text/javascript> var s1 = new SWFObject("<?=$webdir?>templates/<?=$skindir?>/images/focusFlash_fp.swf", "mymovie1", "843", "232", "5", "#fff"); s1.addParam("wmode", "transparent"); s1.addParam("AllowscriptAccess", "sameDomain"); s1.addVariable("bigSrc", "<?=$Inximages?>"); s1.addVariable("href", "<?=$addressURL?>"); s1.addVariable("txt", "<?=$ImagesNmae?>"); s1.addVariable("width", "-100"); s1.addVariable("height", "400"); s1.write("bannerTop"); </SCRIPT>                             </div></div><div id="center"><div class="f_l">  <!--position-->  <!--end position-->  <div id="filters">    <div class="panelWrapper">      <div class="panelBody">        <div class="filterBox">          <ul class="ul_filters">            <? $tun2array=navigation(1)?>            <? if(is_array($tun2array)) for($i=0; $i<count($tun2array); $i++) { ?>            <li class="ledtmenu<?=$i+1?>" onclick="showsubmenu(<?=$tun2array[$i]["id"]?>)">              <?=$tun2array[$i]["classname"]?>              <ul  id="Submenu<?=$tun2array[$i]["id"]?>" style="display:none">                <? $Subarray=Subnavigation($tun2array[$i]["id"])?>                <? if(is_array($Subarray)) for($j=0; $j<count($Subarray); $j++) { ?>                <li class="submenu1" onmouseover="showsubmenu(<?=$Subarray[$j]["id"]?>);this.className='submenu2';" onmouseout="showsubmenu(<?=$Subarray[$j]["id"]?>);this.className='submenu1'"><div class="subs"><a href="<?=$Subarray[$j]["classurl"]?>" title="<?=$Subarray[$j]["classname"]?>">                  <?=$Subarray[$j]["classname"]?>                </a></div> <ul id="Submenu<?=$Subarray[$j]["id"]?>" style="display:none"><? $Subsarray=Subsnavigation($Subarray[$j]["id"])?><? if(is_array($Subsarray)) for($k=0; $k<count($Subsarray); $k++) { ?><li class="submenu1" onmouseover="this.className='submenu2'" onmouseout="this.className='submenu1'"><a href="<?=$Subsarray[$k]["classurl"]?>" title="<?=$Subsarray[$k]["classname"]?>"><?=$Subsarray[$k]["classname"]?></a></li><? } ?>                                    </ul>                </li>                <? } ?>              </ul>            </li>            <? } ?>          </ul>        </div>        <!--end filterBox-->      </div>    </div>    <!--end panelWrapper-->  </div>  <!--end filters-->  <!--end primary--></div><div  class="f_r">		 <div class="main">	<img src="<?=$webdir?>templates/<?=$skindir?>/images/joinUS.jpg" width="500" height="249" /><div class="viewarticle">                <ul>                <!--栏目调用，每页显示15条内容，按ID排序，降序--><? $tun2array=classpage(4,1,1)?><? if(is_array($tun2array)) for($i=0; $i<count($tun2array); $i++) { ?><li><div class="jointitle"><a href="<?=$tun2array[$i]["url"]?>" title="<?=$tun2array[$i]["title"]?>"><span class="jointitleCn"><?=$tun2array[$i]["title"]?></span><span class="jointitleEn"><?=$tun2array[$i]["Entitle"]?></span></a></div><div class="joincontent"><?=$tun2array[$i]["contents"]?></div></li><? } ?></ul>                <!--栏目调用结束--><div class="paginatorWrapper"><?=showpage(5,"page","curr")?>         </div></div> </div>			</div></div></div><?php include template("footer.htm"); ?>