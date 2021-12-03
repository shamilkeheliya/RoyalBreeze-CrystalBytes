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
        
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        

    //cookies
    try{
		
	String n=request.getParameter("name");
	out.print("Welcome "+n);

	Cookie ck=new Cookie("name",n);//creating cookie object
       	response.addCookie(ck);//adding cookie in the response

	//creating submit button
	out.print("<form action='#' method='post'>");
	out.print("<input type='submit' value='go'>");
	out.print("</form>");
		
	out.close();

        }
    catch(Exception e)
    {
        System.out.println(e);
    }
    /**}
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    
   /* @Override
    public String getServletInfo() {
        return "Short description";*/
   
    }// </editor-fold
        }
