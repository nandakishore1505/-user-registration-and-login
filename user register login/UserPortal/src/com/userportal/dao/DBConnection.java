package com.userportal.dao;
import java.sql.*;

public class DBConnection {
    private static Connection connection = null;

    public static Connection getConnection() {
        if (connection == null) {
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection(
                    "jdbc:mysql://localhost:3306/userportal",
                    "root",
                    "your_password" // change this
                );
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return connection;
    }
}
