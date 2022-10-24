package com.entity.inter;

import java.sql.Connection;
import java.sql.DriverManager;

public class AbstractDao {
    public Connection connect() throws Exception {
        Class.forName("com.mysql.cj.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/tinderapp";
        String username = "root";
        String password = "password";
        return DriverManager.getConnection(url, username, password);
    }
}
