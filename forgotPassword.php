<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Reset Password</title>
    <link rel="stylesheet" href="<?php echo BASE_URL; ?>dist/css/reset.css">
</head>
<body>
    <div class="reset">
        <form method="POST" action="reset_password.php" onsubmit="return validateForm()">
            <h2>Reset Password</h2>

            <div class="input-box">
                <label for="email">Email:</label>
                <input type="text" name="email" id="email" placeholder="Enter your Email">
                <span id="user-error" class="error-message"></span>
            </div>

            <div class="input-box">
                <label for="new_password">New Password:</label>
                <input type="password" name="new_password" id="new_password" placeholder="New Password">
                <span id="password-error" class="error-message"></span>
            </div>

            <div class="input-box">
                <label for="confirm_password">Confirm Password:</label>
                <input type="password" name="confirm_password" id="confirm_password" placeholder="Confirm Password">
                <span id="confirm-password-error" class="error-message"></span>
            </div>

            <button type="submit">Reset Password</button>
        </form>
    </div>

    <script>
        function validateForm() {
            const email = document.getElementById('email').value;
            const newPassword = document.getElementById('new_password').value;
            const confirmPassword = document.getElementById('confirm_password').value;

            const emailError = document.getElementById('user-error');
            const passwordError = document.getElementById('password-error');
            const confirmPasswordError = document.getElementById('confirm-password-error');

            emailError.textContent = '';
            passwordError.textContent = '';
            confirmPasswordError.textContent = '';

            let isValid = true;

            // Validate email format (allowing for any domain, not just .com)
            if (email === "" || !email.includes("@") || !email.includes(".")) {
                emailError.textContent = "Please enter a valid email address.";
                isValid = false;
            }

            // Validate password length (minimum 6 characters)
            if (newPassword === "" || newPassword.length < 6) {
                passwordError.textContent = "Password must be at least 6 characters.";
                isValid = false;
            }

            // Validate password match
            if (newPassword !== confirmPassword) {
                confirmPasswordError.textContent = 'Passwords do not match.';
                isValid = false;
            }

            // If invalid, block form submission
            if (!isValid) {
                alert("Please correct the highlighted errors.");
            }

            return isValid;
        }
    </script>
</body>
</html>
