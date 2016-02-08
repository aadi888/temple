<%@page import="bean.TrusteeNameBean"%>
<%@page import="bean.HeaderBean"%>
<%@page import="dao.Header"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <%HttpSession session00=request.getSession(); session00.invalidate(); %>
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

	   function view(int) {
		  
	      imgsrc ="images/p"+int+".jpg";
	      
	      viewwin = window.open(imgsrc,'viewwin', 'width=700,height=700',top='100',left='100', "resizable,scrollbars,status");    
	      return true;
	   }
	</script>
	</script>
	<script
src="http://maps.googleapis.com/maps/api/js">
</script>
<script>
function initialize() {
  var mapProp = {
    center:new google.maps.LatLng(51.508742,-0.120850),
    zoom:5,
    mapTypeId:google.maps.MapTypeId.ROADMAP
  };
  var map=new google.maps.Map(document.getElementById(""), mapProp);
}
google.maps.event.addDomListener(window, 'load', initialize);
</script>
<script type="text/javascript">


</script>
 <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
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
	<body id="top" data-spy="scroll" data-target=".navbar-collapse">
    <%Header header=new Header(); %>
    <%ArrayList list=(ArrayList)header.getData(); %>
	<%String emailFlag=(String)request.getAttribute("emailFlag"); %>
	
	<%String darshanFlag=(String)request.getAttribute("darshanFlag"); %>
	 
	<!-- start templatemo navigation -->
	<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
	<font color="green" style="float: left;">${emailFlag}</font>
		<div class="container">
		
			<div class="navbar-header">
				<button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
					<span class="icon icon-bar"></span>
					<span class="icon icon-bar"></span>
					<span class="icon icon-bar"></span>
				</button>
				
				<%if(darshanFlag!=null && darshanFlag.equals("true")){ %>
				<a href="index.jsp" class="navbar-brand" style="float: left;text-align: left;color:white;">Go Back To Home</a>
				<%}else { %>
				<a href="LiveDarshanController" class="navbar-brand" style="float: left;text-align: left;color:white;">Live Darshan</a>
				<%} %>
<%--     SUBMENU
                      <li class="dropdown">
      <a class="dropdown-toggle" data-toggle="dropdown" href="#">Menu 1 <span class="caret"></span></a>
      <ul class="dropdown-menu">
        <li><a href="#">Submenu 1-1</a></li>
        <li><a href="#">Submenu 1-2</a></li>
        <li><a href="#">Submenu 1-3</a></li>                        
      </ul>
    </li>
 --%>



			</div>
			<div class="collapse navbar-collapse">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="#temple" class="smoothScroll">Temple</a></li>
                    <li><a href="#portfolio" class="smoothScroll">Photo Gallery</a></li>
					<li><a href="#introduction" class="smoothScroll">Introduction</a></li>
					<li><a href="#donation" class="smoothScroll">Donation</a></li>
				
					<li><a href="#trustee" class="smoothScroll">Trustee</a></li>
						
					<li><a href="#contact" class="smoothScroll">Contact Us</a></li>
			
					
				</ul>
			</div>
		</div>
	</nav>
	<!-- end templatemo navigation -->
	<section id="home" class="text-center">
	<%if(darshanFlag!=null && darshanFlag.equals("true")){ %>
	 <iframe src="http://www.issousa.co/live/chicago.html" width="714" height="490" frameborder="0" scrolling="no"></iframe><br />
	<%}else{ %>
	  <div class="templatemo_headerimage">
	    <div class="flexslider">
	      <ul class="slides">
	        <li>
	        	<img src="images/slider/i1.png" alt="Slide 1">
	        	<!--
	        	<div class="slider-caption">
				    <div class="templatemo_homewrapper">
				      <h1>Creative Web Design Agency</h1>
				      <h2>Web Design &amp; code your dream</h2>
						<a href="#portfolio" class="smoothScroll templatemo-slider-btn btn btn-default">Learn More</a>
				    </div>
			  	</div>
			  	-->
	        </li>
	        <li>
	        	<img src="images/slider/i2.png" alt="Slide 2">
	        	<!--
	        	<div class="slider-caption">
				    <div class="templatemo_homewrapper">
				      <h1>Flex Slider, CSS Flexbox</h1>
				      <h2>Work on all modern browsers, IE 10+</h2>
						<a href="#team" class="smoothScroll templatemo-slider-btn btn btn-default">Meet Our Team</a>
				    </div>
			  	</div>
			  	-->
	        </li>
	        <li>
	        	<img src="images/slider/i3.png" alt="Slide 3">
	        	<!--
	        	<div class="slider-caption">
				    <div class="templatemo_homewrapper">
				      	<h1>Special Thanks</h1>
				      	<h2>unsplash.com, flexslider, bootstrap, jquery</h2>
						<a href="#about" class="smoothScroll templatemo-slider-btn btn btn-default">About Us</a>
				    </div>
			  	</div>
			  	-->
	        </li>
	      </ul>
	    </div>
	  </div>

	<%} %>
	
		<div class="container" style="text-align: left;">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<h2>ABOUT US</h2>
					<p><strong>Shree Swaminarayan Siddhant Sajivan Mandal, Mid-Atlantic, U.S.A</strong>, is composed of disciples of Maninagar Shree Swaminarayan Gadi Sansthan living in the states of Delaware, Maryland, and Pennsylvania, as well as the southern region of New Jersey.</p><p> The Mandal was created with the guidance and blessings from His Divine Holiness Acharya Shree Purushottampriyadasji Swamiji Maharaj in 2011.</p>
