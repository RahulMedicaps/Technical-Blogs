<%@page import="com.tech.blog.helper.ConnectionProvider"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<link rel="stylesheet" href="CSS/myStyle.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
	<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Pacifico&display=swap" rel="stylesheet">
<style>
.banner-background {
	clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 92%, 71% 99%, 20% 94%, 0 99%, 0 0);
}
</style>
</head>
<body>

	<!-- navbar -->
	<%@include file="normal_navbar.jsp"%>

	<!-- Banner -->
	<div class="container-fluid p-0 m-0 ">
		<!-- -- <div class="jumbotron primary-background text-white banner-background">--->
		<!--_--------------------------------  Carusol----------------------------------------------------------------------- -->
		<div id="carouselExampleIndicators" class="carousel slide"
			data-ride="carousel">
			<div class="carousel-inner">
				<div class="carousel-item active">
					<img id="img1" class="d-block w-100" height="500"
						style="opacity: 0.7"
						src="https://www.ieee.org/content/dam/ieee-org/ieee/web/org/homecarousel/hero/homepage-hero-june-2021-2.jpg"
						alt="First slide">
					<div class="carousel-caption d-none d-md-block"
						style="color: black">
						<div class="container">
							<h3 class="display-3">Welcome to Tech blogs</h3>

							<p style="color: #000; font-weight: 625; font-size: 22px">programmer
								Content developers often use their skills, knowledge and
								experience in software and programming as well as web-based
								technology, to create and update content for websites. Content
								development could involve creative work, such as copy writing or
								graphics, or technical work.</p>
							<p style="color: #000; font-weight: 625; font-size: 22px">programmer
								Content developers often use their skills, knowledge and
								experience in software and programming as well as web-based
								technology, to create and update content for websites. Content
								development could involve creative work, such as copy writing or
								graphics, or technical work.</p>
							<button class="btn btn-outline-light btn-large">
								<span class="fa fa-user-plus"></span>start ! its Free
							</button>
							<a href="login_page.jsp"><button
									class="btn btn-outline-light btn-large">
									<span class="fa fa-user-circle fa-spin"></span>Login
								</button></a>
						</div>
					</div>
				</div>

				<div class="carousel-item">
					<img class="d-block w-100" height="500" style="opacity: 0.7"
						src="https://innovationorigins.com/app/uploads/2021/04/technology-4256272_1920-1004x670.jpg"
						alt="Second slide">
					<div class="carousel-caption d-none d-md-block"
						style="color: black">
						<div class="container">
							<h3 class="display-3">What is Technology?</h3>

							<p style="color: #111; font-weight: 625; font-size: 22px">When
								you think of the word 'technology', what comes to mind? It might
								sound like something from a sci-fi show, or something that has
								to run on electricity. Technology makes us think of the very
								complex, but energy doesn't have to be complex</p>
							<p style="color: #111; font-weight: 625; font-size: 22px">Technology
								is the use of scientific knowledge for practical purposes or
								applications, whether in industry or in our everyday lives. So,
								basically, whenever we use our scientific knowledge to achieve
								some specific purpose, we're using technology. Well, there is
								slightly more to it than that..</p>
							<button class="btn btn-outline-light btn-large">
								<span class="fa fa-user-plus"></span>start ! its Free
							</button>
							<a href="login_page.jsp"><button
									class="btn btn-outline-light btn-large">
									<span class="fa fa-user-circle fa-spin"></span>Login
								</button></a>
						</div>
					</div>
				</div>
				<div class="carousel-item">
					<img class="d-block w-100" height="500" style="opacity: 0.7"
						src="https://treasurytoday.com/-/media/images/technology/treasury-systems/2019-07-08-tta-08-t__business-technology-software-development-iot-concept-1187255977__1920x1080.jpg"
						alt="Third slide">
					<div class="carousel-caption d-none d-md-block"
						style="color: black">
						<div class="container">
							<h3 class="display-3">What is Programming?</h3>

							<p style="color: #111; font-weight: 625; font-size: 22px">When
								you think of the word 'technology', what comes to mind? It might
								sound like something from a sci-fi show, or something that has
								to run on electricity. Technology makes us think of the very
								complex, but energy doesn't have to be complex</p>
							<p style="color: #111; font-weight: 625; font-size: 22px">Technology
								is the use of scientific knowledge for practical purposes or
								applications, whether in industry or in our everyday lives. So,
								basically, whenever we use our scientific knowledge to achieve
								some specific purpose, we're using technology. Well, there is
								slightly more to it than that. Technology usually involves a
								specific piece of equipment, but that equipment can be
								incredibly simple or dazzlingly complex. It can be anything from
								the discovery of the wheel, all the way up to computers and MP3
								players.</p>
							<button class="btn btn-outline-light btn-large">
								<span class="fa fa-user-plus"></span>start ! its Free
							</button>
							<a href="login_page.jsp"><button
									class="btn btn-outline-light btn-large">
									<span class="fa fa-user-circle fa-spin"></span>Login
								</button></a>
						</div>
					</div>
				</div>
				<a class="carousel-control-prev" href="#carouselExampleIndicators"
					role="button" data-slide="prev"> <span
					class="carousel-control-prev-icon" aria-hidden="true"></span> <span
					class="sr-only">Previous</span>
				</a> <a class="carousel-control-next" href="#carouselExampleIndicators"
					role="button" data-slide="next"> <span
					class="carousel-control-next-icon" aria-hidden="true"></span> <span
					class="sr-only">Next</span>
				</a>
			</div>
