<%-- 
    Document   : BillDisplay2
    Created on : 12 Nov, 2018, 5:59:49 PM
    Author     : HP 250 G5
--%>

<%@page contentType="text/html" import="java.util.*,java.sql.*" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display BIll</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-2.1.4.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>	
<link rel="stylesheet" href="css/BillDisplay.css">
<link href="css/star-rating.css" media="all" rel="stylesheet" type="text/css" />
<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="javascript/star-rating.js" type="text/javascript"></script>
<style>
    .glyphicon-minus-sign{
        display: none;
    }
</style>
    </head>
    <body>
        <nav class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				 <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-nav-demo" aria-expanded="false">
	        <span class="sr-only">Toggle navigation</span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	        <span class="icon-bar"></span>
	      </button>
				<a href="#" class="navbar-brand"><i class="fas fa-utensils"></i>Mocha</a>
			</div>
			<div class="collapse navbar-collapse" id="bs-nav-demo">
				<ul class="nav navbar-nav">
					<li><a href="index.html">Home</a></li>
					<li><a href="about.html">About</a></li>
					<li><a href="Contact.html">Contact</a></li>
				</ul>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="sign_in.jsp"><i class="fas fa-user"></i> Sign in</a></li>
				</ul>
			</div>
		</div>
	</nav>
        <h1>Your Bill</h1>
        <div id="tabl">
            <br>
            <table border="1"><tr>
            <th>Sr no.</th>
            <th>Item Name</th>
            <th style="width: 100px">Price per unit</th>
            <th>Qty</th>
            <th>Price</th></tr>
             <%
                 int sum=0;
                 if(session.getAttribute("orderId")==null) response.sendRedirect("index.html");
                 ResultSet rs=DBL.DBlayer.getResult("select m.item_name,m.price,sum(o.qty),sum(o.qty)*m.price from order_detail o,menu1 m where o.item_id=m.item_id and o.order_id="+session.getAttribute("orderId")+" and o.delievered=1 group by o.item_id");
                 int k=1;
                 while(rs.next()){
                    out.print("<tr><td>"+k+".</td><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td></tr>");
                    sum+=Integer.parseInt(rs.getString(4));
                    k++;
                 }
                 out.print("<tr><td colspan='4'>Grand Total</td><td>"+sum+"</td></tr></table>");
                 DBL.DBlayer.executeq("insert into payment values("+session.getAttribute("orderId")+","+sum+",curdate(),'"+request.getParameter("s")+"',0)");
                 out.print("<br><br><h3  style='align:center'>Our Payment Collector will come to you shortly</h3>");    
            //Feedback
            
%>
                <form action="BillDisplay2.jsp" method="get">
                    
                    <h3 id="feed">Please give your feedback</h3><br>
                    <div class="row">
                        <label><div class="col-lg-5">Enter your name</div>
                            <div class="col-lg-2"> <input type="text" name="name"></div>
                        </label><br><br></div>
                    <div class="row">
                        <label><div class="col-lg-5">Enter your email</div>
                            <div class="col-lg-2"> <input type="email" name="email"></div>
                        </label><br><br></div>
                    <div class="row">
                        <label><div class="col-lg-5">Enter your phone number</div>
                            <div class="col-lg-1"> <input type="text" name="pn" style="width: 130px"></div>
                        </label></div>
                    <div class="row">
                        <label><div class="col-lg-5" style="padding-top: 17%">Rate us </div>
                            <div class="col-lg-4"><input id="rating-system" type="number" class="rating" min="1" max="5" step="1"></div>
                        </label><br></div>
                    <div class="row">
                        <div class="col-lg-3"><button type="button" style="margin-left: 25%">Submit</button></div>
                        <div class="col-lg-3"><button type="reset">Reset</button></div>
                    </div>
                </form>    
            </table>
        </div>
                <script type="text/javascript">
                    $("button[type=button]").click(function(){
                      window.location.href="BillDisplay3.jsp?"+$("form").serialize()+"&rating="+$(".rating-container .caption .label").text();  
                    });
                    
                    </script>
    </body>
</html>
                
        
                 