<p>The foundations of the Mandal go back to 2004. With Shree Swaminarayan Temple New Jersey, the primary temple of Maninagar Shree Swaminarayan Gadi Sansthan in the United States, being anywhere from a two-hour to four-hour commute from the Mid-Atlantic region, disciples were finding it difficult to travel to the temple for each and every religious holiday and celebration. They desired to go to the temple more often, but it was not always possible due to work, school, and family commitments such a distance away. During His North America vicharan in 2004, Acharya Swamiji advised these disciples to start holding gatherings at each other’s homes for each Ekadashi and for major religious occasions, such as Janmashtmi and Diwali. Later that year, the first Ekadashi celebration was held at the home of a disciple in Pennsylvania, and many disciples from all over the region attended to sing kirtans together in praise of Lord Shree Swaminarayanbapa Swamibapa, recite religious scriptures to please the Lord, perform an utsav and aarti, and offer thaal to the Lord.</p>
<p>These Ekadashi celebrations at the homes of dozens of different disciples all over the region continued for the next seven years. Every single Ekadashi during these years was celebrated by the disciples, and in some cases, if Ekadashi fell on a weekend, the disciples celebrated at Shree Swaminarayan Temple New Jersey. Additionally, they rented community halls to celebrate Diwali on a grander scale and to hold large gatherings when Acharya Swamiji and sants were touring the region. The Mandal’s first ever large community-wide sabha in the presence of Acharya Swamiji was held in August 2006 at the Nur Shrine Temple Hall in New Castle, Delaware. Hundreds of disciples and local community members attended these auspicious gatherings.</p>
<p>In 2011, during the Shree Swaminarayan Temple Chicago Murti Pratishtha Mahotsav, Acharya Swamiji officially established Shree Swaminarayan Siddhant Sajivan Mandal, Mid-Atlantic, USA, and He encouraged the disciples to start looking for a small church or community hall for sale where a Hari Mandir could be established. By the grace of the Lord, in early 2012, a perfect location was found in Bear, Delaware. There were plenty of rooms, a kitchen, and a prayer area fit exactly for the size of the congregation. Acharya Swamiji gave His blessing, and on the morning of May 11th, 2012, the closing on the property was completed, and the first sabha was held at the location. On June 1st, 2012, Ekadashi, Acharya Swamiji and sants arrived at the location, the Hari Mandir was established, and a sabha was held for the first time in the presence of Acharya Swamiji.</p>
<p>With the establishment of this Hari Mandir, the disciples of the Mid-Atlantic region had a common place to hold all gatherings and celebrations, and with divine blessings from Lord Swaminarayanbapa Swamibapa and Acharya Swamiji, they hoped the Satsang will continue to flourish throughout the region and, furthermore, throughout the United States.</p>
<p>With the Lord’s endless grace, it did. In January of 2014, with Acharya Swamiji’s blessings, it was decided the divine Murtis (idols) of Lord Shree Swaminarayan, Jeevanpran Shree Abji Bapashree, and Jeevanpran Shree Muktajeevan Swamibapa would ceremoniously be installed in a grand sinhasan at Shree Swaminarayan Temple Delaware. In celebration of this momentous occasion, Acharya Swamiji has inspired a magnificent Murti Pratishtha Mahotsav to be celebrated from July 4 - 6, 2014. In addition, the first ever Diamond Tula (ceremonial weighing with diamonds) of Shree Harikrushna Maharaj in the history of Maninagar Shree Swaminarayan Gadi Sansthan will be performed by Acharya Swamiji on Sunday, July 6, 2014. Construction and preparations are well underway for the celebrations.</p>
<p>This historical occasion is a once-in-a-lifetime event, and the disciples of S.S.S.S.M., Mid-Atlantic, U.S.A., humbly invite you, their brothers and sisters, to celebrate the Lord’s divine glory at this magnificent festival with them..  </p>
				</div>
				
		</div>
		
		</div>
	</section>
	<!-- end templatemo features -->
	
	
	
	
	<section id="temple" class="text-center">
	 	
		<div class="container" style="text-align: left;">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<h2 style="color: white">TEMPLE</h2><h2>TEMPLE</h2>
					<p>Located on the Eastern Coast of the United States, in the heart of Delaware, Shree Swaminarayan Temple Delaware is one of the many temples in the Conutry of Maninagar Shree Swaminarayan Gadi Sansthan.</p>
					<p>The temple is run by a registered non-profit organization – Shree Swaminarayan Sidhant Sajivan Mandal, U.S.A. under the guidance and blessings of His Divine Holiness Acharya Swamishree, who is the sovereign of Shree Swaminarayan Gadi, the divine abode of Lord Shree Swaminarayan. By giving His endless effort and love to spread the philosophy and teachings of Lord Shree Swaminarayan, Acharya Swamishree has ensured that followers of Shree Swaminarayan Gadi Sansthan will have strong values and devotion towards Lord Shree Swaminarayan even while residing in the United States.</p>
				</div>
				
		</div>
		
		</div>
	</section>
	<!-- end templatemo features -->
	
	
	
	
	
	<section id="introduction" class="text-center">
	 	
		<div class="container" style="text-align: left;">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<h2 style="color: white">INTRODUCTION</h2><h2>INTRODUCTION</h2>
					<p>Shree Swaminarayan Temple New Jersey is not only a place of worship for the followers of Maninagar Shree Swaminarayan Gadi Sansthan, but it is also a center of the learning, practice, and preservation of cultural and social welfare.</p>
	         		<p>Located in the heart of Secaucus, the temple is the primary temple in the United States of Maninagar Shree Swaminarayan Gadi Sansthan, which was established by Gurudev Jeevanpran Shree Muktajeevan Swamibapa. Shree Swaminarayan Gadi Sansthan is the worldwide center for spiritual, cultural, and social welfare and is an organization humbly devoted to the service of humanity.</p>
	         		<p>The temple is run under a non-profit organization - Shree Swaminarayan Sidhant Sajivan Mandal, U.S.A. under the guidance and blessings of His Divine Holiness Acharya Swamishree, who is the sovereign of Shree Swaminarayan Gadi, the divine office of Lord Shree Swaminarayan. Acharya Swamishree opened the newly constructed temple in the year 2001, and with His divine blessings, it has been successful ever since.</p>
	         		<p>His Divine Holiness Acharya Swamishree inspires all of the activities at the temple, and as well as being the reverential spiritual leader of thousands of people around the world, He has been acclaimed as being the “Ultimate Humanitarian” due to the many charitable projects He has carried out. He is persistently instigating campaigns to provide free medical assistance; to distribute necessities which include food, clothing, and medicine; and to educate the poor and disadvantaged.</p>
	         		<p>A prominent social reformer and an absolute pacifist, Acharya Swamishree promotes world peace and compassion for people of all faiths, nationalities, and races. He is truly the “Ultimate Humanitarian,” for He only wishes for the well being of humankind.</p>
	         		<p>“May the sublime message of morality, peace, and truth be spread throughout the world.

