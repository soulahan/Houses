<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	   int houseId = Integer.parseInt(request.getParameter("houseId"));            ;
%>
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
        <script src="../js/jquery.js"></script>
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

	<body class="">
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
									<a href="${pageContext.request.contextPath}/homepage/property-listing.jsp">清单</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/homepage/single-property.jsp">属性</a>
								</li>
								<li>
									<a href="${pageContext.request.contextPath}/homepage/gallery.jsp">画廊</a>
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
		<div id="property-single">
			<div id="main-slider">
				<div class="slide"><img src="assets/images/slider/1.jpg" alt="Slide"></div>
				<div class="slide"><img src="assets/images/slider/2.jpg" alt="Slide"></div>
				<div class="slide"><img src="assets/images/slider/3.jpg" alt="Slide"></div>
				<div class="slide"><img src="assets/images/slider/4.jpg" alt="Slide"></div>
			</div>
			<div class="container">
				<div class="row">

					<div class="col-lg-8 col-md-7">
					
					
					
					
					
					
					
					
					
						<section class="property-meta-wrapper common">
							<h3 class="entry-title">Guaranteed modern home</h3>
							<div class="property-single-meta">
								<ul class="clearfixx">
								
								
								

	
								</ul>
								
<script type="text/javascript">
   $(document).ready(function(){

       $.ajax({
            url:"${pageContext.request.contextPath}/SingleServlet",
           data:{
     		  "houseId":<%=houseId%>},
           type:"post",
           dataType:"json",
           success:function(msg){
        	 
               var sth;
               $.each(msg,function(key,ll){
      	   
sth="<li><span>面积:</span>"+ll.tArea+"平米"+"</li><li><span>卧室数 :</span>"+ll.tBedNumber+"</li><li><span>卫生间数 :</span>"+ll.tBath+"</li><li><span>房屋类型 :</span>"+ll.tType+"</li><li><span>联系电话 :</span>"+ll.tContact+"</li><li><span>房产证日期 :</span>"+ll.tDate+"</li>"
       $(".clearfixx").append(sth);
               })
              
               
        
           }
           
       });   
   });
								
