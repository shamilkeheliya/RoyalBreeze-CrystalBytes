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
                conn = DriverManager.getConnection("jdbc:mysql://localhost/royalbreez","root","");
                out.println("Connention Success!!!!!!!!!!");
            }
            catch (Exception ex)
            {
                out.println("Error: "+ex);
            }
        }        
        return conn;
    }
    
    
    public  boolean checkUser(String email,String pass) 
    {
        boolean st =false;
        try
        { 
            PreparedStatement ps = createConnection().prepareStatement("select * from users where email=? and password=?");
            ps.setString(1, email);
            ps.setString(2, pass);
            ResultSet rs =ps.executeQuery();
            st = rs.next();
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
        return st;   
    }
    
    public boolean sqlCommand(String query) throws ClassNotFoundException, SQLException
    {
        try
        {
            PreparedStatement ps = createConnection().prepareStatement(query);
            int i = ps.executeUpdate();
            
            if(i > 0) 
                return true;
            else
                return false;
        }
        catch(Exception ex)
        {
            out.println("Error: "+ex);
            return false;        
        }  
    }

    
}
