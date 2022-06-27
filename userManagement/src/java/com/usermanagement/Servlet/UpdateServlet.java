/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.usermanagement.Servlet;

import com.usermanagement.ConnectDb.ConnectionDb;
import com.usermanagement.Dao.UserDao;
import com.usermanagement.UserData.User;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


/**
 *
 * @author default
 */
public class UpdateServlet extends HttpServlet{
    @Override
    public void doPost(HttpServletRequest req, HttpServletResponse res) throws IOException{
        res.setContentType("text/html");
        PrintWriter out=res.getWriter();
        
        int id=Integer.parseInt(req.getParameter("id"));
        String name=req.getParameter("name");
        String phone=req.getParameter("phone");
        String dob=req.getParameter("dob");
        String city=req.getParameter("city");
        
        User user=new User(id,name,phone,dob,city);
        UserDao udao=new UserDao(ConnectionDb.getConnection());
        udao.updateUser(user);
        res.sendRedirect("home.jsp");
        
        
    }
    
}
