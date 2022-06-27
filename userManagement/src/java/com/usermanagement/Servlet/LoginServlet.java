/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.usermanagement.Servlet;

import com.usermanagement.ConnectDb.ConnectionDb;
import com.usermanagement.Dao.Message;
import com.usermanagement.Dao.UserDao;
import com.usermanagement.UserData.User;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


/**
 *
 * @author default
 */
public class LoginServlet extends HttpServlet {

    
     
    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        PrintWriter out=response.getWriter();
        response.setContentType("text/html");
        
        String email=request.getParameter("email");
        String password=request.getParameter("password");
        
        UserDao u=new UserDao(ConnectionDb.getConnection());
        
        User user=u.getUserByEmailAndPassword(email, password);
        if(user==null){
            
            
            response.sendRedirect("login.jsp");
        }else{
            response.sendRedirect("home.jsp");
        }
        
       
        
       
    }

 

   

}
