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
        <title>Login Page</title>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <div class="oontainer-fluid" >
            <div class="row">
                <div class="col-md-4 offset-md-4">
                    <div class="card mt-5">
                        <div class="card-header text-center text-white div-color">
                            <span class="fa fa-user-plus fa-3x "></span>
                            <h4>Login</h4></div>
                        
                            <%
                                  String invalidMsg=(String) session.getAttribute("login-failed");
                                  
                                if(invalidMsg!=null)
                                {%>
                                    
                                            <div class="alert alert-danger" role="alert">
                                                 <%=  invalidMsg  %> 
                                                
                                 
                                            </div>
                                                  <%
                                 session.removeAttribute("login-failed");
                                
                                %>
                                <% }
                                   
                                
                                %>
                                <%
                                    String withoutlogin=(String)session.getAttribute("login-error");
                                    if(withoutlogin!=null)
                                    {%>
                                        <div class="alert alert-danger" role="alert">
                                                 <%= withoutlogin %> 
                                                
                                 
                                            </div>
                                                                <%
                                 session.removeAttribute("login-error");
                                
                                %>
                                    <%}
                                    
                                    %>
                            
                               <%
                                    String logout=(String)session.getAttribute("logoutmsg");
                                    if(logout!=null)
                                    {%>
                                        <div class="alert alert-success" role="alert">
                                                 <%= logout %> 
                                                
                                 
                                            </div>
                                                                <%
                                 session.removeAttribute("logoutmsg");
                                
                                %>
                                    <%}
                                    
                                    %>
                            
                    
                            <div class="card-body">
                                <form class="form-group" method="post" action="loginServlet">
       
                                   
  <div class="mb-3">
       <label>Enter Email</label>
    <input type="email" name="uemail" class="form-control" required id="exampleInputEmail1" aria-describedby="emailHelp">
    <div id="emailHelp" class="form-text">.</div>
  </div>
  <div class="mb-3">
    <label for="exampleInputPassword1" required class="form-label">Enter Password</label>
    <input type="password" name="upassword" class="form-control" id="exampleInputPassword1">
  </div>
                                    <button type="submit" class="btn div-color text-white badge-pill btn-block" style="border-radius: 10px"> Login</button>
</form>
                            </div>
                        </div>
                    </div>
            </div>
        </div>
        <%@include file="footer.jsp" %>
    </body>
</html>
