<?php
$host = 'mysql';
$port = 3306;
$user = 'root';
$password = 'root_password';
$db = 'tk4';

$conn = mysqli_connect($host, $user, $password, $db, $port);

if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}

// / Select the database
$selected_db = mysqli_select_db($conn, $db);

if (!$selected_db) {
    die("Database selection failed: " . mysqli_error($conn));
}

?>