<? if(!defined('IN')) exit('Access Denied');?><!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"><html xmlns="http://www.w3.org/1999/xhtml"><head><meta http-equiv="Content-Type" content="text/html; charset=utf-8" /><title><?=$title?>   <?=$columnsname?>   <?=$web_name?></title><meta name="Keywords" content="<?=$keywords?>" /><meta name="Description" content="<?=$description?>" /><link rel="stylesheet" type="text/css" href="<?=$webdir?>templates/<?=$skindir?>/css/style.css"/><link rel="stylesheet" type="text/css" href="/templates/tun2/css/style.css"/><script type="text/javascript" src="<?=$webdir?>templates/<?=$skindir?>/js/jquery-1.3.2.min.js"></script><script type="text/javascript" src="<?=$webdir?>templates/<?=$skindir?>/js/jquery.tools.min.js"></script><script type="text/javascript" src="<?=$webdir?>templates/<?=$skindir?>/js/custom.js"></script></head><body>    <div id="header"><div id="logo"><a href="<?=$webdir?>"><img src="<?=$webdir?>templates/<?=$skindir?>/images/logo1.png" width="307" height="47" /></a></div >      <div id="nav">|<!--顶级菜单-->                    <? $tun2array=navigation(1)?><? if(is_array($tun2array)) for($i=0; $i<count($tun2array); $i++) { ?>&nbsp;<a href="<?=$tun2array[$i]["classurl"]?>"><?=$tun2array[$i]["classname"]?></a>&nbsp;|<? } ?><!--顶级菜单结束--></div><div id="headerline"> </div>    </div><div id="wrap"><!--end header--><!--end nav--> <!--template "header.htm"-->     <div id="banner">          <?php                  $db1->query("SELECT * FROM `".$DB_dbprefix."columns` where id=".$_GET['id']."");    $db1->next_record();    if ($db1->Record["bid"]==0){    $subtitle=$db1->Record["subtitle"];    $description=$db1->Record["description"];    $imgID=$_GET['id'];    }else{    $imgID=$db1->Record["bid"];    $subtitle=$db1->Record["subtitle"];    $description=$db1->Record["description"];    }                              $db->query("SELECT * FROM `".$DB_dbprefix."slide` where classID=".$imgID." ORDER BY `swith` DESC  LIMIT 0 , 8");                  $inximg=0;                  while ( $db->next_record( ) ){                  if($inximg==0){                  $Inximages=$db->Record["images"];                  $addressURL=$db->Record["address"];                  $ImagesNmae=$db->Record["name"];                  }else{                  $Inximages=$Inximages."|".$db->Record["images"];                  $addressURL=$addressURL."|".$db->Record["address"];                  $ImagesNmae=$ImagesNmae."|".$db->Record["name"];                  }                 $inximg++;                  }                  ?>                    <SCRIPT type=text/javascript src="<?=$webdir?>templates/<?=$skindir?>/images/swfobject_source.js"></SCRIPT> <DIV id="bannerTop"> <SCRIPT type=text/javascript> var s1 = new SWFObject("<?=$webdir?>templates/<?=$skindir?>/images/focusFlash_fp.swf", "mymovie1", "843", "232", "5", "#fff"); s1.addParam("wmode", "transparent"); s1.addParam("AllowscriptAccess", "sameDomain"); s1.addVariable("bigSrc", "<?=$Inximages?>"); s1.addVariable("href", "<?=$addressURL?>"); s1.addVariable("txt", "<?=$ImagesNmae?>"); s1.addVariable("width", "-100"); s1.addVariable("height", "400"); s1.write("bannerTop"); </SCRIPT>                             </div></div><div id="center"><div class="f_r"><!--end panelWrapper--><!--end panelWrapper--><!--end panelWrapper--><!--end panelWrapper--><div id="primaryFiltered1">        <h1 style="border-bottom: none;"><?=$title?></h1>        <div class="filterControls"><!--end page-->       <div class="paginatorWrapper">           作者：<?=$actor?>  浏览数：<?=$hits?>  更新时间：<?=$date?>        </div>    </div><!--end filterControls-->        <ul class="filterProducts_listing">                <li class="listingBox01">                  <div class="listingBox01_body clearfix">             <div class="text">              <?=$content?>             </div>            </div>        </li><!--end listingBox01-->             </ul>        <div class="filterControls">        <div class="back_next"><li><span>上一篇：</span><a href="<?=$back_url?>" title="<?=$back_title?>"><?=$back_title?></a></li>                       <li><span>下一篇：</span><a href="<?=$next_url?>" title="<?=$next_title?>"><?=$next_title?></a></li></div><!--end page-->    </div> </div></div>    <div class="f_l">         <!--position-->             <div class="position"><ul class="clearfix">                    					<li class="last"><span class="home_icon"><?=$location?></span></li>                    				</ul> <!--div class="cartWrapper"><a href="cosulmeu.php" title="Cosul dmv." rel="nofollow">购物车:</a><span>0 个产品</span></div--></div><!--end position-->            <div id="filters">    <div class="panelWrapper">      <div class="panelBody">                      <div class="filterBox">                <ul class="ul_filters">                                  <? $tun2array=navigation(3)?><? if(is_array($tun2array)) for($i=0; $i<count($tun2array); $i++) { ?><li><a href="<?=$tun2array[$i]["classurl"]?>" title="<?=$tun2array[$i]["classname"]?>"><?=$tun2array[$i]["classname"]?></a></li><? } ?>                                                                            </ul>            </div><!--end filterBox-->            <div class="filterBox">              <ul class="ul_filters">                <? $tun2array=columns($columnsid,10,0,3,1)?>                      <? if(is_array($tun2array)) for($i=0; $i<count($tun2array); $i++) { ?>          <li class="top<?=$tun2array[$i]["num"]?>"><a href="<?=$tun2array[$i]["url"]?>" title="<?=$tun2array[$i]["title"]?>"><?=cnsubstr($tun2array[$i]["title"],8)?></a></li>                      <? } ?>                                    </ul>            </div><!--end filterBox-->        </div>    </div><!--end panelWrapper--></div><!--end filters-->  <!--end primary--> </div>                </div><?php include template("footer.htm"); ?>