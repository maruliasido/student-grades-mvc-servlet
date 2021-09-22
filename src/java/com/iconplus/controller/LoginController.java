/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package com.iconplus.controller;

import com.iconplus.dao.AuthenticatorDao;
import com.iconplus.model.User;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name="LoginController", urlPatterns={"/login"})
public class LoginController extends HttpServlet {

    private AuthenticatorDao authenticatorDao= new AuthenticatorDao();
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/login.jsp");
        rd.forward(request, response);
    } 


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        User loginUser = new User();
        loginUser.setUsername(username);
        loginUser.setPassword(password);
        
        boolean successLogin = authenticatorDao.authenticate(loginUser);
        
        if(successLogin){
            response.sendRedirect(request.getContextPath()+"/list-student");
        }else{
            RequestDispatcher rd = request.getRequestDispatcher("WEB-INF/view/error.jsp");
            rd.forward(request, response);
        }
        
        
    }



}
