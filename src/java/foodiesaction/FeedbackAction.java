package foodiesaction;

import foodiesconnection.FoodiesConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class FeedbackAction {
    Connection con=FoodiesConnection.getConnection();
    PreparedStatement ps;
    
    public void insertFeed(String mob){
        try{
            ps=con.prepareStatement("insert into feedbacks (mobile) values (?)");
            ps.setString(1, mob);
            ps.executeUpdate();
        }
        catch(SQLException e){
            
        }
    }
    
    public ResultSet getFeed(String mob){
    ResultSet rs=null;    
        try{
            ps=con.prepareStatement("select * from feedbacks where mobile=?");
            ps.setString(1, mob);
            rs=ps.executeQuery();
        }
        catch(SQLException e){
        
        }
        return rs;
    }
    
    public void updateFeed(int rate, String mob, String field){
    
        try{
            
            if(field.equals("quality")){
                ps=con.prepareStatement("update feedbacks set quality=? where mobile=?");
                ps.setInt(1, rate);
                ps.setString(2, mob);
            }
            else if(field.equals("service")){
                ps=con.prepareStatement("update feedbacks set service=? where mobile=?");
                ps.setInt(1, rate);
                ps.setString(2, mob);
            }
            else if(field.equals("money")){
                ps=con.prepareStatement("update feedbacks set money=? where mobile=?");
                ps.setInt(1, rate);
                ps.setString(2, mob);
            }
            else if(field.equals("time")){
                ps=con.prepareStatement("update feedbacks set time=? where mobile=?");
                ps.setInt(1, rate);
                ps.setString(2, mob);
            }
            else if(field.equals("experience")){
                ps=con.prepareStatement("update feedbacks set experience=? where mobile=?");
                ps.setInt(1, rate);
                ps.setString(2, mob);
            }
            else if(field.equals("birthday")){
                if(rate==2){
                    ps=con.prepareStatement("update feedbacks set birthday='No' where mobile=?");
                    ps.setString(1, mob);
                }
                else{
                    ps=con.prepareStatement("update feedbacks set birthday='Yes' where mobile=?");
                    ps.setString(1, mob);
                }
            }
            else if(field.equals("anniversary")){
                if(rate==2){
                    ps=con.prepareStatement("update feedbacks set anniversary='No' where mobile=?");
                    ps.setString(1, mob);
                }
                else{
                    ps=con.prepareStatement("update feedbacks set anniversary='Yes' where mobile=?");
                    ps.setString(1, mob);
                }
            }
            else if(field.equals("other")){
                if(rate==2){
                    ps=con.prepareStatement("update feedbacks set other='No' where mobile=?");
                    ps.setString(1, mob);
                }
                else{
                    ps=con.prepareStatement("update feedbacks set other='Yes' where mobile=?");
                    ps.setString(1, mob);
                }
            }
                ps.executeUpdate();
      
        }
        catch(SQLException e){
            
        }
    }
}
