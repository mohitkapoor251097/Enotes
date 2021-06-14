<%-- 
    Document   : error_ex
    Created on : Mar 28, 2021, 6:23:01 PM
    Author     : Mohit kapoor
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page isErrorPage="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
             <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" 
        integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
    crossorigin="anonymous">
         <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" 
               rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">
       <link rel="stylesheet" type="text/css" href="style.css">  
        <title>page no found</title>
          <%@include file="allcss.jsp" %>
        <style>
              a
              {
                  text-decoration: none;
              }
              a:hover{
                  text-decoration: none;
              }
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
         <%@include file="navbar.jsp" %>
         
        <div class="container p-3 text-center">
            <img src="images/error.png" class="img-fluid animated" style="width:500px" />  <br>
       <h1 class="display-3 text-primary">Sorry !! Page Not Found</h1>
       <br>
          <a href="index" class="display-5 btn btn-grad">Homepage</a>
        </div>
         <%@include file="footer.jsp" %>
    </body>
</html>
