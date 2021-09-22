package com.iconplus.controller;


import com.iconplus.dao.StudentDao;
import com.iconplus.model.Student;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name="InsertStudentController", urlPatterns={"/insert-student"})
public class InsertStudentController extends HttpServlet {
    private StudentDao studentDao = new StudentDao();
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/insert-student.jsp");
        rd.forward(request, response);
        
    } 


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        Student student = new Student();
        student.setFullName(request.getParameter("fullName"));
        student.setStatus(request.getParameter("status"));
        student.setAddress(request.getParameter("address"));
        student.setPhone(request.getParameter("phone"));
        
        studentDao.save(student);
        //redirect
        response.sendRedirect(request.getContextPath()+"/list-student");
        
        
    }

}