Compassion, love for all, and universal understanding are the essentials of humanity; these are the virtues that please the Lord; these are the values that need to be instilled throughout society.”</p>

<p align="center"> -His Divine Holiness Acharya Swamishree</p>
				</div>
				
		</div>
		
		</div>
	</section>
	<!-- end templatemo features -->
	
	

	
	

	<!-- start templatemo about -->
	<section id="donation" class="text-center" style="text-align: left;">
<div class="container">
	<div class="row">
		<div class="col-md-2"></div>
		<div class="col-md-8 text-center">
			<h2 style="color: white">Donation</h2><h2>Donation</h2>
			<p><marquee>Shree Swaminarayan Siddhant Sajivan Mandal Mid-Atlantic USA, Inc. is a <strong>nonprofit, tax-exempt</strong> organization.</marquee></p><br/><br/>
		</div>
		<div class="col-md-12"></div>
		<div class="col-sm-6 col-md-6 info">
			
			<h4>Donations are welcome to make this historic event a success. Please contact Ghanshyambhai J. Patel at (302) 545-5212, Hasmukhbhai J. Patel at (484) 995-1764, or Manubhai J. Patel at (410) 971-7345.</h4><br/><br/>
			<p>Checks may be submitted in person to any committee member or to the donations desk at Shree Swaminarayan Temple Delaware. Receipts will be given to confirm your donation.</p>
		</div>
		<div class="col-sm-6 col-md-6 skills">
		
		     <h4>Thank you for your invaluable contributions in making this Mahotsav a memorable occasion for all who attend.</h4><br/><br/><br/><br/>
			<span>Show Us Your Support To Complete the Event</span>
				<span class="pull-right">57%</span>
					<div class="progress">
						<div class="progress-bar progress-bar-success" role="progressbar" aria-valuenow="80" aria-valuemin="0" aria-valuemax="100" style="width: 57%;"></div>
					</div>
			
		</div>
	</div>
