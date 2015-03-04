 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
 <html xmlns="http://www.w3.org/1999/xhtml"> 
<?php 
  include"connect.php";
  session_start();
  $user_id =  $_SESSION['id'];
  $user_name =  $_SESSION['name'];
  $searchs=$_POST['search'];

  ?>

<head>
  <meta charset="utf-8">
  <title>blog</title>
  <link rel="stylesheet" href="../css/index_style.css">
  <link rel="stylesheet" href="../css/tab.css">
  <link rel="stylesheet" href="../css/timeline.css">
</head>
<body>
<div id="main">
  <div id="header_out">
    <div id="header">
      <div id="header_left">
        <h1>blog</h1>
      </div>
      <div id="header_right">
        
        <li><a href="php/cancel.php">注销登陆</a></li>
        <li><a href="#">消息</a></li>
        <li><a href="#">关于我</a></li>
        <li><a href="#"><?php echo $user_name;?></a></li>
        <a href="../php/upload.php"><img src="../php/pic/pic<?php echo $user_id;?>.jpg"  onError="this.src='../php/pic/default.jpg';"/></a>
      </div>
    </div>
  </div>
  <div id="body" class="body">
    <div id="body_left" style="padding-left:2%;">
      <p><h4><?php echo $searchs;?></h4>的搜索结果:</p>
    </div>
    <div class="body_right"style="display:block;">
<?php

$result=$db->query("SELECT * FROM `blog_content` WHERE content like '%$searchs%' or content_title like '%$searchs%'");
          foreach ($result as $value) {   
            print("<h3>{$value['content_title']}</h3>
              <p id='p'>{$value['content']}</p>              
              <span>{$value['time']}</span></div>");

          $content_id=$value['content_id'];
            $content=$value['content'];
             print("<div id='search'>
                <form action="search.php" method="post">
        <input name="search" type="text" class="form-control" placeholder="请按Ctrl+F键,谢谢">
        <input type="submit" value="search">
      </form>
              ");
          $result1 = $db->query("SELECT * FROM `discuss` WHERE `content_id` = '$content_id'");
          foreach ($result1 as $value1) {
              echo <<<STR
                <p>{$value1['user_name']}说: {$value1['discuss']}</p><span>{$value1['time']}</span>
STR;
          $friend_name=$value1['friend_name'];
          $discuss_id=$value1['discuss_id'];
          $result2 = $db->query("SELECT * FROM `reply` WHERE `discuss_id` = '$discuss_id'");
          foreach ($result2 as $value2) {
              echo <<<STR
                  <p>{$value2['user_name']}对{$value2['friend_name']}说: {$value2['reply']}</p><span>{$value2['time']}</span>
STR;
}
}
              echo <<<STR
              
              </div>
              
STR;
          }
?>
      
    </div>
  </div>
</div>
<script> 
 function SearchHighlight(idVal,keyword) 
 { 
     var pucl = document.getElementById(idVal); 
     if("" == keyword) return; 
     var temp=pucl.innerHTML; 
     var htmlReg = new RegExp("\<.*?\>","i"); 
     var arrA = new Array(); 
     //替换HTML标签 
     for(var i=0;true;i++) 
     { 
         var m=htmlReg.exec(temp); 
         if(m) 
         { 
             arrA[i]=m; 
         } 
         else 
         { 
             break; 
         } 
         temp=temp.replace(m,"{[("+i+")]}"); 
     } 
     words = unescape(keyword.replace(/\+/g,' ')).split(/\s+/); 
     //替换关键字 
     for (w=0;w<words.length;w++) 
     { 
         var r = new RegExp("("+words[w].replace(/[(){}.+*?^$|\\\[\]]/g, "\\$&")+")","ig"); 
         temp = temp.replace(r,"<b style='color:#e97252;'>$1</b>"); 
     } 
     //恢复HTML标签 
     for(var i=0;i<arrA.length;i++) 
     { 
         temp=temp.replace("{[("+i+")]}",arrA[i]); 
     } 
         pucl.innerHTML=temp; 
 } 
 SearchHighlight("body",'<?php echo $searchs;?>'); 
 </script> 
<div id="footer">
  <p>It is produced by SkilsLe.</p>
</div>
</body>
</html>