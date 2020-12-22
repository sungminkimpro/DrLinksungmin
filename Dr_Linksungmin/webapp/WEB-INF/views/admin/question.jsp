<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>질문게시판관리 - Dr.Link</title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/admin/img/favicon.png">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/font-awesome.min.css">
        <!-- Fontawesome CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/plugins/fontawesome/css/fontawesome.min.css">
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/plugins/fontawesome/css/all.min.css">
		
		<!-- Feathericon CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/feathericon.min.css">
		
		<!-- Datatables CSS -->
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/plugins/datatables/datatables.min.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/style.css">
		
		<!--[if lt IE 9]>
			<script src="${pageContext.request.contextPath}/resources/admin/js/html5shiv.min.js"></script>
			<script src="${pageContext.request.contextPath}/resources/admin/js/respond.min.js"></script>
		<![endif]-->
    </head>
    <body>
	
		<!-- Main Wrapper -->
        <div class="main-wrapper">
		
			<!-- Header -->
            <div class="header">
			
				<!-- Logo -->
                <div class="header-left">
                    <a href="index" class="logo">
						<img src="${pageContext.request.contextPath}/resources/img/logo.jpg" class="img-fluid" alt="Logo">
					</a>
                </div>
				<!-- /Logo -->
				
				<a href="javascript:void(0);" id="toggle_btn">
					<i class="fe fe-text-align-left"></i>
				</a>
				
				<div class="top-nav-search">
					<form>
						<input type="text" class="form-control" placeholder="Search here">
						<button class="btn" type="submit"><i class="fa fa-search"></i></button>
					</form>
				</div>
				
				<!-- Mobile Menu Toggle -->
				<a class="mobile_btn" id="mobile_btn">
					<i class="fa fa-bars"></i>
				</a>
				<!-- /Mobile Menu Toggle -->
				
				<!-- Header Right Menu -->
				<ul class="nav user-menu">

					<!-- Notifications -->
					<li class="nav-item dropdown noti-dropdown">
						<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
							<i class="fe fe-bell"></i> <span class="badge badge-pill">3</span>
						</a>
						<div class="dropdown-menu notifications">
							<div class="topnav-dropdown-header">
								<span class="notification-title">Notifications</span>
								<a href="javascript:void(0)" class="clear-noti"> Clear All </a>
							</div>
							<div class="noti-content">
								<ul class="notification-list">
									<li class="notification-message">
										<a href="#">
											<div class="media">
												<span class="avatar avatar-sm">
													<img class="avatar-img rounded-circle" alt="User Image" src="${pageContext.request.contextPath}/resources/admin/img/doctors/doctor-thumb-01.jpg">
												</span>
												<div class="media-body">
													<p class="noti-details"><span class="noti-title">Dr. Ruby Perrin</span> Schedule <span class="noti-title">her appointment</span></p>
													<p class="noti-time"><span class="notification-time">4 mins ago</span></p>
												</div>
											</div>
										</a>
									</li>
									<li class="notification-message">
										<a href="#">
											<div class="media">
												<span class="avatar avatar-sm">
													<img class="avatar-img rounded-circle" alt="User Image" src="${pageContext.request.contextPath}/resources/admin/img/patients/patient1.jpg">
												</span>
												<div class="media-body">
													<p class="noti-details"><span class="noti-title">Charlene Reed</span> has booked her appointment to <span class="noti-title">Dr. Ruby Perrin</span></p>
													<p class="noti-time"><span class="notification-time">6 mins ago</span></p>
												</div>
											</div>
										</a>
									</li>
									<li class="notification-message">
										<a href="#">
											<div class="media">
												<span class="avatar avatar-sm">
													<img class="avatar-img rounded-circle" alt="User Image" src="${pageContext.request.contextPath}/resources/admin/img/patients/patient2.jpg">
												</span>
												<div class="media-body">
												<p class="noti-details"><span class="noti-title">Travis Trimble</span> sent a amount of $210 for his <span class="noti-title">appointment</span></p>
												<p class="noti-time"><span class="notification-time">8 mins ago</span></p>
												</div>
											</div>
										</a>
									</li>
									<li class="notification-message">
										<a href="#">
											<div class="media">
												<span class="avatar avatar-sm">
													<img class="avatar-img rounded-circle" alt="User Image" src="${pageContext.request.contextPath}/resources/admin/img/patients/patient3.jpg">
												</span>
												<div class="media-body">
													<p class="noti-details"><span class="noti-title">Carl Kelly</span> send a message <span class="noti-title"> to his doctor</span></p>
													<p class="noti-time"><span class="notification-time">12 mins ago</span></p>
												</div>
											</div>
										</a>
									</li>
								</ul>
							</div>
							<div class="topnav-dropdown-footer">
								<a href="#">View all Notifications</a>
							</div>
						</div>
					</li>
					<!-- /Notifications -->
					
					<!-- User Menu -->
					<li class="nav-item dropdown has-arrow">
						<a href="#" class="dropdown-toggle nav-link" data-toggle="dropdown">
							<span class="user-img"><img class="rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-01.jpg" width="31" alt="Ryan Taylor"></span>
						</a>
						<div class="dropdown-menu">
							<div class="user-header">
								<div class="avatar avatar-sm">
									<img src="${pageContext.request.contextPath}/resources/admin/img/profiles/avatar-01.jpg" alt="User Image" class="avatar-img rounded-circle">
								</div>
								<div class="user-text">
									<h6>Ryan Taylor</h6>
									<p class="text-muted mb-0">Administrator</p>
								</div>
							</div>
							<a class="dropdown-item" href="profile">My Profile</a>
							<a class="dropdown-item" href="settings">Settings</a>
							<a class="dropdown-item" href="login">Logout</a>
						</div>
					</li>
					<!-- /User Menu -->
					
				</ul>
				<!-- /Header Right Menu -->
				
            </div>
			<!-- /Header -->
			
			<!-- Sidebar -->
            <div class="sidebar" id="sidebar">
                <div class="sidebar-inner slimscroll">
					<div id="sidebar-menu" class="sidebar-menu">
						<ul>
							<li class="menu-title"> 
								<span>Main</span>
							</li>
							<li> 
								<a href="index"><i class="fe fe-home"></i> <span>Dashboard</span></a>
							</li>
							<li> 
								<a href="appointment-list"><i class="fe fe-layout"></i> <span>Appointments</span></a>
							</li>
							<li> 
								<a href="specialities"><i class="fe fe-users"></i> <span>Specialities</span></a>
							</li>
							<li> 
								<a href="doctor-list"><i class="fe fe-user-plus"></i> <span>Doctors</span></a>
							</li>
							<li> 
								<a href="patient-list"><i class="fe fe-user"></i> <span>Patients</span></a>
							</li>
							<li> 
								<a href="reviews"><i class="fe fe-star-o"></i> <span>Reviews</span></a>
							</li>
							<li> 
								<a href="transactions-list"><i class="fe fe-activity"></i> <span>Transactions</span></a>
							</li>
							<li> 
								<a href="settings"><i class="fe fe-vector"></i> <span>Settings</span></a>
							</li>
							<li class="submenu">
								<a href="#"><i class="fe fe-document"></i> <span> Reports</span> <span class="menu-arrow"></span></a>
								<ul style="display: none;">
									<li><a href="invoice-report">Invoice Reports</a></li>
								</ul>
							</li>
							<li class="menu-title"> 
								<span>Pages</span>
							</li>
							<li class="submenu">
								<a href="#"><i class="fe fe-document"></i> <span> Blog </span> <span class="menu-arrow"></span></a>
								<ul style="display: none;">
									<li><a href="blog" class="active"> Blog </a></li>
									<li><a href="blog-details"> Blog Details</a></li>
									<li><a href="add-blog"> Add Blog </a></li>
									<li><a href="edit-blog"> Edit Blog </a></li>
								</ul>
							</li>
							<li><a href="product-list"><i class="fe fe-layout"></i> <span>Product List</span></a></li>
							<li><a href="pharmacy-list"><i class="fe fe-vector"></i> <span>Pharmacy List</span></a></li>
							<li> 
								<a href="profile"><i class="fe fe-user-plus"></i> <span>Profile</span></a>
							</li>
							<li class="submenu">
								<a href="#"><i class="fe fe-document"></i> <span> Authentication </span> <span class="menu-arrow"></span></a>
								<ul style="display: none;">
									<li><a href="login"> Login </a></li>
									<li><a href="register"> Register </a></li>
									<li><a href="forgot-password"> Forgot Password </a></li>
									<li><a href="lock-screen"> Lock Screen </a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="fe fe-warning"></i> <span> Error Pages </span> <span class="menu-arrow"></span></a>
								<ul style="display: none;">
									<li><a href="error-404">404 Error </a></li>
									<li><a href="error-500">500 Error </a></li>
								</ul>
							</li>
							<li> 
								<a href="blank-page"><i class="fe fe-file"></i> <span>Blank Page</span></a>
							</li>
							<li class="menu-title"> 
								<span>UI Interface</span>
							</li>
							<li> 
								<a href="components"><i class="fe fe-vector"></i> <span>Components</span></a>
							</li>
							<li class="submenu">
								<a href="#"><i class="fe fe-layout"></i> <span> Forms </span> <span class="menu-arrow"></span></a>
								<ul style="display: none;">
									<li><a href="form-basic-inputs">Basic Inputs </a></li>
									<li><a href="form-input-groups">Input Groups </a></li>
									<li><a href="form-horizontal">Horizontal Form </a></li>
									<li><a href="form-vertical"> Vertical Form </a></li>
									<li><a href="form-mask"> Form Mask </a></li>
									<li><a href="form-validation"> Form Validation </a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="#"><i class="fe fe-table"></i> <span> Tables </span> <span class="menu-arrow"></span></a>
								<ul style="display: none;">
									<li><a href="tables-basic">Basic Tables </a></li>
									<li><a href="data-tables">Data Table </a></li>
								</ul>
							</li>
							<li class="submenu">
								<a href="javascript:void(0);"><i class="fe fe-code"></i> <span>Multi Level</span> <span class="menu-arrow"></span></a>
								<ul style="display: none;">
									<li class="submenu">
										<a href="javascript:void(0);"> <span>Level 1</span> <span class="menu-arrow"></span></a>
										<ul style="display: none;">
											<li><a href="javascript:void(0);"><span>Level 2</span></a></li>
											<li class="submenu">
												<a href="javascript:void(0);"> <span> Level 2</span> <span class="menu-arrow"></span></a>
												<ul style="display: none;">
													<li><a href="javascript:void(0);">Level 3</a></li>
													<li><a href="javascript:void(0);">Level 3</a></li>
												</ul>
											</li>
											<li><a href="javascript:void(0);"> <span>Level 2</span></a></li>
										</ul>
									</li>
									<li>
										<a href="javascript:void(0);"> <span>Level 1</span></a>
									</li>
								</ul>
							</li>
						</ul>
					</div>
                </div>
            </div>
			<!-- /Sidebar -->
			
			<!-- Page Wrapper -->
            <div class="page-wrapper">
                <div class="content container-fluid">
				
					<!-- Page Header -->
					<div class="page-header">
						<div class="row">
							<div class="col-sm-12">
								<h3 class="page-title">게시판 관리</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index">Dashboard</a></li>
									<li class="breadcrumb-item"><a href="javascript:(0);">게시판</a></li>
									<li class="breadcrumb-item active">게시판 관리</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
					<div class="row">
						<div class="col-sm-12">
									
								<div class="row mb-5">
                                    <div class="col">
                                        <ul class="nav nav-tabs nav-tabs-solid">
                                           <li class="nav-item">
                                                <a class="nav-link active" href="notice">공지사항/병원소식</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link" href="health-info">건강정보</a>
                                            </li>
                                            <li class="nav-item">
                                                <a class="nav-link active" href="question">자주하는질문</a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="col-auto">
                                        <a class="btn btn-primary btn-sm" href="add-blog"><i class="fas fa-plus mr-1"></i> 게시글 추가</a>
                                    </div>
                                </div>
							
								<!-- Blog -->
								<div class="row blog-grid-row">

									<div class="col-md-6 col-xl-4 col-sm-12">
									
										<!-- Blog Post -->
										<div class="blog grid-blog">
											<div class="blog-image">
												<a href="#"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/admin/img/blog/blog-01.jpg" alt="Post Image"></a>
											</div>
											<div class="blog-content">
												<ul class="entry-meta meta-item">
													<li>
														<div class="post-author">
															<a href="profile"><img src="${pageContext.request.contextPath}/resources/admin/img/doctors/doctor-thumb-01.jpg" alt="Post Author"> <span>관리자</span></a>
														</div>
													</li>
													<li><i class="far fa-clock"></i> 2020-11-30</li>
												</ul>
												<h3 class="blog-title"><a href="#">원무 관련</a></h3>
												<p class="mb-0">수납 관련</p>
											</div>
											<div class="row pt-3">
												<div class="col"><a href="edit-blog" class="text-success"><i class="far fa-edit"></i> 수정</a></div>
																											
												<div class="col text-right"><a href="javascript:void(0);" class="text-danger" data-toggle="modal" data-target="#deleteNotConfirmModal"><i class="far fa-trash-alt"></i> 삭제</a></div>
											</div>
										</div>
										<!-- /Blog Post -->
										
									</div>
									<div class="col-md-6 col-xl-4 col-sm-12">
									
										<!-- Blog Post -->
										<div class="blog grid-blog">
											<div class="blog-image">
												<a href="#"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/admin/img/blog/blog-02.jpg" alt="Post Image"></a>
											</div>
											<div class="blog-content">
												<ul class="entry-meta meta-item">
													<li>
														<div class="post-author">
															<a href="profile"><img src="${pageContext.request.contextPath}/resources/admin/img/doctors/doctor-thumb-02.jpg" alt="Post Author"> <span>관리자</span></a>
														</div>
													</li>
													<li><i class="far fa-clock"></i> 2020-11-15</li>
												</ul>
												<h3 class="blog-title"><a href="#">진료 관련</a></h3>
												<p class="mb-0">진료 관련</p>
											</div>
											<div class="row pt-3">
												<div class="col"><a href="edit-blog" class="text-success"><i class="far fa-edit"></i> 수정</a></div>
																											
												<div class="col text-right"><a href="javascript:void(0);" class="text-danger" data-toggle="modal" data-target="#deleteNotConfirmModal"><i class="far fa-trash-alt"></i> 삭제</a></div>
											</div>
										</div>
										<!-- /Blog Post -->
										
									</div>
									<div class="col-md-6 col-xl-4 col-sm-12">
									
										<!-- Blog Post -->
										<div class="blog grid-blog">
											<div class="blog-image">
												<a href="#"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/admin/img/blog/blog-03.jpg" alt="Post Image"></a>
											</div>
											<div class="blog-content">
												<ul class="entry-meta meta-item">
													<li>
														<div class="post-author">
															<a href="profile"><img src="${pageContext.request.contextPath}/resources/admin/img/doctors/doctor-thumb-03.jpg" alt="Post Author"> <span>관리자</span></a>
														</div>
													</li>
													<li><i class="far fa-clock"></i> 2020-11-30</li>
												</ul>
												<h3 class="blog-title"><a href="#">홈페이지 이용</a></h3>
												<p class="mb-0">홈페이지 이용 관련</p>
											</div>
											<div class="row pt-3">
												<div class="col"><a href="edit-blog" class="text-success"><i class="far fa-edit"></i> 수정</a></div>
																											
												<div class="col text-right"><a href="javascript:void(0);" class="text-danger" data-toggle="modal" data-target="#deleteNotConfirmModal"><i class="far fa-trash-alt"></i> 삭제</a></div>
											</div>
										</div>
										<!-- /Blog Post -->
										
									</div>
									<div class="col-md-6 col-xl-4 col-sm-12">
									
										<!-- Blog Post -->
										<div class="blog grid-blog">
											<div class="blog-image">
												<a href="#"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/admin/img/blog/blog-04.jpg" alt="Post Image"></a>
											</div>
											<div class="blog-content">
												<ul class="entry-meta meta-item">
													<li>
														<div class="post-author">
															<a href="profile"><img src="${pageContext.request.contextPath}/resources/admin/img/doctors/doctor-thumb-04.jpg" alt="Post Author"> <span>Dr. Sofia Brient</span></a>
														</div>
													</li>
													<li><i class="far fa-clock"></i> 2020-11-30</li>
												</ul>
												<h3 class="blog-title"><a href="#">2020년 12월 병원 휴진 안내</a></h3>
												<p class="mb-0">병원 휴진 안내 사항</p>
											</div>
											<div class="row pt-3">
												<div class="col"><a href="edit-blog" class="text-success"><i class="far fa-edit"></i> 수정</a></div>
																											
												<div class="col text-right"><a href="javascript:void(0);" class="text-danger" data-toggle="modal" data-target="#deleteNotConfirmModal"><i class="far fa-trash-alt"></i> 삭제</a></div>
											</div>
										</div>
										<!-- /Blog Post -->
										
									</div>
									<div class="col-md-6 col-xl-4 col-sm-12">
									
										<!-- Blog Post -->
										<div class="blog grid-blog">
											<div class="blog-image">
												<a href="#"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/admin/img/blog/blog-05.jpg" alt="Post Image"></a>
											</div>
											<div class="blog-content">
												<ul class="entry-meta meta-item">
													<li>
														<div class="post-author">
															<a href="profile"><img src="${pageContext.request.contextPath}/resources/admin/img/doctors/doctor-thumb-05.jpg" alt="Post Author"> <span>관리자</span></a>
														</div>
													</li>
													<li><i class="far fa-clock"></i> 2020-11-30</li>
												</ul>
												<h3 class="blog-title"><a href="#">진료과 개설</a></h3>
												<p class="mb-0">병원 휴진 안내 사항</p>
											</div>
											<div class="row pt-3">
												<div class="col"><a href="edit-blog" class="text-success"><i class="far fa-edit"></i> 수정</a></div>
																											
												<div class="col text-right"><a href="javascript:void(0);" class="text-danger" data-toggle="modal" data-target="#deleteNotConfirmModal"><i class="far fa-trash-alt"></i> 삭제</a></div>
											</div>
										</div>
										<!-- /Blog Post -->
										
									</div>
									<div class="col-md-6 col-xl-4 col-sm-12">
									
										<!-- Blog Post -->
										<div class="blog grid-blog">
											<div class="blog-image">
												<a href="#"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/admin/img/blog/blog-06.jpg" alt="Post Image"></a>
											</div>
											<div class="blog-content">
												<ul class="entry-meta meta-item">
													<li>
														<div class="post-author">
															<a href="profile"><img src="${pageContext.request.contextPath}/resources/admin/img/doctors/doctor-thumb-06.jpg" alt="Post Author"> <span>관리자</span></a>
														</div>
													</li>
													<li><i class="far fa-clock"></i> 2020-11-30</li>
												</ul>
												<h3 class="blog-title"><a href="#">2020년 12월 병원 휴진 안내</a></h3>
												<p class="mb-0">병원 휴진 안내 사항</p>
											</div>
											<div class="row pt-3">
												<div class="col"><a href="edit-blog" class="text-success"><i class="far fa-edit"></i> 수정</a></div>
																											
												<div class="col text-right"><a href="javascript:void(0);" class="text-danger" data-toggle="modal" data-target="#deleteNotConfirmModal"><i class="far fa-trash-alt"></i> 삭제</a></div>
											</div>
										</div>
										<!-- /Blog Post -->
										
									</div>
									<div class="col-md-6 col-xl-4 col-sm-12">
									
										<!-- Blog Post -->
										<div class="blog grid-blog">
											<div class="blog-image">
												<a href="#"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/admin/img/blog/blog-07.jpg" alt="Post Image"></a>
											</div>
											<div class="blog-content">
												<ul class="entry-meta meta-item">
													<li>
														<div class="post-author">
															<a href="profile"><img src="${pageContext.request.contextPath}/resources/admin/img/doctors/doctor-thumb-07.jpg" alt="Post Author"> <span>Dr. Linda Tobin</span></a>
														</div>
													</li>
													<li><i class="far fa-clock"></i> 2020-11-30</li>
												</ul>
												<h3 class="blog-title"><a href="#">2020년 12월 병원 휴진 안내</a></h3>
												<p class="mb-0">병원 휴진 안내 사항</p>
											</div>
											<div class="row pt-3">
												<div class="col"><a href="edit-blog" class="text-success"><i class="far fa-edit"></i> 수정</a></div>
																											
												<div class="col text-right"><a href="javascript:void(0);" class="text-danger" data-toggle="modal" data-target="#deleteNotConfirmModal"><i class="far fa-trash-alt"></i> 삭제</a></div>
											</div>
										</div>
										<!-- /Blog Post -->
										
									</div>
									<div class="col-md-6 col-xl-4 col-sm-12">
									
										<!-- Blog Post -->
										<div class="blog grid-blog">
											<div class="blog-image">
												<a href="#"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/admin/img/blog/blog-08.jpg" alt="Post Image"></a>
											</div>
											<div class="blog-content">
												<ul class="entry-meta meta-item">
													<li>
														<div class="post-author">
															<a href="profile"><img src="${pageContext.request.contextPath}/resources/admin/img/doctors/doctor-thumb-08.jpg" alt="Post Author"> <span>Dr. Paul Richard </span></a>
														</div>
													</li>
													<li><i class="far fa-clock"></i> 25 Nov 2019</li>
												</ul>
												<h3 class="blog-title"><a href="#">Simple steps to visit your doctor today</a></h3>
												<p class="mb-0">Lorem ipsum dolor sit amet, consectetur em adipiscing elit, sed do eiusmod tempor.</p>
											</div>
											<div class="row pt-3">
												<div class="col"><a href="edit-blog" class="text-success"><i class="far fa-edit"></i> Edit</a></div>
																											
												<div class="col text-right"><a href="javascript:void(0);" class="text-danger" data-toggle="modal" data-target="#deleteNotConfirmModal"><i class="far fa-trash-alt"></i> Inactive</a></div>
											</div>
										</div>
										<!-- /Blog Post -->
										
									</div>
									<div class="col-md-6 col-xl-4 col-sm-12">
									
										<!-- Blog Post -->
										<div class="blog grid-blog">
											<div class="blog-image">
												<a href="#"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/admin/img/blog/blog-09.jpg" alt="Post Image"></a>
											</div>
											<div class="blog-content">
												<ul class="entry-meta meta-item">
													<li>
														<div class="post-author">
															<a href="profile"><img src="${pageContext.request.contextPath}/resources/admin/img/doctors/doctor-thumb-09.jpg" alt="Post Author"> <span>Dr. John Gibbs</span></a>
														</div>
													</li>
													<li><i class="far fa-clock"></i> 24 Nov 2019</li>
												</ul>
												<h3 class="blog-title"><a href="#">5 Great reasons to use an Online Doctor</a></h3>
												<p class="mb-0">Lorem ipsum dolor sit amet, consectetur em adipiscing elit, sed do eiusmod tempor.</p>
											</div>
											<div class="row pt-3">
												<div class="col"><a href="edit-blog" class="text-success"><i class="far fa-edit"></i> Edit</a></div>
																											
												<div class="col text-right"><a href="javascript:void(0);" class="text-danger" data-toggle="modal" data-target="#deleteNotConfirmModal"><i class="far fa-trash-alt"></i> Inactive</a></div>
											</div>
										</div>
										<!-- /Blog Post -->
										
									</div>
									<div class="col-md-6 col-xl-4 col-sm-12">
									
										<!-- Blog Post -->
										<div class="blog grid-blog">
											<div class="blog-image">
												<a href="#"><img class="img-fluid" src="${pageContext.request.contextPath}/resources/admin/img/blog/blog-10.jpg" alt="Post Image"></a>
											</div>
											<div class="blog-content">
												<ul class="entry-meta meta-item">
													<li>
														<div class="post-author">
															<a href="profile"><img src="${pageContext.request.contextPath}/resources/admin/img/doctors/doctor-thumb-10.jpg" alt="Post Author"> <span>Dr. Olga Barlow</span></a>
														</div>
													</li>
													<li><i class="far fa-clock"></i> 23 Nov 2019</li>
												</ul>
												<h3 class="blog-title"><a href="#">Online Doctoral Programs</a></h3>
												<p class="mb-0">Lorem ipsum dolor sit amet, consectetur em adipiscing elit, sed do eiusmod tempor.</p>
											</div>
											<div class="row pt-3">
												<div class="col"><a href="edit-blog" class="text-success"><i class="far fa-edit"></i> Edit</a></div>
																											
												<div class="col text-right"><a href="javascript:void(0);" class="text-danger" data-toggle="modal" data-target="#deleteNotConfirmModal"><i class="far fa-trash-alt"></i> Inactive</a></div>
											</div>
										</div>
										<!-- /Blog Post -->
										
									</div>
								</div>
							
								<!-- Blog Pagination -->
								<div class="row">
									<div class="col-md-12">
										<div class="blog-pagination">
											<nav>
												<ul class="pagination justify-content-center">
													<li class="page-item disabled">
														<a class="page-link" href="#" tabindex="-1"><i class="fas fa-angle-double-left"></i></a>
													</li>
													<li class="page-item">
														<a class="page-link" href="#">1</a>
													</li>
													<li class="page-item active">
														<a class="page-link" href="#">2 <span class="sr-only">(current)</span></a>
													</li>
													<li class="page-item">
														<a class="page-link" href="#">3</a>
													</li>
													<li class="page-item">
														<a class="page-link" href="#"><i class="fas fa-angle-double-right"></i></a>
													</li>
												</ul>
											</nav>
										</div>
									</div>
								</div>
								<!-- /Blog Pagination -->
								<!-- /Blog -->
						</div>			
					</div>
					
				</div>			
			</div>
			<!-- /Page Wrapper -->
		
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
						<h5 class="modal-title" id="acc_title">삭제하시겠습니까?</h5>
						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
							<span aria-hidden="true">×</span>
						</button>
					</div>
					<div class="modal-body">
						<p id="acc_msg">글을 삭제하시면 다시 복구할 수 없습니다</p>
					</div>
					<div class="modal-footer">
						
						<button type="button" class="btn btn-danger si_accept_cancel" data-dismiss="modal">OK</button>
					</div>
				</div>
			</div>
		</div>
		<!-- /Model -->
		
		<!-- jQuery -->
        <script src="${pageContext.request.contextPath}/resources/admin/js/jquery-3.2.1.min.js"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="${pageContext.request.contextPath}/resources/admin/js/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/admin/js/bootstrap.min.js"></script>
		
		<!-- Slimscroll JS -->
        <script src="${pageContext.request.contextPath}/resources/admin/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		
		<!-- Datatables JS -->
		<script src="${pageContext.request.contextPath}/resources/admin/plugins/datatables/jquery.dataTables.min.js"></script>
		<script src="${pageContext.request.contextPath}/resources/admin/plugins/datatables/datatables.min.js"></script>
		
		<!-- Custom JS -->
		<script  src="${pageContext.request.contextPath}/resources/admin/js/script.js"></script>
		
    </body>
</html>