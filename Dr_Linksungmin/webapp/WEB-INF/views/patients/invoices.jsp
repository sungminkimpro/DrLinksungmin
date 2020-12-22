<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>결제 내역 - Dr.Link</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		
		<!-- Favicons -->
		<link href="${pageContext.request.contextPath}/resources/img/favicon.png" rel="icon">
		
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/fontawesome/css/all.min.css">
		
		<!-- Main CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
		
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			<script src="${pageContext.request.contextPath}/resources/js/html5shiv.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/respond.min.js"></script>
		<![endif]-->
		
		<!-- 구글폰트 -->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Major+Mono+Display&display=swap" rel="stylesheet">
	
<style>
body {
    font-family: "Nanum Gothic", sans-serif;
}

#header-wrapper{
	background-image: url("${pageContext.request.contextPath}/resorces/img/banner.jpg");
	background-size : cover;
}

@media all and (min-width: 992px) {
	.navbar .nav-item .dropdown-menu{ display: none; }
	.navbar .nav-item:hover .nav-link{ color: black;  }
	.navbar .nav-item:hover .dropdown-menu{ display: block; }
	.navbar .nav-item .dropdown-menu{ margin-top:0; }
}	

#drlink{
font-family: 'Major Mono Display', monospace; 
margin-right: 20px;
}

ul .bxslider{
width:auto !important;
}

#bxslider{
width:auto !important;
}



.footer-menu{
	color:#fff;
}

</style>

	</head>
	<body>

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
				<h1><a id="drlink" href="#" >Dr.Link</a></h1>
			</div>
			<div class="main-menu-wrapper">
				<div class="menu-header">
					<a href="index" class="menu-logo">
						<img src="${pageContext.request.contextPath}/resources/img/logo.png" class="img-fluid" alt="Logo">
					</a>
					<a id="menu_close" class="menu-close" href="javascript:void(0);">
						<i class="fas fa-times"></i>
					</a>
				</div>
				<ul class="main-nav" >
					<li class="active">
						<a href="index">Home</a>
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
						<a href="">온라인예약</a>
					</li>
					<li class="has-submenu">
						<a>온라인 간편 진단<i class="fas fa-chevron-down"></i></a>
						<ul class="submenu">
							<li><a href="${pageContext.request.contextPath}/doctor/add-billing">AI진단</a></li>
							<!--  <li><a href="pharmacy-index">AI진단</a></li> -->
							<li><a href="pharmacy-details">설문진단</a></li>
						</ul>
					</li>
					<li class="has-submenu">
						<a href="">건강정보</a>
					</li>
					<li class="has-submenu">
						<a href="">마이페이지<i class="fas fa-chevron-down"></i></a>
						<ul class="submenu">
							<li><a href="invoices">결제내역</a></li>
						</ul>
					</li>
					
					<li class="login-link">
						<a href="${contextPath}login">로그인 / 회원가입</a>
					</li>
				</ul>		 
			</div>		 
			<ul class="nav header-navbar-rht">
				
				<li class="nav-item">
					<a class="nav-link header-login" href="${contextPath}login">로그인 / 회원가입</a>
				</li>
			</ul>
		</nav>
	</header>
	<!-- /Header -->
			
			<!-- Breadcrumb -->
			<div class="breadcrumb-bar">
				<div class="container-fluid">
					<div class="row align-items-center">
						<div class="col-md-12 col-12">
							<nav aria-label="breadcrumb" class="page-breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Invoices</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Invoices</h2>
						</div>
					</div>
				</div>
			</div>
			<!-- /Breadcrumb -->
			
			<!-- Page Content -->
			<div class="content">
				<div class="container-fluid">

					<div class="row">
						<div class="col-md-5 col-lg-4 col-xl-3 theiaStickySidebar">
						
							<!-- Profile Sidebar -->
							<div class="profile-sidebar">
								<div class="widget-profile pro-widget-content">
									<div class="profile-info-widget">
										<a href="#" class="booking-doc-img">
											<img src="${pageContext.request.contextPath}/resources/img/doctors/doctor-thumb-02.jpg" alt="User Image">
										</a>
										<div class="profile-det-info">
											<h3>환자이름</h3>
											
											<div class="patient-details">
												<h5 class="mb-0">BDS, MDS - Oral & Maxillofacial Surgery</h5>
											</div>
										</div>
									</div>
								</div>
								<div class="dashboard-widget">
									<nav class="dashboard-menu">
										<ul>
											<li class="active">
												<a href="invoices">
													<i class="fas fa-file-invoice"></i>
													<span>결제내역</span>
												</a>
											</li>
										</ul>
									</nav>
								</div>
							</div>
							<!-- /Profile Sidebar -->
							
						</div>
						<div class="col-md-7 col-lg-8 col-xl-9">
							<div class="card card-table">
								<div class="card-body">
								
									<!-- Invoice Table -->
									<div class="table-responsive">
										<table class="table table-hover table-center mb-0">
											<thead>
												<tr>
													<th>영수증 번호</th>
													<th>의사 이름</th>
													<th>금액</th>
													<th>결제일</th>
													<th></th>
												</tr>
											</thead>
											<tbody>
											
												<tr>
													<td>
														<a href="invoice-view">#INV-0011</a>
													</td>
													<td>
														<h2 class="table-avatar">
															<a href="patient-profile" class="avatar avatar-sm mr-2">
																<img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/img/patients/patient.jpg" alt="User Image">
															</a>
															<a href="doctor-profile">홍길자 </a>
														</h2>
													</td>
													<td>11,230원</td>
													<td>2019년 11월 10일</td>
													<td class="text-right">
														<div class="table-action">
															<a href="invoice-view" class="btn btn-sm bg-info-light">
																<i class="far fa-eye"></i> 상세보기
															</a>
															<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																<i class="fas fa-print"></i> 인쇄
															</a>
														</div>
													</td>
												</tr>
												<tr>
													<td>
														<a href="invoice-view">#INV-0010</a>
													</td>
													<td>
														<h2 class="table-avatar">
															<a href="patient-profile" class="avatar avatar-sm mr-2">
																<img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/img/patients/patient.jpg" alt="User Image">
															</a>
															<a href="doctor-profile">홍길동 </a>
														</h2>
													</td>
													<td>65,200원</td>
													<td>2019년 10월 10일</td>
													<td class="text-right">
														<div class="table-action">
															<a href="invoice-view" class="btn btn-sm bg-info-light">
																<i class="far fa-eye"></i> 상세보기
															</a>
															<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																<i class="fas fa-print"></i> 인쇄
															</a>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
									<!-- /Invoice Table -->
									
								</div>
							</div>
						</div>
					</div>

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
		<!-- /Main Wrapper -->
	  
		<!-- jQuery -->
		<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
		
		<!-- Bootstrap Core JS -->
		<script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
		
		<!-- Sticky Sidebar JS -->
        <script src="${pageContext.request.contextPath}/resources/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
        <script src="${pageContext.request.contextPath}/resources/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>
		
		<!-- Custom JS -->
		<script src="${pageContext.request.contextPath}/resources/js/script.js"></script>
		
	</body>
</html>