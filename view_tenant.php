<?php
include 'db_connect.php';

$sql = "SELECT * FROM Customer";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    echo "<h2>Tenant List</h2>";
    echo "<table border='1'>
            <tr>
                <th>ID</th>
                <th>Name</th>               
                <th>Email</th>
                <th>Phone Number</th>
                <th>Payment History</th>
            </tr>";
    while($row = $result->fetch_assoc()) {
        echo "<tr>
                <td>".$row["id"]."</td>
                <td>".$row["name"]."</td>
                <td>".$row["email"]."</td>
                <td>".$row["phone_number"]."</td>
                <td>".$row["payment_history"]."</td>
              </tr>";
    }
    echo "</table>";
} else {
    echo "0 results";
}

$conn->close();
?>
<br>
<a href="add_tenant.php">Add New Customer</a>
