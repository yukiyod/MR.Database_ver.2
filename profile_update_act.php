<?php
session_start();
$u_name = $_SESSION['u_name'];
$u_id = $_SESSION["u_id"];

// session idのチェック
include("funcs.php");
loginCheck();

//入力チェック(受信確認処理追加 null可なのでコメントアウト)
// if (
//     !isset($_POST["genre"]) || $_POST["genre"] == "" ||  //genreがpostされてなくて、値が空っぽなら
//     !isset($_POST["s_title"]) || $_POST["s_title"] == "" ||
//     !isset($_POST["o_title"]) || $_POST["o_title"] == "" ||
//     !isset($_POST["composer"]) || $_POST["composer"] == "" ||
//     !isset($_POST["kern"]) || $_POST["kern"] == ""
// ) {
//     exit('ParamEroor');
// }

//1. POSTデータ取得
$city = $_POST["city"];
$country = $_POST["country"];
$inst = $_POST["inst"];
$dept = $_POST["dept"];
$comment = $_POST["comment"];
$keywords = $_POST["tags-input"];
$facebook = $_POST["facebook"];
$twitter = $_POST["twitter"];

// echo $keywords;
// exit;



//2. DB接続します
try {
    $pdo = new PDO('mysql:dbname=MR_database;charset=utf8;host=localhost', 'root', 'root');
} catch (PDOException $e) {
    exit('DBConnectError:' . $e->getMessage());
}
//このエラーならそもそもdbへの接続方法で問題がある


//３．データ登録SQL作成 //別の言語なので、文字列として準備する。bind変数を使ってエスケープ処理をしている。
//:a1としているのは、この中に直接$nameなどの変数を入れられない。
//bindvalueを使うと、よくない文字を無効化してくれる。
//excuteで実行
//statusに実行できたかできてないかの情報も格納される。
$stmt = $pdo->prepare("UPDATE mrdb_profile_table(id,city,country,inst,dept,comment,keywords,facebook,twitter,u_id,indate WHERE u_id=$u_id')
VALUES(NULL,:a1,:a2,:a3,:a4,:a5,:a6,:a7,:a8,:a9,sysdate())");
$stmt->bindValue(':a1', $city, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':a2', $country, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':a3', $inst, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':a4', $dept, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':a5', $comment, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':a6', $keywords, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':a7', $facebook, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':a8', $twitter, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$stmt->bindValue(':a9', $u_id, PDO::PARAM_STR);  //Integer（数値の場合 PDO::PARAM_INT)
$status = $stmt->execute();

//４．データ登録処理後
if ($status == false) {
    //SQL実行時にエラーがある場合（エラーオブジェクト取得して表示）
    $error = $stmt->errorInfo();
    exit("ErrorMassage:" . $error[2]); //このエラーなら、sqlの書き方に問題がある。
} else {

    //５．$stateusがfalseでなければ index.phpへリダイレクト
    //header関数の中へ飛ぶようになっている
    //index.phpの前に半角スペースを入れる
    header('Location: user_index.php');
}
