<%@page import="com.User.UserDetails"%>
<style>
     .btn-grad {background-image: linear-gradient(to right, #ff6e7f 0%, #bfe9ff  51%, #ff6e7f  100%)}
         .btn-grad {
            margin: 10px;
            padding: 10px 15px;
            text-align: center;
            text-transform: uppercase;
            transition: 0.5s;
            background-size: 200% auto;
            color: white;            
            box-shadow: 0 0 20px #eee;
            border-radius: 10px;
          
          }

          .btn-grad:hover {
            background-position: right center; /* change the direction of the change here */
            color: #fff;
            text-decoration: none;
          }
</style>
<nav class="navbar navbar-expand-lg navbar-dark div-color navbar-custom">
  <div class="container-fluid">
    <a class="navbar-brand" href="index"><i class="fa fa-book" aria-hidden="true"></i> ENotes</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" 
            aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="home"><i class="fa fa-home" aria-hidden="true"></i> Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="addNotes"><i class="fa fa-plus-circle" aria-hidden="true"></i> Add Notes</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="shownotes" tabindex="-1" aria-disabled="true"><i class="fa fa-eye" aria-hidden="true"></i> Show Notes</a>
        </li>
      </ul>
        <% 
            try
            {
         UserDetails user=(UserDetails) session.getAttribute("userD");
           if(user!=null)
           {
           %>         
     <a href="" class="btn btn-grad my-2 mr-2 "  data-bs-toggle="modal" data-bs-target="#exampleModal"><img src="images/<%= user.getProfile() %>" 
     class="image-fluid" style="border-radius:50%; max-width: 80px; height:25px"> <%=   user.getName()  %></a>
     <a href="LogoutServlet" class="btn btn-grad my-2 mr-2" type="submit"><i class="fa fa-user-plus" aria-hidden="true"></i> Logout</a>
    <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
        <div class="modal-header div-color text-white">
        <h5 class="modal-title" id="exampleModalLabel ">Details :</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
       <div class="container text-center">
              
             <!-- <i class="fa fa-user fa-3x"></i> -->
              <img src="images/<%= user.getProfile() %>" class="image-fluid" style="border-radius:50%; max-width: 80px; height:">
              <div id="profile-details">
          <table class="table">
  <tbody>
      <tr>
      <th scope="row">ID :</th>
      <td><%= user.getId()  %></td>
     
    </tr>
    <tr>
      <th scope="row">Email :</th>
      <td><%= user.getEmail()%><td>
    </tr>
     <tr>
      <th scope="row">Name :</th>
      <td><%= user.getName()%><td>
    </tr>
    </tbody>
</table>
</div>
    <!-- profile edit-->
     <div id="profile-edit" style="display:none">
        
        <h3 class="mt-2">Please Edit Carefully</h3>
        <form action="EditServlet" method="post" enctype="multipart/form-data">
            
            <table class="table">
                <tr>
                    <td>Id :</td>
                    <td><%= user.getId()  %></td>
                </tr>
                <tr>
                    <td>Email :</td>
                    <td><input type="email"class="form-control" name="user_email"  value="<%= user.getEmail() %>"></td>
                </tr>
                 <tr>
                    <td>Name :</td>
                    <td><input type="text"class="form-control" name="user_name"  value="<%= user.getName() %>"></td>
                </tr>
                 <tr>
                    <td>Password :</td>
                    <td><input type="text" class="form-control" name="user_password"  value="<%= user.getPassword() %>"></td>
                </tr>
                <tr>   
            <tr>
                    <td>New Profile :</td>
                    <td>
                     <input type="file" name="image" class="form-control" value="<%= user.getPassword() %>">
                    </td>
                </tr>
            </table>
                        <div class="container">
                            <button type="submit" class="btn btn-grad">Save</button>
                        </div>
            </form>
    </div>
    </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
       <button type="button ?note_id=<%=  user.getId()     %>"id="edit-profile-button" class="btn btn-grad">Edit</button>
       
      </div>
    </div>
      <% }

           else
           {
          %>
                
     <a href="login" class="btn btn-grad my-2 mr-2"><span class="fa fa-user-circle-o"></span> Login</a>
     <a href="Register" class="btn btn-grad my-2 mr-2" type="submit"><i class="fa fa-user-plus" aria-hidden="true"></i> Register</a>
    
          <% }
}
catch(Exception e)
{
e.printStackTrace();
}  %>
 </div>
  </div>
  </div>
</div>
</nav>
         <script src="https://code.jquery.com/jquery-3.5.1.min.js" integrity="sha256-9/aliU8dGd2tb6OSsuzixeV4y/faTqgFtohetphbbj0=" 
         crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js" 
    integrity="sha384-ygbV9kiqUc6oa4msXn9868pTtWMgiQaeYH7/t7LECLbyPA2x65Kgf80OJFdroafW" crossorigin="anonymous"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" 
integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
  <script src="js/myjs.js" type="text/javascript"></script>
 <script>
    $(document).ready(function()
    {
        let editStatus=false;
        $('#edit-profile-button').click(function()
        {
           // alert("button clicked");
           if(editStatus ==false)
           {
                  $('#profile-details').hide()
           
                  $('#profile-edit').show();
                  editStatus=true;
                  $(this).text("Back");
           }
           else
           {
               
                  $('#profile-details').show()
           
                  $('#profile-edit').hide();
                  editStatus=false;
                  $(this).text("Edit");
           }
        
        })
    });
    </script>  
        