<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
              <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" 
        integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
    crossorigin="anonymous">
         <%@include file="allcss.jsp" %>
        <title>Register Page</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="oontainer-fluid" >
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-5">
                        <div class="card-header text-center text-white div-color">
                            <span class="fa fa-user-plus fa-3x "></span>
                            <h4>Registration</h4></div>
                    
                            <%
                                String regMsg=(String)session.getAttribute("reg-success");
                                if(regMsg!=null)
                                {%>
                                        <div class="alert alert-success" role="alert">
                                            
                                            <%=  regMsg  %>Login<a href="login.jsp">Click Here</></a>
                                        </div>
                                <%
                                session.removeAttribute("reg-success");
                                %>
                                
                                <%
                                }

                                
                                %>
                                <%
                                String failedMsg=(String)session.getAttribute("failed-msg");
                                if(failedMsg!=null)
                                {%>
                                        <div class="alert alert-danger" role="alert">
                                            
                                            <%=  failedMsg  %>
                                            
                                            
                                        </div>
      
                            <%
                                 session.removeAttribute("failed-msg");
                                
                                %>
                               <% 
                                }

                                
                                %>

                            <div class="card-body">
                                <form class="form-group" method="post"  action="UserServlet">
       
                                    <div class="mb-3">
                                        <label>Enter Full Name</label>
    <input type="text" required name="fname"class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text"></div>
  </div>
  <div class="mb-3">
       <label>Enter Email</label>
    <input type="email"  required  name="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1"  required  class="form-label">Enter Password</label>
    <input type="password" name="password" class="form-control" id="exampleInputPassword1">
  </div>
    <button type="submit" class="btn div-color text-white badge-pill btn-block" style="border-radius: 10px"> Register</button>
</form>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>