package com.iconplus.dao;

import com.iconplus.model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class AuthenticatorDao {
    public ConnectionRepository connectionRepository = new ConnectionRepository();
    
    public boolean authenticate (User loginUser){
        //ada gak usernamenya dia? makanya boolean nya "kalo tidak null"
        User user = getUserByUsername(loginUser.getUsername());
        return user != null && user.getPassword().equals(loginUser.getPassword());
    }
    
    //nyari username
    public User getUserByUsername(String username){
        try{                              
            String selectUserByUsername = "select * from t_admin where username=?";
            PreparedStatement ps = connectionRepository.getPreparedStatement(selectUserByUsername);
            ps.setString(1,username);
            //result from select
            ResultSet rs = ps.executeQuery();
            if (rs.next()){
                //kalo hasil nya ketemu, return student yg sudah diurai dengan mapresultsettouser
                return mapResultSetToUser(rs);
            }  
        }catch(Exception e){
            System.err.println(e);
        }
        return null;
    }
    
    //pengurai data user
    public User mapResultSetToUser(ResultSet rs){
        try{
            User user = new User();
            user.setId(rs.getInt("id"));
            user.setUsername(rs.getString("username"));
            user.setPassword(rs.getString("password"));
            return user;
            
            
        }catch(Exception e){
            System.err.println(e);
        }
        return null;
        
    }
    
   

}