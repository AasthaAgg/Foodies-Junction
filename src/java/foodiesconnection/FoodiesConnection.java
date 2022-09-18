package foodiesconnection;

import java.sql.Connection;
import java.sql.DriverManager;


public class FoodiesConnection {
   
    
    public static final String user="root";
    public static final String pwd="root";
    public static final String url="jdbc:mysql://localhost:3306/foodies";
    
    static
    {
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
        }
        catch(Exception e)
        {
             
        }
    }
    public static Connection getConnection()
    {
        Connection con=null;
        try
        {
          con=DriverManager.getConnection(url, user, pwd);
        }
        catch(Exception e)
        {
            
        }
        
        return con;
    }
    
}
