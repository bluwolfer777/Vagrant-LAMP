<?php
$servername = "10.10.20.11";
$user = "es";
$password = "Password&1";
$dbname = "vagrant";
$conn = new mysqli($servername, $user, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$query = "SELECT * FROM dati";
$result = $conn->query($query);
$dati = array();
foreach ($result as $row) {
    echo $row['dato'];
    echo "<br>";
}
