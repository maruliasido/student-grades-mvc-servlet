package com.iconplus.controller;



import com.iconplus.dao.StudentDao;
import com.iconplus.model.Student;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name="UpdateStudentController", urlPatterns={"/update-student"})
public class UpdateStudentController extends HttpServlet {
    private StudentDao studentDao = new StudentDao();
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        int studentId = Integer.valueOf(request.getParameter("id"));
        Student studentz = studentDao.getStudentById(studentId);
        //ngirim atribute buat dipanggil di jsp
        request.setAttribute("student", studentz);
        RequestDispatcher rd = request.getRequestDispatcher("/WEB-INF/view/update-student.jsp");
        rd.forward(request, response);
        
    }   


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
           
        Student updatedStudent = new Student();
        updatedStudent.setId(Integer.valueOf(request.getParameter("id")));
        updatedStudent.setFullName(request.getParameter("fullName"));
        updatedStudent.setStatus(request.getParameter("status"));
        updatedStudent.setAddress(request.getParameter("address"));
        updatedStudent.setPhone(request.getParameter("phone"));
        
        studentDao.updateStudent(updatedStudent);
        response.sendRedirect(request.getContextPath()+"/list-student");
    }



    

}