<br>
<br>
<!-- -e--------------------------------------ndd  Carusol----------------------------------------------------------------------- -->

<div id="main-content" class="container mt-5" style="background-color: white; color: #23354B;">
		<h2 id="single-category-title" class="text-center" style ="vertical-align: middle; font-family: 'Pacifico', cursive; font-size:50px">Every feature you need
to <br>create a powerful blog</h2>
		<br>
		
		<section class="row mt-5" >
			<div class="menu-item-tile col-md-6" ">
			
						<br>
				<div class="row">
						<h3 class="fa fa-user-circle" style="font-size:50px; margin-bottom:11px; margin-left:0px; clear:right"></h3>
						<br>
						<br>
						<h3 class="menu-item-title">Optimized for growth</h3>
						<p class="menu-item-details">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation 
						</p>
					
				</div>
				<hr class="visible-xs">
			</div>

			
				<div class="menu-item-tile col-md-6">
				<div class="fa fa-user-circle" style="font-size:50px; margin-bottom:11px; margin-left:0px!important;"></div>
				<br>
				<div class="row">
						
						<h3 class="menu-item-title ml-6">All-in-one hosting</h3>
						<p class="menu-item-details ml-6">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation 
						</p>
					
				</div>
				<hr class="visible-xs">
			</div>
				<hr class="visible-xs">
			
			<div class="clearfix visible-md-block visible-lg-block"></div>
			<div class="menu-item-tile col-md-6">
			<span class="fa fa-user-circle"></span>
				<div class="row">
						
						<br>
						<h3 class="menu-item-title">Help when you want it</h3>
						<p class="menu-item-details">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation 
						</p>
					
				</div>
				<hr class="visible-xs">
			</div>

			<div class="menu-item-tile col-md-6">
			<span class="fa fa-user-circle"></span>
				<div class="row">
						
						<br>
						<h3 class="menu-item-title ml-6">Designed for success</h3>
						<p class="menu-item-details ml-6">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation 
						</p>
					
				</div>
				<hr class="visible-xs">
			</div>
			<div class="clearfix visible-md-block visible-lg-block"></div>
			<div class="menu-item-tile col-md-6">
			<span class="fa fa-user-circle"></span>
				<div class="row">
						
						<br>
						<h3 class="menu-item-title">Powerful statistics</h3>
						<p class="menu-item-details">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation 
						</p>
					
				</div>
				<hr class="visible-xs">
			</div>
			<div class="menu-item-tile col-md-6">
			<span class="fa fa-user-circle display-3"></span>
				<div class="row">
				
						<br>
					<h3 class="menu-item-title ml-6">Mobile ready</h3>
						<p class="menu-item-details ml-6">
							Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation 
						</p>
					
				</div>
				<hr class="visible-xs">
			</div>
			<div class="clearfix visible-md-block visible-lg-block"></div>
		</section>
	</div>








<!-- --------------------quotes=------------------------------------------ -->
		</div>
	</div>
	<!-- cards -->
	<br>
	<br>
<div style="background-color: #23354B; color: white;">
<br>
<br>
	<h2 id="single-category-title" class="text-center" style ="margin-top:25px;vertical-align: middle; font-family: 'Pacifico', cursive; font-size:50px">People Who love Tech Blogs</h2>
	<div class="container" style="margin-top:50px">
<h2 align="center">Bill Gates</h2>
		<div class="center"
			style=" display: flex; justify-content: center; align-items: center;">
			
			<img class="" style="float: left; clear: left"
				src="data:image/jpeg;base64,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"
				alt="Card image cap">

			<p class="text-center"
				style="font-size: 22px; vertical-align: middle">"When
				something is important enough, you do it even if the odds are not in
				your favor."</p>
		</div>
	</div>
	<br>
	<div class="container" style="margin-top:50px">
	<h2 align="center">Ellon Musk</h2>
		<div class="text-center"
			style="display: flex; justify-content: center; align-items: center;">
			<img class="" style="float: right !important; clear: right"
				src="data:image/jpeg;base64,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"
				alt="Card image cap">
			<p style="font-size: 22px;">"When something is important enough, you do it even if the odds are not in your favor."</p>
		</div>
	</div>

	<br>
	<div class="container" style="margin-top:50px">
<h2 align="center">Mark Zuckerbergs</h2>
		<div class="center"
			style=" display: flex; justify-content: center; align-items: center;">
			
			<img class="" style="float: left; clear: left"
				src="data:image/jpeg;base64,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"
				alt="Card image cap">

			<p class="text-center"
				style="font-size: 22px; vertical-align: middle">"When
				something is important enough, you do it even if the odds are not in
				your favor."</p>
		</div>
	</div>
<br>

</div>

	<!---javascript--->

	<script src="https://code.jquery.com/jquery-3.6.0.min.js"
		integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script
		src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>

	<script src="JS/myJS.js" type="text/javascript">
		
	</script>
</body>
</html>