<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0">
        <title>관리자게시판상세 - Dr.Link</title>
		
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
									<li><a href="blog"> Blog </a></li>
									<li><a href="blog-details" class="active"> Blog Details</a></li>
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
								<h3 class="page-title">게시판 상세</h3>
								<ul class="breadcrumb">
									<li class="breadcrumb-item"><a href="index">Dashboard</a></li>
									<li class="breadcrumb-item"><a href="javascript:(0);">게시판</a></li>
									<li class="breadcrumb-item active">게시판 상세</li>
								</ul>
							</div>
						</div>
					</div>
					<!-- /Page Header -->
					
					<div class="row">
						<div class="col-sm-12">
									
							
								<!-- Blog Details-->
								<div class="blog-view">
								<div class="blog blog-single-post">
									<div class="blog-image">
										<a href="javascript:void(0);"><img alt="" src="${pageContext.request.contextPath}/resources/admin/img/blog/blog-01.jpg" class="img-fluid"></a>
									</div>
									<h3 class="blog-title">정신건강의학과 관련 메디컬 칼럼</h3>
									<div class="blog-info clearfix">
										<div class="post-left">
											<ul>
												<li>
													<div class="post-author">
														<a href="doctor-profile"><img src="${pageContext.request.contextPath}/resources/admin/img/doctors/doctor-thumb-02.jpg" alt="Post Author"> <span>김성민 의사</span></a>
													</div>
												</li>
												<li><i class="far fa-calendar"></i>2020-12-04</li>
												<li><i class="far fa-comments"></i>댓글 12개</li>
												<li><i class="fa fa-tags"></i>건강정보</li>
											</ul>
										</div>
									</div>
									<div class="blog-content">
										<p>건강 건강 건강, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
										<p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?</p>
										<p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat.</p>
									</div>
								</div>
								
								<div class="card blog-share clearfix">
									<div class="card-header">
										<h4 class="card-title">게시글 공유하기</h4>
									</div>
									<div class="card-body">
										<ul class="social-share">
											<li><a href="#" title="Facebook"><i class="fab fa-facebook"></i></a></li>
											<li><a href="#" title="Twitter"><i class="fab fa-twitter"></i></a></li>
											<li><a href="#" title="Linkedin"><i class="fab fa-linkedin"></i></a></li>
											<li><a href="#" title="Google Plus"><i class="fab fa-google-plus"></i></a></li>
											<li><a href="#" title="Youtube"><i class="fab fa-youtube"></i></a></li>
										</ul>
									</div>
								</div>
								<div class="card author-widget clearfix">
								<div class="card-header">
									<h4 class="card-title">저자 소개</h4>
									</div>
								<div class="card-body">
									<div class="about-author">
										<div class="about-author-img">
											<div class="author-img-wrap">
												<a href="doctor-profile"><img class="img-fluid rounded-circle" alt="" src="${pageContext.request.contextPath}/resources/admin/img/doctors/doctor-thumb-02.jpg"></a>
											</div>
										</div>
										<div class="author-details">
											<a href="doctor-profile" class="blog-author-name">김성민 의사</a>
											<p class="mb-0">정신건강의학과 전문의</p>
										</div>
									</div>
								</div>
								</div>
								<div class="card blog-comments clearfix">
									<div class="card-header">
										<h4 class="card-title">댓글 (12)</h4>
									</div>
									<div class="card-body pb-0">
									<ul class="comments-list">
										<li>
											<div class="comment">
												<div class="comment-author">
													<img class="avatar" alt="" src="${pageContext.request.contextPath}/resources/admin/img/patients/patient4.jpg">
												</div>
												<div class="comment-block">
													<span class="comment-by">
														<span class="blog-author-name">홍길동</span>
													</span>
													<p>잘 읽고 갑니다.</p>
													<p class="blog-date">2020-12-07</p>
													<a class="comment-btn" href="#">
														<i class="fas fa-reply"></i> 댓글달기
													</a>
												</div>
											</div>
											<ul class="comments-list reply">
												<li>
													<div class="comment">
														<div class="comment-author">
															<img class="avatar" alt="" src="${pageContext.request.contextPath}/resources/admin/img/patients/patient5.jpg">
														</div>
														<div class="comment-block">
															<span class="comment-by">
																<span class="blog-author-name">김길동</span>
															</span>
															<p> 저두요.</p>
															<p class="blog-date">2020-12-07</p>
													<a class="comment-btn" href="#">
														<i class="fas fa-reply"></i> 댓글달기
													</a>
														</div>
													</div>
												</li>
												<li>
													<div class="comment">
														<div class="comment-author">
															<img class="avatar" alt="" src="${pageContext.request.contextPath}/resources/admin/img/patients/patient3.jpg">
														</div>
														<div class="comment-block">
															<span class="comment-by">
																<span class="blog-author-name">박길동</span>
															</span>
															<p>보충 설명이 필요합니다.</p>
															<p class="blog-date">2020-12-10</p>
													<a class="comment-btn" href="#">
														<i class="fas fa-reply"></i> 댓글달기
													</a>
														</div>
													</div>
												</li>
											</ul>
										</li>
										<li>
											<div class="comment">
												<div class="comment-author">
													<img class="avatar" alt="" src="${pageContext.request.contextPath}/resources/admin/img/patients/patient6.jpg">
												</div>
												<div class="comment-block">
													<span class="comment-by">
														<span class="blog-author-name">Elsie Gilley</span>
													</span>
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
													<p class="blog-date">December 11, 2017</p>
												</div>
											</div>
										</li>
										<li>
											<div class="comment">
												<div class="comment-author">
													<img class="avatar" alt="" src="${pageContext.request.contextPath}/resources/admin/img/patients/patient7.jpg">
												</div>
												<div class="comment-block">
													<span class="comment-by">
														<span class="blog-author-name">Joan Gardner</span>
													</span>
													<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.</p>
													<p class="blog-date">December 13, 2017</p>
													<a class="comment-btn" href="#">
														<i class="fas fa-reply"></i> Reply
													</a>
												</div>
											</div>
										</li>
									</ul>
								</div>
								</div>
								
								<div class="card new-comment clearfix">
									<div class="card-header">
										<h4 class="card-title">댓글 남기기</h4>
									</div>
									<div class="card-body">
										<form>
											<div class="form-group">
												<label>이름 <span class="text-danger">*</span></label>
												<input type="text" class="form-control">
											</div>
											<div class="form-group">
												<label>비밀번호 <span class="text-danger">*</span></label>
												<input type="password" class="form-control">
											</div>
											<div class="form-group">
												<label>내용</label>
												<textarea rows="4" class="form-control"></textarea>
											</div>
											<div class="submit-section">
												<button class="btn btn-primary submit-btn" type="submit">제출</button>
											</div>
										</form>
									</div>
								</div>
								
							</div>
								<!-- /Blog Details-->
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
						<h5 class="modal-title" id="acc_title">Inactive Service?</h5>
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