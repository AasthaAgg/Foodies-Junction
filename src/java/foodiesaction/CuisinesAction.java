package foodiesaction;

import foodiesconnection.FoodiesConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class CuisinesAction {
    Connection con=FoodiesConnection.getConnection();
    PreparedStatement ps;
    public void addItem(String mobile,String code)
    {
        
        try
        {
            ps=con.prepareStatement("insert into foodorder(mobile,foodcode) values(?,?)");
            
            ps.setString(1, mobile);
            ps.setString(2,code);
            
            ps.executeUpdate();
        }
        catch(SQLException e)
        {
            
        }
     
    }
    public ResultSet getFoodCode(String mobile)
    {
        ResultSet rs=null;
        try
        {
            ps=con.prepareStatement("select foodcode from foodorder where mobile=?");
            
            ps.setString(1,mobile);            
            rs= ps.executeQuery();
        }
        catch(SQLException e)
        {
            
        }
        return rs;
     
    }
    public ResultSet getFoodDetail(int code)
    {
        ResultSet rs=null;
        try
        {
            ps=con.prepareStatement("select * from cuisines where code=?");
            
            ps.setInt(1,code);
            rs=ps.executeQuery();
        }
        catch(SQLException e)
        {
            
        }
        return rs;
    }
    public ResultSet getFoodQuantity(int code,String mobile)
    {
        ResultSet rs=null;
        try
        {
            ps=con.prepareStatement("select quantity from foodorder where foodcode=? and mobile=?");
            
            ps.setInt(1,code);
            ps.setString(2, mobile);
            rs= ps.executeQuery();
        }
        catch(SQLException e)
        {
            
        }
        return rs;
    }
    public boolean deleteOrder(int code)
    {
        boolean b=false;
        
        try
        {
            ps=con.prepareStatement("delete from foodorder where foodcode=?");
            ps.setInt(1, code);
            
            int i=ps.executeUpdate();
            if(i>0)
            {
                b=true;
            }
            
        }
        catch(SQLException e)
        {
            
        }
        return b;
        
    }
     public void foodOrderQuantity(int code, int q,String mobile)
    {
        try
        {
            ps=con.prepareStatement("update foodorder set quantity=? where foodcode=? and mobile=?");
            ps.setInt(1, q);
            ps.setInt(2, code);
            ps.setString(3, mobile);
            
            ps.executeUpdate();
        }
        catch(SQLException e)
        {
            
        }
       
        
    }
}
