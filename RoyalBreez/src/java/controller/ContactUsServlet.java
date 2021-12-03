/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import javax.servlet.RequestDispatcher;
import model.connection;

/**
 *
 * @author Hashini
 */
public class ContactUsServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

     String name = request.getParameter("name");
     String email = request.getParameter("email");
     String message = request.getParameter("message");
     
     response.setContentType("text/html;charset=UTF-8");
     PrintWriter out = response.getWriter();
        
        try 
        {
            connection conn = new connection();
            boolean result = conn.sqlCommand("insert into contact_us (name, email,message,seen,date) VALUES('"+name+"','"+email+"','"+message+"',0,'"+java.time.LocalDate.now()+"')");
            if(result==true)
            {   
                out.println("<h2 style='color:white; text-align: center;'>Your Message Send successfully</h2>");
                RequestDispatcher rs = request.getRequestDispatcher("Contact us/Contact_Us.jsp");
                rs.include(request, response);
            }
            else
            {
                out.println("<h2 style='color:white; text-align: center;'>Message Sent Faild</h2>");
                RequestDispatcher rs = request.getRequestDispatcher("Contact us/Contact_Us.jsp");
                rs.include(request, response);
            }
        }
        catch(Exception se)
        {
            se.printStackTrace();
        }
    }    
        
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>
}