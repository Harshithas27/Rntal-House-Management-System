<!DOCTYPE html>
<html>
<head>
    <title>Add Tenant</title>
</head>
<body>
    <h2>Add New Tenant</h2>
    <form action="insert_tenant.php" method="post">
        Name: <input type="text" name="name" required><br>
        Email: <input type="email" name="email" required><br>
        Phone Number: <input type="text" name="phone_number" required><br>
        
        Payment history: <textarea name="payment_history" required></textarea><br>
        <input type="submit" value="Add Tenant">
    </form>
</body>
</html>
