<?php    
    function ff_page($content,$page)    
    {    
    global $expert_id;  
    
    if (empty($page)) {
         $page = 1 ;
    }  //给$page赋初始值
    
    $PageLength = 2000; //每页字数    
    $CLength = strlen($content);  //文章长度  
    $PageCount = floor(($CLength / $PageLength)) + 1; //计算页数    
    $PageArray=array();//断页位置数组      
    $Seperator = array("\n","\r","。","!","?",";",",","”","’",".","！","？","；"); //分隔符号    
    
    //echo "页数：".$PageCount."<br \>";    
    //echo "长度：".$CLength."<br \>";    
    //strpos() 函数返回字符串在另一个字符串中第一次出现的位置    
    
    if($CLength <= $PageLength)    
     {    
        echo $content;    
     }//如果只有一页，直接打印
       else{    
        $PageArray[0]=0;    
        $Pos = 0;    
        $i=0;    
     //第一页，print_r($Seperator);   
    for( $j=0 ; $j < sizeof($Seperator); $j++)    
       {    
      $Pos=strpos($content,$Seperator[$j],$PageArray[$i]+1900);  
      while($Pos > 0 && $Pos<($i+1)*$PageLength && $Pos > $i*$PageLength )    
      {    
     $PageArray[$i] = $Pos ;
     if ($Pos+$PageLength > $CLength)
     {
         $start_p = $CLength-1 ;   
     }
     else{
         $start_p = $Pos+$PageLength ;
     }
     //给一个找寻位置的起始点，防止超过位置总字符数    
     $Pos = strpos($content,$Seperator[$j],$start_p) ;     
      } 
        //如果已经找到分页点，跳出循环
        if($PageArray[$i]>0)    
        {    
         $j = $j + sizeof($Seperator) + 1;
        }    
 }     
  
    for( $i = 1; $i < $PageCount-1; $i++ )
    {    
       for( $j = 0 ; $j < sizeof($Seperator); $j++)    
       {         
         $Pos=strpos($content,$Seperator[$j],$PageArray[$i-1]+1900);   
     while($Pos > 0 && $Pos < ($i+1)*$PageLength && $Pos > $i*$PageLength )    
   {    
      $PageArray[$i] = $Pos ;         
      if ($Pos+$PageLength > $CLength)
      {
         $start_p2 = $CLength-1 ;   
      }
      else{
         $start_p2 = $Pos+$PageLength ;
      } 
      $Pos = strpos($content,$Seperator[$j],$start_p2) ;    
    }    
   if($PageArray[$i]>0)    
   {    
    $j = $j + sizeof($Seperator) + 1;    
   }    
    }    
   }    
    //--PHP长文章分页函数最后一页     
    $PageArray[$PageCount-1] = $CLength; 
    //$page=2;    
  
    if($page==1)    
 {    
     $output=substr($content,0,$PageArray[$page-1]+2);    
 }    
    if($page > 1 && $page <= $PageCount)    
 {    
  $output=substr($content,$PageArray[$page-2]+2,$PageArray[$page-1]-$PageArray[$page-2]);    
  $output=" （上接第".($page-1)."页）\n".$output;    
 }    
    
//  echo str_replace("\n","<br \>&nbsp;&nbsp;&nbsp;",$output); //回车换行，根据需要调整    
    echo $output ;  
        
 if($PageCount > 1)    
 {    
    echo "<br \><center>";    
    echo "<font color='ff0000'>".$page."</font>/".$PageCount."页 &nbsp;";    
    if($page>1)    
     echo "<a href=http://localhost/test/redrock/winter_blog/php/test/test.php?expert_id=$expert_id&page_t=".($page-1).">上一页</a> ";    
    else    
      echo "上一页 ";    
         
    for( $i=1 ; $i <= $PageCount ; $i++)    
    {    
     echo "<a href=http://localhost/test/redrock/winter_blog/php/test/test.php?expert_id=$expert_id&page_t=".$i.">[".$i."]</a> ";    
    }    
       
    if($page < $PageCount)    
        echo " <a href=http://localhost/test/redrock/winter_blog/php/test/test.php?expert_id=$expert_id&page_t=".($page+1).">下一页</a> ";    
  else    
   echo " 下一页 ";    
  echo "</center>";    
    }    
 }    
}
?> 

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Document</title>
</head>
<body>
	

<?php   
	include"../connect.php";
$result = $db->query("SELECT * FROM `blog_content` WHERE `user_id` = 665626");
					foreach ($result as $value) {

    $content1=$value['content'];   
    $current=$_REQUEST['page_t']; 
    $result= ff_page($content1,$current);   
   							echo <<<STR
							<li class="active">
						<div class="thumb">
							<span>{$value['time']}</span>
						</div>
						<s class="check">
						</s>
						<div class="timeline_content">
							<b></b>
							<h3>{$value['content_title']}</h3>
							<p id="p">{$result}<a href="#">全文<<</a></p>
						</div>
					</li>
STR;
    $content1=$value['content_title'];   
    $current=$_REQUEST['page_t']; 
    $result= ff_page($content1,$current);   
    echo $result;   
					}
?> 

</body>
</html>