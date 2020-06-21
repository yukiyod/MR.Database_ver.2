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
<style>div{padding: 10px;font-size:16px;}</style>
</head>
<body id="main">
<!-- Head[Start] -->
<header class="h_kern">
    <h1 class="logo_title">MR.Database</h1>
</header>
<!-- Head[End] -->

<!-- Main[Start] -->
<h1>Thank you!  <?=$u_name?> </h1>
<h1>Your account has been created!</h1>
<h2>Your ID = <?=$u_mail?> </h2>

<ul class="kern_nav_list">
          <li><a href="login.php">Back to Top</a></li>
      </ul>
<!-- Main[End] -->

</body>
</html>
