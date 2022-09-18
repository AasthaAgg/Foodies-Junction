package foodiesaction;

import foodiesconnection.FoodiesConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class confirmAction {
    Connection con=FoodiesConnection.getConnection();
    PreparedStatement ps;
    
    public void confirmOrder(String mobile, String amount){
        
        try
        {
            ps=con.prepareStatement("insert into orders_placed(mobile,amount,date) values(?,?,now())");
            ps.setString(1,mobile);
            ps.setString(2,amount);
                    
           int i=ps.executeUpdate();
        }
        catch(SQLException e){
            
        }
          
    }
    
    public ResultSet getOrderDetails(){
        ResultSet rs=null;
        try{
            ps=con.prepareStatement("select * from orders_placed");
            rs=ps.executeQuery();
        }
        catch(SQLException e){
            
        }
        return rs;
    }
    
    public boolean statusConfirm(String status, int order_id){
        boolean b=false;
        try{
            ps=con.prepareStatement("update orders_placed set status=? where order_id=?");
            ps.setString(1, status);
            ps.setInt(2,order_id);
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
