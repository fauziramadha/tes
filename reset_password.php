<?php 
require_once(dirname(__FILE__) . '/config.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $email = $_POST['email'];
    $new_password = $_POST['new_password'];
    $confirm_password = $_POST['confirm_password'];

    // Query to check if the email exists in the 'tg_customers' table
    $query = "SELECT customer_id, customer_Email FROM tg_customers WHERE customer_Email = ?";
    $stmt = $con->prepare($query);
    $stmt->bind_param("s", $email);
    $stmt->execute();
    $result = $stmt->get_result();

    if ($result->num_rows === 0) {
        echo "<script>alert('Email does not exist. Please enter a valid email.');
        window.location.href='Forgot Password.php';</script>";
    } else {
        if ($new_password !== $confirm_password) {
            echo "<script>alert('Passwords do not match. Please try again.');
            window.location.href='Forgot Password.php';</script>";
        } else if (strlen($new_password) < 6) {
            echo "<script>alert('Password must be at least 6 characters long.');
            window.location.href='Forgot Password.php';</script>";
        } else {
            // Hash the new password
            $hashed_password = password_hash($new_password, PASSWORD_DEFAULT);
            
            // Update query to change the password in 'tg_customers' table
            $update_query = "UPDATE tg_customers SET customer_password = ? WHERE customer_Email = ?";
            $update_stmt = $con->prepare($update_query);
            $update_stmt->bind_param("ss", $hashed_password, $email);

            if ($update_stmt->execute()) {
                echo "<script>alert('Password reset successfully.');
                window.location.href='Forgot Password.php';</script>";
            } else {
                echo "<script>alert('An error occurred while resetting the password. Please try again.');
                window.location.href='Forgot Password.php';</script>";
            }
        }
    }
}
?>
