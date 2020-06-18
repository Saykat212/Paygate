<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com - No Copyright -->
  <title>Bootstrap Theme Simply Me</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  <style>
  body {
    font: 20px Montserrat, sans-serif;
    line-height: 1.8;
    color: #f5f6f7;
  }
  p {font-size: 16px;}
  .margin {margin-bottom: 45px;}
  .bg-1 { 
    background-color: #1abc9c; /* Green */
    color: #ffffff;
  }
  .bg-2 { 
    background-color: #474e5d; /* Dark Blue */
    color: #ffffff;
  }
  .bg-3 { 
    background-color: #ffffff; /* White */
    color: #555555;
  }
  .bg-4 { 
    background-color: #2f2f2f; /* Black Gray */
    color: #fff;
  }
  .container-fluid {
    padding-top: 70px;
    padding-bottom: 70px;
  }
  .navbar {
    padding-top: 15px;
    padding-bottom: 15px;
    border: 0;
    border-radius: 0;
    margin-bottom: 0;
    font-size: 12px;
    letter-spacing: 5px;
  }
  .navbar-nav  li a:hover {
    color: #1abc9c !important;
  }
  </style>
</head>
<body>

<!-- Navbar -->
<nav class="navbar navbar-default">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="index.jsp">Donate</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="index.jsp">Donate</a></li>
        <li><a href="index.jsp">Mission</a></li>
        <li><a href="index.jsp">Our Work</a></li>
      </ul>
    </div>
  </div>
</nav>

<!-- First Container -->
<div class="container-fluid bg-1 text-center">
  <h3 class="margin"><a href="index.jsp">Donate</a></h3>
  <a href="index.jsp"><img src="/paygate/img/1.jpg" class="img-responsive img-circle margin" style="display:inline" alt="Bird" width="350" height="350"></a>
  <h3>Donate in Time of Crisis</h3>
</div>

<!-- Second Container -->
<div class="container-fluid bg-2 text-center">
  <h3 class="margin">Mission</h3>
  <p>The Order of the Missionaries of Charity, an organization founded (1948) by Mother Teresa (recipient of the Nobel Peace Prize of 1979), cares for the blind, the elderly, the dying, and people afflicted with leprosy in the poorest sections of the city. There are several medical </p>
  <a href="index.jsp" class="btn btn-default btn-lg">
    <span class="glyphicon glyphicon-search"></span> Donate
  </a>
</div>

<!-- Third Container (Grid) -->
<div class="container-fluid bg-3 text-center">    
  <h3 class="margin">Our Work</h3><br>
  <div class="row neighborhood-guides">
    <div class="col-sm-4">
      <p>Go to the Missionaries of Charity donation section of the web site , Donate in Time of Crisis</p>
      <img src="/paygate/img/10.jpg" class="img-responsive margin" style="width:100%" height="210px"  alt="Image">
    </div>
    <div class="col-sm-4 "> 
      <p> If you would like to donate money or supplies, click on the "Contact Us" link under Donate section.</p>
      <img src="/paygate/img/6.jpg" class="img-responsive margin" style="width:100%" height="200px" alt="Image">
    </div>
    <div class="col-sm-4 "> 
      <p> Inform the organization about what you would like to donate. Missionaries of Charity will send you instructions on how to continue the process.</p>
      <img src="/paygate/img/9.jpg" class="img-responsive margin" style="width:100%" height="200px" alt="Image">
    </div>
  </div>
</div>

<!-- Footer -->
<footer class="container-fluid bg-4 text-center">
  <p> <a href="index.jsp">NGO SAI GROUP Donation :  Contact  Us 8976543234 or Mail At SaiNgo@gmail.com If you want to donate food , money , medicine</a></p> 
</footer>

</body>
</html>