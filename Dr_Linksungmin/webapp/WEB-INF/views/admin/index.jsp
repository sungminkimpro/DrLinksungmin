<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>관리자페이지 - Dr.Link</title>
		
		<!-- Favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="${pageContext.request.contextPath}/resources/admin/img/favicon.png">
		
		<!-- Bootstrap CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/bootstrap.min.css">
		
		<!-- Fontawesome CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/font-awesome.min.css">
		
		<!-- Feathericon CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/feathericon.min.css">
		
		<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/plugins/morris/morris.css">
		
		<!-- Main CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/admin/css/style.css">
		
	<!-- 구글폰트 -->
<link href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean" rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Major+Mono+Display&display=swap" rel="stylesheet">

<style>
body {
    font-family: "Nanum Gothic", sans-serif;
}
	
</style>
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
							<li class="active"> 
								<a href="index"><i class="fe fe-home"></i> <span>Admin_Home</span></a>
							</li>
							<li> 
								<a href="appointment-list"><i class="fe fe-layout"></i> <span>예약현황</span></a>
							</li>
							<li> 
								<a href="specialities"><i class="fe fe-users"></i> <span>진료과목</span></a>
							</li>
							<li> 
								<a href="doctor-list"><i class="fe fe-user-plus"></i> <span>의사관리</span></a>
							</li>
							<li> 
								<a href="patient-list"><i class="fe fe-user"></i> <span>환자관리</span></a>
							</li>
							<li> 
								<a href="reviews"><i class="fe fe-star-o"></i> <span>후기관리</span></a>
							</li>
							<li> 
								<a href="transactions-list"><i class="fe fe-activity"></i> <span>결제관리</span></a>
							</li>
							<li class="submenu">
								<a><i class="fe fe-document"></i> <span> 게시판관리 </span> <span class="menu-arrow"></span></a>
								<ul style="display: none;">
									<li><a href="notice"> 공지사항 </a></li>
									<li><a href="question"> FAQ</a></li>
									<li><a href="health-info"> 건강소식 게시판 </a></li>
								</ul>
							</li>
							<li> 
								<a href="settings"><i class="fe fe-vector"></i> <span>Settings</span></a>
							</li>
							<li> 
								<a href="profile"><i class="fe fe-user-plus"></i> <span>계정 관리</span></a>
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
								<h3 class="page-title">관리자님 환영합니다!</h3>
							</div>
						</div>
					</div>
					<!-- /Page Header -->

					<div class="row">
						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card">
								<div class="card-body">
									<div class="dash-widget-header">
										<span class="dash-widget-icon text-primary border-primary">
											<i class="fe fe-users"></i>
										</span>
										<div class="dash-count">
											<h3>168</h3>
										</div>
									</div>
									<div class="dash-widget-info">
										<h6 class="text-muted">의사</h6>
										<div class="progress progress-sm">
											<div class="progress-bar bg-primary w-50"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card">
								<div class="card-body">
									<div class="dash-widget-header">
										<span class="dash-widget-icon text-success">
											<i class="fe fe-credit-card"></i>
										</span>
										<div class="dash-count">
											<h3>487</h3>
										</div>
									</div>
									<div class="dash-widget-info">
										
										<h6 class="text-muted">환자</h6>
										<div class="progress progress-sm">
											<div class="progress-bar bg-success w-50"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card">
								<div class="card-body">
									<div class="dash-widget-header">
										<span class="dash-widget-icon text-danger border-danger">
											<i class="fe fe-money"></i>
										</span>
										<div class="dash-count">
											<h3>￦62523</h3>
										</div>
									</div>
									<div class="dash-widget-info">
										
										<h6 class="text-muted">수익</h6>
										<div class="progress progress-sm">
											<div class="progress-bar bg-danger w-50"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="col-xl-3 col-sm-6 col-12">
							<div class="card">
								<div class="card-body">
									<div class="dash-widget-header">
										<span class="dash-widget-icon text-warning border-warning">
											<i class="fe fe-folder"></i>
										</span>
										<div class="dash-count">
											<h3>485</h3>
										</div>
									</div>
									<div class="dash-widget-info">
										
										<h6 class="text-muted">예약</h6>
										<div class="progress progress-sm">
											<div class="progress-bar bg-warning w-50"></div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					
					
						<!-- Recent Orders -->
							<div class="card card-table">
								<div class="card-header">
									<h4 class="card-title">예약 목록</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-hover table-center mb-0">
											<thead>
												<tr>
													<th>의사명</th>
													<th>과목</th>
													<th>환자명</th>
													<th>예약시간</th>
													<th>상태</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>
														<h2 class="table-avatar">
															<a href="profile" class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/doctors/doctor-thumb-01.jpg" alt="User Image"></a>
															<a href="profile">김길동</a>
														</h2>
													</td>
													<td>안과</td>
													<td>
														<h2 class="table-avatar">
															<a href="profile" class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/patients/patient1.jpg" alt="User Image"></a>
															<a href="profile">홍길동</a>
														</h2>
													</td>
													<td>2020.11.09 <span class="text-primary d-block">11.00 AM - 11.15 AM</span></td>
													<td>
														<div class="status-toggle">
															<input type="checkbox" id="status_1" class="check" checked>
															<label for="status_1" class="checktoggle">checkbox</label>
														</div>
													</td>
												</tr>
												
												<tr>
													<td>
														<h2 class="table-avatar">
															<a href="profile" class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/doctors/doctor-thumb-05.jpg" alt="User Image"></a>
															<a href="profile">이길동</a>
														</h2>
													</td>
													<td>피부과</td>
													<td>
														<h2 class="table-avatar">
															<a href="profile" class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/patients/patient5.jpg" alt="User Image"></a>
															<a href="profile">정길동</a>
														</h2>
													</td>
													
													<td>2020.11.20<span class="text-primary d-block">1.00 PM - 1.15 PM</span></td>
													<td>
														<div class="status-toggle">
															<input type="checkbox" id="status_5" class="check" checked>
															<label for="status_5" class="checktoggle">checkbox</label>
														</div>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- /Recent Orders -->
					
					<div class="row">
						<div class="col-md-12 col-lg-6">
						
							<!-- Sales Chart -->
							<div class="card card-chart">
								<div class="card-header">
									<h4 class="card-title">수익</h4>
								</div>
								<div class="card-body">
									<div id="morrisArea"></div>
								</div>
							</div>
							<!-- /Sales Chart -->
							
						</div>
						<div class="col-md-12 col-lg-6">
						
							<!-- Invoice Chart -->
							<div class="card card-chart">
								<div class="card-header">
									<h4 class="card-title">고객 현황</h4>
								</div>
								<div class="card-body">
									<div id="morrisLine"></div>
								</div>
							</div>
							<!-- /Invoice Chart -->
							
						</div>	
					</div>
					<div class="row">
						<div class="col-md-6 d-flex">
						
							<!-- Recent Orders -->
							<div class="card card-table flex-fill">
								<div class="card-header">
									<h4 class="card-title">의사 목록</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-hover table-center mb-0">
											<thead>
												<tr>
													<th>의사명</th>
													<th>진료과목</th>
													<th>월 예약건수</th>
													<th>평점</th>
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>
														<h2 class="table-avatar">
															<a href="profile" class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/doctors/doctor-thumb-01.jpg" alt="User Image"></a>
															<a href="profile">Dr. Ruby Perrin</a>
														</h2>
													</td>
													<td>Dental</td>
													<td>211</td>
													<td>
														<i class="fe fe-star text-warning"></i>
														<i class="fe fe-star text-warning"></i>
														<i class="fe fe-star text-warning"></i>
														<i class="fe fe-star text-warning"></i>
														<i class="fe fe-star-o text-secondary"></i>
													</td>
												</tr>
												<tr>
													<td>
														<h2 class="table-avatar">
															<a href="profile" class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/doctors/doctor-thumb-02.jpg" alt="User Image"></a>
															<a href="profile">Dr. Darren Elder</a>
														</h2>
													</td>
													<td>Dental</td>
													<td>211</td>
													<td>
														<i class="fe fe-star text-warning"></i>
														<i class="fe fe-star text-warning"></i>
														<i class="fe fe-star text-warning"></i>
														<i class="fe fe-star text-warning"></i>
														<i class="fe fe-star-o text-secondary"></i>
													</td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- /Recent Orders -->
							
						</div>
						<div class="col-md-6 d-flex">
						
							<!-- Feed Activity -->
							<div class="card  card-table flex-fill">
								<div class="card-header">
									<h4 class="card-title">환자 목록</h4>
								</div>
								<div class="card-body">
									<div class="table-responsive">
										<table class="table table-hover table-center mb-0">
											<thead>
												<tr>													
													<th>환자명</th>
													<th>연락처</th>
													<th>마지막 방문일</th>
													<th>결제금액</th>													
												</tr>
											</thead>
											<tbody>
												<tr>
													<td>
														<h2 class="table-avatar">
															<a href="profile" class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/patients/patient1.jpg" alt="User Image"></a>
															<a href="profile">Charlene Reed </a>
														</h2>
													</td>
													<td>8286329170</td>
													<td>20 Oct 2019</td>
													<td class="text-right">$100.00</td>
												</tr>
												<tr>
													<td>
														<h2 class="table-avatar">
															<a href="profile" class="avatar avatar-sm mr-2"><img class="avatar-img rounded-circle" src="${pageContext.request.contextPath}/resources/admin/img/patients/patient2.jpg" alt="User Image"></a>
															<a href="profile">Travis Trimble </a>
														</h2>
													</td>
													<td>2077299974</td>
													<td>22 Oct 2019</td>
													<td class="text-right">$200.00</td>
												</tr>
												
											</tbody>
										</table>
									</div>
								</div>
							</div>
							<!-- /Feed Activity -->
							
						</div>
					</div>
					<div class="row">
						<div class="col-md-12">
						
						
							
						</div>
					</div>
					
				</div>			
			</div>
			<!-- /Page Wrapper -->
		
        </div>
		<!-- /Main Wrapper -->
		
		<!-- jQuery -->
        <script src="${pageContext.request.contextPath}/resources/admin/js/jquery-3.2.1.min.js"></script>
		
		<!-- Bootstrap Core JS -->
        <script src="${pageContext.request.contextPath}/resources/admin/js/popper.min.js"></script>
        <script src="${pageContext.request.contextPath}/resources/admin/js/bootstrap.min.js"></script>
		
		<!-- Slimscroll JS -->
        <script src="${pageContext.request.contextPath}/resources/admin/plugins/slimscroll/jquery.slimscroll.min.js"></script>
		
		<script src="${pageContext.request.contextPath}/resources/admin/plugins/raphael/raphael.min.js"></script>    
		<script src="${pageContext.request.contextPath}/resources/admin/plugins/morris/morris.min.js"></script>  
		<script src="${pageContext.request.contextPath}/resources/admin/js/chart.morris.js"></script>
		
		<!-- Custom JS -->
		<script  src="${pageContext.request.contextPath}/resources/admin/js/script.js"></script>
		
    </body>
</html>