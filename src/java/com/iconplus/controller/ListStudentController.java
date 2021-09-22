package com.iconplus.controller;



import com.iconplus.dao.StudentDao;
import com.iconplus.model.Student;
import java.io.IOException;

import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name="ListStudentController", urlPatterns={"/list-student"})
public class ListStudentController extends HttpServlet {
    private StudentDao studentDao = new StudentDao();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        List<Student> students =studentDao.getStudents();
        request.setAttribute("students", students);
 
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/list-student.jsp");
        rd.forward(request, response);
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

    }






}