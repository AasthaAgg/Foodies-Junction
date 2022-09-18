package foodiesaction;

import foodiesconnection.FoodiesConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import java.sql.SQLException;

public class AdminLoginAction {
    public boolean adminLogin(String mob, String pwd){
        ResultSet rs=null;
        boolean b=false;
        try
        {
            Connection con=FoodiesConnection.getConnection();
            PreparedStatement ps=con.prepareStatement("select * from admin where mobile=? and password=?");
            ps.setString(1, mob);
            ps.setString(2, pwd);
            
            rs=ps.executeQuery();
            if(rs.next())
            {
                b=true;
            }
        }
        catch(SQLException e){
            
        }
        return b;
    }
}
