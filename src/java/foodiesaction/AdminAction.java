package foodiesaction;

import foodiesconnection.FoodiesConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class AdminAction {
    Connection con=FoodiesConnection.getConnection();
    PreparedStatement ps;
    
    public ResultSet getEarnings(){
        ResultSet rs=null;
        
        try{
            ps=con.prepareStatement("select amount from orders_placed");
            rs=ps.executeQuery();
        }
        catch(SQLException e){
            
        }
        
        return rs;
    }
    
    public ResultSet getCustomers(){
        ResultSet rs=null;
        try{
            ps=con.prepareStatement("select count(mobile) from signup");
            rs=ps.executeQuery();
        }
        catch(SQLException e){
            
        }
        return rs;
    }
    
    public ResultSet getOrders(){
        ResultSet rs=null;
        try{
            ps=con.prepareStatement("select count(mobile) from orders_placed");
            rs=ps.executeQuery();
        }
        catch(SQLException e){
            
        }
        return rs;
    }
    
    public ResultSet getFeed(){
        ResultSet rs=null;
        try{
            ps=con.prepareStatement("select count(mobile) from feedbacks");
            rs=ps.executeQuery();
        }
        catch(SQLException e){
            
        }
        return rs;
    }
    
    public ResultSet getConfirmedStatus(){
        ResultSet rs=null;
        try{
            ps=con.prepareStatement("select count(status) from orders_placed where status='Confirmed'");
            rs=ps.executeQuery();
        }
        catch(SQLException e){
            
        }
        return rs;
    }
    
    public ResultSet getPendingStatus(){
        ResultSet rs=null;
        try{
            ps=con.prepareStatement("select count(status) from orders_placed where status='Pending'");
            rs=ps.executeQuery();
        }
        catch(SQLException e){
            
        }
        return rs;
    }
    
    public ResultSet getCancelledStatus(){
        ResultSet rs=null;
        try{
            ps=con.prepareStatement("select count(status) from orders_placed where status='Cancelled'");
            rs=ps.executeQuery();
        }
        catch(SQLException e){
            
        }
        return rs;
    }
    public ResultSet getMenu()
    {
        ResultSet rs=null;
        try{
            ps=con.prepareStatement("select * from cuisines");
            rs=ps.executeQuery();
        }
        catch(SQLException e){
            
        }
        return rs;
    }
}
