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
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.connection;

/**
 *
 * @author Hashini
 */
public class LoginServlet extends HttpServlet {

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        

    //cookies
     try 
        {
            connection conn = new connection();
            boolean result = conn.sqlCommand("select*from customers(email,password)VALUES('"+email+"','"+password+"')");
      
        if(email.equals("Profile.jsp")){  
            out.print("You are successfully logged in!");  
            out.print("<br>Welcome, "+email);  
              
            Cookie ck=new Cookie("email",email);  
            ck.setMaxAge(30);// cookie will expire in 30 seconds
            response.addCookie(ck);  
        }
        else{  
            out.print("sorry, email or password error!");  
            request.getRequestDispatcher("login.jsp").include(request, response);  
        }  
       }
        catch(Exception se)
        {
            se.printStackTrace();
        }
    }
    
  
    /**}
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    
    @Override
    public String getServletInfo() {
        return "Short description";
   
    }// </editor-fold
        }
