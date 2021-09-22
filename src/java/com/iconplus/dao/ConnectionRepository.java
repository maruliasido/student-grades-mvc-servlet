package com.iconplus.dao;

import java.sql.*;

public class ConnectionRepository {
    public Connection databaseConnection;
    
    public PreparedStatement getPreparedStatement(String query){
        try{
            if(databaseConnection==null){
                Class.forName("com.mysql.cj.jdbc.Driver");
                databaseConnection = DriverManager.getConnection("jdbc:mysql://localhost:3306/iconplus","root","root");
            }
            return databaseConnection.prepareStatement(query);
        }catch(Exception e){
            System.err.println(e);
        }
        return null;
    }
    

}