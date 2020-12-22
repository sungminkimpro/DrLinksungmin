<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>회원가입-Dr.Link</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		
		<!-- Favicons -->
		<link href="../resources/img/favicon.png" rel="icon">
		
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="resources/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="resources/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="resources/plugins/fontawesome/css/all.min.css">
		
		<!-- Main CSS -->
		<link rel="stylesheet" href="resources/css/style.css">
		
		<!-- 우편번호 API -->
		<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
		<script src="http://code.jquery.com/jquery-latest.js"></script>
		
		<script>

		function execPostCode() {
			
			 new daum.Postcode({

		           oncomplete: function(data) {

		               // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

		               // 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
		               // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
		               var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
		               var extraRoadAddr = ''; // 도로명 조합형 주소 변수

		               // 법정동명이 있을 경우 추가한다. (법정리는 제외)
		               // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
		               if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
		                   extraRoadAddr += data.bname;
		               }
		               // 건물명이 있고, 공동주택일 경우 추가한다.
		               if(data.buildingName !== '' && data.apartment === 'Y'){
		                  extraRoadAddr += (extraRoadAddr !== '' ? ', ' + data.buildingName : data.buildingName);
		               }
		               // 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
		               if(extraRoadAddr !== ''){
		                   extraRoadAddr = ' (' + extraRoadAddr + ')';
		               }
		               // 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
		               if(fullRoadAddr !== ''){
		                   fullRoadAddr += extraRoadAddr;
		               }

		               // 우편번호와 주소 정보를 해당 필드에 넣는다.

		               document.getElementById('d_zipcode').value = data.zonecode; //5자리 새우편번호 사용
		               document.getElementById('d_address1').value = fullRoadAddr;
		               document.getElementById('d_address2').focus();

		               console.log(data);

		           }

		       }).open();
			 
		};
		


		

			//아이디 유효성
			$(function(){ 
				$("#d_id").blur(function() {
			      var getCheck= RegExp(/^[A-Za-z0-9_]+[A-Za-z0-9]$/);
			      if(!getCheck.test($("#d_id").val())){
					$("#id_check").html("알파벳과 숫자만 사용해주세요.");
					$('#id_check').css('color', 'red');
					$("#submit-btn").attr("disabled", "disabled");
			        $("#d_id").val("");
			        $("#d_id").focus();
			        return false;
			      }else{					
			    	  $.ajax({
						url : "doctor_check_id.do",
						type : "POST",
						data : {
							d_id : $("#d_id").val()
						},
						success : function(result) {
							if (result == 1) {
								$("#id_check").html("중복된 아이디가 있습니다.");
								$('#id_check').css('color', 'red');
								$("#submit-btn").attr("disabled", "disabled");
							} else {
								$("#id_check").html("");
								$("#submit-btn").removeAttr("disabled");
							}
						},
					})}

				});
			});
			

			//이메일 유효성
			$(function(){ 
				$("#d_email").blur(function() {
					var getMail = RegExp(/^[A-Za-z0-9_\.\-]+@[A-Za-z0-9\-]+\.[a-z\-]+/);
				    if(!getMail.test($("#d_email").val())){
						$("#email_check").html("이메일형식에 맞게 입력해주세요.");
						$('#email_check').css('color', 'red');
						$("#submit-btn").attr("disabled", "disabled");
				        $("#d_email").val("");
				        $("#d_email").focus();
				        return false;
				      } else {
							$("#email_check").html("");
							$("#submit-btn").removeAttr("disabled");
						}
				
					
				});
			});
					
					
			
			
			//비밀번호 유효성 및 중복확인
			$(function(){ 
				$('#d_pwd2').blur(function(){
					var getPwd = RegExp(/^[a-zA-z0-9]{4,12}$/);
					if(!getPwd.test($("#d_pwd2").val())){
						$("#pwd_check").html("영문 대소문자와 숫자 4~12자리로 입력해야합니다.");
						$('#pwd_check').css('color', 'red');
						$("#submit-btn").attr("disabled", "disabled");
				        $("#d_pwd").val("");
				        $("#d_pwd2").val("");
				        $("#d_pwd").focus();
				        return false;
				      } else {
				   if($('#d_pwd').val() != $('#d_pwd2').val()){
				    	if($('#d_pwd2').val()!=''){
							$("#pwd_check").text("비밀번호가 일치하지 않습니다.");
							$('#pwd_check').css('color', 'red');
							$("#submit-btn").attr("disabled", true);
				    	    $('#d_pwd2').val('');
				         	$('#d_pwd2').focus();
				      	}
				   }else{
						$("#pwd_check").text("비밀번호가 일치합니다.");
						$('#pwd_check').css('color', 'green');
				   }

					}	
				});

				
				$('#d_pwd').blur(function(){
				   if($('#d_pwd').val() != $('#d_pwd2').val()){
				    	if($('#d_pwd2').val()!=''){
							$("#pwd_check").text("비밀번호가 일치하지 않습니다.");
							$('#pwd_check').css('color', 'red');
							$("#submit-btn").attr("disabled", true);
				    	    $('#d_pwd2').val('');
				         	$('#d_pwd2').focus();
				      	}
				   }else{
						$("#pwd_check").text("비밀번호가 일치합니다.");
						$('#pwd_check').css('color', 'green');
				   }
				});
			}); 	
			


			$(function(){
				$('#height').blur(function(){
					var getheight = RegExp(/^[0-9]*$/);

					if(!getheight.test($("#height").val())){
						$("#height_check").html("숫자로 입력해야합니다.");
						$('#height_check').css('color', 'red');
			    	    $('#height').val('');
					}else if($('#height').val()>=220 || $('#height').val()<=100){
						$("#height_check").html("본인의 키를 입력해야합니다.");
						$('#height_check').css('color', 'red');
			    	    $('#height').val('');
					}else{
						$("#height_check").html("");
					}
				});
			}); 

			$(function(){
				$('#weight').blur(function(){
					var getheight = RegExp(/^[0-9]*$/);

					if(!getheight.test($("#weight").val())){
						$("#weight_check").html("숫자로 입력해야합니다.");
						$('#weight_check').css('color', 'red');
			    	    $('#weight').val('');
					}else if($('#weight').val()>=200 || $('#weight').val()<=30){
						$("#weight_check").html("본인의 몸무게를 입력해야합니다.");
						$('#weight_check').css('color', 'red');
			    	    $('#weight').val('');
					}else{
						$("#weight_check").html("");
					}
				});
			}); 
			
			
			//회원가입 버튼 활성화
			$(function(){
				$("#submit-btn").hover(function(){
					if($("#d_name").val()=='' || $("#d_jumin_num").val()=='' || $("#d_id").val()=='' || $("#d_pwd").val()=='' || $("#d_pwd2").val()=='' || $("#d_email").val()=='' || $("#d_zipcode").val()=='' || $("#d_address1").val()=='' || $("#d_address2").val()=='' || $("#d_phone").val()==''){
						$("#submit-btn").attr("disabled", "disabled");
					}else{
						$("#submit-btn").removeAttr("disabled");
					}
				});
			}); 
			
			
			
			//주민번호 유효성
			$(function(){ 
				$('#d_jumin_num').blur(function(){
				    var jumins3 = $("#d_jumin_num").val();
				      //주민등록번호 생년월일 전달
				          
				      var fmt = RegExp(/^\d{6}[1234]\d{6}$/)  //포멧 설정
				      var buf = new Array(13);
				      var juminGender = jumins3.substr(6,1);
				 
				      //주민번호 유효성 검사
				      if (!fmt.test(jumins3)) {
						$("#jumin_check").text("주민등록번호 형식에 맞게 입력해주세요.");
						$('#jumin_check').css('color', 'red');
			    	    $('#d_jumin_num').val('');
				        $("#d_jumin_num").focus();
				        
				        //남 여 구분
				      }else if(juminGender == 1 || juminGender == 3) {
				        	document.doctorInsert.d_gender.value="남";
							$("#jumin_check").text("");

					   }else{
				        	document.doctorInsert.d_gender.value="여";
							$("#jumin_check").text("");
						   
					   }
				      				        
				 
				      //주민번호 존재 검사
					    for (var i = 0; i < buf.length; i++){
					      buf[i] = parseInt(jumins3.charAt(i));
					    }
					
					    var multipliers = [2,3,4,5,6,7,8,9,2,3,4,5];// 밑에 더해주는 12자리 숫자들 
					    var sum = 0;
					
					    for (var i = 0; i < 12; i++){
					    sum += (buf[i] *= multipliers[i]);// 배열끼리12번 돌면서 
					  }
					
					  if ((11 - (sum % 11)) % 10 != buf[12]) {
						$("#jumin_check").text("잘못된 주민등록번호 입니다.");
						$('#jumin_check').css('color', 'red');
						$("#d_jumin_num").focus();
					  }else{
						$("#jumin_check").text("");
					 }
				});
				
			}); 
			

			//휴대폰 유효성
			$(function(){ 
				$('#d_phone_num').blur(function(){
					var regPhone = RegExp(/^((01[1|6|7|8|9])[1-9]+[0-9]{6,7})|(010[1-9][0-9]{7})$/);
					if(!regPhone.test($("#d_phone_num").val())){
						$("#phone_check").text("휴대폰번호를 정확히 입력해 주세요.");
						$('#phone_check').css('color', 'red');
				        $("#d_phone_num").focus();
					}
					else if ($("#d_phone_num").val() == "" || $("#d_phone_num").val().length != 11 || isNaN($("#d_phone_num").val())) {
						$("#phone_check").text("휴대폰번호를 정확히 입력해 주세요.");
						$('#phone_check').css('color', 'red');
				        $("#d_phone_num").focus();
					     return;
					}
					else if (isNaN($("#d_phone_num").val())) {
						$("#phone_check").text("휴대폰번호를 숫자로만 입력해 주세요.");
						$('#phone_check').css('color', 'red');
				        $("#d_phone_num").focus();
					     return;
					}else{
						$("#phone_check").text("");
					}
					for (var i=0; i<$("#d_phone_num").val().length; i++)  {
					     var chk = $("#d_phone_num").val().substring(i,i+1);
					     if(chk == " "){
							$("#phone_check").text("휴대폰번호를 정확히 입력해주세요.");
							$('#phone_check').css('color', 'red');
					        $("#d_phone_num").focus();
					          return;
					     }
					}
				});

			}); 
			

			//업로드 이미지 미리보기
			function readURL(input) {
				if (input.files && input.files[0]) {
					var reader = new FileReader();
					reader.onload = function (e) {
						$('#blah').attr('src', e.target.result);
					} 
					reader.readAsDataURL(input.files[0]);
				} 
			} 
			</script>

			
	
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

