package com.user.servlet;

import com.DAO.UserDAOImpl;
import com.DB.DBConnect;
import com.entity.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            UserDAOImpl dao = new UserDAOImpl(DBConnect.getConn());
            HttpSession session=req.getSession();
            String email = req.getParameter("email");
            String password = req.getParameter("password");
            System.out.println(email+" "+password);
            // Kiểm tra email và password
            if ("admin@gmail.com".equals(email) && "admin".equals(password)) {
                User us=new User();
                session.setAttribute("userobj", us);
                resp.sendRedirect("admin/home.jsp");
            } else {
                User us= dao.login(email, password);
                if (us != null) {
                    session.setAttribute("userobj", us);
                    resp.sendRedirect("homeUser.jsp");
                }else {
                    session.setAttribute("failedMsg", "Email or password is incorrect");
                    resp.sendRedirect("login.jsp");
                }

            }


        } catch (Exception e) {

            e.printStackTrace();

        }
    }
}
