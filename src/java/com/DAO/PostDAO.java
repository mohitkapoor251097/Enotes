package com.DAO;
import com.User.Post;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;
public class PostDAO {
    private Connection conn;
    public PostDAO(Connection conn) {
        this.conn = conn;
    }
    public boolean AddNotes(String ti,String co,int ui)
    {
        boolean f=false;
        try
        {
            String query="insert into post(title,content,uid) values (?,?,?)";
            PreparedStatement ps=conn.prepareStatement(query);
            ps.setString(1,ti);
            ps.setString(2, co);
            ps.setInt(3,ui);
          int i=ps.executeUpdate();
            if(i==1)
            {
                f=true;
            }  
        }catch(Exception e)
                {
                    e.printStackTrace();
                }
        
        return f;
    }
    public List<Post> getData(int id)
    {
        List<Post>list=new ArrayList<Post>();
        Post po=null;
        try
        {
            String q="select * from post where uid=? order by id DESC";
            PreparedStatement ps=conn.prepareStatement(q);
            ps.setInt(1,id);
            
            ResultSet rs=ps.executeQuery();
            while(rs.next())
            {
               po=new Post();
                po.setId(rs.getInt(1));
                po.setTitle(rs.getString(2));
                po.setContent(rs.getString(3));
                po.setPdate(rs.getTimestamp(4));
                  list.add(po);
            }
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
       return list;
    }
    public Post getDataById(int noteId)
    {
        Post p=null;
        try
        {
               String q="select * from post where id=?";
               PreparedStatement pt=conn.prepareStatement(q);
               pt.setInt(1,noteId);
               ResultSet rs=pt.executeQuery();
               if(rs.next())
               {
                  p=new Post();
                  p.setId(rs.getInt(1));
                  p.setTitle(rs.getString(2));
                  p.setContent(rs.getString(3));
              }     
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        return p;
    }
     public boolean PostUpdate(int noteid,String title,String content)
    {
        boolean f=false;
        try
        {
            String q="update post set title=?,content=? where id=?";
             PreparedStatement pt=conn.prepareStatement(q);
             pt.setString(1, title);
             pt.setString(2, content);
             pt.setInt(3,noteid);
            int i= pt.executeUpdate();
             if(i==1)
             {
                 f=true;
             }
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return f;
    }
    public boolean DeleteNotes(int nid)
    {
        boolean f=false;
        try
        {
            String q="delete from post  where id=?";
           PreparedStatement pt=conn.prepareStatement(q);
           pt.setInt(1,nid);
          int x= pt.executeUpdate();
          if(x==1)
          {
              f=true;
          }
            
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return f;
    }
}
