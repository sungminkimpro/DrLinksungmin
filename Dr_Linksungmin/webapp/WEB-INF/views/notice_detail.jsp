<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>공지사항</title>

<!-- Favicons -->
<link type="image/x-icon" href="resources/img/favicon.png" rel="icon">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">

<!-- Fontawesome CSS -->
<link rel="stylesheet"
	href="resources/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet"
	href="resources/plugins/fontawesome/css/all.min.css">


<!-- Main CSS -->
<link rel="stylesheet" href="resources/css/style.css">


<!-- 구글폰트 -->
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Major+Mono+Display&display=swap"
	rel="stylesheet">

<style>
body {
	font-family: "Nanum Gothic", sans-serif;
}

#header-wrapper {
	background-image:
		url("${pageContext.request.contextPath}/resorces/img/banner.jpg");
	background-size: cover;
}

@media all and (min-width: 992px) {
	.navbar .nav-item .dropdown-menu {
		display: none;
	}
	.navbar .nav-item:hover .nav-link {
		color: black;
	}
	.navbar .nav-item:hover .dropdown-menu {
		display: block;
	}
	.navbar .nav-item .dropdown-menu {
		margin-top: 0;
	}
}

#drlink {
	font-family: 'Major Mono Display', monospace;
	margin-right: 20px;
}

ul .bxslider {
	width: auto !important;
}

#bxslider {
	width: auto !important;
}
</style>
<script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href="boardList?nowPage=${paging.nowPage}&cntPerPage="+sel;
	}
</script>
</head>
<body>

	<!-- Main Wrapper -->
	<div class="main-wrapper">

		<!-- Header -->
		<header class="header">
			<nav class="navbar navbar-expand-lg header-nav">
				<div class="navbar-header">
					<a id="mobile_btn" href="javascript:void(0);"> <span
						class="bar-icon"> <span></span> <span></span> <span></span>
					</span>
					</a>
					<h1>
						<a id="drlink" href="">Dr.Link</a>
					</h1>
				</div>
				<div class="main-menu-wrapper">
					<div class="menu-header">
						<a href="index.jsp" class="menu-logo"> <img
							src="resources/img/logo.png" class="img-fluid" alt="Logo">
						</a> <a id="menu_close" class="menu-close" href="javascript:void(0);">
							<i class="fas fa-times"></i>
						</a>
					</div>
					<ul class="main-nav">
						<li class="active"><a href="index.jsp">Home</a></li>
						<li class="has-submenu">
						<a href="notice">공지사항 <i class="fas fa-chevron-down"></i> </a>
						<ul class="submenu">
							<li><a href="Q&A">Q&A</a></li>
							
						</ul>
					</li>
						<li class="has-submenu"><a href="patients/booking">온라인예약</a>

						</li>
						<li class="has-submenu"><a href="">온라인 간편 진단<i
								class="fas fa-chevron-down"></i></a>
							<ul class="submenu">
								<li><a href="doctor/add-billing">AI진단</a></li>
								<!--  <li><a href="pharmacy-index">AI진단</a></li> -->
								<li><a href="pharmacy-details">설문진단</a></li>
							</ul></li>
						<li class="has-submenu"><a href="">건강정보</a></li>
						<li class="has-submenu"><a href="">진료<i
								class="fas fa-chevron-down"></i></a>
							<ul class="submenu">
								<li><a href="pages/video-call">화상진료</a></li>
								<!--  <li><a href="pharmacy-index">AI진단</a></li> -->
								<!-- <li><a href="pharmacy-details">설문진단</a></li> -->
							</ul></li>
						<li class="has-submenu"><a href="patients/patient-dashboard">마이페이지</a>
						</li>

						<li class="login-link"><a href="${contextPath}pharmacy/login">로그인
								/ 회원가입</a></li>
					</ul>
				</div>
				<ul class="nav header-navbar-rht">

					<li class="nav-item"><a class="nav-link header-login"
						href="${contextPath}pharmacy/login">로그인 / 회원가입</a></li>
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
								<li class="breadcrumb-item active" aria-current="page">공지사항</li>
							</ol>
						</nav>
						<h2 class="breadcrumb-title">공지사항</h2>
					</div>
				</div>
			</div>
		</div>
		<!-- /Breadcrumb -->
	<div class="content" style="transform: none; min-height: 121px;">
				<div class="container" style="transform: none;">
					<div class="row" style="transform: none;">
						<div class="col-lg-12 col-md-12">
						
							<div class="blog-view">
								<!-- Section Header -->
							<div class="blog blog-single-post text-center">
							<div class="section-header text-center" style="margin: auto !important;">
								<h2>공지사항</h2>
								<p class="sub-title">Dr.Link의 공지사항을 알려드립니다.</p>
							</div>
							<!-- /Section Header -->
								<hr>
								<br>
									<h3 class="blog-title">${h_board.hospital_title}</h3>
								<br>
								<hr>
									<div class="blog-content text-center">
										<c:forEach var="c" items="${h_board.hospital_content}">
										<p> ${c}</p>
										</c:forEach>
									</div>
								</div>
								<div class="submit-section" style="margin-bottom: 5px; float: right;">
									<a href="notice"><button class="btn btn-dark btn-sm">목록</button></a>
									<br>
								</div>
							</div>
						</div>
					
						<!-- Blog Sidebar -->
						<div class="col-lg-4 col-md-12 sidebar-right theiaStickySidebar" style="position: relative; overflow: visible; box-sizing: border-box; min-height: 1px;">

							<!-- Search -->
							
							<!-- /Search -->

							<!-- Latest Posts -->
							
							<!-- /Latest Posts -->

							<!-- Categories -->
							
							<!-- /Categories -->

							<!-- Tags -->
							
							<!-- /Tags -->
							
						</div>
						<!-- /Blog Sidebar -->
						
                </div>
				</div>

			</div>
		
	</div>




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
								<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit,
									sed do eiusmod tempor incididunt ut labore et dolore magna
									aliqua.</p>
								<div class="social-icon">
									<ul>
										<li><a href="#" target="_blank"><i
												class="fab fa-facebook-f"></i> </a></li>
										<li><a href="#" target="_blank"><i
												class="fab fa-twitter"></i> </a></li>
										<li><a href="#" target="_blank"><i
												class="fab fa-linkedin-in"></i></a></li>
										<li><a href="#" target="_blank"><i
												class="fab fa-instagram"></i></a></li>
										<li><a href="#" target="_blank"><i
												class="fab fa-dribbble"></i> </a></li>
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
									<p>
										3556 Beech Street, San Francisco,<br> California, CA
										94108
									</p>
								</div>
								<p>
									<i class="fas fa-phone-alt"></i> +1 315 369 5943
								</p>
								<p class="mb-0">
									<i class="fas fa-envelope"></i> doccure@example.com
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
	<div class="footer-bottom"
		style="margin: 5px !important; padding: 10px !important;">
		<div class="container-fluid">

			<!-- Copyright -->
			<div class="copyright">
				<div class="row">
					<div class="col-md-7 col-lg-7">
						<div class="copyright-text">
							<p>
								서울 금천구 가산디지털2로 123 월드메르디앙2차 | 대표자 : 고현영 | <span
									style="color: red">응급의료센터</span> 02-2626-1114<br /> Copyright
								&copy; by Dr.Link All Rights Reserved.
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
	<script src="resources/js/jquery.min.js"></script>

	<!-- Bootstrap Core JS -->
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>

	<!-- Slick JS -->
	<script src="resources/js/slick.js"></script>

	<!-- Custom JS -->
	<script src="resources/js/script.js"></script>

</body>
</html>