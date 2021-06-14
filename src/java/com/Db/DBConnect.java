
package com.Db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {
    private static Connection conn;
    public static Connection getConn()
    {
      try
        {
          if(conn==null)
          {
                //driver class load
            Class.forName("com.mysql.jdbc.Driver");
            
            //create a connection
            
            conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/enotes2","root","");
          }
        }
        catch(Exception e)
        {
            e.printStackTrace();
        }
           
        return conn;
    }
}
