<?phpfunction columns($id,$num,$State,$Sorting,$permute)	{	global $db,$upfile,$webdir,$DB_dbprefix;	$orArray[] = "";    getSort($id,$orArray);    $or = implode(" or cid=",$orArray);		$strSql="SELECT * FROM {$DB_dbprefix}content";	if($id!=""){	$strSql.=" WHERE (cid =$id  $or)";		if($State!="" or $State!=0)		$strSql.=" and";	}	else{	if($State!="" or $State!=0)	$strSql.=" WHERE";	}	switch ($State){	case 1:		$strSql.=" rec=1";	break;	case 2:		$strSql.=" hot=1";	break;	}	 switch ($Sorting){	case 1:		$strSql.=" Order by id";	break;	case 2:		$strSql.=" Order by time";	break;	case 3:		$strSql.=" Order by hits";	break;	case 4:	$strSql.=" ORDER BY RAND()";	break;	}	switch ($permute){	case 1:		$strSql.=" desc";	break;	case 2:		$strSql.=" asc";	break;	}	if($num!=""){	$strSql.=" limit 0,".$num;	}		$db->query($strSql);		$PHPCMS_array = array();		$i=0;		$UpdatedTo=explode("\r",$db->Record["datalist"]);		while($db->next_record())			{			$PHPCMS_array[] = array(			    'num'			=> $i+=1,				'id'            => $db->Record["id"],				'column_id'     => $db->Record["cid"],				'url' 		    => PHPCMSlink($db->Record["id"],$db->Record["time"]),				'column_name'   => stride('title','columns',"id",$id).$db->Record["cid"],				'title'         => $db->Record["title"],				'keywords'      => $db->Record["keywords"],				'description'   => $db->Record["description"],				'time'          => date('Y-m-d H:i:s',$db->Record["time"]),//2011-1-10 17:16:17				'time2'         => date('r',$db->Record["time"]),//Thu, 21 Dec 2000 16:01:07 +0200				'time3'         => date('Y-m-d',$db->Record["time"])//2011-1-10/*columns_module_start*//*articles_start*/,'articles_content'=>uh(stride('content','z_articles',"bid",$db->Record["id"]))/*articles_end*//*products_start*/,'products_pic'=>$web_dir.$upfile.stride('pic','z_products',"bid",$db->Record["id"]),'products_size'=>uh(stride('size','z_products',"bid",$db->Record["id"])),'products_price'=>uh(stride('price','z_products',"bid",$db->Record["id"])),'products_recommend'=>uh(stride('recommend','z_products',"bid",$db->Record["id"]))/*products_end*//*recruitment_start*/,'recruitment_experience'=>uh(stride('experience','z_recruitment',"bid",$db->Record["id"])),'recruitment_properties'=>uh(stride('properties','z_recruitment',"bid",$db->Record["id"])),'recruitment_degree'=>uh(stride('degree','z_recruitment',"bid",$db->Record["id"])),'recruitment_number'=>uh(stride('number','z_recruitment',"bid",$db->Record["id"])),'recruitment_recommend'=>uh(stride('recommend','z_recruitment',"bid",$db->Record["id"]))/*recruitment_end*/        /*columns_module_end*/			);			}	return $PHPCMS_array;	unset($PHPCMS_array);}function classpage($num,$Sorting,$permute){global $db,$page,$id,$intPerpage,$execc,$upfile,$web_dir,$DB_dbprefix;$orArray[] = "";getSort($id,$orArray);$or = implode(" or cid=",$orArray);		$intPerpage=$num;    if (isset($page)) {        $offset = ($page -1)*$num;    }    else {        $offset = 0;    }	$execc="SELECT id FROM {$DB_dbprefix}content WHERE cid =$id $or";	$strSql="SELECT * FROM {$DB_dbprefix}content WHERE cid =$id $or";	switch ($Sorting){	case 1:		$strSql.=" Order by permute DESC, id";	break;	case 2:		$strSql.=" Order by permute DESC, time";	break;	case 3:		$strSql.=" Order by permute DESC, hits";	break;	}	switch ($permute){	case 1:		$strSql.=" desc";	break;	case 2:		$strSql.=" asc";	break;	}	$strSql.=" limit $offset,$num";	$db->query($strSql);	$PHPCMS_array = array();	$i=0;		while($db->next_record())			{						$PHPCMS_array[] = array(			    'num'			=> $i+=1,				'id'            => $db->Record["id"],				'column_id'     => $db->Record["cid"],				'url' 		    => PHPCMSlink($db->Record["id"],$db->Record["time"]),				'column_name'   => stride('title','columns',"id",$id).$db->Record["cid"],				'title'         => $db->Record["title"],				'keywords'      => $db->Record["keywords"],				'description'   => $db->Record["description"],				'products_pic' =>$web_dir.$upfile.stride('pic','z_products',"bid",$db->Record["id"]),				'time'          => date('Y-m-d H:i:s',$db->Record["time"]),//2011-1-10 17:16:17				'time2'         => date('r',$db->Record["time"]),//Thu, 21 Dec 2000 16:01:07 +0200				'time3'         => date('Y-m-d',$db->Record["time"])//2011-1-10/*classpage_module_start*//*classpage_module_end*/ 			);			}	return $PHPCMS_array;	unset($PHPCMS_array);}?>