#oemail1{
	display: initial !important;
}

#oemail2{
	display: initial !important;
}

.form-control{
	display: flex !important;
}

.submit-section{
	text-align: -moz-right !important;
}

label{
	display: block !important;
}

</style>
			
			
			
	</head>
	<body class="account-page">
		<!-- Header -->
		<% if (request.getParameter("p_id") != null) { %>
		<%@include file ="tiles/patient_loginHeader.jsp" %>
		<% } else if(request.getParameter("d_id") != null){ %>
		<%@include file ="tiles/doctor_loginHeader.jsp" %>
		<% }else{%>
		  <%@include file ="tiles/header.jsp"%>
		<% } %>
		<!-- /Header -->
	
	
		<!-- user register -->
		<div class="container"></div>

			<!-- Page Content -->
			<div class="content">
				<div class="container-fluid">
					
					<div class="row">
						<!-- /Profile Sidebar -->
						<div class="col-md-7 col-lg-8 col-xl-9" style="margin:auto;">
							<div class="card">
								<div class="card-body">
									
									<!-- Profile Settings Form -->
									<form action="doctorInsert" name="doctorInsert" method="post" enctype="multipart/form-data" onsubmit="return checks()">
										<div class="row form-row">
											<div class="col-12 col-md-12">
												<div class="form-group">
													<div class="change-avatar">
														<div class="profile-img">
															<img id="blah" src="#" alt="프로필 사진">
														</div>
														<div class="upload-img">
															<div class="change-photo-btn">
																<span><i class="fa fa-upload"></i> 사진 업로드</span>
																<input type="file" class="upload" id="d_photo" name="d_photo" onchange="readURL(this);">
															</div>
															<small class="form-text text-muted">이미지 파일 형식 JPG, GIF, PNG. <br>최대 크기는 2MB</small>
														</div>
													</div>
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>이름<span class="text-danger">*</span></label>
													<input type="text" class="form-control" value="" name="d_name" id="d_name" maxlength="6">
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>주민번호<span class="text-danger">*</span></label>
													<input type="text" class="form-control" value="" name="d_jumin_num" id="d_jumin_num"  maxlength="13" placeholder="'-' 없이 번호만 입력해주세요." required />
													<div class="check_font" id="jumin_check"></div>
												</div>
											</div>
											 <input type="hidden" name="d_gender" id="d_gender" value="" required />
											<div class="col-6">
												<div class="form-group">
													<label>아이디<span class="text-danger">*</span></label>
													<input type="text" class="form-control" value="" maxlength="20" name="d_id" id="d_id" required />
													<div class="check_font" id="id_check"></div>
												</div>
											</div>
											<div class="col-6">
												<div class="form-group">
													<label>이메일<span class="text-danger">*</span></label>
													<input id="d_email" name="d_email" class="form-control" size="40" value="" type="text" maxlength="50" required/>
													<div class="check_font" id="email_check"></div>
												</div>
											</div>
											<div class="col-6">
												<div class="form-group">
													<label>비밀번호<span class="text-danger">*</span></label>
													<input type="password" class="form-control" value="" maxlength="20" name="d_pwd" id="d_pwd" placeholder="영문 대소문자와 숫자 4~12자리로 입력해야합니다." required />
												</div>
											</div>
											<div class="col-6">
												<div class="form-group">
													<label>비밀번호 확인<span class="text-danger">*</span></label>
													<input type="password" class="form-control" value="" maxlength="20" name="d_pwd2" id="d_pwd2" required />
													<div class="check_font" id="pwd_check"></div>
												</div>
											</div>
											<div class="col-6">
												<div class="form-group">
												<label class="">휴대전화<span class="text-danger">*</span></label>
												<input id="d_phone_num" name="d_phone_num" class="form-control" maxlength="11" size="40" value="" type="text" placeholder="'-' 없이 번호만 입력해주세요.">
												<div class="check_font" id="phone_check"></div>
												</div>
											</div>
											<div class="col-6">
												<div class="form-group">
												<label class="">d_graduation<span class="text-danger">*</span></label>
												<input id="d_graduation" name="d_graduation" class="form-control" maxlength="50" size="40" value="" type="text" placeholder="미정">
												<div class="check_font" id="d_graduation_check"></div>
												</div>
											</div>
											<div class="col-6">
												<div class="form-group">
												<label class="">d_career<span class="text-danger">*</span></label>
												<input id="d_career" name="d_career" class="form-control" maxlength="50" size="40" value="" type="text" placeholder="미정">
												<div class="check_font" id="d_career_check"></div>
												</div>
											</div>
											<div class="col-6">
												<div class="form-group">
												<label class="">면허번호<span class="text-danger">*</span></label>
												<input id="d_licence" name="d_licence" class="form-control" maxlength="12" size="40" value="" type="text" placeholder="">
												<div class="check_font" id="d_licence_check"></div>
												</div>
											</div>
											<div class="col-12 ">
												<div class="form-inline">
												<label class="">우편번호<span class="text-danger">*</span></label>
													<input type="text" name="d_zipcode" id="d_zipcode" class="zipcode form-control" placeholder="우편번호" readonly>
													<input type="button" onclick="execPostCode()" id="zipcode_btn" class="form-control " value="우편번호 찾기">
												</div>
												<div class="form-group">
												<label>주소<span class="text-danger">*</span></label>
													<input type="text" id="d_address1" name="d_address1" class="addr1 form-control" size="40" placeholder="주소">
												</div>
												<div class="form-group">
												<label>상세주소<span class="text-danger">*</span></label>
													<input type="text" id="d_address2" name="d_address2" class="addr2 form-control" size="40" placeholder="상세주소">
												</div>
											</div>

												
											
										<div class="submit-section" style="margin-top:20px;">
											<button type="submit" class="btn btn-primary submit-btn" id="submit-btn">회원가입</button>
											<button type="reset" class="btn btn-primary submit-btn" >다시입력</button>
										</div>
										</div>
									</form>
									<!-- /Profile Settings Form -->
									
								</div>
							</div>
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
		   
	  
		<!-- jQuery -->
		<script src="resources/js/jquery.min.js"></script>
		
		<!-- Bootstrap Core JS -->
		<script src="resources/js/popper.min.js"></script>
		<script src="resources/js/bootstrap.min.js"></script>
		
		<!-- Custom JS -->
		<script src="resources/js/script.js"></script>
		
	</body>
</html>