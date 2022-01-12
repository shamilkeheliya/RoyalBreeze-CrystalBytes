/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.connection;

/**
 *
 * @author ASUS
 */
@WebServlet(name = "HallReservation", urlPatterns = {"/HallReservation"})
public class HallReservation extends HttpServlet {

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
        String date = request.getParameter("date");
        String people = request.getParameter("people");
        String type = request.getParameter("type");
        
        
        try 
        {
            connection conn = new connection();
            boolean result = conn.sqlCommand("insert into hall_reservations(name,email,date,type,people) VALUES('"+name+"','"+email+"','"+date+"','"+type+"','"+people+"')");
            
            if(result==true)
            {
                out.println("<h2 style='color:white; text-align: center;'>Hall Reserved Successful</h2>");
                RequestDispatcher rs = request.getRequestDispatcher("Reserve_Now/Reserve.jsp");
                rs.include(request, response);
            }    
            else
            {
                out.println("<h2 style='color:white; text-align: center;'>Hall Reserved Failed</h2>");
                RequestDispatcher rs = request.getRequestDispatcher("Reserve_Now/Reserve.jsp");
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
