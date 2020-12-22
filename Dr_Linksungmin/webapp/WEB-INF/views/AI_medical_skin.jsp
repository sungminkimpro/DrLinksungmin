<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html> 
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>AI진단 - Dr.Link</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		
		<!-- Favicons -->
		<link href="${pageContext.request.contextPath}/resources/img/favicon.png" rel="icon">
		
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/font-awesome.min.css">
        <!-- Fontawesome CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/fontawesome/css/all.min.css">
		
		
		<!-- Feathericon CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/feathericon.min.css">
		
		<!-- Datatables CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/plugins/datatables/datatables.min.css">
		
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

<script type="text/javascript">

</script>
						
	
	</head>
	<body class="account-page">

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
			
			<!-- Page Content -->
			<div class="content">
				<div class="container-fluid">
					<div class="row">
						<div class="col-md-9 m-auto">
							<div class="section-header text-center">
								<h2>안녕하세요. AI 피부 진단 서비스입니다.</h2>
								<p>"의사 한 명이 진단하는 것보다 2~3명이 보는 게 훨씬 더 정확하죠.<br>의사 한 명이 혹시나 놓칠 수 있는 소견을 우리가 만든 인공지능(AI) 의료 소프트웨어가 잡아주기 때문에 더욱 정밀한 진료가 가능해져요."&nbsp;
							</div>
							<div class="row ">
								<div class="col-lg-4 mb-3">
									<div class="card text-center doctor-book-card">
										<img src="${pageContext.request.contextPath}/resources/img/skinRight1.jpg" alt="" class="img-fluid" >
										<div class="doctor-book-card-content tile-card-content-1">
											<div>
												<h3 class="card-title mb-0">올바른 사진</h3>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 mb-3">
									<div class="card text-center doctor-book-card">
										<img src="${pageContext.request.contextPath}/resources/img/skinError1.jpg"  alt="" class="img-fluid" >
										<div class="doctor-book-card-content tile-card-content-1">
											<div>
												<h3 class="card-title mb-0">틀린 사진</h3>
											</div>
										</div>
									</div>
								</div>
								<div class="col-lg-4 mb-3">
									<div class="card text-center doctor-book-card">
										<img src="${pageContext.request.contextPath}/resources/img/skinError2.jpg" alt="" class="img-fluid" >
										<div class="doctor-book-card-content tile-card-content-1">
											<div>
											<h3 class="card-title mb-0">틀린 사진</h3>
											</div>
										</div>
									</div>
								</div>
								
							</div>
							
							<div class="text-center">
								정확한 진단을 위하여 정면에서 촬영한 사진을 업로드 해주세요. <br/>
					           멀리서 촬영, 타투 포함, 사물 또는 눈,코,입 등이 포함된 사진으로는 정확한 AI진단이 어려울수 있습니다.
							</div>
							<hr/>
							
							
							
							<form>
							  <div class="custom-file">
							    <input type="file" class="custom-file-input" name="images[]" id="images" multiple="" accept="image/jpeg, image/png, image/gif,"> 
							    <label class="custom-file-label" for="customFile">이미지를 업로드 해주세요</label>
							  </div>
							</form>
							
							<script>
							// Add the following code if you want the name of the file appear on select
							$(".custom-file-input").on("change", function() {
							  var fileName = $(this).val().split("\\").pop();
							  $(this).siblings(".custom-file-label").addClass("selected").html(fileName);
							});
							</script>
							<br><br>
							<div class="service-fields mb-3">
								<div class="row">
									<div class="col-lg-12">
										<div id="uploadPreview">
											<ul class="upload-wrap">
												<li>
													<div class=" upload-images">
														<img alt="Blog Image" src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-17.jpg">
													</div>
												</li>
											</ul>
										</div>
										
									</div>
								</div>
							</div>
									
									
							<hr/>
										<a href="aiTest-success" class="btn btn-primary view-inv-btn">진단결과보기</a>
									
							<hr/>
							
