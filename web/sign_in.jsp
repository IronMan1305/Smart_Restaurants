<%-- 
    Document   : sign_in
    Created on : 27 Oct, 2018, 2:12:04 PM
    Author     : HP 250 G5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign In page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-2.1.4.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<style type="text/css">
    #sin{
        padding-top: 60px;
    }
    #intable{
        width: 350px;
        padding-top: 10px;
    }
    body{
        background: #544a7d;  /* fallback for old browsers */
background: -webkit-linear-gradient(to right, #ffd452, #544a7d);  /* Chrome 10-25, Safari 5.1-6 */
background: linear-gradient(to right, #ffd452, #544a7d); /* W3C, IE 10+/ Edge, Firefox 16+, Chrome 26+, Opera 12+, Safari 7+ */

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
        <div class="container" id="sin">
            <h1 align="center">Mocha Restaurant & Bar</h1>
            <br>
            <br>
        <form name="details" method="post" action="sign_in.jsp">
            <table border="0" align="center" cellspacing="0" cellpadding="0" id="sintable">
                <tr height="50">
                    <td colspan="2" align="center" bgcolor="e67300"><h2>User Authentication</h2></td>
                </tr>
                <tr height="300">
                    <td><img src="images/login-bg.jpg" width="300" height="300">
        </td>
        <td bgcolor="cc8800">
            <table border="0" id="intable">
                <tr>
                    &nbsp; &nbsp;
                    <th style="padding-left: 30px">Enter Username</th>
                    &nbsp; &nbsp;
                    <td><input type="text" name="t1" value="" style="width: 150px"></td>
                </tr>
                
                <tr>
                   <th style="padding-left: 30px">Enter Password</th>
                    <td><input type="password" align="center" name="t2" value="" style="width: 150px"></td> 
                </tr>
                <tr>
                    <td align="center"><input type="submit" align="center" name="b1" value="Submit"></td>
                    <td align="center"><a href="sign_in.jsp"><input type="button" name="b2" value="Reset"></a>
               
                    </td>      
                </tr>
            </table>
        </td>
                </tr>
        </div>
        <%
            //Check validity of password
            %>
    </body>
</html>