</script>								




							</div>
						</section>
															
						
						<section class="property-contents common">
							<div class="entry-title clearfix">
								<h4 class="pull-left">Description </h4>
								<a class="pull-right print-btn" href="javascript:window.print()">Print This Property <i class="fa fa-print"></i></a>
							</div>
							<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse placerat, lacus at pulvinar pharetra, sem metus pulvinar leo, ut adipiscing velit ipsum vel dui. Nam volutpat lacinia viverra. Proin tristique tortor sit amet viverra scelerisque. Vivamus convallis varius massa id dictum. Sed facilisis massa turpis, ut dictum leo laoreet nec. Nam ac scelerisque sapien, eu laoreet justo. Cras vel tristique nunc. Nulla risus mi, laoreet eu commodo at, faucibus sed diam. Vivamus ac augue lacinia, aliquam urna nec, accumsan ante. Pellentesque rutrum massa ut augue gravida, et feugiat diam fringilla. Ut rhoncus pulvinar mi a ultrices. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posu ere cubilia curae duis at urna ac nulla vestibulum.</p>
						</section>
						
						
						
						
						
						
						
						
						
						<section class="property-single-features common clearfix">
							<h4 class="entry-title">Property Features</h4>
							<ul class="property-single-features-list clearfix">
								<li>Air Conditioning</li>
								<li>Cable TV</li>
								<li>Cot</li>
								<li class="disabled">Fan</li>
								<li>Lift</li>
								<li>Parking</li>
								<li>Separate Shower</li>
								<li>Office/den</li>
								<li class="disabled">Air Conditioning</li>
								<li>Cable TV</li>
								<li>Cot</li>
								<li>Fan</li>
								<li>Lift</li>
								<li class="disabled">Parking</li>
								<li>Cot</li>
								<li>Fan</li>
								<li>Lift</li>
								<li>Parking</li>
								<li>Separate Shower</li>
								<li class="disabled">Office/den</li>
								<li>Air Conditioning</li>
								<li>Cable TV</li>
							</ul>
						</section>
						<section class="property-video common">
							<h4 class="entry-title">Video Tour</h4>
							<iframe src="" allowfullscreen></iframe>
						</section>
						<section class="property-nearby-places common">
							<h4 class="entry-title">Near By Places</h4>
							<div id="nearby-places-map"></div>
						</section>
					
							
					</div>
					<div class="col-lg-4 col-md-5">
						<div id="property-sidebar">
							<section class="widget adv-search-widget clearfix">
								<h5 class="title hide">Search your Place</h5>
								<div id="advance-search-widget" class="clearfix">
									<form action="#" id="adv-search-form">
										<div id="widget-tabs">
											<ul class="tab-list clearfix">
												<li>
													<a class="btn" href="#tab-1">Sale</a>
												</li>
												<li>
													<a class="btn" href="#tab-2">Rent</a>
												</li>
												<li>
													<a class="btn" href="#tab-3">office for rent</a>
												</li>
											</ul>
											<div id="tab-1" class="tab-content current">
												<fieldset class="clearfix">
													<div>
														<label for="main-location">All Location</label>
														<select name="location" id="main-location">
															<option value="">All Cities</option>
															<option value="chicago"> Chicago</option>
															<option value="los-angeles"> Los Angeles</option>
															<option value="miami"> Miami</option>
															<option value="new-york"> New York</option>
														</select>
													</div>
													<div>
														<label for="property-sub-location">Sub Location</label>
														<select name="sub-location" id="property-sub-location">
															<option value="">All Areas</option>
															<option value="brickell"> Brickell</option>
															<option value="brickyard"> Brickyard</option>
															<option value="bronx"> Bronx</option>
															<option value="brooklyn"> Brooklyn</option>
															<option value="coconut-grove"> Coconut Grove</option>
															<option value="downtown"> Downtown</option>
															<option value="eagle-rock"> Eagle Rock</option>
															<option value="englewood"> Englewood</option>
															<option value="hermosa"> Hermosa</option>
															<option value="hollywood"> Hollywood </option>
															<option value="lincoln-park"> Lincoln Park</option>
															<option value="manhattan"> Manhattan</option>
															<option value="midtown"> Midtown</option>
															<option value="queens"> Queens</option>
															<option value="westwood"> Westwood </option>
															<option value="wynwood"> Wynwood</option>
														</select>
													</div>
													<div>
														<label for="property-status">All Status</label>
														<select id="property-status" name="status">
															<option value="">All Status</option>
															<option value="for-rent"> For Rent</option>
															<option value="for-sale"> For Sale</option>
															<option value="foreclosures"> Foreclosures</option>
															<option value="new-costruction"> New Costruction</option>
															<option value="new-listing"> New Listing</option>
															<option value="open-house"> Open House</option>
															<option value="reduced-price"> Reduced Price</option>
															<option value="resale"> Resale</option>
														</select>
													</div>
													<div>
														<label for="property-type">All Types</label>
														<select id="property-type" name="type">
															<option value="">All Types</option>
															<option value="apartment"> Apartment</option>
															<option value="condo"> Condo</option>
															<option value="farm"> Farm</option>
															<option value="loft"> Loft</option>
															<option value="lot"> Lot</option>
															<option value="multi-family-home"> Multi Family Home</option>
															<option value="single-family-home"> Single Family Home</option>
															<option value="townhouse"> Townhouse</option>
															<option value="villa"> Villa</option>
														</select>
													</div>
													<div>
														<label for="property-beds">No.Beds</label>
														<select name="bedrooms" id="property-beds">
															<option value="">Beds</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="any">Any</option>
														</select>
													</div>
													<div>
														<label for="property-baths">No.Baths</label>
														<select name="bathrooms" id="property-baths">
															<option value="">Bathrooms</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="any">Any</option>
														</select>
													</div>
													<div>
														<label for="property-min-area">Min Area(sqft)</label>
														<input type="text" name="min-area" id="property-min-area">
													</div>
													<div>
														<label for="property-max-area">Max Area(sqft)</label>
														<input type="text" name="max-area" id="property-max-area">
													</div>
													<div>
														<label for="property-min-price">Min Prices</label>
														<select name="min-price" id="property-min-price">
															<option value="any" selected="selected">Any</option>
															<option value="1000">$1000</option>
															<option value="5000">$5000</option>
															<option value="10000">$10000</option>
															<option value="50000">$50000</option>
															<option value="100000">$100000</option>
															<option value="200000">$200000</option>
															<option value="300000">$300000</option>
															<option value="400000">$400000</option>
															<option value="500000">$500000</option>
															<option value="600000">$600000</option>
															<option value="700000">$700000</option>
															<option value="800000">$800000</option>
															<option value="900000">$900000</option>
															<option value="1000000">$1000000</option>
															<option value="1500000">$1500000</option>
															<option value="2000000">$2000000</option>
															<option value="2500000">$2500000</option>
															<option value="5000000">$5000000</option>
														</select>
													</div>
													<div>
														<label for="property-max-price">Max Prices</label>
														<select name="max-price" id="property-max-price">
															<option value="any" selected="selected">Any</option>
															<option value="5000">$5000</option>
															<option value="10000">$10000</option>
															<option value="50000">$50000</option>
															<option value="100000">$100000</option>
															<option value="200000">$200000</option>
															<option value="300000">$300000</option>
															<option value="400000">$400000</option>
															<option value="500000">$500000</option>
															<option value="600000">$600000</option>
															<option value="700000">$700000</option>
															<option value="800000">$800000</option>
															<option value="900000">$900000</option>
															<option value="1000000">$1000000</option>
															<option value="1500000">$1500000</option>
															<option value="2000000">$2000000</option>
															<option value="2500000">$2500000</option>
															<option value="5000000">$5000000</option>
															<option value="10000000">$10000000</option>
														</select>
													</div>
												</fieldset>
											</div>
											<div id="tab-2" class="tab-content">
												<fieldset class="clearfix">
													<div>
														<label for="main-location">All Location</label>
														<select name="location" id="main-location">
															<option value="">All Cities</option>
															<option value="chicago"> Chicago</option>
															<option value="los-angeles"> Los Angeles</option>
															<option value="miami"> Miami</option>
															<option value="new-york"> New York</option>
														</select>
													</div>
													<div>
														<label for="property-sub-location">Sub Location</label>
														<select name="sub-location" id="property-sub-location">
															<option value="">All Areas</option>
															<option value="brickell"> Brickell</option>
															<option value="brickyard"> Brickyard</option>
															<option value="bronx"> Bronx</option>
															<option value="brooklyn"> Brooklyn</option>
															<option value="coconut-grove"> Coconut Grove</option>
															<option value="downtown"> Downtown</option>
															<option value="eagle-rock"> Eagle Rock</option>
															<option value="englewood"> Englewood</option>
															<option value="hermosa"> Hermosa</option>
															<option value="hollywood"> Hollywood </option>
															<option value="lincoln-park"> Lincoln Park</option>
															<option value="manhattan"> Manhattan</option>
															<option value="midtown"> Midtown</option>
															<option value="queens"> Queens</option>
															<option value="westwood"> Westwood </option>
															<option value="wynwood"> Wynwood</option>
														</select>
													</div>
													<div>
														<label for="property-status">All Status</label>
														<select id="property-status" name="status">
															<option value="">All Status</option>
															<option value="for-rent"> For Rent</option>
															<option value="for-sale"> For Sale</option>
															<option value="foreclosures"> Foreclosures</option>
															<option value="new-costruction"> New Costruction</option>
															<option value="new-listing"> New Listing</option>
															<option value="open-house"> Open House</option>
															<option value="reduced-price"> Reduced Price</option>
															<option value="resale"> Resale</option>
														</select>
													</div>
													<div>
														<label for="property-type">All Types</label>
														<select id="property-type" name="type">
															<option value="">All Types</option>
															<option value="apartment"> Apartment</option>
															<option value="condo"> Condo</option>
															<option value="farm"> Farm</option>
															<option value="loft"> Loft</option>
															<option value="lot"> Lot</option>
															<option value="multi-family-home"> Multi Family Home</option>
															<option value="single-family-home"> Single Family Home</option>
															<option value="townhouse"> Townhouse</option>
															<option value="villa"> Villa</option>
														</select>
													</div>
													<div>
														<label for="property-beds">No.Beds</label>
														<select name="bedrooms" id="property-beds">
															<option value="">Beds</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="any">Any</option>
														</select>
													</div>
													<div>
														<label for="property-baths">No.Baths</label>
														<select name="bathrooms" id="property-baths">
															<option value="">Bathrooms</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="any">Any</option>
														</select>
													</div>
													<div>
														<label for="property-min-area">Min Area(sqft)</label>
														<input type="text" name="min-area" id="property-min-area">
													</div>
													<div>
														<label for="property-max-area">Max Area(sqft)</label>
														<input type="text" name="max-area" id="property-max-area">
													</div>
													<div>
														<label for="property-min-price">Min Prices</label>
														<select name="min-price" id="property-min-price">
															<option value="any" selected="selected">Any</option>
															<option value="1000">$1000</option>
															<option value="5000">$5000</option>
															<option value="10000">$10000</option>
															<option value="50000">$50000</option>
															<option value="100000">$100000</option>
															<option value="200000">$200000</option>
															<option value="300000">$300000</option>
															<option value="400000">$400000</option>
															<option value="500000">$500000</option>
															<option value="600000">$600000</option>
															<option value="700000">$700000</option>
															<option value="800000">$800000</option>
															<option value="900000">$900000</option>
															<option value="1000000">$1000000</option>
															<option value="1500000">$1500000</option>
															<option value="2000000">$2000000</option>
															<option value="2500000">$2500000</option>
															<option value="5000000">$5000000</option>
														</select>
													</div>
													<div>
														<label for="property-max-price">Max Prices</label>
														<select name="max-price" id="property-max-price">
															<option value="any" selected="selected">Any</option>
															<option value="5000">$5000</option>
															<option value="10000">$10000</option>
															<option value="50000">$50000</option>
															<option value="100000">$100000</option>
															<option value="200000">$200000</option>
															<option value="300000">$300000</option>
															<option value="400000">$400000</option>
															<option value="500000">$500000</option>
															<option value="600000">$600000</option>
															<option value="700000">$700000</option>
															<option value="800000">$800000</option>
															<option value="900000">$900000</option>
															<option value="1000000">$1000000</option>
															<option value="1500000">$1500000</option>
															<option value="2000000">$2000000</option>
															<option value="2500000">$2500000</option>
															<option value="5000000">$5000000</option>
															<option value="10000000">$10000000</option>
														</select>
													</div>
												</fieldset>
											</div>
											<div id="tab-3" class="tab-content">
												<fieldset class="clearfix">
													<div>
														<label for="main-location">All Location</label>
														<select name="location" id="main-location">
															<option value="">All Cities</option>
															<option value="chicago"> Chicago</option>
															<option value="los-angeles"> Los Angeles</option>
															<option value="miami"> Miami</option>
															<option value="new-york"> New York</option>
														</select>
													</div>
													<div>
														<label for="property-sub-location">Sub Location</label>
														<select name="sub-location" id="property-sub-location">
															<option value="">All Areas</option>
															<option value="brickell"> Brickell</option>
															<option value="brickyard"> Brickyard</option>
															<option value="bronx"> Bronx</option>
															<option value="brooklyn"> Brooklyn</option>
															<option value="coconut-grove"> Coconut Grove</option>
															<option value="downtown"> Downtown</option>
															<option value="eagle-rock"> Eagle Rock</option>
															<option value="englewood"> Englewood</option>
															<option value="hermosa"> Hermosa</option>
															<option value="hollywood"> Hollywood </option>
															<option value="lincoln-park"> Lincoln Park</option>
															<option value="manhattan"> Manhattan</option>
															<option value="midtown"> Midtown</option>
															<option value="queens"> Queens</option>
															<option value="westwood"> Westwood </option>
															<option value="wynwood"> Wynwood</option>
														</select>
													</div>
													<div>
														<label for="property-status">All Status</label>
														<select id="property-status" name="status">
															<option value="">All Status</option>
															<option value="for-rent"> For Rent</option>
															<option value="for-sale"> For Sale</option>
															<option value="foreclosures"> Foreclosures</option>
															<option value="new-costruction"> New Costruction</option>
															<option value="new-listing"> New Listing</option>
															<option value="open-house"> Open House</option>
															<option value="reduced-price"> Reduced Price</option>
															<option value="resale"> Resale</option>
														</select>
													</div>
													<div>
														<label for="property-type">All Types</label>
														<select id="property-type" name="type">
															<option value="">All Types</option>
															<option value="apartment"> Apartment</option>
															<option value="condo"> Condo</option>
															<option value="farm"> Farm</option>
															<option value="loft"> Loft</option>
															<option value="lot"> Lot</option>
															<option value="multi-family-home"> Multi Family Home</option>
															<option value="single-family-home"> Single Family Home</option>
															<option value="townhouse"> Townhouse</option>
															<option value="villa"> Villa</option>
														</select>
													</div>
													<div>
														<label for="property-beds">No.Beds</label>
														<select name="bedrooms" id="property-beds">
															<option value="">Beds</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="any">Any</option>
														</select>
													</div>
													<div>
														<label for="property-baths">No.Baths</label>
														<select name="bathrooms" id="property-baths">
															<option value="">Bathrooms</option>
															<option value="1">1</option>
															<option value="2">2</option>
															<option value="3">3</option>
															<option value="4">4</option>
															<option value="5">5</option>
															<option value="6">6</option>
															<option value="7">7</option>
															<option value="8">8</option>
															<option value="9">9</option>
															<option value="10">10</option>
															<option value="any">Any</option>
														</select>
													</div>
													<div>
														<label for="property-min-area">Min Area(sqft)</label>
														<input type="text" name="min-area" id="property-min-area">
													</div>
													<div>
														<label for="property-max-area">Max Area(sqft)</label>
														<input type="text" name="max-area" id="property-max-area">
													</div>
													<div>
														<label for="property-min-price">Min Prices</label>
														<select name="min-price" id="property-min-price">
															<option value="any" selected="selected">Any</option>
															<option value="1000">$1000</option>
															<option value="5000">$5000</option>
															<option value="10000">$10000</option>
															<option value="50000">$50000</option>
															<option value="100000">$100000</option>
															<option value="200000">$200000</option>
															<option value="300000">$300000</option>
															<option value="400000">$400000</option>
															<option value="500000">$500000</option>
															<option value="600000">$600000</option>
															<option value="700000">$700000</option>
															<option value="800000">$800000</option>
															<option value="900000">$900000</option>
															<option value="1000000">$1000000</option>
															<option value="1500000">$1500000</option>
															<option value="2000000">$2000000</option>
															<option value="2500000">$2500000</option>
															<option value="5000000">$5000000</option>
														</select>
													</div>
													<div>
														<label for="property-max-price">Max Prices</label>
														<select name="max-price" id="property-max-price">
															<option value="any" selected="selected">Any</option>
															<option value="5000">$5000</option>
															<option value="10000">$10000</option>
															<option value="50000">$50000</option>
															<option value="100000">$100000</option>
															<option value="200000">$200000</option>
															<option value="300000">$300000</option>
															<option value="400000">$400000</option>
															<option value="500000">$500000</option>
															<option value="600000">$600000</option>
															<option value="700000">$700000</option>
															<option value="800000">$800000</option>
															<option value="900000">$900000</option>
															<option value="1000000">$1000000</option>
															<option value="1500000">$1500000</option>
															<option value="2000000">$2000000</option>
															<option value="2500000">$2500000</option>
															<option value="5000000">$5000000</option>
															<option value="10000000">$10000000</option>
														</select>
													</div>
												</fieldset>
											</div>
											<button type="submit" class="btn btn-default btn-lg text-center btn-3d" data-hover="Search Property">Search Property</button>
										</div>
									</form>
								</div>
							</section>
							<section class="widget recent-properties clearfix">
								<h5 class="title">Recent Properties</h5>
								<div class="property clearfix">
									<a href="#" class="feature-image zoom"><img data-action="zoom" src="assets/images/property/1.jpg" alt="Property Image"></a>
									<div class="property-contents">
										<h6 class="entry-title"><a href="single-property.html">Luxury family home</a></h6>
										<span class="btn-price">$389.000</span>
										<div class="property-meta clearfix">
											<span><i class="fa fa-arrows-alt"></i> 3060 SqFt</span>
											<span><i class="fa fa-bed"></i> 3 Beds</span>
											<span><i class="fa fa-bathtub"></i> 3 Baths</span>
											<span><i class="fa fa-cab"></i> Yes</span>
										</div>
									</div>
								</div>
								<div class="property clearfix">
									<a href="#" class="feature-image zoom"><img data-action="zoom" src="assets/images/property/2.jpg" alt="Property Image"></a>
									<div class="property-contents">
										<h6 class="entry-title"><a href="single-property.html">Luxury family home</a></h6>
										<span class="btn-price">$389.000</span>
										<div class="property-meta clearfix">
											<span><i class="fa fa-arrows-alt"></i> 3060 SqFt</span>
											<span><i class="fa fa-bed"></i> 3 Beds</span>
											<span><i class="fa fa-bathtub"></i> 3 Baths</span>
											<span><i class="fa fa-cab"></i> Yes</span>
										</div>
									</div>
								</div>
								<div class="property clearfix">
									<a href="#" class="feature-image zoom"><img data-action="zoom" src="assets/images/property/3.jpg" alt="Property Image"></a>
									<div class="property-contents">
										<h6 class="entry-title"><a href="single-property.html">Luxury family home</a></h6>
										<span class="btn-price">$389.000</span>
										<div class="property-meta clearfix">
											<span><i class="fa fa-arrows-alt"></i> 3060 SqFt</span>
											<span><i class="fa fa-bed"></i> 3 Beds</span>
											<span><i class="fa fa-bathtub"></i> 3 Baths</span>
											<span><i class="fa fa-cab"></i> Yes</span>
										</div>
									</div>
								</div>
							</section>
							<section class="widget property-taxonomies clearfix">
								<h5 class="title">Recent Status</h5>
								<ul class="clearfix">
									<li>
										<a href="#">For Rent </a><span class="pull-right">29</span></li>
									<li>
										<a href="#">For Sale </a><span class="pull-right">35</span></li>
									<li>
										<a href="#">Office For Rent </a><span class="pull-right">07</span></li>
								</ul>
							</section>
							<section class="widget property-taxonomies clearfix">
								<h5 class="title">Recent Type</h5>
								<ul class="clearfix">
									<li>
										<a href="#">Apartment </a><span class="pull-right">30</span></li>
									<li>
										<a href="#">Loft </a><span class="pull-right">05</span></li>
									<li>
										<a href="#">Single Family Home </a><span class="pull-right">28</span></li>
									<li>
										<a href="#">Vila </a><span class="pull-right">37</span></li>
								</ul>
							</section>
						</div>
					</div>
				</div>
			</div>
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
		jQuery (necessary for Bootstrap's JavaScript plugins)
		
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
		-<script src="http://ditu.google.cn/maps/api/js?key=AIzaSyD2MtZynhsvwI2B40juK6SifR_OSyj4aBA&libraries=places"></script>-
		<script src="plugins/whats-nearby/source/WhatsNearby.js"></script>
		<script src="assets/js/theme.js"></script>
	</body>

</html>