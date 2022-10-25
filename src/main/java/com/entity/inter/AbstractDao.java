package com.entity.inter;

import java.sql.Connection;
import java.sql.DriverManager;

public class AbstractDao {
    public Connection connect() throws Exception {
        Class.forName("org.postgresql.Driver");
        String url = "jdbc:postgresql://ec2-34-241-90-235.eu-west-1.compute.amazonaws.com:5432/ddu83p2so5imac?sslmode=require";
        String username = "zxlttnrxrrxvij";
        String password = "57e7ae9da94f7d75b349ca7bc8993902884e1f2003bfb0bf5e9f1e18cf2aaec0";
        return DriverManager.getConnection(url, username, password);
    }
}
