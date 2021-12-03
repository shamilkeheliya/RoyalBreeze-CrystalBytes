/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.connection;
import model.passwordEncryption;

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
        
        passwordEncryption pass = new passwordEncryption();
        String encryptedPassword = pass.encrypt(password);
        

    //cookies
     try 
        {
            connection conn = new connection();
            boolean result = conn.checkUser(email, encryptedPassword);
      
        if(result==true){
            RequestDispatcher rs = request.getRequestDispatcher("Profile/Profile.jsp");
              
            Cookie ck=new Cookie("email",email);  
            ck.setMaxAge(30);// cookie will expire in 30 seconds
            response.addCookie(ck);  
        }
        else{  
            out.println("<h2 style='color:white'>Email or Password Incorrect</h2>");
            RequestDispatcher rs = request.getRequestDispatcher("Login Register/Login.jsp");
            rs.include(request, response);
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
