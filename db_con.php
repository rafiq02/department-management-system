<?php

$servername = "sql109.byethost10.com";
$username = "b10_16310276";
$password = "mailoveu";

$conn = new mysqli($servername, $username, $password);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} mysqli_select_db($conn,'b10_16310276_dept');
//echo "connected";

?>
