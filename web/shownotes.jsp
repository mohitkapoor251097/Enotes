<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="com.User.Post"%>
<%@page import="com.DAO.PostDAO"%>
<%@page import="com.Db.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
UserDetails user3=(UserDetails)session.getAttribute("userD");
if(user3==null)
{
    response.sendRedirect("login");
    session.setAttribute("login-error","Please Login...");
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" 
                integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
    crossorigin="anonymous">
         <%@include file="allcss.jsp" %>
        <title>Show Notes</title>   
    </head>
    <body>
       
        <%@include file="navbar.jsp" %> 
         <%
                 String updateMsg=(String) session.getAttribute("updateMsg");
                 if(updateMsg != null)
                 {%>
                      <div class="alert alert-success" role="alert">
                                                 <%= updateMsg %> 
                                                
                                 
                                            </div>
                                                                <%
                                 session.removeAttribute("updateMsg");
                                
                                %>
                 <%}
                  
                        String wrongMsg=(String) session.getAttribute("wrongMsg");
                 if(wrongMsg != null)
                 {%>
                      <div class="alert alert-danger" role="alert">
                                                 <%= wrongMsg %> 
                                                
                                 
                                            </div>
                                                                <%
                                 session.removeAttribute("wrongMsg");
                                
                                %>
                 <%}
                  
                   String DeleteMsg=(String) session.getAttribute("DeleteMsg");
                 if(DeleteMsg != null)
                 {%>
                      <div class="alert alert-success" role="alert">
                                                 <%= DeleteMsg%> 
                                                
                                 
                                            </div>
                                                                <%
                                 session.removeAttribute("DeleteMsg");
                                
                                %>
                 <%}

                     String updateMsg1=(String) session.getAttribute("updateMsg1");
                 if(updateMsg1 != null)
                 {%>
                      <div class="alert alert-success" role="alert">
                                                 <%= updateMsg1 %> 
                                                
                                 
                                            </div>
                                                                <%
                                 session.removeAttribute("updateMsg1");
                                
                                %>
                 <%}
                  
                       String fail=(String) session.getAttribute("fail");
                 if(fail != null)
                 {%>
                      <div class="alert alert-danger" role="alert">
                                                 <%= fail %> 
                                               </div>
                             <% session.removeAttribute("fail");
                                %>
                 <%}
                  %>
                  
        <div class="container">
            <b> <h2 class="text-center text-info">All notes</h2></b>
            <div class="row">
                <div class="col-md-12">
                     <%     
                                PostDAO ob=new PostDAO(DBConnect.getConn());
                                try
                                {
                                    List<Post>post=ob.getData(user3.getId());
             if(user3!=null)
                                {
                                    
                                
                                    for(Post po:post)
                                    {%>
                                          <div class="card mt-3">
                        <img src="images/note1.png" class="card-img-top mt-2 mx-auto" style="max-width: 100px;">
                        <div class="card-body p-4">
                           
                            <b><h2 class="card-title"><%= po.getTitle()%></h2></b>
                            <p><%= po.getContent()%></p>
                            <p>
                                
                                <b class="text-success">Published by <%=user3.getName()  %></b><br><b class="text-primary"></b>
                                
                                
                            </p>
                              <p>
                                
                                  <b class="text-success">Published Date : <%= po.getPdate()   %></b><br><b class="text-success"></b>
                                
                                
                            </p>
                            <div class="container text-center mt-2">
                                <a href="deleteServlet?note_id=<%= po.getId()    %>" class="btn btn-danger">Delete</a>
                                 <a href="edit.jsp?note_id=<%=  po.getId()     %>" class="btn btn-primary">Edit</a>
                            </div>
                        </div>
                    </div>
                                   <% }

                                }}
catch(Exception e)
{
e.printStackTrace();
}
                                %>
                  
            </div>
        </div>
                               
    </body>
</html>
