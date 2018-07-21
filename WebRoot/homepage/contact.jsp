<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
		<title>City Night</title>

		<!-- Styles -->
		<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700|Poppins:400,600" rel="stylesheet">

		<!-- favicon and touch icons -->
		<link rel="shortcut icon" href="assets/images/favicon.png">

		<!-- Bootstrap -->
		<link href="plugins/font-awesome/css/font-awesome.min.css" rel="stylesheet">
		<link href="plugins/slick/slick.css" rel="stylesheet">
		<link href="plugins/slick-nav/slicknav.css" rel="stylesheet">
		<link href="plugins/wow/animate.css" rel="stylesheet">
		<link href="assets/css/bootstrap.css" rel="stylesheet">
		<link href="assets/css/theme.css" rel="stylesheet">

	</head>

	<body class="contact-template">
		<div id="page-loader">
			<div class="loaders">
				<img src="assets/images/loader/3.gif" alt="First Loader">
				<img src="assets/images/loader/4.gif" alt="First Loader">
			</div>
		</div>
		<header id="site-header">
			<div id="site-header-top">
				<div class="container">
					<div class="row">
						<div class="col-md-5">
							<div class="clearfix">
								<button class="btn btn-warning btn-lg header-btn visible-sm pull-right">List your Property for Free</button>
								<p class="timing-in-header">营业时间：周一至周六 - 上午8点至下午6点</p>
							</div>
						</div>
						<div class="col-md-7">
							<div class="clearfix">
                        <a href="contact.jsp"><button class="btn btn-warning btn-lg header-btn hidden-sm">发布你的房屋信息</button></a>
								<div class="language-in-header">
									<i class="fa fa-globe"></i>
									<label for="language-dropdown">语言:</label>
									<select name="currency" id="language-dropdown">
										<option value="ENG">ENG</option>
										<option value="AR">AR</option>
										<option value="UR">UR</option>
										<option value="NEO">NEO</option>
										<option value="AKA">AKA</option>
									</select>
								</div>
								<div class="currency-in-header">
									<i class="fa fa-flag"></i>
									<label for="currency-dropdown"> Currency: </label>
									<select name="currency" id="currency-dropdown">
										<option value="USD">USD</option>
										<option value="EUR">EUR</option>
										<option value="AOA">AOA</option>
										<option value="XCD">XCD</option>
										<option value="PKR">PKR</option>
									</select>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="container">
				<div class="row">
					<div class="col-md-3">
						<figure id="site-logo">
							<a href="index.html"><img src="assets/images/logo.png" alt="Logo"></a>
						</figure>
					</div>
					<div class="col-md-6 col-sm-8">
						<nav id="site-nav" class="nav navbar-default">
							<ul class="nav navbar-nav">
								<li>
									<a href="${pageContext.request.contextPath}/HomeIndexServlet">家</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/property-listing.jsp">清单</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/single-property.jsp">属性</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/gallery.jsp">画廊</a>
								</li>
								
							</ul>
						</nav>
					</div>
					<div class="col-md-3 col-sm-4">
						<div class="contact-in-header clearfix">
							<i class="fa fa-mobile"></i>
							<span>
                        Call Us Now
                        <br>
                    <strong>111 222 333 444</strong>
                    </span>
						</div>
					</div>
				</div>
			</div>
		</header>
		<div id="site-banner" class="text-center clearfix">
			<div class="container">
				<h1 class="title wow slideInLeft">Get in touch with us</h1>
				<ol class="breadcrumb wow slideInRight">
					<li>
						<a href="index.html">Home</a>
					</li>
					<li class="active">Contact</li>
				</ol>
			</div>
		</div>
		<div id="contact-page" class="contact-page-var-one">

			<iframe scrolling="auto" rameborder="0" src="../add.jsp" name="right" width="100%" height="100%"></iframe>
		</div>
		<footer id="footer">
			<div class="site-footer">
				<div class="container">
					<div class="row">
						<div class="col-md-4 col-sm-6">
							<section class="widget about-widget clearfix">
								<h4 class="title hide">About Us</h4>
								<a class="footer-logo" href="#"><img src="assets/images/footer-logo.png" alt="Footer Logo"></a>
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi</p>
								<ul class="social-icons clearfix">
									<li>
										<a href="#"><i class="fa fa-twitter"></i></a>
									</li>
									<li>
										<a href="#"><i class="fa fa-facebook"></i></a>
									</li>
									<li>
										<a href="#"><i class="fa fa-pinterest"></i></a>
									</li>
									<li>
										<a href="#"><i class="fa fa-youtube-play"></i></a>
									</li>
								</ul>
							</section>
						</div>
						<div class="col-md-4 col-sm-6">
							<section class="widget twitter-widget clearfix">
								<h4 class="title">Latest Tweets</h4>
								<div id="twitter-feeds" class="clearfix"></div>
							</section>
						</div>
						<div class="col-md-4 col-sm-6">
							<section class="widget address-widget clearfix">
								<h4 class="title">OUR OFFICE</h4>
								<ul>
									<li><i class="fa fa-map-marker"></i> 4 Tottenham Road, London, England.</li>
									<li><i class="fa fa-phone"></i> (123) 45678910</li>
									<li><i class="fa fa-envelope"></i> huycoi.art@gmail.com</li>
									<li><i class="fa fa-fax"></i> +84 962 216 601</li>
									<li><i class="fa fa-clock-o"></i> Mon - Sat: 9:00 - 18:00</li>
								</ul>
							</section>
						</div>
					</div>
				</div>
			</div>
			<div class="site-footer-bottom">
				<div class="container">
					<p class="copyright pull-left wow slideInRight">Copyright &copy; 2017.Company name All rights reserved.
						<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a>
					</p>
					<nav class="footer-nav pull-right wow slideInLeft">
						<ul>
							<li>
								<a href="#">Terms & Conditions</a>
							</li>
							<li>
								<a href="#">Pricing</a>
							</li>
							<li>
								<a href="#">Contact</a>
							</li>
						</ul>
					</nav>
				</div>
			</div>
		</footer>
		<a href="#top" id="scroll-top"><i class="fa fa-angle-up"></i></a>
		<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
		<script src="assets/js/jquery.min.js"></script>
		<script src="assets/js/jquery.migrate.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		<script src="plugins/slick-nav/jquery.slicknav.min.js"></script>
		<script src="plugins/slick/slick.min.js"></script>
		<script src="plugins/jquery-ui/jquery-ui.min.js"></script>
		<script src="plugins/tweetie/tweetie.js"></script>
		<script src="plugins/forms/jquery.form.min.js"></script>
		<script src="plugins/forms/jquery.validate.min.js"></script>
		<script src="plugins/modernizr/modernizr.custom.js"></script>
		<script src="plugins/wow/wow.min.js"></script>
		<script src="plugins/zoom/zoom.js"></script>
		<script src="plugins/mixitup/mixitup.min.js"></script>
		<!---<script src="http://ditu.google.cn/maps/api/js?key=AIzaSyD2MtZynhsvwI2B40juK6SifR_OSyj4aBA&libraries=places"></script>--->
		<script src="plugins/whats-nearby/source/WhatsNearby.js"></script>
		<script src="assets/js/theme.js"></script>
	</body>

</html>
<script>
	/*****************************************************
	 *Google Maps
	 ******************************************************/
	function initializeContactMap() {
		var officeLocation = new google.maps.LatLng(-37.817917, 144.965065);
		var contactMapOptions = {
			center: officeLocation,
			zoom: 17,
			mapTypeId: google.maps.MapTypeId.ROADMAP,
			scrollwheel: false
		};
		var contactMap = new google.maps.Map(document.getElementById("map-canvas"), contactMapOptions);
		var contactMarker = new google.maps.Marker({
			position: officeLocation,
			map: contactMap
		});
	}

	window.onload = initializeContactMap();
</script>