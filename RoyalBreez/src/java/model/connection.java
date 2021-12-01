package model;

import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
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
              //  conn = DriverManager.getConnection("jdbc:mysql://localhost/test","root","");  
                conn = DriverManager.getConnection("jdbc:mysql://localhost/secodek6_java?useSSL=false","secodek6_shamil","123456");
                out.println("Connention Success!!!!!!!!!!");
            }
            catch (Exception ex)
            {
                out.println("Error: "+ex);
            }
        }        
        return conn;
    }
    
}
