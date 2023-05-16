<?php
require "connection.php";
if(!$database) {
    die("Connection failed: " . mysqli_connect_error());
}

$table_name = "poducts";
$result = mysqli_query($conn, "SHOW TABLES LIKE '$table_name'");


if(mysqli_num_rows($result) == 1) {

    $query = "SELECT * FROM your_table";
    $result = mysqli_query($conn, $query);

} else {

    echo "Таблица $table_name не существует.";
}
?>

<!DOCTYPE html>
<html lang='ru'>
<head>
    <meta charset='utf-8'>
    <meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>
    <link href="data:image/x-icon;base64,iVBORw0KGgoAAAANSUhEUgAAABAAAAAQEAYAAABPYyMiAAAABmJLR0T///////8JWPfcAAAACXBIWXMAAABIAAAASABGyWs+AAAAF0lEQVRIx2NgGAWjYBSMglEwCkbBSAcACBAAAeaR9cIAAAAASUVORK5CYII=" rel="icon" type="image/x-icon">
    <title>Добро пожаловать!</title>
    <style>
    </style>
</head>
<body>
</body>
</html>