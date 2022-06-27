/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.usermanagement.ConnectDb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author default
 */
public class ConnectionDb {
     private static Connection con; 
   public static Connection getConnection(){
       try{
           if(con==null){
               //driver class load
           Class.forName("com.mysql.jdbc.Driver");
           //create a connection
           con=DriverManager.getConnection("jdbc:mysql://localhost:3306/management","root","5426@Khan");
           }
       }catch(ClassNotFoundException | SQLException e){
       }
       return con;
   }
    
}
