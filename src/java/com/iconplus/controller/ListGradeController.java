package com.iconplus.controller;



import com.iconplus.dao.GradeDao;
import com.iconplus.dao.StudentDao;
import com.iconplus.model.Grade;
import com.iconplus.model.Student;
import java.io.IOException;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name="ListGradeController", urlPatterns={"/list-grade"})
public class ListGradeController extends HttpServlet {
   
    private StudentDao studentDao = new StudentDao();
    private GradeDao gradeDao = new GradeDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int studentId= Integer.valueOf(request.getParameter("id"));
        
       Student student= studentDao.getStudentById(studentId);
       List<Grade> grades = gradeDao.getGradeByStudentId(studentId);
       
       request.setAttribute("student", student);
       request.setAttribute("grades", grades);
       
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/list-grade.jsp");
        rd.forward(request, response);

    } 

}
