package com.entity.inter;

import java.sql.Connection;
import java.sql.DriverManager;

public class AbstractDao {
    public Connection connect() throws Exception {
        Class.forName("org.postgresql.Driver");
        String url = "postgres://fnerjqwfyojtcl:be7c163971b7a147673a5e14a6c2e842ab706e50e1e209eb9cb3662d41716d80@ec2-3-220-207-90.compute-1.amazonaws.com:5432/dgoetfuaviiqk";
        String username = "fnerjqwfyojtcl";
        String password = "be7c163971b7a147673a5e14a6c2e842ab706e50e1e209eb9cb3662d41716d80";
        return DriverManager.getConnection(url, username, password);
    }
}
