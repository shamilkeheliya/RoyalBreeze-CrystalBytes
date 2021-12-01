package controller;

import java.io.IOException;
import java.io.PrintWriter;
import static java.lang.System.out;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.connection;
import model.passwordEncryption;

/**
 *
 * @author Hashini
 */
public class RegisterServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String first_name = request.getParameter("fname");
        String last_name = request.getParameter("lname");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String mobile = request.getParameter("mobile");
        String country = request.getParameter("country");
        
        passwordEncryption pass = new passwordEncryption();
        String encryptedPassword = pass.encrypt(password);
        
        try 
        {
            connection conn = new connection();
            boolean result = conn.sqlCommand("insert into customers (first_name,last_name,email,password,country,phone_number) VALUES('"+first_name+"','"+last_name+"','"+email+"','"+encryptedPassword+"','"+country+"','"+mobile+"')");
            if(result==true)
            {
                out.println("<h2 style='color:white'>Your Message Send successfully</h2>");
                RequestDispatcher rs = request.getRequestDispatcher("Login Register/Login.jsp");
                rs.include(request, response);
            }    
            else
            {
                out.println("<h2 style='color:white'>Account Created Failed</h2>");
                RequestDispatcher rs = request.getRequestDispatcher("Login Register/Register.jsp");
                rs.include(request, response);                
            }
        }
        catch(Exception se)
        {
            se.printStackTrace();
        }
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
