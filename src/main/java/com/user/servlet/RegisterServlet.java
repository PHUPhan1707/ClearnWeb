package com.user.servlet;

import java.io.IOException;

import com.DAO.UserDAO;
import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/register")
public class RegisterServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try{
            String name = req.getParameter("fname");
            String email = req.getParameter("email");
            String phone = req.getParameter("phone");
            String password = req.getParameter("password");
            String check = req.getParameter("check");

            System.out.println(name+" "+email+" "+phone+" "+password+" "+check);
            User us = new User();
            us.setName(name);
            us.setEmail(email);
            us.setPhone(phone);
            us.setPassword(password);

            HttpSession session = req.getSession();
            if (check!=null){
                UserDAO dao = new UserDAOImpl(DBConnect.getConn());
                boolean f=dao.userRegister(us);
                if(f) {
//                    System.out.println("User Registered Successfully");
                    session.setAttribute("succMsg","Register Success");
                    resp.sendRedirect("register.jsp");
                }else {
//                    System.out.println("User Not Registered Successfully");
                    session.setAttribute("failedMsg","Register Fail");
                    resp.sendRedirect("register.jsp");
                }
            }else {
                System.out.println("Please Check Agree & Terms Conditions");
                resp.sendRedirect("register.jsp");
            }
        }catch (Exception e){
            e.printStackTrace();

        }
    }
}