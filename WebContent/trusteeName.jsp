<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    
    <!DOCTYPE html>
<html lang="en">
	<head>
	<link rel="icon" href="images/favicon.ico">
		<link rel="shortcut icon" href="images/favicon.ico">
	<script type="text/javascript">
	function myAdmin() {
	    var x;
	    if (confirm("Are You Admin! You Have To Login First To continue!") == true) {
	        x = "You pressed OK!";
	      
	        
	        
	        	
	        	var jspcall="admin.jsp";
	        	     window.location.href=jspcall;
	        	}
	        
	    } 
	
	</script>
		<meta charset="UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=Edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<meta name="keywords" content="">
		<meta name="description" content="">
		<title>BAPS</title>
		<link rel="stylesheet" href="css/bootstrap.min.css">
		<link rel="stylesheet" href="css/templatemo_style.css">
		<link rel="stylesheet" href="css/font-awesome.min.css">
		<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,600,700,300' rel='stylesheet' type='text/css'>
        <!--
        Composite Template
        http://www.templatemo.com/preview/templatemo_444_composite
        -->
	</head>
<body>

<%HttpSession session12=request.getSession(); String flag=(String)session12.getAttribute("admin"); %>

<%String commonFlag=(String)request.getAttribute("commonFlag"); %>
<section id="team" class="text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
				
				    
				    <form action="ChangeTrusteeNameController" method="post">
					<h2>Change Trustee Name and Position</h2>
					<p>Select Trustee Name You Want to change : <select name="tid"><option value="0">---select admin---</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option></select> </p>
					
					<p>Enter Your Trustee Name  :<input type="text" name="tname" value=""> </p>
					<p>Enter Your Trustee Position :<input type="text" name="tposition" value=""> </p>
					<p><input type="submit" name="submit" value="Submit"><input type="reset" name="reset" value="Reset"></p><font color="red">${error}</font>
					</form>
						
				</div>
				
			</div>
				
		</div>
		<center><a href="index.jsp">Go Back To Home Page...</a></center>
	</section>
</body>
</html>