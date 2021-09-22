package com.iconplus.controller;


import com.iconplus.dao.ExculDao;
import com.iconplus.dao.StudentDao;
import com.iconplus.model.Excul;
import com.iconplus.model.Student;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name="UpdateExculController", urlPatterns={"/update-exculs"})
public class UpdateExculController extends HttpServlet {
  
    private ExculDao exculsDao = new ExculDao();
    private StudentDao studentDao = new StudentDao();
    private Excul exculs = new Excul();
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int exculsId = Integer.valueOf(request.getParameter("id"));
        int studentId = Integer.valueOf(request.getParameter("id2"));
        Student student = studentDao.getStudentById(studentId);
        exculs = exculsDao.getExculById(exculsId);

        request.setAttribute("student", student);
        request.setAttribute("exculs", exculs);
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/update-exculs.jsp");
        rd.forward(request, response);
    } 


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        exculs.setStudentId(Integer.parseInt(request.getParameter("id2")));
        exculs.setSubject(request.getParameter("subject"));
        exculs.setId(Integer.parseInt(request.getParameter("idz")));
        response.sendRedirect(request.getContextPath()+"/list-student");
    }





}
