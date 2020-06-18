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



<br/>
<br/>
<div class="container">
  <h2>PAYMENT</h2>
  <div class="panel-group">
   <div class="panel panel-info">
   <div class="panel-heading" style="font-size: large ;" ><b>OTP</b></div>
      <div class="panel-body">
       <br/><br/>

       <br/>
 <hr class="style00">
      <br/>
      <div class="row">
        <p style= "color : grey" class="col-xs-2" >PaymentId </p>
        <span class="col-xs-2" ></span>
         <p  class="col-xs-2" >PAY87625439WE </p>
         <br/>
       
     </div>
           <div class="row">
        <p style= "color : grey" class="col-xs-2" >OTP </p>
        <span class="col-xs-2" ></span>
          <input type="password" value="4444" class=" col-xs-2" >
         <br/>
       <br/>
       </div>
        <hr class="style00">
       <div>
         <form name="myform" action="email" method="post">
   
       <input type="submit" class="btn btn-success btn-lg btn-space col-xs-2"   value="Confirm"/>

            </form>
    
     </div>
 <br/>
 
        </div>
        </div>
          </div>
          </div>
   

        <%
          //  }
        %>
    </body>