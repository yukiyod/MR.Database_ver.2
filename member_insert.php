<html>
<link rel="stylesheet" href="CSS/style.css" />

<?php
//1. POSTデータ取得
session_start();
$u_name = $_POST["u_name"];
$u_mail = $_POST["u_mail"];
$b_u_pw = $_POST["u_pw"];
$life_flg = $_POST["life_flg"];

$u_pw = password_hash("$b_u_pw",PASSWORD_DEFAULT);

$_SESSION["u_name"]   = $u_name;
$_SESSION["u_mail"]   = $u_mail;

//入力チェック(受信確認処理追加)
if (
  !isset($_POST["u_name"])|| $_POST["u_name"] ==""||  //nameがpostされてなくて、値が空っぽなら
  !isset($_POST["u_mail"])|| $_POST["u_mail"] ==""||
  !isset($_POST["u_pw"])|| $_POST["u_pw"] ==""||
  !isset($_POST["life_flg"])|| $_POST["life_flg"] ==""
){
  exit('ParamEroor');
}




//2. DB接続します
try {
  //Password:MAMP='root',XAMPP=''
  $pdo = new PDO('mysql:dbname=MR_database;charset=utf8;host=localhost','root','root');
} catch (PDOException $e) {
  exit('DBConnectError:'.$e->getMessage());
}



//３．データ登録SQL作成 //別の言語なので、文字列として準備する。bind変数を使ってエスケープ処理をしている。

$stmt = $pdo->prepare("INSERT INTO mrdb_user_table(id,u_name,u_mail,u_pw,life_flg,indate)
VALUES(NULL,:a1,:a2,:a3,:a4,sysdate())");
$stmt->bindValue(':a1', $u_name, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':a2', $u_mail, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':a3', $u_pw, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':a4', $life_flg, PDO::PARAM_INT);  //Integer（数値の場合 PDO::PARAM_INT)
$status = $stmt->execute();



//４．データ登録処理後
if($status==false){
  //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
  $error = $stmt->errorInfo();
  if($error[1]==1062){
    echo "'$u_mail' is registered with another account.<br>";
    echo "<a href = \"login.php\">Back to Top</a><br><br>";
  }
  exit("ErrorNumber:".$error[1]); 
  
}else{
  
header('Location: acc_registered.php');

}

?>

</html>