package model;
import java.security.NoSuchAlgorithmException;  
import java.security.MessageDigest;  

public class passwordEncryption {
 
    public String encrypt(String password)
    {
        String encryptedpassword = null;  
        try   
        {  
            MessageDigest m = MessageDigest.getInstance("MD5");                
            m.update(password.getBytes());                 
            byte[] bytes = m.digest();                 
            StringBuilder s = new StringBuilder();  
            for(int i=0; i< bytes.length ;i++)  
            {  
                s.append(Integer.toString((bytes[i] & 0xff) + 0x100, 16).substring(1));  
            }               
            encryptedpassword = s.toString();  
        }   
        catch (NoSuchAlgorithmException e)   
        {  
            e.printStackTrace(); 
        }  
        
        return encryptedpassword;
    }
}
