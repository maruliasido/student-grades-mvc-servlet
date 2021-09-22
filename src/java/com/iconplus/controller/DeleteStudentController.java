package com.iconplus.controller;

import com.iconplus.dao.StudentDao;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "DeleteStudentController", urlPatterns = {"/delete-student"})
public class DeleteStudentController extends HttpServlet {

    private StudentDao studentDao = new StudentDao();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int studentId = Integer.valueOf(request.getParameter("id"));
        studentDao.deleteStudent(studentId);
        response.sendRedirect(request.getContextPath() + "/list-student");
    }
}