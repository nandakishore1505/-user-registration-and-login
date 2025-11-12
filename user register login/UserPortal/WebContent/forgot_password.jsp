<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Forgot Password</title>
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
    <h2>Forgot Your Password?</h2>
    <form action="ForgotPasswordServlet" method="post">
        <input type="email" name="email" placeholder="Enter your registered email" required>
        <button type="submit">Reset Password</button>
    </form>
    <br>
    <a href="login.jsp">Back to Login</a>
</body>
</html>
