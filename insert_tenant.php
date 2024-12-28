<?php
include 'db_connect.php';

$name = $_POST['name'];
$email= $_POST['email'];
$phone_number = $_POST['phone_number'];
$property_id = $_POST['property_id'];
$payment_history = $_POST['payment_history'];

$sql = "INSERT INTO tenant (name, email,phone_number,property_id,   payment_history)
VALUES ('$name', '$email',$phone_number,$property_id,   '$payment_history')";

if ($conn->query($sql) === TRUE) {
    echo "New tenant added successfully";
} else {
    echo "Error: " . $sql . "<br>" . $conn->error;
}

$conn->close();
?>
<br>
<a href="add_tenant.php">Add Another Customer</a><br>
<a href="view_tenant.php">View All Customers</a>
