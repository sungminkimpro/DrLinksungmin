<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html> 
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>처방</title>
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
			
	
						
						<!-- User Menu -->
						<li class="nav-item dropdown has-arrow logged-item">
							<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
								<span class="user-img">
									<img class="rounded-circle" src="../resources/img/patients/patient.jpg" width="31" alt="Ryan Taylor">
								</span>
							</a>
							<div class="dropdown-menu dropdown-menu-right">
								<div class="user-header">
									<div class="avatar avatar-sm">
										<img src="../resources/img/patients/patient.jpg" alt="User Image" class="avatar-img rounded-circle">
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
			
			<!-- Breadcrumb -->
			<div class="breadcrumb-bar">
				<div class="container-fluid">
					<div class="row align-items-center">
						<div class="col-md-12 col-12">
							<nav aria-label="breadcrumb" class="page-breadcrumb">
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><a href="index">Home</a></li>
									<li class="breadcrumb-item active" aria-current="page">Dashboard</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">마이페이지</h2>
						</div>
					</div>
				</div>
			</div>
			<!-- /Breadcrumb -->
			
			<!-- Page Content -->
			<div class="content">
				<div class="container-fluid">

					<div class="row">
						
						<!-- Profile Sidebar -->
						<div class="col-md-5 col-lg-4 col-xl-3 theiaStickySidebar">
							<div class="profile-sidebar">
								<div class="widget-profile pro-widget-content">
									<div class="profile-info-widget">
										<a href="#" class="booking-doc-img">
											<img src="../resources/img/patients/patient.jpg" alt="User Image">
										</a>
										<div class="profile-det-info">
											<h3>홍길동</h3>
											<div class="patient-details">
												<h5><i class="fas fa-birthday-cake"></i> 1993년 1월 1일</h5>
												<h5 class="mb-0"><i class="fas fa-map-marker-alt"></i> Seoul, 한국</h5>
											</div>
										</div>
									</div>
								</div>
								<div class="dashboard-widget">
									<nav class="dashboard-menu">
										<ul>
											<li class="active">
												<a href="patient-dashboard">
													<i class="fas fa-columns"></i>
													<span>Dashboard</span>
												</a>
											</li>
											<li>
												<a href="favourites">
													<i class="fas fa-bookmark"></i>
													<span>즐겨찾기</span>
												</a>
											</li>
											<li>
												<a href="chat">
													<i class="fas fa-comments"></i>
													<span>메세지</span>
													<small class="unread-msg">23</small>
												</a>
											</li>
											<li>
												<a href="profile-settings">
													<i class="fas fa-user-cog"></i>
													<span>프로필 수정</span>
												</a>
											</li>
											<li>
												<a href="change-password">
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
						</div>
						<!-- / Profile Sidebar -->
						
						<div class="col-md-7 col-lg-8 col-xl-9">
							<div class="card">
								<div class="card-body pt-0">
								
									<!-- Tab Menu -->
									<nav class="user-tabs mb-4">
										<ul class="nav nav-tabs nav-tabs-bottom nav-justified">
											<li class="nav-item">
												<a class="nav-link" href="appointments" data-toggle="tab">예약</a>
											</li>
											<li class="nav-item">
												<a class="nav-link active" href="prescriptions" data-toggle="tab">처방</a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="#pat_medical_records" data-toggle="tab"><span class="med-records">의료 기록</span></a>
											</li>
											<li class="nav-item">
												<a class="nav-link" href="#pat_billing" data-toggle="tab">청구</a>
											</li>
										</ul>
									</nav>
									<!-- /Tab Menu -->
									
									<!-- Tab Content -->
									<div class="tab-content pt-0">
										
										<!-- Appointment Tab -->
										<div id="pat_appointments" class="tab-pane fade show active">
											<div class="card card-table mb-0">
												<div class="card-body">
													<div class="table-responsive">
														<table class="table table-hover table-center mb-0">
															<thead>
																<tr>
																	<th>의사</th>
																	<th>신청 날짜</th>
																	<th>예약 날짜</th>
																	<th>가격</th>
																	<!-- <th>후속 조치</th>
																	<th>상태</th> -->
																	<th></th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="../resources/img/doctors/doctor-thumb-01.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">홍길동 <span>피부과</span></a>
																		</h2>
																	</td>
																	<td>2020년 12월 07일 <span class="d-block text-info">10.00 AM</span></td>
																	<td>2020년 12월 07일 </td>
																	<td>16,000원</td>
																	<!-- <td>2020년 12월 07일</td>
																	< td><span class="badge badge-pill bg-success-light">확인</span></td>-->
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> 출력
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> 상세보기
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-02.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Darren Elder <span>Dental</span></a>
																		</h2>
																	</td>
																	<td>12 Nov 2019 <span class="d-block text-info">8.00 PM</span></td>
																	<td>12 Nov 2019</td>
																	<td>$250</td>
																	<td>14 Nov 2019</td>
																	<td><span class="badge badge-pill bg-success-light">Confirm</span></td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> 출력
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> 상세보기
																			</a>
																		</div>
																	</td>
																</tr>
																
																<tr>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-06.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Katharine Berthold <span>Orthopaedics</span></a>
																		</h2>
																	</td>
																	<td>8 Nov 2019 <span class="d-block text-info">9.00 AM</span></td>
																	<td>6 Nov 2019</td>
																	<td>$175</td>
																	<td>10 Nov 2019</td>
																	<td><span class="badge badge-pill bg-danger-light">Cancelled</span></td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> 출력
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> 상세보기
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-07.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Linda Tobin <span>Neurology</span></a>
																		</h2>
																	</td>
																	<td>8 Nov 2019 <span class="d-block text-info">6.00 PM</span></td>
																	<td>6 Nov 2019</td>
																	<td>$450</td>
																	<td>10 Nov 2019</td>
																	<td><span class="badge badge-pill bg-success-light">Confirm</span></td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> 출력
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> 상세보기
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-08.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Paul Richard <span>Dermatology</span></a>
																		</h2>
																	</td>
																	<td>7 Nov 2019 <span class="d-block text-info">9.00 PM</span></td>
																	<td>7 Nov 2019</td>
																	<td>$275</td>
																	<td>9 Nov 2019</td>
																	<td><span class="badge badge-pill bg-success-light">Confirm</span></td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> 출력
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> 상세보기
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-09.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. John Gibbs <span>Dental</span></a>
																		</h2>
																	</td>
																	<td>6 Nov 2019 <span class="d-block text-info">8.00 PM</span></td>
																	<td>4 Nov 2019</td>
																	<td>$600</td>
																	<td>8 Nov 2019</td>
																	<td><span class="badge badge-pill bg-success-light">Confirm</span></td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> 출력
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> 상세보기
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-10.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Olga Barlow  <span>Dental</span></a>
																		</h2>
																	</td>
																	<td>5 Nov 2019 <span class="d-block text-info">5.00 PM</span></td>
																	<td>1 Nov 2019</td>
																	<td>$100</td>
																	<td>7 Nov 2019</td>
																	<td><span class="badge badge-pill bg-success-light">Confirm</span></td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> 출력
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> 상세보기
																			</a>
																		</div>
																	</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
										<!-- /Appointment Tab -->
										
										<!-- Prescription Tab -->
										<div class="tab-pane fade" id="pat_prescriptions">
											<div class="card card-table mb-0">
												<div class="card-body">
													<div class="table-responsive">
														<table class="table table-hover table-center mb-0">
															<thead>
																<tr>
																	<th>Date </th>
																	<th>Name</th>									
																	<th>Created by </th>
																	<th></th>
																</tr>     
															</thead>
															<tbody>
																<tr>
																	<td>14 Nov 2019</td>
																	<td>Prescription 1</td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-01.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Ruby Perrin <span>Dental</span></a>
																		</h2>
																	</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>13 Nov 2019</td>
																	<td>Prescription 2</td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-02.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Darren Elder <span>Dental</span></a>
																		</h2>
																	</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>12 Nov 2019</td>
																	<td>Prescription 3</td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-03.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Deborah Angel <span>Cardiology</span></a>
																		</h2>
																	</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>11 Nov 2019</td>
																	<td>Prescription 4</td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-04.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Sofia Brient <span>Urology</span></a>
																		</h2>
																	</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>10 Nov 2019</td>
																	<td>Prescription 5</td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-05.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Marvin Campbell <span>Dental</span></a>
																		</h2>
																	</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>9 Nov 2019</td>
																	<td>Prescription 6</td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-06.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Katharine Berthold <span>Orthopaedics</span></a>
																		</h2>
																	</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>8 Nov 2019</td>
																	<td>Prescription 7</td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-07.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Linda Tobin <span>Neurology</span></a>
																		</h2>
																	</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>7 Nov 2019</td>
																	<td>Prescription 8</td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-08.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Paul Richard <span>Dermatology</span></a>
																		</h2>
																	</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>6 Nov 2019</td>
																	<td>Prescription 9</td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-09.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. John Gibbs <span>Dental</span></a>
																		</h2>
																	</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>5 Nov 2019</td>
																	<td>Prescription 10</td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-10.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Olga Barlow <span>Dental</span></a>
																		</h2>
																	</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																		</div>
																	</td>
																</tr>
															</tbody>	
														</table>
													</div>
												</div>
											</div>
										</div>
										<!-- /Prescription Tab -->
											
										<!-- Medical Records Tab -->
										<div id="pat_medical_records" class="tab-pane fade">
											<div class="card card-table mb-0">
												<div class="card-body">
													<div class="table-responsive">
														<table class="table table-hover table-center mb-0">
															<thead>
																<tr>
																	<th>ID</th>
																	<th>Date </th>
																	<th>Description</th>
																	<th>Attachment</th>
																	<th>Created</th>
																	<th></th>
																</tr>     
															</thead>
															<tbody>
																<tr>
																	<td><a href="javascript:void(0);">#MR-0010</a></td>
																	<td>14 Nov 2019</td>
																	<td>Dental Filling</td>
																	<td><a href="#">dental-test.pdf</a></td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-01.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Ruby Perrin <span>Dental</span></a>
																		</h2>
																	</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td><a href="javascript:void(0);">#MR-0009</a></td>
																	<td>13 Nov 2019</td>
																	<td>Teeth Cleaning</td>
																	<td><a href="#">dental-test.pdf</a></td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-02.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Darren Elder <span>Dental</span></a>
																		</h2>
																	</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td><a href="javascript:void(0);">#MR-0008</a></td>
																	<td>12 Nov 2019</td>
																	<td>General Checkup</td>
																	<td><a href="#">cardio-test.pdf</a></td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-03.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Deborah Angel <span>Cardiology</span></a>
																		</h2>
																	</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td><a href="javascript:void(0);">#MR-0007</a></td>
																	<td>11 Nov 2019</td>
																	<td>General Test</td>
																	<td><a href="#">general-test.pdf</a></td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-04.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Sofia Brient <span>Urology</span></a>
																		</h2>
																	</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td><a href="javascript:void(0);">#MR-0006</a></td>
																	<td>10 Nov 2019</td>
																	<td>Eye Test</td>
																	<td><a href="#">eye-test.pdf</a></td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-05.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Marvin Campbell <span>Ophthalmology</span></a>
																		</h2>
																	</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td><a href="javascript:void(0);">#MR-0005</a></td>
																	<td>9 Nov 2019</td>
																	<td>Leg Pain</td>
																	<td><a href="#">ortho-test.pdf</a></td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-06.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Katharine Berthold <span>Orthopaedics</span></a>
																		</h2>
																	</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td><a href="javascript:void(0);">#MR-0004</a></td>
																	<td>8 Nov 2019</td>
																	<td>Head pain</td>
																	<td><a href="#">neuro-test.pdf</a></td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-07.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Linda Tobin <span>Neurology</span></a>
																		</h2>
																	</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td><a href="javascript:void(0);">#MR-0003</a></td>
																	<td>7 Nov 2019</td>
																	<td>Skin Alergy</td>
																	<td><a href="#">alergy-test.pdf</a></td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-08.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Paul Richard <span>Dermatology</span></a>
																		</h2>
																	</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td><a href="javascript:void(0);">#MR-0002</a></td>
																	<td>6 Nov 2019</td>
																	<td>Dental Removing</td>
																	<td><a href="#">dental-test.pdf</a></td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-09.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. John Gibbs <span>Dental</span></a>
																		</h2>
																	</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td><a href="javascript:void(0);">#MR-0001</a></td>
																	<td>5 Nov 2019</td>
																	<td>Dental Filling</td>
																	<td><a href="#">dental-test.pdf</a></td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-10.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Olga Barlow <span>Dental</span></a>
																		</h2>
																	</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="javascript:void(0);" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																		</div>
																	</td>
																</tr>
															</tbody>  	
														</table>
													</div>
												</div>
											</div>
										</div>
										<!-- /Medical Records Tab -->
										
										<!-- Billing Tab -->
										<div id="pat_billing" class="tab-pane fade">
											<div class="card card-table mb-0">
												<div class="card-body">
													<div class="table-responsive">
														<table class="table table-hover table-center mb-0">
															<thead>
																<tr>
																	<th>Invoice No</th>
																	<th>Doctor</th>
																	<th>Amount</th>
																	<th>Paid On</th>
																	<th></th>
																</tr>
															</thead>
															<tbody>
																<tr>
																	<td>
																		<a href="invoice-view">#INV-0010</a>
																	</td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-01.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Ruby Perrin <span>Dental</span></a>
																		</h2>
																	</td>
																	<td>$450</td>
																	<td>14 Nov 2019</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="invoice-view" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>
																		<a href="invoice-view">#INV-0009</a>
																	</td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-02.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Darren Elder <span>Dental</span></a>
																		</h2>
																	</td>
																	<td>$300</td>
																	<td>13 Nov 2019</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="invoice-view" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>
																		<a href="invoice-view">#INV-0008</a>
																	</td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-03.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Deborah Angel <span>Cardiology</span></a>
																		</h2>
																	</td>
																	<td>$150</td>
																	<td>12 Nov 2019</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="invoice-view" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>
																		<a href="invoice-view">#INV-0007</a>
																	</td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-04.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Sofia Brient <span>Urology</span></a>
																		</h2>
																	</td>
																	<td>$50</td>
																	<td>11 Nov 2019</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="invoice-view" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>
																		<a href="invoice-view">#INV-0006</a>
																	</td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-05.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Marvin Campbell <span>Ophthalmology</span></a>
																		</h2>
																	</td>
																	<td>$600</td>
																	<td>10 Nov 2019</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="invoice-view" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>
																		<a href="invoice-view">#INV-0005</a>
																	</td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-06.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Katharine Berthold <span>Orthopaedics</span></a>
																		</h2>
																	</td>
																	<td>$200</td>
																	<td>9 Nov 2019</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="invoice-view" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>
																		<a href="invoice-view">#INV-0004</a>
																	</td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-07.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Linda Tobin <span>Neurology</span></a>
																		</h2>
																	</td>
																	<td>$100</td>
																	<td>8 Nov 2019</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="invoice-view" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>
																		<a href="invoice-view">#INV-0003</a>
																	</td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-08.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Paul Richard <span>Dermatology</span></a>
																		</h2>
																	</td>
																	<td>$250</td>
																	<td>7 Nov 2019</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="invoice-view" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>
																		<a href="invoice-view">#INV-0002</a>
																	</td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-09.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. John Gibbs <span>Dental</span></a>
																		</h2>
																	</td>
																	<td>$175</td>
																	<td>6 Nov 2019</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="invoice-view" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																		</div>
																	</td>
																</tr>
																<tr>
																	<td>
																		<a href="invoice-view">#INV-0001</a>
																	</td>
																	<td>
																		<h2 class="table-avatar">
																			<a href="doctor-profile" class="avatar avatar-sm mr-2">
																				<img class="avatar-img rounded-circle" src="resources/img/doctors/doctor-thumb-10.jpg" alt="User Image">
																			</a>
																			<a href="doctor-profile">Dr. Olga Barlow <span>#0010</span></a>
																		</h2>
																	</td>
																	<td>$550</td>
																	<td>5 Nov 2019</td>
																	<td class="text-right">
																		<div class="table-action">
																			<a href="invoice-view" class="btn btn-sm bg-info-light">
																				<i class="far fa-eye"></i> View
																			</a>
																			<a href="javascript:void(0);" class="btn btn-sm bg-primary-light">
																				<i class="fas fa-print"></i> Print
																			</a>
																		</div>
																	</td>
																</tr>
															</tbody>
														</table>
													</div>
												</div>
											</div>
										</div>
										<!-- /Billing Tab -->
										
									</div>
									<!-- Tab Content -->
									
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
	  
		<!-- jQuery -->
		<script src="resources/js/jquery.min.js"></script>
		
		<!-- Bootstrap Core JS -->
		<script src="resources/js/popper.min.js"></script>
		<script src="resources/js/bootstrap.min.js"></script>
		
		<!-- Sticky Sidebar JS -->
        <script src="resources/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
        <script src="resources/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>
		
		<!-- Custom JS -->
		<script src="resources/js/script.js"></script>
		
	</body>
</html>