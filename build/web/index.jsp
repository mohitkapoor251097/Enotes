<%@page import="java.sql.Connection"%>
<%@page import="com.Db.DBConnect"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
          <!-- Font Awesome -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ"
    crossorigin="anonymous">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.7.2/animate.min.css">
        <%@include file="allcss.jsp" %>
        <title>
            home page
        </title>
        <style type="text/css">
            .c
            {
                box-shadow: 2px 3px 5px grey;
            } 
            .c:hover{
                background-image: linear-gradient(to right top, #d16ba5, #c777b9, #ba83ca, #aa8fd8, #9a9ae1, #8aa7ec, 
                    #79b3f4, #69bff8, #52cffe, #41dfff, #46eefa, #5ffbf1);
                color: white;
                transition: 0.4s;
              }
              
         .heade {
    font-family: Helvetica Neue, Helvetica, Arial, sans-serif;
    font-weight:  100;
   
    letter-spacing: 2px;
    text-align: center;
    color: #f35626;
    background-image: -webkit-linear-gradient(#ff6e7f 0%, #bfe9ff  51%, #ff6e7f  100%);
    -webkit-background-clip: text;
    -webkit-text-fill-color: transparent;
    -webkit-animation: hue 10s infinite linear;
}

@-webkit-keyframes hue {
  from {
    -webkit-filter: hue-rotate(0deg);
  }
  to {
    -webkit-filter: hue-rotate(-360deg);
  }
}
</style>
    </head>
    <body>
        <%@include file="navbar.jsp" %>
        <header class="jumbotron back-image img-fluid" style="background-image: url(images/bg6.jpg);height:400%;width:100%; background-size: 100% 100%;">
        <div class="text-center" style="">
             <h1 class="display-3 text-center heade"><i class="fa fa-book" aria-hidden="true"></i> <span id="ani" ></span> </h1>
             
                <p class="text-center text-white">ENotes is a student and teacher educational website founded in 1998 by Brad Satoris and Alexander Bloomingdale, that provides material to help students complete homework assignments and study for exams.

Based in Seattle, Washington in the United States, eNotes specializes in lesson plans, study guides and literary criticisms. It also hosts an active homework help portal where students can ask educators academic questions. The Homework Help section has hundreds of thousands of questions with answers.

The website's material mainly focuses on literature and history, though the company offers a variety of different topics within the humanities. A network of over 1,000 teachers and professors contributes much of the content. It is different from other online subscription education services in that an in-house publishing team edits uploaded works mainly for grammar and formatting. With its subscription model, the company bootstrapped its way to profitability and claims about 750 new sign-ups on a weekday during the school year.[2] According to internet analytics firm Quantcast.com, the site is accessed by more than 11 million unique visitors each month, making it among the most-visited education properties in the United States.</p>
                <div class="text-center">
               
                <a  href="login" class="btn btn-grad btn-lg mr-2 text-white"style="border-radius:20px"><span class="fa fa-user-circle-o fa-spin"></span> Login</a>
                <a href="Register" class="btn btn-grad btn-lg mr-2 text-white" style="border-radius:20px"><span class="fa fa-user-plus"></span> Register </a>
                </div>
                
        </div>
</header>
<div class="jumbotron div-color" id="team">
      <div class="container">
        <h2 class="text-center text-white mb-5">Team</h2>
                     <div class="row">
                              <div data-tilt class="col-lg-3 col-sm-6">
                                    <div data-tilt  class="card part1 c text-center mb-2 shadow-lg">
                                        <div   class="card-body ">
                                        <img src="images/mo.jpg" class="img-fluid" style="border-radius: 100px; width:100px">     
                                         <h4 class="card-title ">Mohit kapoor</h4>
                                          <p class="card-text ">Itaque illo explicabo voluptatum, saepe libero rerum, ad ducimus 
                                              voluptas nesciunt debitis numquam.</p>
                                        </div>
                                    </div></div>
                                <div data-tilt class="col-lg-3 col-sm-6">
                                    <div  class="card  c part2 text-center shadow-lg mb-2">
                                        <div class="card-body">
                                        <img src="images/avtar2.jpeg" class="img-fluid" style="border-radius: 100px">     
                                         <h4 class="card-title">Sonam Sharma</h4>
                                          <p class=""card-text">Itaque illo explicabo voluptatum, saepe libero rerum, ad ducimus 
                                              voluptas nesciunt debitis numquam.</p>
                                        </div>
                                    </div>
                                  </div>
                                <div data-tilt class="col-lg-3 col-sm-6">
                                    <div  class="card c part3 text-center shadow-lg mb-2">
                                        <div class="card-body">
                                        <img src="images/avtar3.jpeg" class="img-fluid" style="border-radius: 100px">     
                                         <h4 class="card-title">Sumit Vyas</h4>
                                          <p class=""card-text">Itaque illo explicabo voluptatum, saepe libero rerum, ad ducimus voluptas nesciunt 
                                              debitis numquam.</p>
                                        </div>
                                    </div>
                                  </div>
                                <div data-tilt class="col-lg-3 col-sm-6">
                                    <div class="card c part4 text-center shadow-lg">
                                        <div class="card-body">
                                        <img src="images/avtar4.jpeg" class="img-fluid" style="border-radius: 100px">     
                                         <h4 class="card-title">Jyoti Sinha</h4>
                                          <p class=""card-text">Itaque illo explicabo voluptatum, saepe libero rerum, 
                                              ad ducimus voluptas nesciunt debitis numquam.</p>
                                        </div>
                                    </div>
                                  </div>
                       </div>           
       </div>
     </div><!--End Team-->
              
              <%@include file="footer.jsp" %>
             <script src="https://cdnjs.cloudflare.com/ajax/libs/waypoints/4.0.1/jquery.waypoints.min.js" 
                     integrity="sha512-CEiA+78TpP9KAIPzqBvxUv8hy41jyI3f2uHi7DGp/Y/Ka973qgSdybNegWFciqh6GrN2UePx2KkflnQUbUhNIA==" crossorigin="anonymous">
                 
             </script>
              <script>     
$(document).ready(function()
{
  $('.part1').waypoint(function(direction)
  {
    $('.part1').addClass('animated rotateInDownLeft')  
  },{
      offset:'50%'
  })
      $('.part2').waypoint(function(direction)
  {
    $('.part2').addClass('animated fadeInUp')  
  },{
      offset:'50%'
  })
  
    $('.part3').waypoint(function(direction)
  {
    $('.part3').addClass('animated rotateInDownRight')  
  },{
      offset:'50%'
  })
  $('.part4').waypoint(function(direction)
  {
    $('.part4').addClass('animated zoomIn')  
  },{
      offset:'50%'
  })
});
</script>
     <script src="tilt.jquery.min.js"></script>     
      <script src="jquery.ripples-min.js"></script> 
         <script src="typed.min.js"></script> 
      <script>
          jQuery(document).ready(function()
          {
             $('header').ripples({
  dropRadius: 20,
  perturbance: 0.03,
  
}); 
          });
          
          
          </script>
          <script>
              let animate=new Typed('#ani',{
                  strings:['ENotes',"Save Your Notes"],
                  typeSpeed:100,
                  backSpeed:100,
                  loop:true,
    })
              </script>
    </body>
     </html>
