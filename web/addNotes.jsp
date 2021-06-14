<%@page import="com.User.UserDetails"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
UserDetails user1=(UserDetails)session.getAttribute("userD");
if(user1==null)
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
         
        <title>
            Add Notes</title>
    </head>
    <body>
        <div class="container-fluid">
              <%@include file="navbar.jsp" %>
              <h1 class="text-center text-info mt-2 display-3">Add Your Notes</h1>
              <div class="container">
              <div class="row">
                  <div class="col-md-12">
                      <form action="AddNotesServlet" method="post">
  <div class="form-group">
      <%
          try
      {
          UserDetails us=(UserDetails)session.getAttribute("userD");
      
          %>
           <input type="hidden" value="<%= us.getId()   %>" name="uid">      
      <%  } %><%
catch(Exception e)
{
e.printStackTrace();
}%>
 
    <label for="exampleInputEmail1">Enter Title</label>
    <input type="text" class="form-control" name="title" required="required" id="exampleInputEmail1" aria-describedby="emailHelp">
  </div>
  <div class="form-group"> 
      <label for="exampleInputEmail1">Enter Content</label>
      
      <textarea rows="9" class="form-control" name="content" required="required"style="resize: none"></textarea>
  </div>
  
                          <div class="container text-center">
                              <button type="submit" class="btn btn-grad">Add Notes</button>
                          </div>
</form>
                  </div>
              </div>
              </div>
              <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
