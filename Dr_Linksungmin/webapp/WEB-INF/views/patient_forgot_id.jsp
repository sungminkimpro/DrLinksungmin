<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>비밀번호설정 - Dr.Link </title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="resources/img/favicon.png">

		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="resources/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="resources/css/font-awesome.min.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="resources/css/style.css">
		
		<!-- 구글폰트 -->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Major+Mono+Display&display=swap" rel="stylesheet">
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script>

</script>


<style>
body {
    font-family: "Nanum Gothic", sans-serif;
}

.footer-menu{
	color:#fff;
}




.mybtn{
  width:150px;
  height:40px;
  padding:0;
  display:inline; 
  border-radius: 4px; 
  background: #212529;
  color: #fff;
  margin-top: 20px;
  border: solid 2px #212529; 
  transition: all 0.5s ease-in-out 0s;
}
.mybtn:hover .mybtn:focus {
  background: white;
  color: #212529;
  text-decoration: none;
}
</style>
    </head>
    <body>
		<!-- Header -->
		<% if (request.getParameter("p_id") != null) { %>
		<%@include file ="tiles/patient_loginHeader.jsp" %>
		<% } else if(request.getParameter("d_id") != null){ %>
		<%@include file ="tiles/doctor_loginHeader.jsp" %>
		<% }else{%>
		  <%@include file ="tiles/header.jsp"%>
		<% } %>
		<!-- /Header -->
		<!-- Main Wrapper -->
        <div class="main-wrapper login-body">
            <div class="login-wrapper">
            	<div class="container">
                	<div class="loginbox">	

                        <div class="login-right">
							<div class="login-right-wrap">
								<h1>아이디를 잊으셨나요?</h1>
								<p class="account-subtitle">아이디를 찾으시려면 이메일을 입력해주세요.</p>
								
								<!-- Form -->
								<form action="find_id.do" method="post">
									<div class="form-group">
										<input class="form-control" type="text" id="email" name="email" placeholder="가입에 사용한 이메일을 입력하세요." required>
									</div>
									<div class="form-group mb-0">
										<button class="btn btn-primary btn-block" type="submit" id=findBtn >아이디 찾기</button>
									</div>
								</form>
								<!-- /Form -->
								
								<div class="text-center dont-have">아이디가 기억나셨나요? <a href="patient_login">로그인</a></div>
							</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
		<!-- /Main Wrapper -->
		
		<!-- Footer -->
		<% if (request.getParameter("p_id") != null) { %>
		<%@include file ="tiles/patient_loginFooter.jsp" %>
		<% } else if(request.getParameter("d_id") != null){ %>
		<%@include file ="tiles/doctor_loginFooter.jsp" %>
		<% }else{%>
		  <%@include file ="tiles/footer.jsp"%>
		<% } %>
		<!-- /Footer -->
	
		<!-- jQuery -->
        <script src="resources/js/jquery-3.2.1.min.js"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="resources/js/popper.min.js"></script>
        <script src="resources/js/bootstrap.min.js"></script>
		
		<!-- Custom JS -->
		<script src="resources/js/script.js"></script>
		
    </body>
</html>