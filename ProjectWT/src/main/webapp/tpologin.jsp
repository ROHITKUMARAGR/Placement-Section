<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="icon" href="images/logo.png" type="image/gif" sizes="20x20">
    <title>TPO Login Page</title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <link rel="stylesheet" href="css/loginstyle.css">
    <script>
    function myfunction()
    {
      var x=document.forms["myform"]["ID"].value;
      var y=document.forms["myform"]["password"].value;
      if(x=="" || y=="")
        {
        alert("enter correct credentials");
        return false;
        }
          return true;
    }
    </script>
  </head>
  <body>

    <section class="container">
  <div class="left-half">
    <article>
      <div _ngcontent-fxv-c310="" class="col-md-4 p-0 h-md-100 d-none d-md-block split-left">
        <div _ngcontent-fxv-c310="" class="d-md-flex flex-md-column align-items-center h-100 p-5">
          <p _ngcontent-fxv-c310="" class="text-white w-100">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp IIIT Vadodara Placements</p>
          <p _ngcontent-fxv-c310="" class="call-to-action">Online portal for TPO.</p>
          <div _ngcontent-fxv-c310="" class="logoarea pt-5 pb-5 mt-10" style="position: relative;">
            <img _ngcontent-fxv-c310="" src="images/logo.jpg" alt="IIITV Logo" width="200" height="200" style="border-radius:100%;">
          </div>
          <p _ngcontent-fxv-c310="" class="text-white w-100 mt-5">
            <b _ngcontent-fxv-c310="">&nbsp&nbsp&nbsp&nbsp &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Instructions</b>
            <br>
            <br _ngcontent-fxv-c310=""> &nbsp&nbsp&nbsp&nbsp Login using provided credentials. </p>
          </div>
        </div>
    </article>
  </div>
  <div class="right-half">
    <article>
      <div class="container ">
      <div class="row">
          <div class="col-md-6">
              <div class="card">
              <form name="myform" class="box" action="validate1" method="post" style="border-radius:10%;" onsubmit="return myfunction()">
                      <h1>TPO Login</h1>
                      <p class="text-muted"> Please enter your login and password!</p>
                      <input type="text" name="ID" placeholder="Username">
                      <input type="password" name="password" placeholder="Password">
                      <% if((String)session.getAttribute("message2")!=null)
                        	{
                        %> 
                        <div style="color:red;"><%= (String)session.getAttribute("message2") %></div>
                        <% }%>
                      <input type="submit" value="Login">
                      <br>
                        <a class="forgot text-muted" href="login.jsp">Student Login</a>

                  </form>
              </div>
          </div>
      </div>
  </div>
    </article>
  </div>
  </section>

  </body>
</html>
    