<div class="card">
	<div class="card-header text-center">
	<h3>진단 예측 결과 예시</h3>
	</div><!-- 카드헤더 -->
	
	<div  class="card-body">
		<div class="row">
			<div class="col-lg-7 mb-3" style="margin-right: 30px !important;">
				<h3>●아토피</h3>
				<p class="">
					<a
						class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base wiki-link-internal u-btn-1"
						href="https://namu.wiki/w/%ED%94%BC%EB%B6%80%EB%B3%91"
						title="피부병">피부병</a>의 일종. 아토피란 말은 선천적으로 과민한
					<a
						class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base wiki-link-internal u-btn-2"
						href="https://namu.wiki/w/%EC%95%8C%EB%A0%88%EB%A5%B4%EA%B8%B0"
						title="알레르기">알레르기</a> 성질을 갖고 있다는 뜻이다. 여기에 '<a
						class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base wiki-link-internal u-btn-3"
						href="https://namu.wiki/w/%EC%97%BC%EC%A6%9D" title="염증">염증</a>'이
					더해진 만성 피부 질환을 통틀어 아토피성 피부염이라 부른다. 흔히 '아토피 피부염', 더 줄여서는 그냥
					'아토피'라고도 부른다. 쉽게 낫지 않는
					<a
						class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base wiki-link-internal u-btn-4"
						href="https://namu.wiki/w/%EB%82%9C%EC%B9%98%EB%B3%91"
						title="난치병">난치병</a>으로 실제로 한 번 이 병에 걸린 사람은 성인이 되어서도 고생하는 경우가
					허다하다. 전염성은 없지만,
					<a
						class="u-active-none u-border-none u-btn u-button-style u-hover-none u-none u-text-palette-1-base wiki-link-internal u-btn-5"
						href="https://namu.wiki/w/%EB%B9%84%EC%97%BC" title="비염">비염</a>과
					거의 동급으로 고생을 어마어마하게 한다.
				 </p>
			</div><!-- 증상설명 -->
			<div class="col-lg-4 mb-3">
				<div class="text-center" style="width:80% !important;" >
					<div class="card text-center doctor-book-card">
						<img src="${pageContext.request.contextPath}/resources/img/skinEx01.jpg" alt="" class="img-fluid" >
						<div class="doctor-book-card-content tile-card-content-1">
							<div>
								<h3 class="card-title mb-0">사진 예시</h3>
							</div>
						</div>
					</div>
				</div>
			</div><!-- 사진예시 -->
		</div><!-- row1 -->
	
		<div class="row">
			<div class="col-lg-7 mb-3" style="margin-right: 30px !important;">
				<h3>●콜린성 두드러기</h3>
				<p class="u-text u-text-8">
					상대적으로 체온이 높아질 때 나는 <a class="wiki-link-internal" href="/w/%EB%91%90%EB%93%9C%EB%9F%AC%EA%B8%B0" title="두드러기">두드러기</a>.
					콜린성 <a class="wiki-link-internal" href="/w/%EC%95%8C%EB%9F%AC%EC%A7%80" title="알러지">알러지</a>라
					하는 경우도 있으나 항원이 없으니 엄밀히는 틀린 말이다. 땀은 몸의 체온이 올랐을 경우 이를 내려주는 냉각액의
					역할을 하는데, 선천적으로 땀이 잘 나지 않거나 땀으로 배출될 수 있는 수분의 양이 체내에 부족한 경우, 피부
					내 온도가 상승하면서 열이 비만세포를 자극해 따끔거림과 가려움을 동반하는 현상이다. 대부분의 경우 습한
					여름에는 증상이 없다가 건조한 가을~겨울 쯤(추워지는 때)에 나타난다. 발병 원인은 확실치
					않다.
				</p>
			</div><!-- 증상설명 -->
			<div class="col-lg-4 mb-3">
				<div class="text-center" style="width:80% !important;" >
					<div class="card text-center doctor-book-card">
						<img src="${pageContext.request.contextPath}/resources/img/skinEx02.jpg" alt="" class="img-fluid" >
						<div class="doctor-book-card-content tile-card-content-1">
							<div>
								<h3 class="card-title mb-0">사진 예시</h3>
							</div>
						</div>
					</div>
				</div>
			</div><!-- 사진예시 -->
		</div><!-- row2 -->
	</div><!-- 카드바디 -->

</div><!-- card -->
							
								
							
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
		<script src="${pageContext.request.contextPath}/resources/admin/js/popper.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/admin/js/bootstrap.min.js"></script>
		
		<!-- Custom JS -->
		<script src="${pageContext.request.contextPath}/resources/js/script.js"></script>
		
		
		
		<!-- Slimscroll JS -->
        <script src="${pageContext.request.contextPath}/resources/admin/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		
		<!-- Datatables JS -->
		<script src="${pageContext.request.contextPath}/resources/admin/plugins/datatables/jquery.dataTables.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/admin/plugins/datatables/datatables.min.js"></script>
		
	</body>
</html>