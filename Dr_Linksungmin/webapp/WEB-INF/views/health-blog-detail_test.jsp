<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>건강소식 - Dr.Link</title>
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
		
		<!-- 구글폰트 -->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Major+Mono+Display&display=swap" rel="stylesheet">

<style>
body {
    font-family: "Nanum Gothic", sans-serif;
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
				<!-- <h1><a id="drlink" href="#" >Dr.Link</a></h1> -->
				<a href="#" class="menu-logo">
						<img src="${pageContext.request.contextPath}/resources/img/logo.jpg" class="img-fluid" alt="Logo">
					</a>
					
			</div>
			<div class="main-menu-wrapper">
				
				<ul class="main-nav" >
					<li class="has-submenu">
						<a href="doctor-list">의료진 소개</a>
					</li>
					<li class="has-submenu">
						<a href="notice">공지사항<!-- <i class="fas fa-chevron-down"></i> --></a>
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
						<a href="health-blog">건강정보</a>
					</li>
					<li class="has-submenu">
						<a href="faq">FAQ</a>
					</li>
					<li class="has-submenu">
						<a href="booking">온라인예약</a>
					</li>
					<li class="has-submenu">
						<a href="">온라인 간편 진단<i class="fas fa-chevron-down"></i></a>
						<ul class="submenu">
							<li><a href="AI_medical_eye">안과진단</a></li>
							<li><a href="AI_medical_skin">피부과진단</a></li>
							<!--  <li><a href="pharmacy-index">AI진단</a></li> -->
						</ul>
					</li>
					<li class="has-submenu">
						<a href="dashboard">마이페이지<!-- <i class="fas fa-chevron-down"></i> --></a>
						<!-- <ul class="submenu">
							<li><a href="invoices">결제내역</a></li>
						</ul> -->
					</li>
				</ul>		 
			</div>		 
			<ul class="nav header-navbar-rht">
				
				<li class="nav-item">
					<a class="nav-link header-login" href="login">로그인 / 회원가입</a>
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
									<li class="breadcrumb-item active" aria-current="page">Blog</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Blog Details</h2>
						</div>
					</div>
				</div>
			</div>
			<!-- /Breadcrumb -->
			
			<!-- Page Content -->
			<div class="content">
				<div class="container">
				
					<div class="row">
						<div class="col-lg-8 col-md-12">
							<div class="blog-view">
								<div class="blog blog-single-post">
									<div class="blog-image">
										<a href="javascript:void(0);"><img alt="" src="${pageContext.request.contextPath}/resources/img/blog/202012-ankle_01.png" class="img-fluid"></a>
									</div>
									<h3 class="blog-title">'삐끗' 반복된다면 발목 불안정성 주의, 발목 염좌 </h3>
									<div class="blog-info clearfix">
										<div class="post-left">
											<ul>
												<li><i class="far fa-calendar"></i>2020.12.03</li>
												<li><i class="far fa-comments"></i>12 Comments</li>
											</ul>
										</div>
									</div>
									<div class="blog-content">
										<p>30대 초반 직장인 정씨는 지난여름 출근길, 비온 뒤 주차장 바닥에 남아있던 물기에 미끄러지며 심하게 발목을 삐끗했다. 순간 찌릿하고 약간 붓기는 했지만 파스를 붙이고 냉찜질을 하고 나니 조금씩 나아지는 듯 해 심각하게 여기지는 않았다. 하지만 그 후로 멀쩡히 길을 걷다가도 반복적으로 같은 발목을 삐끗하는 상황이 반복되자 병원을 찾았고, 검사 결과 발목 인대가 손상된 만성 발목 불안정성을 진단받고 현재 재활치료를 정기적으로 받고 있는 중이다.</p>
										<li style="margin-left:20px;"><h5>관절 지지해주는 발목 외측 인대가 손상되어 발생되는 발목염좌</h5></li>
										<p>발목 염좌는 흔히 우리가 '발목을 삔다' 혹은 '발목을 접지른다'고 하는 상황에서 발생하는 급성 인대 손상입니다. 
										스포츠 손상 중에서 가장 흔하다고 알려져 있으며, 미국의 경우에는 매년 1,000명당 2-7명의 발목 염좌 환자가 발생하며 연간 200만 건에 이른다고 보고되고 있습니다. 
										건강보험심사평가원 통계에 따르면, 우리나라 역시 발목 염좌 및 긴장으로 병원을 찾는 환자는 2015년 129만 3,379명, 2017년 131만 1,296명, 2019년 142만 4,361명으로 꾸준히 증가하는 추세입니다. 지난 한 해 기준으로는 전체 환자 중 약 45%가 10~20대 환자인 것으로 나타나, 특히 젊은 층에서 많이 발생하고 있습니다.
발목을 접지를 때에는 일반적으로 발이 몸의 안쪽으로 꺾이면서 발목의 외측 인대가 당겨지는 힘을 받으며 손상되는데, 발목 외측을 이루는 세 가지 인대(전거비인대, 종비인대, 후거비인대) 중에서 전거비인대와 종비인대가 비교적 흔하게 손상을 받습니다.</p>
										<li style="margin-left:20px;"><h5>부종과 통증 줄인 후 기능적 회복 돕는 재활치료 시행</h5></li>
										<p>발목을 접지른 이후 외측 인대 부위가 붓고 통증이 있다면 병원을 방문하여 검사를 받아보아야 합니다. 혹시 있을지 모르는 골절을 감별하기 위해 X-ray 촬영을 기본적으로 시행하고, 뼈에 이상이 없다면 발목 염좌로 생각하고 치료를 하게 됩니다. 인대를 직접적으로 관찰할 수 있는 초음파 검사나 자기공명영상(MRI) 검사를 추가적으로 시행하기도 하는데, 이러한 검사들에서 인대 손상 이외의 다른 동반되는 손상이 없다면 치료 방침이 바뀌지는 않습니다.
급성 인대 손상인 발목 염좌의 치료는 비수술적인 치료가 원칙입니다. 초기에는 부종과 통증을 줄이기 위해서 발목을 고정하고, 심장보다 20-30cm 높게 다리 올리기, 압박드레싱, 냉찜질 등을 시행합니다. 고정 방법(보호대, 반기브스, 부츠, 통기브스 등)과 고정 기간은 손상 정도에 따라 짧게는 2-3주 이내에서 길게는 4-6주까지도 시행하게 되며, 통증과 붓기가 줄어들면 점차 체중부하 및 보행 연습을 하게 됩니다. 발목의 기능적인 회복을 돕기 위해 발목 외측 근육인 비골근 강화운동과 고유감각 훈련을 함께 병행합니다. 고유감각이란 자세, 위치, 움직임 등에 대한 감각을 말하는데, 발에 대한 위치 감각이 감소하게 되면 발을 지면에 바로 놓지 못하고 잘못된 위치로 발을 디디면서 발을 접지르는 빈도가 증가하게 됩니다. 따라서 발목 염좌에서의 고유감각 훈련은 발의 위치에 대한 감각을 강화하기 위한 운동으로서 주로 균형을 잡는 훈련으로 구성됩니다.</p>
									</div>
								</div>
								
								<div class="card blog-comments clearfix">
									<div class="card-header">
										<h4 class="card-title">댓글</h4>
									</div>
									<div class="card-body pb-0">
									<ul class="comments-list">
										<li>
											<div class="comment">
												<div class="comment-block">
													<span class="comment-by">
														<span class="blog-author-name">홍**</span>
													</span>
													<p>겨울철엔 날씨도 갑자기 추워지고 일교차도 심해져서 건강이 약하거나 평소에 몸이 좋지 않은 사람들에게는 위험할 수 있는데 이 글을 추천해 주어야겠네요</p>
													<p class="blog-date">Dec 6, 2017</p>
													<a class="comment-btn" href="#">
														<i class="fas fa-reply"></i> 답글
													</a>
												</div>
											</div>
											<ul class="comments-list reply">
												<li>
													<div class="comment">
														<div class="comment-block">
															<span class="comment-by">
																<span class="blog-author-name">박**</span>
															</span>
															<p>무엇이 문제인지 답을 찾긴해야 하는데 제일 중요한건 첫째도 둘째도 건강인것 같아요</p>
															<p class="blog-date">Dec 6, 2017</p>
													<a class="comment-btn" href="#">
														<i class="fas fa-reply"></i> 답글
													</a>
														</div>
													</div>
												</li>
											</ul>
										</li>
										<li>
											<div class="comment">
												<div class="comment-block">
													<span class="comment-by">
														<span class="blog-author-name">이**</span>
													</span>
													<p>코로나때문에 나가서 운동하지도 못하는데 제대로 된 스트레칭이라도 좀 해야겠습니다,. 글 감사합니다.</p>
													<p class="blog-date">December 13, 2017</p>
													<a class="comment-btn" href="#">
														<i class="fas fa-reply"></i> 답글
													</a>
												</div>
											</div>
										</li>
									</ul>
								</div>
								</div>
								
								<div class="card new-comment clearfix">
									<div class="card-header">
										<h4 class="card-title">댓글 남기기</h4>
									</div>
									<div class="card-body">
										<form>
											<div class="form-group">
												<label>작성자 <span class="text-danger">*</span></label>
												<input type="text" class="form-control">
											</div>
											<div class="form-group">
												<label>이메일<span class="text-danger">*</span></label>
												<input type="email" class="form-control">
											</div>
											<div class="form-group">
												<label>댓글</label>
												<textarea rows="4" class="form-control"></textarea>
											</div>
											<div class="submit-section">
												<button class="btn btn-primary submit-btn" type="submit">등록</button>
											</div>
										</form>
									</div>
								</div>
								
							</div>
						</div>
					
						<!-- Blog Sidebar -->
						<div class="col-lg-4 col-md-12 sidebar-right theiaStickySidebar">

							<!-- Search -->
							<div class="card search-widget">
								<div class="card-body">
									<form class="search-form">
										<div class="input-group">
											<input type="text" placeholder="Search..." class="form-control">
											<div class="input-group-append">
												<button type="submit" class="btn btn-primary"><i class="fa fa-search"></i></button>
											</div>
										</div>
									</form>
								</div>
							</div>
							<!-- /Search -->

							
						</div>
						<!-- /Blog Sidebar -->
						
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
								<h1 id="drlink" style="color:#fff;">Dr.Link</h1>
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
							<h2 class="footer-title"><a href="notice" class="footer-menu">공지사항</a></h2>
							<h2 class="footer-title"><a href="booking" class="footer-menu">온라인 예약</a></h2>
							<h2 class="footer-title"><a href="health-care" class="footer-menu">건강정보</a></h2>
						</div>
						<!-- /Footer Widget -->
						
					</div>
					
					<div class="col-lg-3 col-md-6">
					
						<!-- Footer Widget -->
						<div class="footer-widget footer-menu">
							<h2 class="footer-title"><a href="" class="footer-menu">온라인 간편 진단</a></h2>
							<ul>
								<li><a href="AI_medical_eye">안과 진단</a></li>
								<li><a href="AI_medical_skin">피부과 진단</a></li>
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
										<p> 서울 금천구 가산디지털2로 123 월드메르디앙벤처센터II </p>
									</div>
									<p>
										<i class="fas fa-phone-alt"></i>
										02-2025-4119
									</p>
									<p class="mb-0">
										<i class="fas fa-envelope"></i>
										drlink@naver.com
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