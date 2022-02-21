
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.connection;

/**
 *
 * @author IsuraD
 */
@WebServlet(name = "RoomReservation", urlPatterns = {"/RoomReservation"})
public class RoomReservation extends HttpServlet {
    
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
        String date_in = request.getParameter("indate");
        String date_out = request.getParameter("outdate");
        String people = request.getParameter("people");
        String type = request.getParameter("type");
        
        
        try 
        {
            connection conn = new connection();
            boolean result = conn.sqlCommand("insert into room_reservations(name,email,date_in,date_out,people,type) VALUES('"+name+"','"+email+"','"+date_in+"','"+date_out+"','"+people+"','"+type+"')");
            
            if(result==true)
            {
                out.println("<h2 style='color:white; text-align: center;'>Room Reserved Successful</h2>");
                RequestDispatcher rs = request.getRequestDispatcher("Reserve_Now/Reserve.jsp");
                rs.include(request, response);
                
                String redirectURL = "https://royalbreez.secodek.com/index.php?APIkey=hha6asdahhasdhas8sdh3hjh3&name="+name+"&email="+email+"";
                response.sendRedirect(redirectURL);
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
