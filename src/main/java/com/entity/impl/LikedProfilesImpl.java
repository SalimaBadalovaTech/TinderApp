package com.entity.impl;

import com.entity.Profile;
import com.entity.inter.AbstractDao;
import com.entity.inter.LikedProfilesInter;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class LikedProfilesImpl extends AbstractDao implements LikedProfilesInter {
    @Override
    public List<Profile> getAll() {
        List<Profile> profiles = new ArrayList<>();
        Connection conn;
        try {
            conn = connect();
            Statement stmt = conn.createStatement();
            stmt.execute("SELECT * FROM tinderapp.liked_profiles");
            ResultSet rs = stmt.getResultSet();
            while (rs.next()) {
                int id = rs.getInt("id");
                String name = rs.getString("name");
                String surname = rs.getString("surname");
                String profile_link = rs.getString("profile_link");
                profiles.add(new Profile(id,name,surname,profile_link));
            }
        } catch (Exception ex) {
            ex.printStackTrace();
        }
        return profiles;

    }

    @Override
    public Profile getProfileById(Long id) {
        return null;
    }

    @Override
    public boolean addProfile(Profile profile) {
        try {
            System.out.println("in try");
            Connection c = connect();
            PreparedStatement statement = c.prepareStatement("insert into " +
                    "tinderapp.liked_profiles(name, surname, profile_link) values (?,?,?)");
            statement.setString(1, profile.getName());
            statement.setString(2, profile.getSurname());
            statement.setString(3, profile.getProfile_link());
            return statement.execute();
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
}
