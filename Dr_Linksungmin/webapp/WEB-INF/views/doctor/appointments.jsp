<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>의사진료일정 - Dr.Link</title>
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
						<a href="index" class="navbar-brand logo">
							<img src="${pageContext.request.contextPath}/resources/img/logo.png" class="img-fluid" alt="Logo">
						</a>
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
						<ul class="main-nav">
							<li>
								<a href="index">Home</a>
							</li>
							<li class="has-submenu active">
								<a href="">Doctors <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="doctor-dashboard">Doctor Dashboard</a></li>
									<li class="active"><a href="appointments">Appointments</a></li>
									<li><a href="schedule-timings">Schedule Timing</a></li>
									<li><a href="my-patients">Patients List</a></li>
									<li><a href="patient-profile">Patients Profile</a></li>
									<li><a href="chat-doctor">Chat</a></li>
									<li><a href="invoices">Invoices</a></li>
									<li><a href="doctor-profile-settings">Profile Settings</a></li>
									<li><a href="reviews">Reviews</a></li>
									<li><a href="doctor-register">Doctor Register</a></li>
									<li class="has-submenu">
										<a href="doctor-blog">Blog</a>
										<ul class="submenu">
											<li><a href="doctor-blog">Blog</a></li>
											<li><a href="blog-details">Blog view</a></li>
											<li><a href="doctor-add-blog">Add Blog</a></li>
										</ul>
									</li>
								</ul>
							</li>	
							<li class="has-submenu">
								<a href="">Patients <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li class="has-submenu">
										<a href="#">Doctors</a>
										<ul class="submenu">
											<li><a href="map-grid">Map Grid</a></li>
											<li><a href="map-list">Map List</a></li>
										</ul>
									</li>
									<li><a href="search">Search Doctor</a></li>
									<li><a href="doctor-profile">Doctor Profile</a></li>
									<li><a href="booking">Booking</a></li>
									<li><a href="checkout">Checkout</a></li>
									<li><a href="booking-success">Booking Success</a></li>
									<li><a href="patient-dashboard">Patient Dashboard</a></li>
									<li><a href="favourites">Favourites</a></li>
									<li><a href="chat">Chat</a></li>
									<li><a href="profile-settings">Profile Settings</a></li>
									<li><a href="change-password">Change Password</a></li>
								</ul>
							</li>	
							<li class="has-submenu">
								<a href="">Pharmacy <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="pharmacy-index">Pharmacy</a></li>
									<li><a href="pharmacy-details">Pharmacy Details</a></li>
									<li><a href="pharmacy-search">Pharmacy Search</a></li>
									<li><a href="product-all">Product</a></li>
									<li><a href="product-description">Product Description</a></li>
									<li><a href="cart">Cart</a></li>
									<li><a href="product-checkout">Product Checkout</a></li>
									<li><a href="payment-success">Payment Success</a></li>
								</ul>
							</li>
							<li class="has-submenu">
								<a href="">Pages <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="voice-call">Voice Call</a></li>
									<li><a href="video-call">Video Call</a></li>
									<li><a href="search">Search Doctors</a></li>
									<li><a href="calendar">Calendar</a></li>
									<li><a href="components">Components</a></li>
									<li class="has-submenu">
										<a href="invoices">Invoices</a>
										<ul class="submenu">
											<li><a href="invoices">Invoices</a></li>
											<li><a href="invoice-view">Invoice View</a></li>
										</ul>
									</li>
									<li><a href="blank-page">Starter Page</a></li>
									<li><a href="login">Login</a></li>
									<li><a href="register">Register</a></li>
									<li><a href="forgot-password">Forgot Password</a></li>
								</ul>
							</li>
							<li class="has-submenu">
								<a href="">Blog <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="blog-list">Blog List</a></li>
									<li><a href="blog-grid">Blog Grid</a></li>
									<li><a href="blog-details">Blog Details</a></li>
								</ul>
							</li>
							<li class="has-submenu">
								<a href="#" target="_blank">Admin <i class="fas fa-chevron-down"></i></a>
								<ul class="submenu">
									<li><a href="admin/index" target="_blank">Admin</a></li>
									<li><a href="pharmacy/index" target="_blank">Pharmacy Admin</a></li>
								</ul>
							</li>
							<li class="login-link">
								<a href="login">Login / Signup</a>
							</li>
						</ul>
					</div>		 
					<ul class="nav header-navbar-rht">
						<li class="nav-item contact-item">
							<div class="header-contact-img">
								<i class="far fa-hospital"></i>							
							</div>
							<div class="header-contact-detail">
								<p class="contact-header">Contact</p>
								<p class="contact-info-header"> +1 315 369 5943</p>
							</div>
						</li>
						
						<!-- User Menu -->
						<li class="nav-item dropdown has-arrow logged-item">
							<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
								<span class="user-img">
									<img class="rounded-circle" src="${pageContext.request.contextPath}/resources/img/doctors/doctor-thumb-02.jpg" width="31" alt="Darren Elder">
								</span>
							</a>
							<div class="dropdown-menu dropdown-menu-right">
								<div class="user-header">
									<div class="avatar avatar-sm">
										<img src="${pageContext.request.contextPath}/resources/img/doctors/doctor-thumb-02.jpg" alt="User Image" class="avatar-img rounded-circle">
									</div>
									<div class="user-text">
										<h6>Darren Elder</h6>
										<p class="text-muted mb-0">Doctor</p>
									</div>
								</div>
								<a class="dropdown-item" href="doctor-dashboard">Dashboard</a>
								<a class="dropdown-item" href="doctor-profile-settings">Profile Settings</a>
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
									<li class="breadcrumb-item active" aria-current="page">일정</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">진료일정</h2>
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
											<h3>김성민 의사</h3>
											
											<div class="patient-details">
												<h5 class="mb-0">정신건강의학과</h5>
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
													<span>Dashboard</span>
												</a>
											</li>
											<li class="active">
												<a href="appointments">
													<i class="fas fa-calendar-check"></i>
													<span>진료일정</span>
												</a>
											</li>
											<li>
												<a href="my-patients">
													<i class="fas fa-user-injured"></i>
													<span>환자내역</span>
												</a>
											</li>
											<li>
												<a href="schedule-timings">
													<i class="fas fa-hourglass-start"></i>
													<span>근무시간</span>
												</a>
											</li>
											<li>
												<a href="invoices">
													<i class="fas fa-file-invoice"></i>
													<span>Invoices</span>
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
													<span>프로필 수정</span>
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
							<div class="appointments">
							
								<!-- Appointment List -->
								<div class="appointment-list">
									<div class="profile-info-widget">
										<a href="patient-profile" class="booking-doc-img">
											<img src="${pageContext.request.contextPath}/resources/img/patients/patient.jpg" alt="User Image">
										</a>
										<div class="profile-det-info">
											<h3><a href="patient-profile">고현영</a></h3>
											<div class="patient-details">
												<h5><i class="far fa-clock"></i> 2020-11-30, 10:00 AM</h5>
												<h5><i class="fas fa-map-marker-alt"></i> 서울시 금천구 가산동</h5>
												<h5><i class="fas fa-envelope"></i> go@example.com</h5>
												<h5 class="mb-0"><i class="fas fa-phone"></i> 010-1234-5678</h5>
											</div>
										</div>
									</div>
									<div class="appointment-action">
										<a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
											<i class="far fa-eye"></i> 상세보기
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-success-light">
											<i class="fas fa-check"></i> 수락하기
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
											<i class="fas fa-times"></i> 취소하기
										</a>
									</div>
								</div>
								<!-- /Appointment List -->
							
								<!-- Appointment List -->
								<div class="appointment-list">
									<div class="profile-info-widget">
										<a href="patient-profile" class="booking-doc-img">
											<img src="${pageContext.request.contextPath}/resources/img/patients/patient1.jpg" alt="User Image">
										</a>
										<div class="profile-det-info">
											<h3><a href="patient-profile">신주섭 </a></h3>
											<div class="patient-details">
												<h5><i class="far fa-clock"></i> 2020-12-01 15:00PM</h5>
												<h5><i class="fas fa-map-marker-alt"></i> 서울시 관악구 신림동</h5>
												<h5><i class="fas fa-envelope"></i> shin@example.com</h5>
												<h5 class="mb-0"><i class="fas fa-phone"></i> 010-1234-5678</h5>
											</div>
										</div>
									</div>
									<div class="appointment-action">
										<a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
											<i class="far fa-eye"></i> 상세보기
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-success-light">
											<i class="fas fa-check"></i> 수락하기
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
											<i class="fas fa-times"></i> 취소하기
										</a>
									</div>
								</div>
								<!-- /Appointment List -->
								
								<!-- Appointment List -->
								<div class="appointment-list">
									<div class="profile-info-widget">
										<a href="patient-profile" class="booking-doc-img">
											<img src="${pageContext.request.contextPath}/resources/img/patients/patient2.jpg" alt="User Image">
										</a>
										<div class="profile-det-info">
											<h3><a href="patient-profile">Travis Trimble</a></h3>
											
											<div class="patient-details">
												<h5><i class="far fa-clock"></i> 11 Nov 2019, 8.00 PM</h5>
												<h5><i class="fas fa-map-marker-alt"></i> Maine, United States</h5>
												<h5><i class="fas fa-envelope"></i> travistrimble@example.com</h5>
												<h5 class="mb-0"><i class="fas fa-phone"></i> +1 207 729 9974</h5>
											</div>
										</div>
									</div>
									<div class="appointment-action">
										<a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
											<i class="far fa-eye"></i> View
										</a>
										
										<a href="javascript:void(0);" class="btn btn-sm bg-success-light">
											<i class="fas fa-check"></i> Accept
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
											<i class="fas fa-times"></i> Cancel
										</a>
									</div>
								</div>
								<!-- /Appointment List -->
								
								<!-- Appointment List -->
								<div class="appointment-list">
									<div class="profile-info-widget">
										<a href="patient-profile" class="booking-doc-img">
											<img src="${pageContext.request.contextPath}/resources/img/patients/patient3.jpg" alt="User Image">
										</a>
										<div class="profile-det-info">
											<h3><a href="patient-profile">Carl Kelly</a></h3>
											<div class="patient-details">
												<h5><i class="far fa-clock"></i> 9 Nov 2019, 9.00 AM</h5>
												<h5><i class="fas fa-map-marker-alt"></i> Newyork, United States</h5>
												<h5><i class="fas fa-envelope"></i> carlkelly@example.com</h5>
												<h5 class="mb-0"><i class="fas fa-phone"></i> +1 260 724 7769</h5>
											</div>
										</div>
									</div>
									<div class="appointment-action">
										<a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
											<i class="far fa-eye"></i> View
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-success-light">
											<i class="fas fa-check"></i> Accept
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
											<i class="fas fa-times"></i> Cancel
										</a>
									</div>
								</div>
								<!-- /Appointment List -->
								
								<!-- Appointment List -->
								<div class="appointment-list">
									<div class="profile-info-widget">
										<a href="patient-profile" class="booking-doc-img">
											<img src="${pageContext.request.contextPath}/resources/img/patients/patient4.jpg" alt="User Image">
										</a>
										<div class="profile-det-info">
											<h3><a href="patient-profile">Michelle Fairfax</a></h3>
											<div class="patient-details">
												<h5><i class="far fa-clock"></i> 9 Nov 2019, 1.00 PM</h5>
												<h5><i class="fas fa-map-marker-alt"></i> Indiana, United States</h5>
												<h5><i class="fas fa-envelope"></i> michellefairfax@example.com</h5>
												<h5 class="mb-0"><i class="fas fa-phone"></i> +1 504 368 6874</h5>
											</div>
										</div>
									</div>
									<div class="appointment-action">
										<a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
											<i class="far fa-eye"></i> View
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-success-light">
											<i class="fas fa-check"></i> Accept
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
											<i class="fas fa-times"></i> Cancel
										</a>
									</div>
								</div>
								<!-- /Appointment List -->
								
								<!-- Appointment List -->
								<div class="appointment-list">
									<div class="profile-info-widget">
										<a href="patient-profile" class="booking-doc-img">
											<img src="${pageContext.request.contextPath}/resources/img/patients/patient5.jpg" alt="User Image">
										</a>
										<div class="profile-det-info">
											<h3><a href="patient-profile">Gina Moore</a></h3>
											<div class="patient-details">
												<h5><i class="far fa-clock"></i> 8 Nov 2019, 3.00 PM</h5>
												<h5><i class="fas fa-map-marker-alt"></i> Florida, United States</h5>
												<h5><i class="fas fa-envelope"></i> ginamoore@example.com</h5>
												<h5 class="mb-0"><i class="fas fa-phone"></i> +1 954 820 7887</h5>
											</div>
										</div>
									</div>
									<div class="appointment-action">
										<a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
											<i class="far fa-eye"></i> View
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-success-light">
											<i class="fas fa-check"></i> Accept
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
											<i class="fas fa-times"></i> Cancel
										</a>
									</div>
								</div>
								<!-- /Appointment List -->
								
								<!-- Appointment List -->
								<div class="appointment-list">
									<div class="profile-info-widget">
										<a href="patient-profile" class="booking-doc-img">
											<img src="${pageContext.request.contextPath}/resources/img/patients/patient6.jpg" alt="User Image">
										</a>
										<div class="profile-det-info">
											<h3><a href="patient-profile">Elsie Gilley</a></h3>
											<div class="patient-details">
												<h5><i class="far fa-clock"></i> 6 Nov 2019, 9.00 AM</h5>
												<h5><i class="fas fa-map-marker-alt"></i> Kentucky, United States</h5>
												<h5><i class="fas fa-envelope"></i> elsiegilley@example.com</h5>
												<h5 class="mb-0"><i class="fas fa-phone"></i> +1 315 384 4562</h5>
											</div>
										</div>
									</div>
									<div class="appointment-action">
										<a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
											<i class="far fa-eye"></i> View
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-success-light">
											<i class="fas fa-check"></i> Accept
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
											<i class="fas fa-times"></i> Cancel
										</a>
									</div>
								</div>
								<!-- /Appointment List -->
								
								<!-- Appointment List -->
								<div class="appointment-list">
									<div class="profile-info-widget">
										<a href="patient-profile" class="booking-doc-img">
											<img src="${pageContext.request.contextPath}/resources/img/patients/patient7.jpg" alt="User Image">
										</a>
										<div class="profile-det-info">
											<h3><a href="patient-profile">Joan Gardner</a></h3>
											<div class="patient-details">
												<h5><i class="far fa-clock"></i> 5 Nov 2019, 12.00 PM</h5>
												<h5><i class="fas fa-map-marker-alt"></i> California, United States</h5>
												<h5><i class="fas fa-envelope"></i> joangardner@example.com</h5>
												<h5 class="mb-0"><i class="fas fa-phone"></i> +1 707 2202 603</h5>
											</div>
										</div>
									</div>
									<div class="appointment-action">
										<a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
											<i class="far fa-eye"></i> View
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-success-light">
											<i class="fas fa-check"></i> Accept
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
											<i class="fas fa-times"></i> Cancel
										</a>
									</div>
								</div>
								<!-- /Appointment List -->
								
								<!-- Appointment List -->
								<div class="appointment-list">
									<div class="profile-info-widget">
										<a href="patient-profile" class="booking-doc-img">
											<img src="${pageContext.request.contextPath}/resources/img/patients/patient8.jpg" alt="User Image">
										</a>
										<div class="profile-det-info">
											<h3><a href="patient-profile">Daniel Griffing</a></h3>
											<div class="patient-details">
												<h5><i class="far fa-clock"></i> 5 Nov 2019, 7.00 PM</h5>
												<h5><i class="fas fa-map-marker-alt"></i> New Jersey, United States</h5>
												<h5><i class="fas fa-envelope"></i> danielgriffing@example.com</h5>
												<h5 class="mb-0"><i class="fas fa-phone"></i> +1 973 773 9497</h5>
											</div>
										</div>
									</div>
									<div class="appointment-action">
										<a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
											<i class="far fa-eye"></i> View
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-success-light">
											<i class="fas fa-check"></i> Accept
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
											<i class="fas fa-times"></i> Cancel
										</a>
									</div>
								</div>
								<!-- /Appointment List -->
								
								<!-- Appointment List -->
								<div class="appointment-list">
									<div class="profile-info-widget">
										<a href="patient-profile" class="booking-doc-img">
											<img src="${pageContext.request.contextPath}/resources/img/patients/patient9.jpg" alt="User Image">
										</a>
										<div class="profile-det-info">
											<h3><a href="patient-profile">Walter Roberson</a></h3>
											<div class="patient-details">
												<h5><i class="far fa-clock"></i> 4 Nov 2019, 10.00 AM</h5>
												<h5><i class="fas fa-map-marker-alt"></i> Florida, United States</h5>
												<h5><i class="fas fa-envelope"></i> walterroberson@example.com</h5>
												<h5 class="mb-0"><i class="fas fa-phone"></i> +1 850 358 4445</h5>
											</div>
										</div>
									</div>
									<div class="appointment-action">
										<a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
											<i class="far fa-eye"></i> View
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-success-light">
											<i class="fas fa-check"></i> Accept
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
											<i class="fas fa-times"></i> Cancel
										</a>
									</div>
								</div>
								<!-- /Appointment List -->
								
								<!-- Appointment List -->
								<div class="appointment-list">
									<div class="profile-info-widget">
										<a href="patient-profile" class="booking-doc-img">
											<img src="${pageContext.request.contextPath}/resources/img/patients/patient10.jpg" alt="User Image">
										</a>
										<div class="profile-det-info">
											<h3><a href="patient-profile">Robert Rhodes</a></h3>
											<div class="patient-details">
												<h5><i class="far fa-clock"></i> 4 Nov 2019, 11.00 AM</h5>
												<h5><i class="fas fa-map-marker-alt"></i> California, United States</h5>
												<h5><i class="fas fa-envelope"></i> robertrhodes@example.com</h5>
												<h5 class="mb-0"><i class="fas fa-phone"></i> +1 858 259 5285</h5>
											</div>
										</div>
									</div>
									<div class="appointment-action">
										<a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
											<i class="far fa-eye"></i> View
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-success-light">
											<i class="fas fa-check"></i> Accept
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
											<i class="fas fa-times"></i> Cancel
										</a>
									</div>
								</div>
								<!-- /Appointment List -->
								
								<!-- Appointment List -->
								<div class="appointment-list">
									<div class="profile-info-widget">
										<a href="patient-profile" class="booking-doc-img">
											<img src="${pageContext.request.contextPath}/resources/img/patients/patient11.jpg" alt="User Image">
										</a>
										<div class="profile-det-info">
											<h3><a href="patient-profile">Harry Williams</a></h3>
											<div class="patient-details">
												<h5><i class="far fa-clock"></i> 3 Nov 2019, 6.00 PM</h5>
												<h5><i class="fas fa-map-marker-alt"></i> Colorado, United States</h5>
												<h5><i class="fas fa-envelope"></i> harrywilliams@example.com</h5>
												<h5 class="mb-0"><i class="fas fa-phone"></i> +1 303 607 7075</h5>
											</div>
										</div>
									</div>
									<div class="appointment-action">
										<a href="#" class="btn btn-sm bg-info-light" data-toggle="modal" data-target="#appt_details">
											<i class="far fa-eye"></i> View
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-success-light">
											<i class="fas fa-check"></i> Accept
										</a>
										<a href="javascript:void(0);" class="btn btn-sm bg-danger-light">
											<i class="fas fa-times"></i> Cancel
										</a>
									</div>
								</div>
								<!-- /Appointment List -->
								
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
		
		<!-- Appointment Details Modal -->
		<div class="modal fade custom-modal" id="appt_details">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title">예약 상세내역</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
					</div>
					<div class="modal-body">
						<ul class="info-details">
							<li>
								<div class="details-header">
									<div class="row">
										<div class="col-md-6">
											<span class="title">진료일정</span>
											<span class="text">2020-11-30 10:00 AM</span>
										</div>
										<div class="col-md-6">
											<div class="text-right">
												<button type="button" class="btn bg-success-light btn-sm" id="topup_status">Completed</button>
											</div>
										</div>
									</div>
								</div>
							</li>
							<li>
								<span class="title">상태:</span>
								<span class="text">진료완료</span>
							</li>
							<li>
								<span class="title">진료날짜:</span>
								<span class="text">2020-11-30</span>
							</li>
							<li>
								<span class="title">금액</span>
								<span class="text">25,000원</span>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
		<!-- /Appointment Details Modal -->
	  
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