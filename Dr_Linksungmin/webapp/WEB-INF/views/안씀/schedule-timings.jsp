<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html> 
<html lang="ko">
	<head>
		<meta charset="utf-8">
		<title>의사 스케줄</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		
		<!-- Favicons -->
		<link type="image/x-icon" href="../resources/img/favicon.png" rel="icon">
		
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="../resources/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="../resources/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="../resources/plugins/fontawesome/css/all.min.css">
		
		 <!-- Daterangepikcer CSS -->
		<!-- <link rel="stylesheet" href="resources/plugins/daterangepicker/daterangepicker.css">
		 -->
		<!-- Main CSS -->
		<link rel="stylesheet" href="../resources/css/style.css">
		
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
							<img src="../resources/img/logo.png" class="img-fluid" alt="Logo">
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
									<li class="breadcrumb-item active" aria-current="page">스케줄 관리</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">스케줄 관리</h2>
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
											<img src="../resources/img/doctors/doctor-thumb-02.jpg" alt="User Image">
										</a>
										<div class="profile-det-info">
											<h3>Dr. Darren Elder</h3>
											
											<div class="patient-details">
												<h5 class="mb-0">BDS, MDS - Oral & Maxillofacial Surgery</h5>
											</div>
										</div>
									</div>
								</div>
								<div class="dashboard-widget">
									<nav class="dashboard-menu">
										<ul>
											<li>
												<a href="doctor-dashboard">
													<i class="fas fa-columns"></i>
													<span>대시보드</span>
												</a>
											</li>
											<li>
												<a href="appointments">
													<i class="fas fa-calendar-check"></i>
													<span>예약 확인</span>
												</a>
											</li>
											<li>
												<a href="my-patients">
													<i class="fas fa-user-injured"></i>
													<span>내 환자</span>
												</a>
											</li>
											<li class="active">
												<a href="schedule-timings">
													<i class="fas fa-hourglass-start"></i>
													<span>일정 시간</span>
												</a>
											</li>
											<li>
												<a href="invoices">
													<i class="fas fa-file-invoice"></i>
													<span>송장</span>
												</a>
											</li>
											<li>
												<a href="reviews">
													<i class="fas fa-star"></i>
													<span>리뷰</span>
												</a>
											</li>
											<li>
												<a href="chat-doctor">
													<i class="fas fa-comments"></i>
													<span>메세지</span>
													<small class="unread-msg">23</small>
												</a>
											</li>
											<li>
												<a href="doctor-profile-settings">
													<i class="fas fa-user-cog"></i>
													<span>프로필 설정</span>
												</a>
											</li>
											<li>
												<a href="social-media">
													<i class="fas fa-share-alt"></i>
													<span>소셜 미디어</span>
												</a>
											</li>
											<li>
												<a href="doctor-change-password">
													<i class="fas fa-lock"></i>
													<span>비밀번호 변경</span>
												</a>
											</li>
											<li>
												<a href="index">
													<i class="fas fa-sign-out-alt"></i>
													<span>로그아웃</span>
												</a>
											</li>
										</ul>
									</nav>
								</div>
							</div>
							<!-- /Profile Sidebar -->
							
						</div>
						
						<div class="col-md-7 col-lg-8 col-xl-9">
						 
							<div class="row">
								<div class="col-sm-12">
									<div class="card">
										<div class="card-body">
											<h4 class="card-title">일정 시간</h4>
											<div class="profile-box">
												<div class="row">

													<div class="col-lg-4">
														<div class="form-group">               
															<label>쉬는 시간</label>
															<select class="select form-control">
																<option>-</option>
																<option>15 분</option>
																<option selected="selected">30 분</option>  
																<option>45 분</option>
																<option>1 시간</option>
															</select>
														</div>
													</div>

												</div>     
												<div class="row">
													<div class="col-md-12">
														<div class="card schedule-widget mb-0">
														
															<!-- Schedule Header -->
															<div class="schedule-header">
															
																<!-- Schedule Nav -->
																<div class="schedule-nav">
																	<ul class="nav nav-tabs nav-justified">
																		<li class="nav-item">
																			<a class="nav-link" data-toggle="tab" href="#slot_sunday">일요일</a>
																		</li>
																		<li class="nav-item">
																			<a class="nav-link active" data-toggle="tab" href="#slot_monday">월요일</a>
																		</li>
																		<li class="nav-item">
																			<a class="nav-link" data-toggle="tab" href="#slot_tuesday">화요일</a>
																		</li>
																		<li class="nav-item">
																			<a class="nav-link" data-toggle="tab" href="#slot_wednesday">수요일</a>
																		</li>
																		<li class="nav-item">
																			<a class="nav-link" data-toggle="tab" href="#slot_thursday">목요일</a>
																		</li>
																		<li class="nav-item">
																			<a class="nav-link" data-toggle="tab" href="#slot_friday">금요일</a>
																		</li>
																		<li class="nav-item">
																			<a class="nav-link" data-toggle="tab" href="#slot_saturday">토요일</a>
																		</li>
																	</ul>
																</div>
																<!-- /Schedule Nav -->
																
															</div>
															<!-- /Schedule Header -->
															
															<!-- Schedule Content -->
															<div class="tab-content schedule-cont">
															
																<!-- Sunday Slot -->
																<div id="slot_sunday" class="tab-pane fade">
																	<h4 class="card-title d-flex justify-content-between">
																		<span>시간대</span> 
																		<a class="edit-link" data-toggle="modal" href="#add_time_slot"><i class="fa fa-plus-circle"></i> 슬롯 추가</a>
																	</h4>
																	<p class="text-muted mb-0">사용할 수 없습니다.</p>
																</div>
																<!-- /Sunday Slot -->

																<!-- Monday Slot -->
																<div id="slot_monday" class="tab-pane fade show active">
																	<h4 class="card-title d-flex justify-content-between">
																		<span>시간대</span> 
																		<a class="edit-link" data-toggle="modal" href="#edit_time_slot"><i class="fa fa-edit mr-1"></i>수정</a>
																	</h4>
																	
																	<!-- Slot List -->
																	<div class="doc-times">
																		<div class="doc-slot-list">
																			8:00 pm - 11:30 pm
																			<a href="javascript:void(0)" class="delete_schedule">
																				<i class="fa fa-times"></i>
																			</a>
																		</div>
																		<div class="doc-slot-list">
																			11:30 pm - 1:30 pm
																			<a href="javascript:void(0)" class="delete_schedule">
																				<i class="fa fa-times"></i>
																			</a>
																		</div>
																		<div class="doc-slot-list">
																			3:00 pm - 5:00 pm
																			<a href="javascript:void(0)" class="delete_schedule">
																				<i class="fa fa-times"></i>
																			</a>
																		</div>
																		<div class="doc-slot-list">
																			6:00 pm - 11:00 pm
																			<a href="javascript:void(0)" class="delete_schedule">
																				<i class="fa fa-times"></i>
																			</a>
																		</div>
																	</div>
																	<!-- /Slot List -->
																	
																</div>
																<!-- /Monday Slot -->

																<!-- Tuesday Slot -->
																<div id="slot_tuesday" class="tab-pane fade">
																	<h4 class="card-title d-flex justify-content-between">
																		<span>시간대</span> 
																		<a class="edit-link" data-toggle="modal" href="#add_time_slot"><i class="fa fa-plus-circle"></i> 슬롯 추가</a>
																	</h4>
																	<p class="text-muted mb-0">사용할 수 없습니다.</p>
																</div>
																<!-- /Tuesday Slot -->

																<!-- Wednesday Slot -->
																<div id="slot_wednesday" class="tab-pane fade">
																	<h4 class="card-title d-flex justify-content-between">
																		<span>시간대</span> 
																		<a class="edit-link" data-toggle="modal" href="#add_time_slot"><i class="fa fa-plus-circle"></i> 슬롯 추가</a>
																	</h4>
																	<p class="text-muted mb-0">사용할 수 없습니다.</p>
																</div>
																<!-- /Wednesday Slot -->

																<!-- Thursday Slot -->
																<div id="slot_thursday" class="tab-pane fade">
																	<h4 class="card-title d-flex justify-content-between">
																		<span>시간대</span> 
																		<a class="edit-link" data-toggle="modal" href="#add_time_slot"><i class="fa fa-plus-circle"></i> 슬롯 추가</a>
																	</h4>
																	<p class="text-muted mb-0">사용할 수 없습니다.</p>
																</div>
																<!-- /Thursday Slot -->

																<!-- Friday Slot -->
																<div id="slot_friday" class="tab-pane fade">
																	<h4 class="card-title d-flex justify-content-between">
																		<span>시간대</span> 
																		<a class="edit-link" data-toggle="modal" href="#add_time_slot"><i class="fa fa-plus-circle"></i> 슬롯 추가</a>
																	</h4>
																	<p class="text-muted mb-0">사용할 수 없습니다.</p>
																</div>
																<!-- /Friday Slot -->

																<!-- Saturday Slot -->
																<div id="slot_saturday" class="tab-pane fade">
																	<h4 class="card-title d-flex justify-content-between">
																		<span>시간대</span> 
																		<a class="edit-link" data-toggle="modal" href="#add_time_slot"><i class="fa fa-plus-circle"></i> 슬롯 추가</a>
																	</h4>
																	<p class="text-muted mb-0">사용할 수 없습니다.</p>
																</div>
																<!-- /Saturday Slot -->

															</div>
															<!-- /Schedule Content -->
															
														</div>
													</div>
												</div>
											</div>
										</div>
									</div>
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
				
				<!-- /Footer Bottom -->
				
			</footer>
			<!-- /Footer -->
		   
		</div>
		<!-- /Main Wrapper -->
		
		<!-- Add Time Slot Modal -->
		<div class="modal fade custom-modal" id="add_time_slot">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Add Time Slots</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form>
							<div class="hours-info">
								<div class="row form-row hours-cont">
									<div class="col-12 col-md-10">
										<div class="row form-row">
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Start Time</label>
													<select class="form-control">
														<option>-</option>
														<option>12.00 am</option>
														<option>12.30 am</option>  
														<option>1.00 am</option>
														<option>1.30 am</option>
													</select>
												</div> 
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>End Time</label>
													<select class="form-control">
														<option>-</option>
														<option>12.00 am</option>
														<option>12.30 am</option>  
														<option>1.00 am</option>
														<option>1.30 am</option>
													</select>
												</div> 
											</div>
										</div>
									</div>
								</div>
							</div>
							
							<div class="add-more mb-3">
								<a href="javascript:void(0);" class="add-hours"><i class="fa fa-plus-circle"></i> Add More</a>
							</div>
							<div class="submit-section text-center">
								<button type="submit" class="btn btn-primary submit-btn">Save Changes</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- /Add Time Slot Modal -->
		
		<!-- Edit Time Slot Modal -->
		<div class="modal fade custom-modal" id="edit_time_slot">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">Edit Time Slots</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<form>
							<div class="hours-info">
								<div class="row form-row hours-cont">
									<div class="col-12 col-md-10">
										<div class="row form-row">
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Start Time</label>
													<select class="form-control">
														<option>-</option>
														<option selected>12.00 am</option>
														<option>12.30 am</option>  
														<option>1.00 am</option>
														<option>1.30 am</option>
													</select>
												</div> 
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>End Time</label>
													<select class="form-control">
														<option>-</option>
														<option>12.00 am</option>
														<option selected>12.30 am</option>  
														<option>1.00 am</option>
														<option>1.30 am</option>
													</select>
												</div> 
											</div>
										</div>
									</div>
								</div>
								
								<div class="row form-row hours-cont">
									<div class="col-12 col-md-10">
										<div class="row form-row">
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Start Time</label>
													<select class="form-control">
														<option>-</option>
														<option>12.00 am</option>
														<option selected>12.30 am</option>
														<option>1.00 am</option>
														<option>1.30 am</option>
													</select>
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>End Time</label>
													<select class="form-control">
														<option>-</option>
														<option>12.00 am</option>
														<option>12.30 am</option>
														<option selected>1.00 am</option>
														<option>1.30 am</option>
													</select>
												</div>
											</div>
										</div>
									</div>
									<div class="col-12 col-md-2"><label class="d-md-block d-sm-none d-none">&nbsp;</label><a href="#" class="btn btn-danger trash"><i class="far fa-trash-alt"></i></a></div>
								</div>
								
								<div class="row form-row hours-cont">
									<div class="col-12 col-md-10">
										<div class="row form-row">
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>Start Time</label>
													<select class="form-control">
														<option>-</option>
														<option>12.00 am</option>
														<option>12.30 am</option>
														<option selected>1.00 am</option>
														<option>1.30 am</option>
													</select>
												</div>
											</div>
											<div class="col-12 col-md-6">
												<div class="form-group">
													<label>End Time</label>
													<select class="form-control">
														<option>-</option>
														<option>12.00 am</option>
														<option>12.30 am</option>
														<option>1.00 am</option>
														<option selected>1.30 am</option>
													</select>
												</div>
											</div>
										</div>
									</div>
									<div class="col-12 col-md-2"><label class="d-md-block d-sm-none d-none">&nbsp;</label><a href="#" class="btn btn-danger trash"><i class="far fa-trash-alt"></i></a></div>
								</div>

							</div>
							
							<div class="add-more mb-3">
								<a href="javascript:void(0);" class="add-hours"><i class="fa fa-plus-circle"></i> Add More</a>
							</div>
							<div class="submit-section text-center">
								<button type="submit" class="btn btn-primary submit-btn">Save Changes</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
		<!-- /Edit Time Slot Modal -->
	  
		<!-- jQuery -->
		<script src="resources/js/jquery.min.js"></script>
		
		<!-- Bootstrap Core JS -->
		<script src="resources/js/popper.min.js"></script>
		<script src="resources/js/bootstrap.min.js"></script>
		
		<!-- Sticky Sidebar JS -->
        <script src="resources/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
        <script src="resources/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>
		
		<!-- Select2 JS -->
		<script src="resources/plugins/select2/js/select2.min.js"></script>
		
		<!-- Custom JS -->
		<script src="resources/js/script.js"></script>
		
	</body>
</html>