package com.DAO;

import com.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class UserDAOImpl implements UserDAO {
    private Connection con;
    public UserDAOImpl(Connection con) {
        super();
        this.con = con;
    }

    @Override
    public boolean userRegistre(User us) {
        boolean f = false;
        try{
            String sql = "insert into user(name,email,phone,password) values (?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setString(1, us.getName());
            ps.setString(2, us.getEmail());
            ps.setString(3, us.getPhone());
            ps.setString(4, us.getPassword());

            int i=ps.executeUpdate();
            if(i==1)
            {
                f = true;
            }
        }catch (Exception e) {
            e.printStackTrace();

        }return f;
    }
}
