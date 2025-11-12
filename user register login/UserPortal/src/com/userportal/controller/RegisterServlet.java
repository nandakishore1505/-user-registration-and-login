package com.userportal.controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.userportal.mode.User;
import com.userportal.dao.UserDAO;
import com.userportal.util.PasswordUtil;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String password = request.getParameter("password");

        // Hash password for security
        String hashedPassword = PasswordUtil.hashPassword(password);

        User user = new User(name, email, hashedPassword);
        UserDAO dao = new UserDAO();

        boolean result = dao.registerUser(user);

        if (result) {
            response.sendRedirect("login.jsp?msg=registered");
        } else {
            response.sendRedirect("register.jsp?error=failed");
        }
    }
}
