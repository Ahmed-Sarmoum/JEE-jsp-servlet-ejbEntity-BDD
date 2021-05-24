/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sarmoum.controller;

import com.sarmoum.dao.StudentDaoLocal;
import com.sarmoum.model.Student;
import java.io.IOException;
import java.io.PrintWriter;
import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Ahmed SARMOUM
 */
@WebServlet(name = "StudentServlet", urlPatterns = {"/StudentServlet"})
public class StudentServlet extends HttpServlet {
    @EJB
    private StudentDaoLocal studentDao;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
       
        String action = request.getParameter("action");
        String studentIdStr = request.getParameter("studentId");

        int studentId = 0;
        if (studentIdStr != null && !studentIdStr.equals(""))
            studentId = Integer.parseInt(studentIdStr);
        String firstname = request.getParameter("firstname");
        String lastname = request.getParameter("lastname");
        String yearStr = request.getParameter("year");
        int year = 0;
        if (yearStr != null && !yearStr.equals(""))   
            year = Integer.parseInt(yearStr);
        
        String username = request.getParameter("username");
        String email = request.getParameter("email");
        String address = request.getParameter("address");
        
        Student student = new Student(studentId,firstname, lastname, year, username, email, address);
        
        if ("Add".equalsIgnoreCase(action)) {
            System.out.println("ADD");
            studentDao.addStudent(student);
        } else if ("Edit".equalsIgnoreCase(action)) {
            System.out.println("Edit");
            studentDao.editStudent(student);
        } else if ("Delete".equalsIgnoreCase(action)) {
            System.out.println("Delete");
            studentDao.deleteStudent(studentId);
        } else if ("Search".equalsIgnoreCase(action)) {
            System.out.println("Search");
            student = studentDao.getStudent(studentId);
        }
        
        request.setAttribute("student", student);
        request.setAttribute("allStudent", studentDao.getAllStudent());
        request.getRequestDispatcher("index.jsp").forward(request, response);
        
        
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public void init() throws ServletException {
        super.init(); //To change body of generated methods, choose Tools | Templates.
    }
    
    

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
