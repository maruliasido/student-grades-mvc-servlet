package com.iconplus.controller;




import com.iconplus.dao.GradeDao;
import com.iconplus.model.Grade;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name="DeleteGradeController", urlPatterns={"/delete-grade"})
public class DeleteGradeController extends HttpServlet {
    private GradeDao gradeDao = new GradeDao();
    private Grade grade = new Grade();
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String subjectIds= request.getParameter("id");
        
        int subjectId = Integer.parseInt(subjectIds);
        gradeDao.deleteGrade(subjectId);
        response.sendRedirect(request.getContextPath()+"/list-student");

    } 





}
