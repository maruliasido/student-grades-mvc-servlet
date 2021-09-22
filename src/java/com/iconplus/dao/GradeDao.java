package com.iconplus.dao;


import com.iconplus.model.Grade;
import java.util.List;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import java.util.Collections;

public class GradeDao {
    private ConnectionRepository connectionRepository = new ConnectionRepository();
    
    public List<Grade> getGradeByStudentId(int id){
        try{
            String getGradeByStudentIdQuery="select * from t_grade where student_id=?";
            PreparedStatement ps = connectionRepository.getPreparedStatement(getGradeByStudentIdQuery);
            ps.setInt(1, id);
            ResultSet rs = ps.executeQuery();
            List<Grade> grades = new ArrayList<>();
            while(rs.next()){
                Grade grade = mapResultSetToGrade(rs);
                grades.add(grade);
            }
            
            return grades;
            
        }catch(Exception e){
            System.err.println(e);
        }
        return Collections.emptyList();
    }
    
    
    public void deleteGrade(int id){
        try{
            String delete = "delete from t_grade where id=?";
            PreparedStatement ps = connectionRepository.getPreparedStatement(delete);
            ps.setInt(1, id);
            ps.execute();
 
        }catch(Exception e){
            System.err.println(e);
        }
    }
    
    
    public void insertGrade(Grade grade){
        try{
            String  insertGradeQuery = "insert into t_grade(student_id,subject,grade) values(?,?,?)";
            PreparedStatement ps = connectionRepository.getPreparedStatement(insertGradeQuery);
            ps.setInt(1, grade.getStudentId());
            ps.setString(2, grade.getSubject());
            ps.setInt(3, grade.getGrade());
            ps.execute();

        }catch(Exception e){
            System.err.println(e);
        }
    }
    
     public void updateGrade(Grade grade){
        try{
            String update = "update t_grade set subject=?,grade=? where student_id=? and id=?";
            PreparedStatement ps= connectionRepository.getPreparedStatement(update);
            ps.setString(1, grade.getSubject());
            ps.setInt(2, grade.getGrade());
            ps.setInt(3, grade.getStudentId());
            ps.setInt(4, grade.getId());
            ps.execute();
        }catch(Exception e){
            System.err.println(e);
        }
    }
     
     public Grade getGradeById(int id){
        try{
            String query = "select * from t_grade where id=?";
            PreparedStatement ps = connectionRepository.getPreparedStatement(query);
            ps.setInt(1, id);
            ResultSet rs =ps.executeQuery();
            
            if(rs.next()){
                return mapResultSetToGrade(rs);
            }
 
        }catch(Exception e){
            System.err.println(e);
        }
        
        return null;
    }
    
    public Grade mapResultSetToGrade(ResultSet rs){
        try{
            Grade grade = new Grade();
            grade.setId(rs.getInt("id"));
            grade.setSubject(rs.getString("subject"));
            grade.setGrade(rs.getInt("grade"));
            
            return grade;
  
        }catch(Exception e){
            System.err.println(e);
        }
        return null;
    }

}