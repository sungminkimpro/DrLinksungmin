<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html> 
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>화상진료</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		
		<!-- Favicons -->
		<link type="image/x-icon" href="${pageContext.request.contextPath}/resources//img/favicon.png" rel="icon">
		
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources//css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources//plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources//plugins/fontawesome/css/all.min.css">
		
		 <!-- Daterangepikcer CSS -->
		<!-- <link rel="stylesheet" href="resources/plugins/daterangepicker/daterangepicker.css">
		 -->
		<!-- Main CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources//css/style.css">
		
		<!-- 구글폰트 -->
		<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
		<link rel="preconnect" href="https://fonts.gstatic.com">
		<link href="https://fonts.googleapis.com/css2?family=Major+Mono+Display&display=swap" rel="stylesheet">
		
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			<script src="resources/js/html5shiv.min.js"></script>
			<script src="resources/js/respond.min.js"></script>
		<![endif]-->
	<style >
		body {
		    font-family: "Nanum Gothic", sans-serif !important;
		}
		
		#header-wrapper{
			background-image: url("../resorces/img/banner.jpg") ;
			background-size : cover !important;
		}
		
		@media all and (min-width: 992px) {
			.navbar .nav-item .dropdown-menu{ display: none; }
			.navbar .nav-item:hover .nav-link{ color: black;  }
			.navbar .nav-item:hover .dropdown-menu{ display: block; }
			.navbar .nav-item .dropdown-menu{ margin-top:0; }
		}	
		
		#drlink{
		font-family: 'Major Mono Display', monospace; 
		margin-right: 20px ;
		}
		
		ul .bxslider{
		width:auto !important;
		}
		
		#bxslider{
		width:auto !important;
		}

		
}
</style>
	</head>
	<body>
		<script
	  src="https://code.jquery.com/jquery-3.5.1.js"
	  integrity="sha256-QWo7LDvxbWT2tbbQ97B53yJnYU3WhH/C8ycbRAkjPDc="
	  crossorigin="anonymous">
	  </script>
	  <script>
		  $.ajax({
			  method: "POST",
			  url: "some.php",
			  data: { name: "John", location: "Boston" }
			})
			  .done(function( msg ) {
			    alert( "Data Saved: " + msg );
			  });
		  </script>
