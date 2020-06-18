
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
        </style>
  
        
        <style>

            #payment_type_d{
                position: absolute;
                left: 30px;
                width: 200px;
                height: 30px;
                top: 20px;
            }

            #name_on_card{
                position: absolute;
                left: 30px;
                width: 400px;
                height: 30px;
                top: 100px;
            }


            #credit_card_no{
                position: absolute;
                left: 30px;
                width: 200px;
                height: 30px;
                top: 280px;
            }
            #exp_month{
                position: absolute;
                left: 30px;
                width: 150px;
                height: 30px;
                top: 345px;
            }
            #exp_year{
                position: absolute;
                left: 190px;
                width: 150px;
                height: 30px;
                top: 370px;
            }

            #confirm_payment{
                position: absolute;
                left: 30px;
                width: 100px;
                height: 30px;
                top: 490px;
            }
            #cancel_payment{
                position: absolute;
                left: 210px;
                top: 490px;
                width: 100px;
                height: 30px;
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
   <div class="panel-heading" style="font-size: large ;" ><b>Payment Method For Donation</b></div>
      <div class="panel-body">
  <ul class="nav nav-tabs">
    <li class="active"><a data-toggle="tab" href="#home">Credit Card Payment</a></li>
    <li><a data-toggle="tab" href="#menu1">Debit Card Payment</a></li>
    <li><a data-toggle="tab" href="#menu2">Net Banking</a></li>

  </ul>
<div class="tab-content">
    <div id="home" class="tab-pane fade in active">
      <h3>Credit Card Payment</h3>
              <br/><br/>
        <div >
  
            <div>
                <h5 style= "color : grey">Credit Card Type</h5>
                <select class="form-control" name="card_type">
                    <option>Master</option>
                    <option>Visa </option>
                    <option>AMEX </option>
                </select>
            </div>
              
        <div>
        
      <br/><br/>
        </div>
         <p  style="color : Grey" >Credit Cart No</p>
            <div> <input type="text" name="tf-5" placeholder="Credit Card No" class="form-control" />   </div>
            <br/><br/>
            <div > 
                <h5>Expiration Date</h5>
                <select class="form-control" name="exp_mnth2">
                    <option>January</option>
                    <option>February</option>
                    <option>March</option>
                    <option>April</option>
                    <option>May</option>
                    <option>June</option>
                    <option>July</option>
                    <option>August</option>
                    <option>September</option>
                    <option>October</option>
                    <option>November</option>
                    <option>December</option>
                </select>
            </div>
            <div >
                <h5></h5>
                <select class="form-control" name="exp_year2">
                    <option>2016</option>
                    <option>2017</option>
                    <option>2018</option>
                    <option>2019</option>
                    <option>2020</option>
                    <option>2021</option>
                    <option>2022</option>
                    <option>2023</option>
                    <option>2024</option>
                    <option>2025</option>
                    <option>2026</option>
                </select>
            </div>
    </div>
    </div>
    <div id="menu1" class="tab-pane fade">
      <h3>Debit Card Payment</h3>
         <br/><br/>
        <div >
  
            <div>
                <h5 style= "color : grey">Debit Card Type</h5>
                <select class="form-control" name="card_type">
                    <option>Master</option>
                    <option>RuPay </option>
                    <option>Maestro </option>
                </select>
            </div>
              
        <div>
        
      <br/><br/>
        </div>
         <p  style="color : Grey" >Debit Cart No</p>
            <div> <input type="text" name="tf-5" placeholder="Credit Card No" class="form-control" />   </div>
            <br/><br/>
            <div > 
                <h5>Expiration Date</h5>
                <select class="form-control" name="exp_mnth2">
                    <option>January</option>
                    <option>February</option>
                    <option>March</option>
                    <option>April</option>
                    <option>May</option>
                    <option>June</option>
                    <option>July</option>
                    <option>August</option>
                    <option>September</option>
                    <option>October</option>
                    <option>November</option>
                    <option>December</option>
                </select>
            </div>
            <div >
                <h5></h5>
                <select class="form-control" name="exp_year2">
                    <option>2016</option>
                    <option>2017</option>
                    <option>2018</option>
                    <option>2019</option>
                    <option>2020</option>
                    <option>2021</option>
                    <option>2022</option>
                    <option>2023</option>
                    <option>2024</option>
                    <option>2025</option>
                    <option>2026</option>
                </select>
            </div>
         </div>
        </div>
    <div id="menu2" class="tab-pane fade">
      <h3>Net Banking</h3>
<br/>
           <div>
                <h5 style= "color : grey">Choose Bank</h5>
                <select class="form-control" name="card_type">
                    <option>State Bank Of India</option>
                    <option>HSBC Bank </option>
                    <option>ICICI Bank </option>
                </select>
            </div>


    </div>

  </div>

<br/><br/>

      <p style= "color : grey"  > Purpose of Payment </p>
      <p>Donation</p>
      <br/><br/>
        <p style= "color : grey"  > Amount </p>
 
      <p>   ${mess.amm}     </p>    
      
         <br/><br/>
        <div >
  
    
<br/><br/>
            </div>               
           <div class="btn-toolbar row">
            <a href="otp.jsp"><button type="button"  class="btn btn-success btn-lg btn-space col-xs-2">Pay</button></a>
  <span class="col-xs-2" ></span>
            <a href="index.jsp"><button type="button"  class="btn btn-success btn-lg col-xs-2">Cancel</button></a>
           </div>
        </div>
        </div>
          </div>
          </div>
      

        <%
          //  }
        %>
    </body>