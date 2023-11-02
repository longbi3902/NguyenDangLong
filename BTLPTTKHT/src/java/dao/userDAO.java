/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import connect.DBconnect;
import entity.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Admin
 */
public class userDAO {
    public userDAO(){}
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;  
    public List<User> findAll() {
        List<User>list=new ArrayList<>();
        String query="SELECT * FROM user";
        try{
            conn = new DBconnect().getConnection();
            ps=conn.prepareStatement(query);
            rs=ps.executeQuery();
            while(rs.next()){
                list.add(new User(rs.getInt(1),rs.getString(2),
                                 rs.getString(3), rs.getString(4),
                                 rs.getString(5),rs.getString(6),rs.getString(7)));
            }
        }catch(Exception e){
        }
        return list;
    }
    
    public void save( String name, String email, String sdt, String adress ,String pass){
        String query = "INSERT INTO longbidz.user(name, email, sdt, address, pass, role)"
                     + "VALUES(?, ?, ?, ?, ?, ?)";
        try {
            conn = new DBconnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, sdt);
            ps.setString(4, adress);
            ps.setString(5, pass);
            ps.setString(6, "USER");
            ps.executeUpdate();
        } catch (Exception e) {
            System.out.println(e);
        }
    }
    
     public User findByUsernameAndPassword(String email, String pass){
        String query = "SELECT * FROM longbidz.user WHERE email=? AND pass=?";
        try{
            User user = new User();
            conn = new DBconnect().getConnection();
            ps = conn.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while(rs.next()){           
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("pass"));
                return user;
            }
        }
        catch (Exception e){
            System.out.println(e);
        }
        return null;
    }   
}
