<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html> 
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>로그인-Dr.Link</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		
		<!-- Favicons -->
		<link href="resources/img/favicon.png" rel="icon">
		
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="resources/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="resources/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="resources/plugins/fontawesome/css/all.min.css">
		
		<!-- Main CSS -->
		<link rel="stylesheet" href="resources/css/style.css">
	
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
	<body class="account-page">

		<!-- Main Wrapper -->
		<div class="main-wrapper">
		
		<!-- Header -->
		<% if (request.getParameter("p_id") != null) { %>
		<%@include file ="tiles/patient_loginHeader.jsp" %>
		<% } else if(request.getParameter("d_id") != null){ %>
		<%@include file ="tiles/doctor_loginHeader.jsp" %>
		<% }else{%>
		  <%@include file ="tiles/header.jsp"%>
		<% } %>
		<!-- /Header -->
			
			<!-- Page Content -->
			<div class="content">
				<div class="container-fluid">
					
					<div class="row">
						<div class="col-md-8 offset-md-2">
							
							<!-- Login Tab Content -->
							<div class="account-content">
								<div class="row align-items-center justify-content-center">
									<div class="col-md-7 col-lg-6 login-left">
										<img src="resources/img/login-banner.png" class="img-fluid" alt="Doccure Login">	
									</div>
									<div class="col-md-12 col-lg-6 login-right">
										<div class="login-header">
											<h3>Dr.Link <span>로그인</span></h3>
										</div>
										<form action="loginCheck" name="loginCheck" id="loginCheck" class="loginCheck" method="post">
											<div class="form-group form-focus">
												<input type="text" class="form-control floating" name="p_id" >
												<label class="focus-label">아이디를 입력해주세요.</label>
											</div>
											<div class="form-group form-focus">
												<input type="password" class="form-control floating" name="p_pwd">
												<label class="focus-label">비밀번호를 입력해주세요.</label>
											</div>
											<button class="btn btn-primary btn-block btn-lg login-btn" type="submit">로그인</button>
											<div class="login-or">
												<span class="or-line"></span>
												<span class="span-or">or</span>
											</div>
											<div class="row form-row social-login">
												<div class="col-6">
													<a href="#" class="btn btn-naver btn-block"><i class="fab fa-facebook-f mr-1"></i>네이버 아이디로 로그인</a>
												</div>
												<div class="col-6">
													<a href="#" class="btn btn-facebook btn-block"><i class="fab fa-facebook-f mr-1"></i>페이스북 아이디로 로그인</a>
												</div>
											</div>
											<div class="text-center dont-have"> 잊으셨습니까? <a href="patient_forgot_id">  아이디 찾기</a> <a href="patient_forgot_password">  비밀번호 찾기</a></div>
											<div class="text-center dont-have"> 아직 회원이 아니십니까?  <a href="patient_register">  회원가입</a></div>
										</form>
									</div>
								</div>
							</div>
							<!-- /Login Tab Content -->
								
						</div>
					</div>

				</div>

			</div>		
			<!-- /Page Content -->
   
		<!-- Footer -->
		<% if (request.getParameter("p_id") != null) { %>
		<%@include file ="tiles/patient_loginFooter.jsp" %>
		<% } else if(request.getParameter("d_id") != null){ %>
		<%@include file ="tiles/doctor_loginFooter.jsp" %>
		<% }else{%>
		  <%@include file ="tiles/footer.jsp"%>
		<% } %>
		<!-- /Footer -->
		   
		</div>
		<!-- /Main Wrapper -->
	  
		<!-- jQuery -->
		<script src="resources/js/jquery.min.js"></script>
		
		<!-- Bootstrap Core JS -->
		<script src="resources/js/popper.min.js"></script>
		<script src="resources/js/bootstrap.min.js"></script>
		
		<!-- Custom JS -->
		<script src="resources/js/script.js"></script>
		
	</body>
</html>