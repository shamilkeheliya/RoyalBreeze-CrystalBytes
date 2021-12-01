package model;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class connection {
    
    public Connection createConnection () throws ClassNotFoundException, SQLException
    {
        boolean errorChecker = false;
        Connection conn = null;
        
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch (Exception ex)
            
        {
            out.println("Error: "+ex);
            errorChecker = true;
        }
        
        if(!errorChecker)
        {
            try
            {
                conn = DriverManager.getConnection("jdbc:mysql://localhost/test","root","");
                out.println("Connention Success!!!!!!!!!!");
            }
            catch (Exception ex)
            {
                out.println("Error: "+ex);
            }
        }        
        return conn;
    }
    /*public  boolean checkUser(String email,String pass) 
                {
                  boolean st =false;
                  try {

                      
                      PreparedStatement ps = createConnection().prepareStatement("select * from login where email=? and pass=?");
                      ps.setString(1, email);
                      ps.setString(2, pass);
                      ResultSet rs =ps.executeQuery();
                      st = rs.next();

                  }
                    catch(Exception e) {
                        e.printStackTrace();
                    }
        
                     return st;   
    
               }*/
    public  boolean regUser(String firstname, String lastname,String email, String password,String phone,String country) throws ClassNotFoundException, SQLException 
                {
                    PreparedStatement ps = createConnection().prepareStatement("query");
                    ps.setString(1, firstname);
                    ps.setString(2, lastname);
                    ps.setString(3, email);
                    ps.setString(4, password);
                    ps.setString(5, phone);
                    ps.setString(6, country);
                    int i = ps.executeUpdate();

                    if(i > 0) 
                        return true;
                      else
                        return false;
                    
                }

    
}
