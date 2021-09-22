package com.iconplus.dao;


import com.iconplus.model.Excul;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import java.sql.ResultSet;

public class ExculDao {
    private ConnectionRepository connectionRepository = new ConnectionRepository();
    
    public List<Excul> getExculByStudentId(int id){
        try{
            String getExculByStudentIdQuery="select * from t_excul where student_id=?";
            PreparedStatement ps = connectionRepository.getPreparedStatement(getExculByStudentIdQuery);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            List<Excul> exculs = new ArrayList<>();
            while(rs.next()){
                Excul excul = mapResultSetToExcul(rs);
                exculs.add(excul);
            }
            
            return exculs;
            
        }catch(Exception e){
            System.err.println(e);
        }
        return Collections.emptyList();
    }
    
    
    public void deleteExcul(int id){
        try{
            String delete = "delete from t_excul where id=?";
            PreparedStatement ps = connectionRepository.getPreparedStatement(delete);
            ps.setInt(1, id);
            ps.execute();
 
        }catch(Exception e){
            System.err.println(e);
        }
    }
    
    
    public void insertExcul(Excul excul){
        try{
            String  insertExculQuery = "insert into t_excul(student_id,extracurricular) values(?,?)";
            PreparedStatement ps = connectionRepository.getPreparedStatement(insertExculQuery);
            ps.setInt(1, excul.getStudentId());
            ps.setString(2, excul.getSubject());
            ps.execute();

        }catch(Exception e){
            System.err.println(e);
        }
    }
    
     public void updateExcul(Excul excul){
        try{
            String update = "update t_excul set extracurricular=? where student_id=? and id=?";
            PreparedStatement ps= connectionRepository.getPreparedStatement(update);
            ps.setString(1, excul.getSubject());
            ps.setInt(2, excul.getStudentId());
            ps.setInt(3, excul.getId());
            ps.execute();
        }catch(Exception e){
            System.err.println(e);
        }
    }
     
     public Excul getExculById(int id){
        try{
            String query = "select * from t_excul where id=?";
            PreparedStatement ps = connectionRepository.getPreparedStatement(query);
            ps.setInt(1, id);
            ResultSet rs =ps.executeQuery();
            
            if(rs.next()){
                return mapResultSetToExcul(rs);
            }
 
        }catch(Exception e){
            System.err.println(e);
        }
        
        return null;
    }
    
    public Excul mapResultSetToExcul(ResultSet rs){
        try{
            Excul excul = new Excul();
            excul.setId(rs.getInt("id"));
            excul.setSubject(rs.getString("extracurricular"));
            return excul;
  
        }catch(Exception e){
            System.err.println(e);
        }
        return null;
    }

}