</div>
</section>
	<!-- end templatemo about -->
	

	

	<!-- start templatemo team -->
	<%Header header12=new Header(); %>
    <%ArrayList<TrusteeNameBean> list12=(ArrayList)header.getTData(); %>
    <%TrusteeNameBean bean1=list12.get(0); %>
    <%TrusteeNameBean bean2=list12.get(1); %>
    <%TrusteeNameBean bean3=list12.get(2); %>
    <%TrusteeNameBean bean4=list12.get(3); %>
    
	<section id="trustee" class="text-center">
		<div class="container">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<h2 style="color: white">TRUSTEES(Our Team)</h2><h2>TRUSTEES(Our Team)</h2>
					<p></p>
				</div>
				<div class="col-md-12"></div>
				<div class="col-sm-6 col-md-3">
					<img src="images/member1.jpg" class="img-responsive" alt="team 1">
						<h3><%=bean1.getTname() %></h3>
						<p><%=bean1.getTposition() %></p>
				</div>
				<div class="col-sm-6 col-md-3">
					<img src="images/member2.jpg" class="img-responsive" alt="team 2">
						<h3><%=bean2.getTname() %></h3>
						<p><%=bean2.getTposition() %></p>
				</div>
				<div class="col-sm-6 col-md-3">
					<img src="images/member3.jpg" class="img-responsive" alt="team 3">
						<h3><%=bean3.getTname() %></h3>
						<p><%=bean3.getTposition() %></p>
				</div>
				<div class="col-sm-6 col-md-3">
					<img src="images/member4.jpg" class="img-responsive" alt="team 4">
						<h3><%=bean4.getTname() %></h3>
						<p><%=bean4.getTposition() %></p>
				</div>
			</div>
		</div>
	</section>
	<!-- end templatemo team -->
	</br>
	</br>
	</br>
	

	<!-- start templatemo portfolio -->
	<section id="portfolio">
		<div class="container text-center">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8">
					<h2>PHOTO GALLERY</h2>
					<%for(int i=0;i<list.size();i++){HeaderBean bean=(HeaderBean)list.get(i);%>
					
					<p><%=bean.getHeader() %></p>
					<%} %>
				</div>
				<div class="col-md-12"></div>
				<div class="col-sm-6 col-md-3">
					<div class="image_thumb">
						<img src="images/p1.jpg" class="img-responsive" alt="work">
							<div class="image_overlay">
							
								<a onclick="view(1)"><i class="fa fa-thumbs-o-up">zoom</i></a>
							</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="image_thumb">
						<img src="images/p2.jpg" class="img-responsive" alt="work">
							<div class="image_overlay">
								<a onclick="view(2)"><i class="fa fa-thumbs-o-up">zoom</i></a>
							</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="image_thumb">
						<img src="images/p3.jpg" class="img-responsive" alt="work">
							<div class="image_overlay">
								<a onclick="view(3)"><i class="fa fa-thumbs-o-up">zoom</i></a>
							</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="image_thumb">
						<img src="images/p4.jpg" class="img-responsive" alt="work">
							<div class="image_overlay">
									<a onclick="view(4)"><i class="fa fa-thumbs-o-up">zoom</i></a>
							</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="image_thumb">
						<img src="images/p5.jpg" class="img-responsive" alt="work">
							<div class="image_overlay">
								<a onclick="view(5)"><i class="fa fa-thumbs-o-up">zoom</i></a>
							</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="image_thumb">
						<img src="images/p6.jpg" class="img-responsive" alt="work">
							<div class="image_overlay">
								<a onclick="view(6)"><i class="fa fa-thumbs-o-up">zoom</i></a>
							</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="image_thumb">
						<img src="images/p7.jpg" class="img-responsive" alt="work">
							<div class="image_overlay">
								<a onclick="view(7)"><i class="fa fa-thumbs-o-up">zoom</i></a>
							</div>
					</div>
				</div>
				<div class="col-sm-6 col-md-3">
					<div class="image_thumb">
						<img src="images/p8.jpg" class="img-responsive" alt="work">
							<div class="image_overlay">
								<a onclick="view(8)"><i class="fa fa-thumbs-o-up">zoom</i></a>
							</div>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!-- end templatemo portfolio -->

	<!-- start templatemo contact -->
	<section id="contact">
		<div class="container">
			<div class="row">
				<div class="col-md-2"></div>
				<div class="col-md-8 text-center">
					<h2>CONTACT US</h2>
					<p>We value your comments and suggestions. Please send us you comments and suggestions by filling the form below.</p>
				</div>
				<div class="col-md-12"></div>
				<div class="col-sm-6 col-md-4 address">
					<h2>OUR ADDRESS</h2>
					
					<p><div id="googleMap"><iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d792139.7510800626!2d-75.41892065!3d39.14525095!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c705764d0cd63b%3A0x941d2d128c04e878!2sDelaware%2C+USA!5e0!3m2!1sen!2sin!4v1427130203396" style="width:300px;height:170px;"></iframe></div></p>
			



					
				
					<p><i></i> 		180 School Bell Road