<!-- Main Wrapper -->
	<div class="main-wrapper">
		
			<!-- Header -->
		<header class="header">
			<nav class="navbar navbar-expand-lg header-nav">
				<div class="navbar-header">
					<a id="mobile_btn" href="javascript:void(0);">
						<span class="bar-icon">
							<span></span>
							<span></span>
							<span></span>
						</span>
					</a>
					<h1><a id="drlink" href="../index.jsp" >Dr.Link</a></h1>
				</div>
				<div class="main-menu-wrapper">
					<div class="menu-header">
						<a href="index" class="menu-logo">
							<img src="${pageContext.request.contextPath}/resources//img/logo.png" class="img-fluid" alt="Logo">
						</a>
						<a id="menu_close" class="menu-close" href="javascript:void(0);">
							<i class="fas fa-times"></i>
						</a>
					</div>
					<ul class="main-nav" >
						<li class="active">
							<a href="../index.jsp">Home</a>
						</li>
						<li class="has-submenu">
							<a href="">공지사항<!-- <i class="fas fa-chevron-down"></i> --></a>
							<!-- <ul class="submenu">
								<li><a href="doctor-dashboard">Doctor Dashboard</a></li>
								<li class="has-submenu">
									<a href="doctor-blog">Blog</a>
									<ul class="submenu">
										<li><a href="doctor-blog">Blog</a></li>
										<li><a href="blog-details">Blog view</a></li>
										<li><a href="doctor-add-blog">Add Blog</a></li>
									</ul>
								</li>
							</ul> -->
						</li>	
						<li class="has-submenu">
							<a href="../patients/booking">온라인예약</a>
							
						</li>
						<li class="has-submenu">
							<a href="">온라인 간편 진단<i class="fas fa-chevron-down"></i></a>
							<ul class="submenu">
								<li><a href="doctor/add-billing">AI진단</a></li>
								<!--  <li><a href="pharmacy-index">AI진단</a></li> -->
								<li><a href="pharmacy-details">설문진단</a></li>
							</ul>
						</li>
						<li class="has-submenu">
							<a href="">건강정보</a>
						</li>
						<li class="has-submenu">
							<a href="">마이페이지</a>
						</li>
						
						<li class="login-link">
							<a href="${contextPath}pharmacy/login">로그인 / 회원가입</a>
						</li>
					</ul>		 
				</div>		 
				<ul class="nav header-navbar-rht">
					
					<li class="nav-item">
						<a class="nav-link header-login" href="${contextPath}pharmacy/login">로그인 / 회원가입</a>
					</li>
			
	
						
						<!-- User Menu -->
						<li class="nav-item dropdown has-arrow logged-item">
							<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
								<span class="user-img">
									<img class="rounded-circle" src="${pageContext.request.contextPath}/resources//img/patients/patient.jpg" width="31" alt="Ryan Taylor">
								</span>
							</a>
							<div class="dropdown-menu dropdown-menu-right">
								<div class="user-header">
									<div class="avatar avatar-sm">
										<img src="${pageContext.request.contextPath}/resources//img/patients/patient.jpg" alt="User Image" class="avatar-img rounded-circle">
									</div>
									<div class="user-text">
										<h6>Richard Wilson</h6>
										<p class="text-muted mb-0">Patient</p>
									</div>
								</div>
								<a class="dropdown-item" href="patient-dashboard">Dashboard</a>
								<a class="dropdown-item" href="profile-settings">Profile Settings</a>
								<a class="dropdown-item" href="login">Logout</a>
							</div>
						</li>
						<!-- /User Menu -->
						
					</ul>
				</nav>
			</header>
			<!-- /Header -->
			
			<!-- Page Content -->
			<div class="content">
				<div class="container-fluid">
				
					<!-- Call Wrapper -->
					<div class="call-wrapper">
						<div class="call-main-row">
							<div class="call-main-wrapper">
								<div class="call-view">
									<div class="call-window">
									
										<!-- Call Header -->
										<div class="fixed-header">
											<div class="navbar">
												<div class="user-details">
													<div class="float-left user-img">
														<a class="avatar avatar-sm mr-2" href="patient-profile.html" title="Charlene Reed">
															<img src="${pageContext.request.contextPath}/resources//img/patients/patient1.jpg" alt="User Image" class="rounded-circle">
															<span class="status online"></span>
														</a>
													</div>
													<div class="user-info float-left">
														<a href="patient-profile.html"><span>Charlene Reed</span></a>
														<span class="last-seen">Online</span>
													</div>
												</div>
												<ul class="nav float-right custom-menu">
													<li class="nav-item dropdown dropdown-action">
														<a href="#" class="nav-link dropdown-toggle" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-cog"></i></a>
														<div class="dropdown-menu dropdown-menu-right">
															<a href="javascript:void(0)" class="dropdown-item">Settings</a>
														</div>
													</li>
												</ul>
											</div>
										</div>
										<!-- /Call Header -->
										
										<!-- Call Contents -->
										<div class="call-contents">
											<div class="call-content-wrap">
												<div class="user-video">
													<img src="${pageContext.request.contextPath}/resources//img/video-call.jpg" alt="User Image">
												</div>
												<div class="my-video">
													<ul>
														<li>
															<img src="${pageContext.request.contextPath}/resources//img/patients/patient1.jpg" class="img-fluid" alt="User Image">
														</li>
													</ul>
												</div>
											</div>
										</div>
										<!-- Call Contents -->
										
										<!-- Call Footer -->
										<div class="call-footer">
											<div class="call-icons">
												<span class="call-duration">00:59</span>
												<ul class="call-items">
													<li class="call-item">
														<a href="" title="Enable Video" data-placement="top" data-toggle="tooltip">
															<i class="fas fa-video camera"></i>
														</a>
													</li>
													<li class="call-item">
														<a href="" title="Mute Audio" data-placement="top" data-toggle="tooltip">
															<i class="fa fa-microphone microphone"></i>
														</a>
													</li>
													<li class="call-item">
														<a href="" title="Add User" data-placement="top" data-toggle="tooltip">
															<i class="fa fa-user-plus"></i>
														</a>
													</li>
													<li class="call-item">
														<a href="" title="Full Screen" data-placement="top" data-toggle="tooltip">
															<i class="fas fa-arrows-alt-v full-screen"></i>
														</a>
													</li>
												</ul>
												<div class="end-call">
													<a href="javascript:void(0);">
														<i class="material-icons">call_end</i>
													</a>
												</div>
											</div>
										</div>
										<!-- /Call Footer -->
										
									</div>
								</div>
								
							</div>
						</div>
					</div>
					<!-- /Call Wrapper -->
					
				</div>

			</div>		
			<!-- /Page Content -->
   
			<!-- Footer -->
	<footer class="footer">
		
		<!-- Footer Top -->
		<div class="footer-top">
			<div class="container-fluid">
				<div class="row">
					<div class="col-lg-3 col-md-6">
					
						<!-- Footer Widget -->
						<div class="footer-widget footer-about">
							<div class="footer-logo">
								<h1 id="drlink">Dr.Link</h1>
							</div>
							<div class="footer-about-content">
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>
								<div class="social-icon">
									<ul>
										<li>
											<a href="#" target="_blank"><i class="fab fa-facebook-f"></i> </a>
										</li>
										<li>
											<a href="#" target="_blank"><i class="fab fa-twitter"></i> </a>
										</li>
										<li>
											<a href="#" target="_blank"><i class="fab fa-linkedin-in"></i></a>
										</li>
										<li>
											<a href="#" target="_blank"><i class="fab fa-instagram"></i></a>
										</li>
										<li>
											<a href="#" target="_blank"><i class="fab fa-dribbble"></i> </a>
										</li>
									</ul>
								</div>
							</div>
						</div>
						<!-- /Footer Widget -->
						
					</div>
					
					<div class="col-lg-3 col-md-6">
					
						<!-- Footer Widget -->
						<div class="footer-widget footer-menu">
							<h2 class="footer-title">공지사항</h2>
							<h2 class="footer-title">온라인 예약</h2>
							<h2 class="footer-title">건강정보</h2>
						</div>
						<!-- /Footer Widget -->
						
					</div>
					
					<div class="col-lg-3 col-md-6">
					
						<!-- Footer Widget -->
						<div class="footer-widget footer-menu">
							<h2 class="footer-title">온라인 간편 진단</h2>
							<ul>
								<li><a href="${contextPath}pharmacy/pharmacy-index">AI진단</a></li>
								<li><a href="chat">설문 진단</a></li>
							</ul>
						</div>
						<!-- /Footer Widget -->
						
					</div>
					
					<div class="col-lg-3 col-md-6">
					
						<!-- Footer Widget -->
						<div class="footer-widget footer-contact">
								<h2 class="footer-title">Contact Us</h2>
								<div class="footer-contact-info">
									<div class="footer-address">
										<span><i class="fas fa-map-marker-alt"></i></span>
										<p> 3556  Beech Street, San Francisco,<br> California, CA 94108 </p>
									</div>
									<p>
										<i class="fas fa-phone-alt"></i>
										+1 315 369 5943
									</p>
									<p class="mb-0">
										<i class="fas fa-envelope"></i>
										doccure@example.com
									</p>
								</div>
								</div>
							</div>
						</div>
						<!-- /Footer Widget -->
						
					</div>
					
				</div>
			</div>
		</div>
		<!-- /Footer Top -->
		
		<!-- Footer Bottom -->
              <div class="footer-bottom" style="margin:5px !important; padding:10px !important;">
			<div class="container-fluid">
			
				<!-- Copyright -->
				<div class="copyright">
					<div class="row">
						<div class="col-md-7 col-lg-7">
							<div class="copyright-text">
								<p>
									서울 금천구 가산디지털2로 123 월드메르디앙2차 | 대표자 : 고현영 |
									<span style="color:red">응급의료센터</span> 02-2626-1114<br/>
									Copyright &copy; by Dr.Link All Rights Reserved.
								</p>
							</div>
						</div>
						
							<!-- /Copyright Menu -->
							
						</div>
					</div>
				</div>
				<!-- /Copyright -->
				
			</div>
		</div>
		<!-- /Footer Bottom -->
		
	</footer>
	<!-- /Footer -->
   
  </div>
	  
		<!-- jQuery -->
		<script src="assets/js/jquery.min.js"></script>
		
		<!-- Bootstrap Core JS -->
		<script src="assets/js/popper.min.js"></script>
		<script src="assets/js/bootstrap.min.js"></script>
		
		<!-- Custom JS -->
		<script src="assets/js/script.js"></script>
		
	</body>
</html>