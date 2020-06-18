
<%@page language="java" session="true" %>
<%@page import="java.util.ArrayList"%> 
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
    <head>
    <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
  
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pay Online</title>
     <%--  <link rel="stylesheet" href="/DynamicWebPage/boot.min.css"> --%>  

        <style>
        body
        {
        background-color : lightgrey
        }
        hr.style00 {
	background-color: black;
color:black;
  float: center;
}
        </style>

    </head>
    <body>    

        <%
        String amm = request.getSession().getAttribute("amm").toString();
        String email = request.getSession().getAttribute("email").toString();
        String phone = request.getSession().getAttribute("phone").toString();
         //   if (hs.getAttribute("FormData") != null) {
           
               // User user = userController.getuserByUserEmail(email);
              
              
        %>

<br/>
<br/>
<div class="container">
  <h2>PAYMENT</h2>
  <div class="panel-group">
   <div class="panel panel-info">
   <div class="panel-heading" style="font-size: large ;" ><b>Receipt</b></div>
      <div class="panel-body">
       <br/><br/>
      <p style= "color : green ; font-size: large ;"  >Payment Successful..!!</p>
       <br/>
 <hr class="style00">
      <br/>
         
             <div class="btn-toolbar row">
             <form name="myform" action="Html2Pdf" method="post">
   
       <input type="submit" class="btn btn-success btn-lg btn-space col-xs-2" onclick="GFG_Fun(); " value=" Save Receipt"/>
       <input type="hidden" name="myField" id="myfield" value="" />
            </form>
             </div>
         <br/>
       
   
      <div class="row">
        <p style= "color : grey" class="col-xs-2" >PaymentId </p>
        <span class="col-xs-2" ></span>
         <p  class="col-xs-2" >PAY87625439WE </p>
         <br/>
       
     </div>
 <br/>
       <div class="row">
        <p style= "color : grey" class="col-xs-2" >Amount</p>
        <span class="col-xs-2" ></span>
         <p  class="col-xs-2" > ${amm}  </p>
          <br/>
     </div>
    <br/>
  
       <div class="row">
        <p style= "color : grey" class="col-xs-2" >Paid To</p>
        <span class="col-xs-2" ></span>
         <p  class="col-xs-2" > NGO SAI GROUP </p>
          <br/>
     </div>
        
     <br/>
               <div class="row">
        <p style= "color : grey" class="col-xs-2" >Paid On</p>
        <span class="col-xs-2" ></span>
         <p  class="col-xs-2" > <%= (new java.util.Date()).toLocaleString()%> </p>
          <br/>
     </div>
     
         <br/>
      <hr class="style00">
       <br/>
   <p> Thank You..!! For Your  Donation to NGO SAI GROUP. We have sent the receipt to <%= email %>  & <%= phone %>   </p>
   <p>For any query <a href="case.jsp">create a case</a></p> 
     <br/>
      <hr class="style00">            
     <br/> 
     <p>Do you want to start working with NGO SAI GROUP </p>
     <p><a href="Learn.jsp">Learn More</a></p>
     <br/> 
        </div>
        
        
        </div>
          </div>
          </div>

 <script> 
        var up = document.getElementById('GFG_UP'); 
   
  
        function GFG_Fun() { 
            var con = document.documentElement.innerHTML; 
            document.getElementById('myField').value = con; 
            document.myform.submit(); 
        } 
    </script> 
        <%
          //  }
        %>
    </body>