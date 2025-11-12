<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Home - User Portal</title>
    <style>
        body { font-family: Arial; text-align: center; background-color: #f9f9f9; }
        h2 { color: #333; margin-top: 50px; }
        a {
            display: inline-block; margin: 10px; padding: 10px 20px;
            background-color: #f44336; color: white; text-decoration: none; border-radius: 5px;
        }
        a:hover { background-color: #d32f2f; }
    </style>
</head>
<body>
<%
    HttpSession session1 = request.getSession(false);
    if (session1 == null || session1.getAttribute("userEmail") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
    <h2>Welcome, <%= session1.getAttribute("userName") %>!</h2>
    <p>You have successfully logged in.</p>
    <a href="LogoutServlet">Logout</a>
</body>
</html>
