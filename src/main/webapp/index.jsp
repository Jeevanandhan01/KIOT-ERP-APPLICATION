<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href="./styles/index.css">
</head>
<body>
<form method="post" action="login">
<div class="login-container">
    <h2>Login</h2>
    <select id="userType">
        <option value="admin">Admin</option>
        <option value="faculty">Faculty</option>
        <option value="student">Student</option>
    </select>
    <input type="text" id="username" name="username" placeholder="Username" required>
    <input type="password" id="password" name="password" placeholder="Password" required>
    <input type="submit" value="Login">
    <div class="login-info">
        <strong>Default Credentials:</strong><br>
        Admin: admin1 / admin123<br>
    </div>
</div>
</form>
</body>
</html>

