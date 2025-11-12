<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>User Login</title>
    <style>
        body { font-family: Arial; background-color: #f2f2f2; text-align: center; }
        form {
            margin-top: 50px; background: white; display: inline-block;
            padding: 30px; border-radius: 10px; box-shadow: 0 0 10px #aaa;
        }
        input {
            display: block; margin: 10px auto; padding: 10px;
            width: 250px; border: 1px solid #ccc; border-radius: 5px;
        }
        button {
            background-color: #4CAF50; color: white; border: none; padding: 10px 20px;
            border-radius: 5px; cursor: pointer;
        }
        button:hover { background-color: #45a049; }
    </style>
</head>
<body>
    <h2>Login to Your Account</h2>
    <form action="LoginServlet" method="post">
        <input type="email" name="email" placeholder="Email" required>
        <input type="password" name="password" placeholder="Password" required>
        <button type="submit">Login</button>
    </form>
    <br>
    <a href="register.jsp">Create a new account</a> |
    <a href="forgot_password.jsp">Forgot Password?</a>
</body>
</html>
