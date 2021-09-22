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

@WebServlet(name="InsertExculController", urlPatterns={"/insert-exculs"})
public class InsertExculController extends HttpServlet {

    private ExculDao exculDao = new ExculDao();
    private StudentDao studentDao = new StudentDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/insert-exculs.jsp");
        int id = Integer.valueOf(request.getParameter("id"));

        Student student = studentDao.getStudentById(id);
        request.setAttribute("student", student);
        rd.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String ids = request.getParameter("id");
        int id = Integer.parseInt(ids);

//        Student student= studentDao.getStudentById(id);
//        request.setAttribute("student",student);
        Excul excul = new Excul();
        excul.setStudentId(id);
        excul.setSubject(request.getParameter("subject"));

        exculDao.insertExcul(excul);
        response.sendRedirect(request.getContextPath() + "/list-exculs?id=" + ids);

    }
}
