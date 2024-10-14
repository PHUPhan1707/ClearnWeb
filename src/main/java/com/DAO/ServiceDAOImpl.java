package com.DAO;

import com.entity.ServiceDtls;
import com.google.protobuf.Service;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ServiceDAOImpl implements ServiceDAO {


    private Connection conn;
    public ServiceDAOImpl(Connection conn) {
        super();
        this.conn = conn;
    }



    @Override
    public boolean addService(ServiceDtls a) {
        boolean f = false;
        try{
            String sql = "insert into service_dtls (servicename,price,servicecategory,status,photo,email) values (?,?,?,?,?,?)";
            PreparedStatement ps = conn.prepareStatement(sql);
            ps.setString(1, a.getServicename());
            ps.setString(2, a.getPrice());
            ps.setString(3,a.getServicecategory());
            ps.setString(4, a.getStatus());
            ps.setString(5, a.getPhotoName());
            ps.setString(6, a.getEmail());

            int i = ps.executeUpdate();
            if (i==1){
                f = true;
            }
        }catch (Exception e) {
            e.printStackTrace();
        }
        return f;
    }
}
