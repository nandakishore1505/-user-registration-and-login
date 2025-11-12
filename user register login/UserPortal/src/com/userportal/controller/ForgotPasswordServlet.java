package com.userportal.controller;

import java.io.IOException;
import javax.servlet.*;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

import com.userportal.dao.UserDAO;
import com.userportal.util.PasswordUtil;
import java.sql.Connection;
import java.sql.PreparedStatement;

@WebServlet("/forgot")
public class ForgotPasswordServlet extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String newPassword = request.getParameter("newPassword");

        String hashedPassword = PasswordUtil.hashPassword(newPassword);

        try {
            Connection con = com.userportal.dao.DBConnection.getConnection();
            String query = "UPDATE users SET password = ? WHERE email = ?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, hashedPassword);
            ps.setString(2, email);

            int rows = ps.executeUpdate();
            if (rows > 0) {
                response.sendRedirect("login.jsp?msg=password_reset");
            } else {
                response.sendRedirect("forgot_password.jsp?error=notfound");
            }
        } catch (Exception e) {
            e.printStackTrace();
            response.sendRedirect("forgot_password.jsp?error=failed");
        }
    }
}
