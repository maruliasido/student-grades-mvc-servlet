package com.iconplus.dao;


import com.iconplus.model.Student;
import java.sql.*;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class StudentDao {
    private ConnectionRepository connectionRepository = new ConnectionRepository();
    
    
    public void save(Student student){
        try{
            String insertStudent = "insert into t_student(full_name,status,phone,address) values(?,?,?,?)";
            PreparedStatement ps =connectionRepository.getPreparedStatement(insertStudent);
            ps.setString(1,student.getFullName());
            ps.setString(2,student.getStatus());
            ps.setString(3,student.getPhone());
            ps.setString(4,student.getAddress());
            ps.execute();
        }catch(Exception e){
            System.err.println(e);
        }
    }
        
    public Student getStudentById(int id){
        try{
            String query = "select * from t_student where id=?";
            PreparedStatement ps = connectionRepository.getPreparedStatement(query);
            ps.setInt(1, id);
            ResultSet rs =ps.executeQuery();
            
            if(rs.next()){
                return mapResultSetToStudent(rs);
            }
 
        }catch(Exception e){
            System.err.println(e);
        }
        
        return null;
    }
  
    public void updateStudent(Student student){
        try{
            String update = "update t_student set full_name=?,status=?,address=?,phone=? where id=?";
            PreparedStatement ps= connectionRepository.getPreparedStatement(update);
            ps.setString(1, student.getFullName());
            ps.setString(2, student.getStatus());
            ps.setString(3, student.getAddress());
            ps.setString(4, student.getPhone());
            ps.setInt(5, student.getId());
            ps.execute();
        }catch(Exception e){
            System.err.println(e);
        }
    }
    
    public void deleteStudent(int id){
        try{
            String delete = "delete from t_student where id=?";
            PreparedStatement ps = connectionRepository.getPreparedStatement(delete);
            ps.setInt(1, id);
            ps.execute();

        }catch(Exception e){
            System.err.println(e);
        }
    }
    
    public List<Student> getStudents(){
        try{
            String selectStudent = "select * from t_student";
            PreparedStatement ps = connectionRepository.getPreparedStatement(selectStudent);
            ResultSet rs = ps.executeQuery();
            List<Student>students= new ArrayList<>();
            while(rs.next()){
                Student student = mapResultSetToStudent(rs);
                students.add(student);
            }
            return students;

        }catch(Exception e){
            System.err.println(e);
        }
        return Collections.emptyList();
    }

    private Student mapResultSetToStudent(ResultSet rs) {
        try{
           Student student = new Student ();
           student.setId(rs.getInt("id"));
           student.setFullName(rs.getString("full_name"));
           student.setStatus(rs.getString("status"));
           student.setAddress(rs.getString("address"));
           student.setPhone(rs.getString("phone"));
           return student;
            
        }catch(Exception e){
            System.err.println(e);
        }
        return null;
    }

}