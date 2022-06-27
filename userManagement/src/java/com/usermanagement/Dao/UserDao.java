/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.usermanagement.Dao;

import com.usermanagement.UserData.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author default
 */
public class UserDao {
    
     private final Connection con;

    public UserDao(Connection con) {
        this.con = con;
    }
    
    public boolean saveUser(User user){
         boolean f=false;
       try{
          String query="insert into user(name,email,password,phone,dob,city)values(?,?,?,?,?,?)"; 
          PreparedStatement pt=this.con.prepareStatement(query);
          pt.setString(1, user.getName());
          pt.setString(2, user.getEmail());
          pt.setString(3, user.getPassword());
          pt.setString(4, user.getPhone());
          pt.setString(5, user.getDob());
          pt.setString(6, user.getCity());
          pt.executeUpdate();
          f=true;
       } catch(SQLException e){
       }
       return f;
    }
    
    
      //get user by email and password
    public User getUserByEmailAndPassword( String email, String password){
        User user=null;
        
        try{
            String query="select *from user where email=? and password=?";
            PreparedStatement pstmt=con.prepareStatement(query);
            pstmt.setString(1, email);
            pstmt.setString(2, password);
            ResultSet rs=pstmt.executeQuery();
            if(rs.next()){
                user=new User();
            
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
               
            }
        }catch(SQLException e){
        }
        
        
        
        return user;
    }
    
    public boolean deleteuser(int id){
        boolean flage=false;
        try{
            String q="delete from user where id=?";
            PreparedStatement pstm=con.prepareStatement(q);
            pstm.setInt(1, id);
            pstm.executeUpdate();
            flage=true;
            
        }catch(SQLException e){
        }
        return flage;
    }
    public User getUser(int id){
        User user=null;
        try{
            String query="select *from user where id=?";
            PreparedStatement pstm=con.prepareStatement(query);
            pstm.setInt(1, id);
            ResultSet rs=pstm.executeQuery();
            if(rs.next()){
                user=new User();
                user.setId(rs.getInt("id"));
                user.setName(rs.getString("name"));
                user.setPhone(rs.getString("phone"));
                user.setDob(rs.getString("dob"));
                user.setCity(rs.getString("city"));
            }
            
        }catch(SQLException e){
            
        }
        return user;
    }
    
    public boolean updateUser(User user){
        
        boolean flag=false;
        try{
            String query="update user set name=?, phone=?, dob=?, city=? where id=?";
            PreparedStatement pstm=con.prepareStatement(query);
            pstm.setString(1, user.getName());
             pstm.setString(2, user.getPhone());
              pstm.setString(3, user.getDob());
               pstm.setString(4, user.getCity());
                pstm.setInt(5, user.getId());
                pstm.executeUpdate();
                flag=true;
            
        }catch(SQLException e){
            
        }
        
        return flag;
    }
    
}
