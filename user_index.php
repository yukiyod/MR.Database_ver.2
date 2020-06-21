<?php

//session idのチェック
session_start();

include("funcs.php"); //今は同じ階層なのでこの書き方でOK
loginCheck();

$u_name=$_SESSION['u_name'];

//1.  DB接続します
try {
    //Password:MAMP='root',XAMPP=''
    $pdo = new PDO('mysql:dbname=MR_database;charset=utf8;host=localhost','root','root');
  } catch (PDOException $e) {
    exit('DBConnectError:'.$e->getMessage());
  }
  
  //２．データ取得SQL作成 (login中のユーザーが登録したdataのみ表示)
  $stmt = $pdo->prepare("SELECT COUNT(*) FROM mrdb_kern_table WHERE contributor = '$u_name'");
  $status = $stmt->execute();


  $count = $stmt->fetchColumn(); 

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>user_top</title>
    <link rel="stylesheet" href="CSS/style.css" />
</head>
<body>

<!-- Head[Start] -->
<header class="h_kern">
    <h1 class="logo_title">MR.Database</h1>
  <nav class="kern_nav">
      <ul class="kern_nav_list">
      <li><a href="select_log.php">All list</a></li>
      <li><a href="search.php">Search</a></li>
      <li><a href="kern.php">Contribute</a></li>
      <li><a href="select_u.php">Edit/Delete</a></li>
      <li><a href="user_index.php">Back to Top</a></li>
      <li><a href="logout.php">LOGOUT</a></li>
      </ul>
  </nav>
</header>
<h3>Hello! <?=$u_name?></h3>
<div class="wrapper_userindex">
<div class="leftbox">ID・Status
  <div class="pic"></div>
  <div class="p_name"><?=$u_name?>♩</div>
</div>
<div class="middlebox">Profile</div>
<div class="rightbox">Activity
  <div class="act">Contributed data：<?=$count?></div>
</div>
</div>

    
</body>
</html>