<?php

//session idのチェック
session_start();
$u_name = $_SESSION["u_name"];
$u_mail = $_SESSION["u_mail"];

?>

<!DOCTYPE html>
<html lang="ja">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>registered</title>
    <link rel="stylesheet" href="CSS/style.css" />

</head>

<body id="first_login">
    <!-- Head[Start] -->
    <header class="h_kern">
        <h1 class="logo_title">MR.Database</h1>
    </header>
    <!-- Head[End] -->

    <!-- Main[Start] -->
    <h1>Thank you! <?= $u_name ?> </h1>
    <h1>Your account has been created!</h1>
    <h2>Login and set up your profile! </h2>

    <form method="post" action="login_act_f.php">
        <div class="mem_box">
            <p class="mbox_title">Login to Your Account</p>
            <input class="textbox" type="text" name="lmail" placeholder="Email"><br>
            <input class="textbox" type="text" name="lpw" placeholder="Passward"><br>
            <input class="login_btn" type="submit" value="Login">
        </div>
    </form>


    <ul class="kern_nav_list">
        <li><a href="login.php">Back to Top</a></li>
    </ul>
    <!-- Main[End] -->

</body>

</html>