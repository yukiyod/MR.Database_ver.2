<?php
session_start();
$u_id = $_SESSION["u_id"];
//setting header to json
header('Content-Type: application/json');

//database
// define('DB_HOST', 'localhost');
// define('DB_USERNAME', 'xxxxxxxxxxxxxxxxxxxxx');
// define('DB_PASSWORD', 'xxxxxxxxxxxxxxxxxxxxx');
// define('DB_NAME', 'test');

//get connection
// try {
//     //Password:MAMP='root',XAMPP=''
//     $pdo = new PDO('mysql:dbname=MR_database;charset=utf8;host=localhost', 'root', 'root');
// } catch (PDOException $e) {
//     exit('DBConnectError:' . $e->getMessage());
// }
//pdo接続ではなく、mysqli接続で行う

$mysqli = new mysqli("localhost", "root", "root", "MR_database");
if ($mysqli->connect_errno) {
    echo "Failed to connect to MySQL: " . $mysqli->connect_error;
}


// $query = "SELECT DATE_FORMAT(indate, '%Y-%m-%d') AS time, 
// COUNT(*) AS count FROM mrdb_kern_table 
// where u_id = '$u_id' GROUP BY DATE_FORMAT(indate, '%Y-%m-%d')";

//execute query
// $stmt = $pdo->query($query);
// $result = $stmt->fetch(PDO::FETCH_ASSOC);


//loop through the returned data
// $data = array();
// foreach ($result as $row) {
//     $data[] = $row;
// }



//now print the data
// print json_encode($data);

// echo $data;


$sql = mysqli_query($mysqli, "SELECT DATE_FORMAT(indate,'%Y-%m-%d') as contributed_date, count(id) as amount_of_data
FROM mrdb_kern_table
WHERE u_id = '$u_id'
GROUP BY contributed_date
ORDER by contributed_date");
// $data = [
//     'amounts' => [],
//     'dates' => [],
// ];
// while ($row = mysqli_fetch_array($sql)) {
//     $data['amounts'][]    = $row['amount_of_data'];
//     $data['dates'][]      =  date('Y, M, d', strtotime($row['contributed_date']));
// }


$data = array();
foreach ($sql as $row) {
    $data[] = $row;
}

// merge subarrays into single one to get output
// $data = array_merge($data['amounts'], $data['dates']);

print json_encode($data);

$mysqli->close();
