<?php

//session idのチェック
session_start();

include("funcs.php"); //今は同じ階層なのでこの書き方でOK
loginCheck();

$u_name = $_SESSION['u_name'];
$u_id = $_SESSION["u_id"];

//1.  DB接続します
try {
  //Password:MAMP='root',XAMPP=''
  $pdo = new PDO('mysql:dbname=MR_database;charset=utf8;host=localhost', 'root', 'root');
} catch (PDOException $e) {
  exit('DBConnectError:' . $e->getMessage());
}

//２．データ取得SQL作成 (login中のユーザーが登録したdataのみ表示)
$stmt = $pdo->prepare("SELECT COUNT(*) FROM mrdb_kern_table WHERE u_id = '$u_id'");
$date = $pdo->prepare("SELECT DATE_FORMAT(indate,'%Y/%m/%d') FROM mrdb_kern_table WHERE u_id = '$u_id'");

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
  <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.2/Chart.bundle.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
</head>

<body>

  <!-- Head[Start] -->
  <header class="h_kern">
    <h1 class="logo_title">MR.Database</h1>
    <nav class="kern_nav">
      <ul class="kern_nav_list">
        <li><a href="select_log.php">All list</a></li>
        <li><a href="search_log.php">Search</a></li>
        <li><a href="kern.php">Contribute</a></li>
        <li><a href="select_u.php">Edit/Delete</a></li>
        <li><a href="user_index.php">Back to Top</a></li>
        <li><a href="logout.php">LOGOUT</a></li>
      </ul>
    </nav>
  </header>
  <h3>Hello! <?= $u_name ?></h3>
  <div class="wrapper_userindex">
    <div class="leftbox">
      <div class="pic"></div>
      <div class="p_name"><?= $u_name ?>♩</div>
      <div class="act">Contributed data：<?= $count ?></div>
    </div>
    <div class="middlebox">Profile</div>
    <div class="rightbox">
      <canvas id="charts"></canvas>
    </div>
  </div>

  <footer>
    <div class="delete_acc">
      <a href="delete_acc.php"> Delete my Account</a>
    </div>
  </footer>

  <script>
    $(document).ready(function() {
      console.log("test");
      $.ajax({
        url: "for_chart.php",

        type: "GET",
        success: function(data) {
          console.log(data);
          data = JSON.parse(data);

          var amount_of_data = [];
          var contributed_date = [];


          for (var i in data) {
            amount_of_data.push(data[i].amount_of_data);
            contributed_date.push(data[i].contributed_date);
          }

          console.log(amount_of_data);

          var chartdata = {
            labels: contributed_date,
            datasets: [{
              label: "amount of contributed data",
              fill: false,
              lineTension: 0.1,
              backgroundColor: "pink",
              borderColor: "pink",
              pointHoverBackgroundColor: "pink",
              pointHoverBorderColor: "rgba(59, 89, 152, 1)",
              data: amount_of_data,
            }, ],
            options: {
              maintainAspectRatio: false,
              animation: false,
              legend: {
                display: true,
              },
              scales: {
                xAxes: [{
                  type: "time",
                  time: {
                    unit: "day",
                  },
                  ticks: {
                    autoSkip: false,
                  },
                }, ],
                yAxes: [{
                  ticks: {
                    stepSize: 1,
                    autoSkip: false,
                  },
                }, ],
              },
            },
          };

          var ctx = $("#charts");

          var LineGraph = new Chart(ctx, {
            type: "line",
            data: chartdata,
          });
        },
        error: function(data) {},
      });
    });
  </script>

  <!-- <script type="text/javascript" src="JS/user_act.js"></script> -->

</body>


</html>