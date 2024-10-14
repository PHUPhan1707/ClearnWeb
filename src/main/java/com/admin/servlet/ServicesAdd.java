package com.admin.servlet;

import com.DAO.ServiceDAOImpl;
import com.DB.DBConnect;
import com.entity.ServiceDtls;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;
import java.io.IOException;

@MultipartConfig
@WebServlet("/add_services")
public class ServicesAdd extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {

            String servicename = req.getParameter("sname");
            String price = req.getParameter("price");
            String category = req.getParameter("stype");
            String status = req.getParameter("status");

            Part part= req.getPart("bimg");
            String fileName = part.getSubmittedFileName();

            ServiceDtls a = new ServiceDtls(servicename,price,category,status,fileName,"admin");

            ServiceDAOImpl dao=new ServiceDAOImpl(DBConnect.getConn());

            boolean f=dao.addService(a);

            HttpSession session=req.getSession();
            if(f){
                session.setAttribute("succMsg","Service Added Successfully");
                resp.sendRedirect("admin/add.jsp");
            }else{
                session.setAttribute("failedMsg","Service Added Failed");
                resp.sendRedirect("admin/add.jsp");
            }
            System.out.println(a);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
