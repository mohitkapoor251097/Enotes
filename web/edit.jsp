

<%@page import="com.User.Post"%>
<%@page import="com.DAO.PostDAO"%>
<%@page import="com.Db.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
UserDetails user4=(UserDetails)session.getAttribute("userD");
if(user4==null)
{
    response.sendRedirect("login.jsp");
    session.setAttribute("login-error","Please Login...");
}
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
           <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
    crossorigin="anonymous">
         <%@include file="allcss.jsp" %>
        <title>edit Page</title>
    </head>
    <body>
        <%
           Integer noteid=Integer.parseInt(request.getParameter("note_id")); 
            
            PostDAO post=new PostDAO(DBConnect.getConn());
           Post p= post.getDataById(noteid);
            
            %>
         <div class="container-fluid">
              <%@include file="navbar.jsp" %>
             
              <h1 class="text-center mt-2 display-3">Edit Your Notes</h1>
              <div class="container">
              <div class="row">
                  <div class="col-md-12">
                      <form action="EditNotesServlet" method="post">
                          <input type="hidden" name="noteid" value="<%= noteid   %>">
  <div class="form-group">
    <label for="exampleInputEmail1">Enter Title</label>
    <input type="text" class="form-control" name="title" required="required" value="<%=  p.getTitle()  %>" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  <div class="form-group"> 
      <label for="exampleInputEmail1">Enter Content</label>
      
      <textarea rows="9" class="form-control" name="content" required="required"  style="resize: none" value=""><%=  p.getContent()  %></textarea>
  </div>
  
                          <div class="container text-center">
                              <button type="submit" class="btn btn-primary">Add Notes</button>
                          </div>
</form>
                  </div>
              </div>
              </div>
              <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