Bear, DE 19701</p>
<p><i ></i>USA</p>
<p><i ></i>Tel: +1 (302) 326-1008 </p>
<p><i ></i>E-mail: Delaware@SwaminarayanGadi.com</p>
				</div>
				
				<div class="col-sm-6 col-md-8">
					<form action="SendEmailController" method="post" role="form">
						<div class="col-md-6">
							<input type="text" class="form-control" name="name" placeholder="Name" required="required">
						</div>
						<div class="col-md-6">
							<input type="email" class="form-control" name="email"  placeholder="Email" required="required">
						</div>
						<div class="col-md-12">
							<input type="text" class="form-control" name="subject" placeholder="Subject" required="required">
						</div>
						<div class="col-md-12">
							<textarea class="form-control" rows="6" name="message" placeholder="Message" required="required"></textarea>
						</div>
						<div class="col-md-12">
							<input type="submit" value="SEND MESSAGE" class="form-control">
						</div>
					</form>
				</div>
			</div>
		</div>
	</section>
	<!-- end templatemo contact -->

 

	<!-- start templatemo footer -->
	<footer class="text-center">
		<div class="container">
			<div class="row">
			
				<div class="social_icon">
					<a href="#" class="fa fa-facebook"></a>
					<a href="#" class="fa fa-twitter"></a>
					<a href="#" class="fa fa-linkedin"></a>
					<a href="#" class="fa fa-tumblr"></a>
				</div>
				
				<p>Copyright <a ondblclick="myAdmin()">©</a> 2015 <a href="http://avetech.us/" >AveTech</a></p>
			</div>
			
		</div>
		<center><audio controls onload="true" autoplay="autoplay" loop="loop" style="width: 40px;height: 5px;float: left;">
  <source src="sounds/main.ogg" type="audio/ogg">
  <source src="sounds/main.mp3" type="audio/mpeg">
  Your browser does not support the audio element.
</audio></center>
	</footer>
	<!-- end templatemo footer -->

	<!-- start back to top -->
	<a href="#top" class="go-top"><i class="fa fa-chevron-up fa-1x"></i></a>
	<!-- end back to top -->

	<script src="js/jquery.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/smoothscroll.js"></script>
	<script src="js/jquery.flexslider.js"></script>

	<!-- start templatemo back to top js -->
	<script>
		$(document).ready(function() {
			// FlexSlider
		  	$('.flexslider').flexslider({
		      animation: "fade",
		      directionNav: false
		  	});

			// Show or hide the sticky footer button
			$(window).scroll(function() {
				if ($(this).scrollTop() > 200) {
					$('.go-top').fadeIn(200);
				} else {
					$('.go-top').fadeOut(200);
				}
			});
			// Animate the scroll to top
			$('.go-top').click(function(event) {
				event.preventDefault();
				$('html, body').animate({scrollTop: 0}, 300);
			})
		});
	</script>
	<!-- end templatemo back to top js -->

	</body>
</html>