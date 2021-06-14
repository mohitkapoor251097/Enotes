package com.DAO;
import com.User.UserDetails;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
public class UserDAO {
   private Connection conn;
    public UserDAO(Connection conn) {
        this.conn = conn;
    }
   public boolean addUser(UserDetails us)
   {
       boolean f=false;
       try
       {
           String query="insert into user(name,email,password) values (?,?,?)";
           PreparedStatement ps=conn.prepareStatement(query);
           ps.setString(1,us.getName());
           ps.setString(2, us.getEmail());
           ps.setString(3, us.getPassword());
          int i=ps.executeUpdate();
          if(i==1)
          {
              f=true;
          }
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }
       return f; 
   }
   public UserDetails loginUser(UserDetails us)
   {
       UserDetails user=null;
       try
       {
           String query="select * from user where  email=? and password=?";
           PreparedStatement pt=conn.prepareStatement(query);
           pt.setString(1,us.getEmail());
           pt.setString(2,us.getPassword());
           ResultSet rs=pt.executeQuery();
           
           if(rs.next())
           {
               user=new UserDetails();
               user.setId(rs.getInt("id"));
               user.setName(rs.getString("name"));
                user.setEmail(rs.getString("email"));
                user.setPassword(rs.getString("password"));
                //user.setProfile("profile");
                  user.setProfile(rs.getString("profile"));
           }
           
       }
       catch(Exception e)
       {
           e.printStackTrace();
       }

   return  user;
  }
    public boolean updateUser(UserDetails user)
    {
        boolean f=false;
        try
        {
             String query="update user set name=? ,email=? ,password=?,profile=? where id=?";
             PreparedStatement p=conn.prepareStatement(query);
             p.setString(1, user.getName());
             p.setString(2, user.getEmail());
             p.setString(3,user.getPassword());
           
             p.setString(4, user.getProfile());
             p.setInt(5,user.getId());
             p.executeUpdate();
              f=true;       
        }catch(Exception e){
            e.printStackTrace();
        }
        return f;
    }
   
}

