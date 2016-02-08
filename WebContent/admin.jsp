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
<%String error=(String)request.getAttribute("error"); %>
<%String heroflag=(String)request.getAttribute("heroflag"); %>
<%String commonFlag=(String)request.getAttribute("commonFlag"); %>
<%String galleryFlag=(String)request.getAttribute("galleryFlag"); %>

<%String headerFlag=(String)request.getAttribute("headerFlag"); %>
<%String trusteeFlag=(String)request.getAttribute("trusteeFlag"); %>
<section id="team" class="text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
				
				    <%if(flag==null){ %>
				    <form action="LoginAdminController" method="post">
					<h2>Login First To Continue</h2>
					<p>Enter Your Username :<input type="text" name="username" value="admin"> </p>
					<p>Enter Your Password :<input type="password" name="password" value=""> </p>
					<p><input type="submit" name="submit" value="Submit"><input type="reset" name="reset" value="Reset"></p><font color="red">${error}</font>
					</form>
					<%}else { %>
					
										<h2>WELCOME ADMIN<a href="LogoutController">       Logout</a></h2>
										<%if(commonFlag!=null) {%>
										<font color="red">${commonFlag}</font>
										<%} %>
										
				<div class="col-sm-6 col-md-3">
						<h3>Change Hero Image</h3>
						<p><a href="ChangeHeroImageController">Click Here</a></p>
						<%if(heroflag!=null && heroflag.equals("true")){ %>
						<form name="" action="UploadHeroImage" enctype="multipart/form-data" method="post" style="text-align: left;">
						
						<p style="font-weight: bold;color: green;">
							 
							 <strong></><marquee>Please Make Sure You update .png file with horizontal*vertical=1920*800 in pixels</marquee></strong></p>
						
						<p>
							 
							 <strong></>Upload Images You Want To Change</strong></p>
							<p> <select name="number"><option value="0">---select one---</option><option value="1">Change First Hero Image</option><option value="2">Change Second Hero Image</option><option value="3">Change third Hero Image</option></select></p>
							 <br/>
							 
							 <p><strong>Choose Your Image</strong><input type="file" name="image"></p><br/>
							 <p><input type="submit" name="Update" value="Update"></p>
							 </form>
						<%} %>
						
				</div>
				<div class="col-sm-6 col-md-3">
						<h3>Change Trustee Images</h3>
						<p><a href="ChangeTrusteeImageController">click here</a></p>
						<%if(trusteeFlag!=null && trusteeFlag.equals("true")){ %>
						<form name="" action="UploadTrusteeImage" enctype="multipart/form-data" method="post" style="text-align: left;">
						
						<p style="font-weight: bold;color: green;">
							 
							 <strong></><marquee>Please Make Sure You update .jpg file with horizontal*vertical=500*500 in pixels</marquee></strong></p>
						
						<p>
							 
							 <strong></>Select Image You Want To Change</strong></p>
							<p> <select name="number"><option value="0">---select one---</option><option value="1">Change First Admin Image</option><option value="2">Change Second Admin Image</option><option value="3">Change Third Admin Image</option><option value="4">Change Fourth Admin Image</option></select></p>
							 <br/>
							 
							 <p><strong>Choose Your Image</strong><input type="file" name="image"></p><br/>
							 <p><input type="submit" name="Update" value="Update"></p>
							 <a href="trusteeName.jsp">You want to change name of trustees(and positions)?</a>
							 </form>
						<%} %>
						
				</div>
			
				<div class="col-sm-6 col-md-3">
						<h3>Change Photo Gallery</h3>
						<p><a href="ChangePhotoGalleryController">click here</a></p>
						<%if(galleryFlag!=null && galleryFlag.equals("true")){ %>
							<form name="" action="UploadGalleryImage" enctype="multipart/form-data" method="post" style="text-align: left;">
						
						<p style="font-weight: bold;color: green;">
							 
							 <strong></><marquee>Please Make Sure You update .png file with horizontal*vertical=1920*800 in pixels</marquee></strong></p>
						
						<p>
							 
							 <strong></>Upload Images You Want To Change</strong></p>
							<p> <select name="number"><option value="0">---select one---</option><option value="1">Change First Gallery Image</option><option value="2">Change Second Gallery Image</option><option value="3">Change third Gallery Image</option><option value="4">Change fourth Gallery Image</option><option value="5">Change fifth Gallery Image</option><option value="6">Change sixth Gallery Image</option><option value="7">Change seventh Gallery Image</option><option value="8">Change eighth Gallery Image</option></select></p>
							 <br/>
							 
							 <p><strong>Choose Your Image</strong><input type="file" name="image"></p><br/>
							 <p><input type="submit" name="Update" value="Update"></p>
							 </form>
						<%} %>
						
				</div>
				
				
				<div class="col-sm-6 col-md-3">
						<h3>Change Photo header</h3>
						<p><a href="ChangeGalleryHeaderController">click here</a></p>
						<%if(headerFlag!=null && headerFlag.equals("true")){ %>
							<form name="" action="UploadHeader"  method="post" style="text-align: left;">
						
						<p style="font-weight: bold;color: green;">
							 
							 <strong></><marquee>This will change header message on top of your photo gallery </marquee></strong></p>
						
						<p>
							 
							 <strong></>Enter Gallery Header message here</strong></p>
							<p><input type="text" name="header" value="---enter header here---"></p>
							 <br/>
							 
							 <p><input type="submit" name="Update" value="Update"></p>
							 </form>
						<%} %>
						
				</div>
								
				
					<%} %>
					
				</div>
				
			</div>
				
		</div>
		<center><a href="index.jsp">Go Back To Home Page...</a></center>
	</section>
</body>
</html>