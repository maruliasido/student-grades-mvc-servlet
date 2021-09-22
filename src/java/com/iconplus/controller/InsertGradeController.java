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


@WebServlet(name="InserGradeController", urlPatterns={"/insert-grade"})
public class InsertGradeController extends HttpServlet {
    private GradeDao gradeDao = new GradeDao();
    private StudentDao studentDao = new StudentDao();
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/insert-grade.jsp");
        int id = Integer.valueOf(request.getParameter("id"));
        
        Student student= studentDao.getStudentById(id);
        request.setAttribute("student",student);
        rd.forward(request, response);
    } 


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String ids = request.getParameter("id");
        int id= Integer.parseInt(ids);
        
//        Student student= studentDao.getStudentById(id);
//        request.setAttribute("student",student);

        Grade grade = new Grade();
        grade.setStudentId(id);
        grade.setSubject(request.getParameter("subject"));
        grade.setGrade(Integer.valueOf(request.getParameter("grade")));
        
        gradeDao.insertGrade(grade);
        response.sendRedirect(request.getContextPath()+"/list-grade?id="+ids);
        
        
    }

}
