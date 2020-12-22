<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html> 
<html lang="en">
	<head>
		<meta charset="utf-8">
		<title>Doccure</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
		
		<!-- Favicons -->
		<link href="${pageContext.request.contextPath}/resources/img/favicon.png" rel="icon">
		
		<!-- Bootstrap CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/fontawesome/css/all.min.css">

		<!-- Select2 CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/plugins/select2/css/select2.min.css">
		
		<!-- Main CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/style.css">
		
		<!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
		<!--[if lt IE 9]>
			<script src="${pageContext.request.contextPath}/resources/js/html5shiv.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/js/respond.min.js"></script>
		<![endif]-->
	
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
									<li><a href="appointments">Appointments</a></li>
									<li><a href="schedule-timings">Schedule Timing</a></li>
									<li><a href="my-patients">Patients List</a></li>
									<li><a href="patient-profile">Patients Profile</a></li>
									<li><a href="chat-doctor">Chat</a></li>
									<li><a href="invoices">Invoices</a></li>
									<li><a href="doctor-profile-settings">Profile Settings</a></li>
									<li><a href="reviews">Reviews</a></li>
									<li><a href="doctor-register">Doctor Register</a></li>
									<li class="has-submenu active">
										<a href="doctor-blog">Blog</a>
										<ul class="submenu">
											<li class="active"><a href="doctor-blog">Blog</a></li>
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
									<li class="breadcrumb-item active" aria-current="page">Edit Blog</li>
								</ol>
							</nav>
							<h2 class="breadcrumb-title">Edit Blog</h2>
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
													<span>Dashboard</span>
												</a>
											</li>
											<li>
												<a href="appointments">
													<i class="fas fa-calendar-check"></i>
													<span>Appointments</span>
												</a>
											</li>
											<li>
												<a href="my-patients">
													<i class="fas fa-user-injured"></i>
													<span>My Patients</span>
												</a>
											</li>
											<li>
												<a href="schedule-timings">
													<i class="fas fa-hourglass-start"></i>
													<span>Schedule Timings</span>
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
													<span>Reviews</span>
												</a>
											</li>
											<li>
												<a href="chat-doctor">
													<i class="fas fa-comments"></i>
													<span>Message</span>
													<small class="unread-msg">23</small>
												</a>
											</li>
											<li>
												<a href="doctor-profile-settings">
													<i class="fas fa-user-cog"></i>
													<span>Profile Settings</span>
												</a>
											</li>
											<li>
												<a href="social-media">
													<i class="fas fa-share-alt"></i>
													<span>Social Media</span>
												</a>
											</li>
											<li>
												<a href="doctor-change-password">
													<i class="fas fa-lock"></i>
													<span>Change Password</span>
												</a>
											</li>
											<li>
												<a href="index">
													<i class="fas fa-sign-out-alt"></i>
													<span>Logout</span>
												</a>
											</li>
										</ul>
									</nav>
								</div>
							</div>
							<!-- /Profile Sidebar -->
							
						</div>
						<div class="col-md-7 col-lg-8 col-xl-9">
							<div class="doc-review review-listing custom-edit-service">

								<div class="row mb-5">
                                    <div class="col">
                                        <ul class="nav nav-tabs nav-tabs-solid">
                                            <li class="nav-item">
                                                <a class="nav-link" href="doctor-blog">Acitive Blog</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="doctor-pending-blog">Pending Blog</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-auto">
                                        <a class="btn btn-primary btn-sm" href="doctor-add-blog"><i class="fas fa-plus mr-1"></i> Add Blog</a>
                                    </div>
                                </div>
							
								<!-- Edit Blog -->
								<div class="card">
									<div class="card-body">	
										<h3 class="pb-3">Edit Blog</h3>
						
										<form method="post" enctype="multipart/form-data" autocomplete="off" id="update_service" action="doctor-blog">
											<input type="hidden" name="csrf_token_name" value="0146f123a4c7ae94253b39bca6bd5a5e">

											<div class="service-fields mb-3">
												<div class="row">
													<div class="col-lg-12">
														<div class="form-group">
															<label>Blog Title <span class="text-danger">*</span></label>
															<input type="hidden" name="service_id" id="service_id" value="18">
															<input class="form-control" type="text" name="service_title" id="service_title" value="Doccure – Making your clinic painless visit?" required="">
														</div>
													</div>
												</div>
											</div>
											
											<div class="service-fields mb-3">
												<div class="row">
													<div class="col-lg-6">
														<div class="form-group">
															<label>Category <span class="text-danger">*</span></label>
															<select class="form-control select" name="category" required=""> 
																<option value="1">Automobile</option>
																<option value="2" selected="selected">Construction</option>
																<option value="3">Interior</option>
																<option value="4">Cleaning</option>
																<option value="5">Electrical</option>
																<option value="6">Carpentry</option>
																<option value="7">Computer</option>
																<option value="8">Painting</option>
																<option value="9">Car Wash</option>
																<option value="10">Category Test</option>
																<option value="11">dfdf</option>
																<option value="12">Equipment</option>
																<option value="13">Test category1</option>
																<option value="14">Farming</option>
																<option value="15">Test Category02</option>
																<option value="16">Laundry</option>
															</select>
														</div>
													</div>
													<div class="col-lg-6">
														<div class="form-group">
															<label>Sub Category <span class="text-danger">*</span></label>
															<select class="form-control select" name="subcategory"> 
															<option value="5">Others</option>
															<option value="6">Others</option>
															<option value="7">Others</option>
															<option value="8">House cleaning</option>
															<option value="9">Others</option>
															<option value="10">Others</option>
															<option value="11">Others</option>
															<option value="12">Others</option>
															<option value="13">Full Car Wash</option>
															<option value="14" selected="selected">Testing category</option>
															<option value="15">Test Sub category</option>
															<option value="16">Harvesting pine</option>
															<option value="17">Test Sub category name</option>
															<option value="18">Test Sub category name</option>
														</select>
														</div>
													</div>
												</div>
											</div>
											
											<div class="service-fields mb-3">
												<div class="row">
													<div class="col-lg-12">
														<div class="form-group">
															<label>Descriptions <span class="text-danger">*</span></label>
															<textarea id="about" class="form-control service-desc" name="about">note.</textarea>
														</div>
													</div>
												</div>
											</div>
											
											<div class="service-fields mb-3">
												<div class="row">
													<div class="col-lg-12">
														<div class="service-upload">
															<i class="fas fa-cloud-upload-alt"></i>
															<span>Upload Blog Images *</span>
															<input type="file" name="images[]" id="images" multiple="" accept="image/jpeg, image/png, image/gif,">
														
														</div>	
														<div id="uploadPreview">
															<ul class="upload-wrap">
																<li>
																	<div class=" upload-images">
																		<img alt="Blog Image" src="${pageContext.request.contextPath}/resources/img/img-01.jpg">
																	</div>
																</li>
																<li>
																	<div class=" upload-images">
																		<img alt="Blog Image" src="${pageContext.request.contextPath}/resources/img/img-02.jpg">
																	</div>
																</li>
																<li>
																	<div class=" upload-images">
																		<img alt="Blog Image" src="${pageContext.request.contextPath}/resources/img/img-03.jpg">
																	</div>
																</li>
															</ul>
														</div>
														
													</div>
												</div>
											</div>
											<div class="service-fields mb-3">
												<div class="row">
													<div class="col-lg-12">
														<div class="form-group">
															<label>Video id <span class="text-danger">*</span></label>
															<input type="hidden" name="video_id" id="video_id" value="18">
															<input class="form-control" type="text" name="video_id" id="video_id" value="Rf34rhkWW1" required="">
														</div>
													</div>
												</div>
											</div>
											<div class="submit-section">
												<button class="btn btn-primary submit-btn" type="submit" name="form_submit" value="submit">Submit</button>
											</div>
										</form>

									</div>
								</div>
								<!-- /Edit Blog -->

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
										<img src="${pageContext.request.contextPath}/resources/img/footer-logo.png" alt="logo">
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
									<h2 class="footer-title">For Patients</h2>
									<ul>
										<li><a href="search">Search for Doctors</a></li>
										<li><a href="login">Login</a></li>
										<li><a href="register">Register</a></li>
										<li><a href="booking">Booking</a></li>
										<li><a href="patient-dashboard">Patient Dashboard</a></li>
									</ul>
								</div>
								<!-- /Footer Widget -->
								
							</div>
							
							<div class="col-lg-3 col-md-6">
							
								<!-- Footer Widget -->
								<div class="footer-widget footer-menu">
									<h2 class="footer-title">For Doctors</h2>
									<ul>
										<li><a href="appointments">Appointments</a></li>
										<li><a href="chat">Chat</a></li>
										<li><a href="login">Login</a></li>
										<li><a href="doctor-register">Register</a></li>
										<li><a href="doctor-dashboard">Doctor Dashboard</a></li>
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
								<!-- /Footer Widget -->
								
							</div>
							
						</div>
					</div>
				</div>
				<!-- /Footer Top -->
				
				<!-- Footer Bottom -->
                <div class="footer-bottom">
					<div class="container-fluid">
					
						<!-- Copyright -->
						<div class="copyright">
							<div class="row">
								<div class="col-md-6 col-lg-6">
									<div class="copyright-text">
										<p class="mb-0">&copy; 2020 Doccure. All rights reserved.</p>
									</div>
								</div>
								<div class="col-md-6 col-lg-6">
								
									<!-- Copyright Menu -->
									<div class="copyright-menu">
										<ul class="policy-menu">
											<li><a href="term-condition">Terms and Conditions</a></li>
											<li><a href="privacy-policy">Policy</a></li>
										</ul>
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

		<!-- Model -->
		<div class="modal fade" id="deleteConfirmModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="acc_title"></h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">
						<p id="acc_msg"></p>
					</div>
					<div class="modal-footer">
						<a href="javascript:;" class="btn btn-success si_accept_confirm">Yes</a>
						<button type="button" class="btn btn-danger si_accept_cancel" data-dismiss="modal">Cancel</button>
					</div>
				</div>
			</div>
		</div>
		<div class="modal fade" id="deleteNotConfirmModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" style="display: none;" aria-hidden="true">
			<div class="modal-dialog modal-dialog-centered">
				<div class="modal-content">
					<div class="modal-header">
						<h5 class="modal-title" id="acc_title">Active Service?</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">
						<p id="acc_msg">Service is Booked and Inprogress..</p>
					</div>
					<div class="modal-footer">
						
						<button type="button" class="btn btn-danger si_accept_cancel" data-dismiss="modal">OK</button>
					</div>
				</div>
			</div>
		</div>
		<!-- /Model -->
	  
		<!-- jQuery -->
		<script src="${pageContext.request.contextPath}/resources/js/jquery.min.js"></script>
		
		<!-- Bootstrap Core JS -->
		<script src="${pageContext.request.contextPath}/resources/js/popper.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>

		<!-- Select2 JS -->
		<script src="${pageContext.request.contextPath}/resources/plugins/select2/js/select2.min.js"></script>
		
		<!-- Sticky Sidebar JS -->
        <script src="${pageContext.request.contextPath}/resources/plugins/theia-sticky-sidebar/ResizeSensor.js"></script>
        <script src="${pageContext.request.contextPath}/resources/plugins/theia-sticky-sidebar/theia-sticky-sidebar.js"></script>
		
		<!-- Custom JS -->
		<script src="${pageContext.request.contextPath}/resources/js/script.js"></script>
		
	</body>
</html>