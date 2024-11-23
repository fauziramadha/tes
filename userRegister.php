<?php
require_once(dirname(__FILE__) . '/config.php');

// Database connection
$conn = new mysqli(DB_SERVER, DB_USER, DB_PASSWORD, DB_NAME);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

if (isset($_POST['register'])) {
    // Sanitize and prepare input data
    $fullname = mysqli_real_escape_string($conn, $_POST['fullname']);
    $username = mysqli_real_escape_string($conn, $_POST['username']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $password = mysqli_real_escape_string($conn, $_POST['password']);
    
    // Hash the password for security
    $hashed_password = sha1($password);
    
    // Check if the username or email already exists
    $checkQuery = "SELECT `customer_id` FROM `tg_customers` WHERE `customer_username` = '$username' OR `customer_Email` = '$email'";
    $checkResult = mysqli_query($conn, $checkQuery);
    
    if (mysqli_num_rows($checkResult) > 0) {
        echo "<script>alert('Username or Email already exists!');</script>";
    } else {
        // Insert new customer data into the database
        $query = "INSERT INTO `tg_customers` (`customer_username`, `customer_password`, `customer_Name`, `customer_Email`, `created`) 
                  VALUES ('$username', '$hashed_password', '$fullname', '$email', NOW())";
        
        if (mysqli_query($conn, $query)) {
            echo "<script>alert('Registration successful!'); window.location.href='". BASE_URL . "userLogin.php';</script>";
        } else {
            echo "<script>alert('Error: Could not register. Please try again.');</script>";
        }
    }
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="shortcut icon" href="<?php echo BASE_URL; ?>dist/src/OCBSLogo.png" type="image/x-icon">
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/remixicon/3.5.0/remixicon.css" crossorigin="">
   <link rel="stylesheet" href="<?php echo BASE_URL; ?>dist/css/styles_login.css">
   <link rel="stylesheet" href="<?php echo BASE_URL; ?>dist/css/register.css">

   <title>Register Form</title>
</head>

<style>
   .error-message {
      color: red;
   }
</style>

<body style="background-image: url('<?php echo BASE_URL; ?>dist/src/login-bg.png');">

<script>
   function validateForm() {
      const name = document.getElementById("fullname").value;
      const username = document.getElementById("username").value;
      const email = document.getElementById("email").value;
      const password = document.getElementById("password").value;

      const nameError = document.getElementById("name-error");
      const usernameError = document.getElementById("username-error");
      const emailError = document.getElementById("email-error");
      const passwordError = document.getElementById("password-error");

      nameError.textContent = "";
      usernameError.textContent = "";
      emailError.textContent = "";
      passwordError.textContent = "";

      let isValid = true;

      if (name === "" || /\d/.test(name)) {
         nameError.textContent = "Please enter a valid name without numbers.";
         isValid = false;
      }

      if (username === "") {
         usernameError.textContent = "Username cannot be empty.";
         isValid = false;
      }

      if (email === "" || !email.includes("@") || !email.includes(".") || !email.endsWith(".com")) {
         emailError.textContent = "Please enter a valid email address.";
         isValid = false;
      }

      if (password === "" || password.length < 6) {
         passwordError.textContent = "Password must be at least 6 characters long.";
         isValid = false;
      }

      if (!isValid) {
         alert("Please correct the highlighted errors.");
      }

      return isValid;
   }
</script>

   <div class="login">
      <form method="POST" action="" onsubmit="return validateForm();">
         <div class="login_inputs">
            <h1 class="login_title">Register</h1>
            <div class="login_box">
               <input type="text" id="fullname" name="fullname" placeholder="Full Name">
               <i class="ri-user-fill"></i>
               <span id="name-error" class="error-message"></span>
            </div>
            <div class="login_box">
               <input type="text" id="username" name="username" placeholder="User Name">
               <i class="ri-user-fill"></i>
               <span id="username-error" class="error-message"></span>
            </div>
            <div class="login_box">
               <input type="email" id="email" name="email" placeholder="Email">
               <i class="ri-mail-fill"></i>
               <span id="email-error" class="error-message"></span>
            </div>
            <div class="login_box">
               <input type="password" id="password" name="password" placeholder="Password">
               <i class="ri-lock-2-fill"></i>
               <span id="password-error" class="error-message"></span>
            </div>
            <button type="submit" class="register-btn" name="register">REGISTER</button>
            <div class="register-login">
               Already have an account? <a href="<?php echo BASE_URL; ?>userLogin.php">Login</a>
            </div>
         </div>
      </form>
   </div>
</body>
</html>
