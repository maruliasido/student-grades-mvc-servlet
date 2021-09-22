package com.iconplus.controller;


import com.iconplus.dao.GradeDao;
import com.iconplus.dao.StudentDao;
import com.iconplus.model.Grade;
import com.iconplus.model.Student;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name="UpdateGradeController", urlPatterns={"/update-grade"})
public class UpdateGradeController extends HttpServlet {
  
    private GradeDao gradeDao = new GradeDao();
    private Grade grade = new Grade();
    private StudentDao studentDao = new StudentDao();
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int gradeId = Integer.valueOf(request.getParameter("id"));
        int studentId = Integer.valueOf(request.getParameter("id2"));
        Student student = studentDao.getStudentById(studentId);
        grade = gradeDao.getGradeById(gradeId);

        request.setAttribute("student", student);
        request.setAttribute("grade", grade);
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/update-grade.jsp");
        rd.forward(request, response);
    } 


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        grade.setStudentId(Integer.parseInt(request.getParameter("id2")));
        grade.setSubject(request.getParameter("subject"));
        grade.setGrade(Integer.parseInt(request.getParameter("grade")));
        grade.setId(Integer.parseInt(request.getParameter("idz")));
        gradeDao.updateGrade(grade);
        response.sendRedirect(request.getContextPath()+"/list-student");
    }





}
