<?php
$servername = "localhost";
$username = "root";
$password = "Harsh@123"; // your MySQL root password, often empty for local setups
$dbname = "property_management"; // replace with your actual database name

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname,3307);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
?>
