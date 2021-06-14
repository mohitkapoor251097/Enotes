<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
UserDetails user2=(UserDetails)session.getAttribute("userD");
if(user2==null)
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
        <title>home Page</title>
        <style>
                 .animated
{
  animation:up-down 2s ease-in-out  infinite alternate-reverse both;
}
@-webkit-keyframes up-down
{
  0%
  {
    transform: translateY(10px);
  }
  100%
  {
    transform: translateY(-10px);
  }
}
@keyframes up-down
{
  0%
  {
    transform: translateY(10px);
  }
  100%
  {
    transform: translateY(-10px);
  }
}
</style>
    </head>
    <body>
     
        <div class="container-fluid">
               <%@include file="navbar.jsp" %>
            <div class="card pt-5">
                <div class="card-body text-center">
                    <img src="images/note1.png" alt="" class="img-fluid mx-auto animated" style="max-width: 300px">
                    <br><br> <h1 class="text-primary">START TAKING YOUR NOTES</h1>
                    <a href="addNotes.jsp" class="btn btn-grad">Start Here</a>
                </div>
                 <%@include file="footer.jsp" %>
            </div>
              
        </div>
    </body>
</html>
