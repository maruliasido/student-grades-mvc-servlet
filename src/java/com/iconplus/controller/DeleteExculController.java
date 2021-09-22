package com.iconplus.controller;

import com.iconplus.dao.ExculDao;
import com.iconplus.model.Excul;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name="DeleteExculController", urlPatterns={"/delete-exculs"})
public class DeleteExculController extends HttpServlet {
    private ExculDao exculsDao = new ExculDao();
    private Excul exculs = new Excul();
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String subjectIds= request.getParameter("id");
        
        int subjectId = Integer.parseInt(subjectIds);
        exculsDao.deleteExcul(subjectId);
        response.sendRedirect(request.getContextPath()+"/list-student");

    } 



}