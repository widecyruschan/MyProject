<? if(!defined('IN')) exit('Access Denied');?><?php include template("header.htm"); ?><div id="banner">          <?php                  $db1->query("SELECT * FROM `".$DB_dbprefix."columns` where id=".$_GET['id']."");    $db1->next_record();    if ($db1->Record["bid"]==0){    $subtitle=$db1->Record["subtitle"];    $description=$db1->Record["description"];    $imgID=$_GET['id'];    }else{     $db2->query("SELECT * FROM `".$DB_dbprefix."columns` where id=".$db1->Record["bid"]."");        if ($db2->Record["bid"]==0){            $subtitle=$db2->Record["subtitle"];            $description=$db2->Record["description"];            $imgID=$db2->Record["bid"];        }else{            $imgID=$db1->Record["bid"];            $subtitle=$db1->Record["subtitle"];            $description=$db1->Record["description"];        }                }                              $db->query("SELECT * FROM `".$DB_dbprefix."slide` where classID=".$imgID." ORDER BY `swith` DESC  LIMIT 0 , 8");                  $inximg=0;                  while ( $db->next_record( ) ){                  if($inximg==0){                  $Inximages=$db->Record["images"];                  $addressURL=$db->Record["address"];                  $ImagesNmae=$db->Record["name"];                  }else{                  $Inximages=$Inximages."|".$db->Record["images"];                  $addressURL=$addressURL."|".$db->Record["address"];                  $ImagesNmae=$ImagesNmae."|".$db->Record["name"];                  }                 $inximg++;                  }                  ?>                    <SCRIPT type=text/javascript src="<?=$webdir?>templates/<?=$skindir?>/images/swfobject_source.js"></SCRIPT> <DIV id="bannerTop"> <SCRIPT type=text/javascript> var s1 = new SWFObject("<?=$webdir?>templates/<?=$skindir?>/images/focusFlash_fp.swf", "mymovie1", "843", "232", "5", "#fff"); s1.addParam("wmode", "transparent"); s1.addParam("AllowscriptAccess", "sameDomain"); s1.addVariable("bigSrc", "<?=$Inximages?>"); s1.addVariable("href", "<?=$addressURL?>"); s1.addVariable("txt", "<?=$ImagesNmae?>"); s1.addVariable("width", "-100"); s1.addVariable("height", "400"); s1.write("bannerTop"); </SCRIPT>                             </div></div><div id="center">  <div id="centerbook">    <div class="gestbook">      <h2>现在联系越北</h2>      <span id="inxTEl">TEL: <?=$web_tel?> </span>      <span id="inxContest">Fax: <?=$web_fax?> </span>      <span id="inxContest">Email: <?=$web_email?> </span>      <span id="inxContest">Msn: <?=$web_Msn?> </span>      <span id="inxContest">QQ: <?=$web_QQ?> </span> </div>  <div class="gestbook_r">    <form id="quickcontact" method="post" action="<?=$webdir?>plug/book.php" name="Contact">      <table width="95%" border="0" cellspacing="2" cellpadding="0">        <tr>          <td>您的名称：</td>          <td><input id="Full_Name" size="20" name="name" type="text"" value="您的姓名"  onblur="if(this.value==''){this.value='您的姓名'}"    onfocus="this.value=''"/>          <span class="from_note">*</span></td>          <td width="80">您的公司：</td>          <td><input id="Company" size="20" name="Company" type="text"" value="您的公司"  onblur="if(this.value==''){this.value='您的公司'}"    onfocus="this.value=''"/>          <span class="from_note">*</span></td>        </tr>        <tr>          <td>您的电话：</td>          <td><input id="Tel" size="20" name="Tel" type="text"" value="您的电话"  onblur="if(this.value==''){this.value='您的电话'}"    onfocus="this.value=''"/>          <span class="from_note">*</span></td>          <td>您的职位：</td>          <td><input id="Jobs" size="20" name="Jobs" type="text"" value="您的职位"  onblur="if(this.value==''){this.value='您的职位'}"    onfocus="this.value=''"/></td>        </tr>        <tr>          <td>Email:</td>          <td><input id="Email" size="20" name="Email" type="text"" value="您的Email地址"  onblur="if(this.value==''){this.value='您的Email地址'}"    onfocus="this.value=''"/></td>          <td>公司地址：</td>          <td><input id="ComAddress" size="20" name="ComAddress" type="text"" value="您公司地址"  onblur="if(this.value==''){this.value='您的公司地址'}"    onfocus="this.value=''"/></td>        </tr>        <tr>          <td>留言内容：</td>          <td colspan="3"><textarea id="message" rows="5" cols="50" name="content" "  onblur="if(this.value==''){this.value='请填写留言内容...'}"    onfocus="this.value=''">请填写留言内容...</textarea>            <br />            <span class="from_note">*为必填项</span></td>        </tr>        <tr>          <td colspan="4" align="center"><input class="formborder" type="submit" value="提交信息" /></td>        </tr>      </table>          </form><p></p><p></p><p></p>  </div></div></div><?php include template("footer.htm"); ?>