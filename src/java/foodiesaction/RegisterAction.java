package foodiesaction;

import foodiesconnection.FoodiesConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class RegisterAction {
    
    Connection con=FoodiesConnection.getConnection();
    PreparedStatement ps;
    
    public boolean registerUser(String fname, String lname,String mob, String pwd){
        boolean b=false;
        try{ 
            ps=con.prepareStatement("insert into signup(firstname,lastname,mobile,password) values(?,?,?,?)");
            ps.setString(1, fname);
            ps.setString(2, lname);
            ps.setString(3, mob);
            ps.setString(4, pwd);
            
            int i=ps.executeUpdate();
            
            if(i>0){
                b=true;
            }
        }
        catch(SQLException e){
            
        }
        
        return b;
    }
    
}