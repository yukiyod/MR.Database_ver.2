<?php

$s_composer=$_POST["composer"];
//受け取ったキーワードの全角スペースを半角スペースに変換する
$s_composer2 = str_replace("　", " ", $s_composer);
$array = explode(" ",$s_composer2);

//1.  DB接続します
try {
  //Password:MAMP='root',XAMPP=''
  $pdo = new PDO('mysql:dbname=MR_database;charset=utf8;host=localhost','root','root');
} catch (PDOException $e) {
  exit('DBConnectError:'.$e->getMessage());
}

//２．データ取得SQL作成 (検索ワードに応じたしたdataのみ表示)
$stmt = $pdo->prepare("SELECT * FROM mrdb_kern_table WHERE composer LIKE '%$array[1]%'");
$status = $stmt->execute();

//これをどう入れるか考える。
  // for($i = 0; $i <count($array);$i++){
  //   $where .= "(composer LIKE '%$array[$i]%')";

  //   if ($i <count($array) -1){
  //     $where .= " AND ";
  //   }
  // }



//３．データ表示
$view="";
if($status==false) {
    //execute（SQL実行時にエラーがある場合）
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);

}else{
  //Selectデータの数だけ自動でループしてくれる
  //FETCH_ASSOC=http://php.net/manual/ja/pdostatement.fetch.php
  //fetchという関数で整形している。1行ずつ取り出すという関数。全件数を1行ずつループさせて$resultに入れ込んでいる
  // .=は、上書きしないという処理。ドットがないと最後のデータのみしか表示されない
  while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){ 
    // $view .= "<p>";
    // $view .= $result['indate'].':'.$result['name'].' '.$result['email'].' '.$result['text'];
    // $view .= "</p>";
     $view .="<tr>";
     $view .="<td>".$result["genre"]."</td>";
     $view .="<td>".$result["s_title"]."</td>"."<td>".$result["composer"]."</td>";
     $view .="<td>";
     $view .='<a href = "update_kern.php?id='.$result["id"].'">'; //idを埋め込んで出してくれる
     $view .=$result["o_title"]."</td>";
     $view .='</a>';
     $view .="</tr>";
  }

}
?>



<!DOCTYPE html>
<html lang="ja">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>edit kern</title>
<link rel="stylesheet" href="CSS/style.css" />
<style>div{padding: 10px;font-size:16px;}</style>
</head>
<body id="main">
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
<!-- Head[End] -->

<!-- Main[Start] -->
<div>
<table class="searched">
<tr><th>Genre</th><th>ScoreTitle</th><th>Composer</th><th>Title</th></tr>
    <div class="select_list"><?=$view?></div>
</div>
<!-- Main[End] -->

</body>
</html>
