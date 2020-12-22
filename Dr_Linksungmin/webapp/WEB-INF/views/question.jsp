<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1.0, user-scalable=0">
<title>자주 묻는 질문 - Dr.Link</title>

<!-- Favicons -->
<link type="image/x-icon" href="resources/img/favicon.png" rel="icon">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="resources/css/bootstrap.min.css">

<!-- Fontawesome CSS -->
<link rel="stylesheet"
	href="resources/plugins/fontawesome/css/fontawesome.min.css">
<link rel="stylesheet"
	href="resources/plugins/fontawesome/css/all.min.css">


<!-- Main CSS -->
<link rel="stylesheet" href="resources/css/style.css">


<!-- 구글폰트 -->
<link
	href="https://fonts.googleapis.com/css?family=Nanum+Gothic:400,700,800&amp;subset=korean"
	rel="stylesheet">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link
	href="https://fonts.googleapis.com/css2?family=Major+Mono+Display&display=swap"
	rel="stylesheet">

<style>
body {
	font-family: "Nanum Gothic", sans-serif;
}

#header-wrapper {
	background-image:
		url("${pageContext.request.contextPath}/resorces/img/banner.jpg");
	background-size: cover;
}

@media all and (min-width: 992px) {
	.navbar .nav-item .dropdown-menu {
		display: none;
	}
	.navbar .nav-item:hover .nav-link {
		color: black;
	}
	.navbar .nav-item:hover .dropdown-menu {
		display: block;
	}
	.navbar .nav-item .dropdown-menu {
		margin-top: 0;
	}
}

#drlink {
	font-family: 'Major Mono Display', monospace;
	margin-right: 20px;
}

ul .bxslider {
	width: auto !important;
}

#bxslider {
	width: auto !important;
}

ul .pagination{
	position: absolute;
	left: 50%;
}
</style>
<script>
	function selChange() {
		var sel = document.getElementById('cntPerPage').value;
		location.href = "boardList?nowPage=${paging.nowPage}&cntPerPage=" + sel;
	}
</script>
</head>
<body>

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
		<!-- Breadcrumb -->
		<div class="breadcrumb-bar">
			<div class="container-fluid">
				<div class="row align-items-center">
					<div class="col-md-12 col-12">
						<nav aria-label="breadcrumb" class="page-breadcrumb">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="index">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">공지사항</li>
							</ol>
						</nav>
						<h2 class="breadcrumb-title">공지사항</h2>
					</div>
				</div>
			</div>
		</div>
		<!-- /Breadcrumb -->
		
		        <div class="box-body">
            <table class="table table-bordered">
                <tbody>
                <tr>
                    <th style="width: 30px">#</th>
                    <th>제목</th>
                    <th style="width: 100px">작성자</th>
                    <th style="width: 150px">작성시간</th>
                    <th style="width: 60px">조회</th>
                </tr>
                <c:forEach items="${articles}" var="article">
                <tr>
                    <td>${article.articleNo}</td>
                    <td><a href="${path}/article/read?articleNo=${article.articleNo}">${article.title}</a></td>
                    <td>${article.writer}</td>
                    <td><fmt:formatDate value="${article.regDate}" pattern="yyyy-MM-dd a HH:mm"/></td>
                    <td><span class="badge bg-red">${article.viewCnt}</span></td>
                </tr>
                </c:forEach>
                </tbody>
            </table>
        </div>
        
        
        
	
		<!-- FAQ Table -->	
		<div class="container" style="max-width: 1400px;">
			<div class="container-fluid">
				<h2>자주 묻는 질문</h2>
			</div>
			<div class="col-md-12">
				<section class="section section-specialities">			
					<ul class="list-inline">		
						<li><img src="${pageContext.request.contextPath}/resources/img/search-bg.png"
							style="position: absolute; top:0; left: 0;
							width: 100%;
							height: 100%;">
						</li>
					</ul>
				</section>
			</div>
			<div class="accordion" id="accordionExample">
				<div class="card" style="margin-bottom: 0rem;">
					<div class="card-header" id="headingOne">
						<h5 class="mb-0">
						  <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
						    	${article.title}
						  </button>
						</h5>
					</div>
				
				   <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
				     <div class="card-body">
				       인터넷상으로 진료예약 후 변경, 취소가 되는지요? 
				     </div>
				   </div>
				</div>
				<div class="card" style="margin-bottom: 0rem;">
				   <div class="card-header" id="headingTwo">
				     <h5 class="mb-0">
				       <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
				       	 진료관련
				       </button>
				     </h5>
				</div>
				    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
						<div class="card-body">
						  Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
						</div>
				    </div>
				</div>
				<div class="card" style="margin-bottom: 0rem;">
				    <div class="card-header" id="headingThree">
				      <h5 class="mb-0">
				        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
				         	 병원관련
				        </button>
				      </h5>
				    </div>
				    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
				      <div class="card-body">
				        Anim pariatur cliche reprehenderit, enim eiusmod high life accusamus terry richardson ad squid. 3 wolf moon officia aute, non cupidatat skateboard dolor brunch. Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon tempor, sunt aliqua put a bird on it squid single-origin coffee nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica, craft beer labore wes anderson cred nesciunt sapiente ea proident. Ad vegan excepteur butcher vice lomo. Leggings occaecat craft beer farm-to-table, raw denim aesthetic synth nesciunt you probably haven't heard of them accusamus labore sustainable VHS.
				     </div>
					</div>
				</div>
			</div>
		</div>
		<!-- /FAQ Table -->

		<div class="row">
			<div class="col-sm-12 col-md-7">
				<div class="dataTables_paginate paging_simple_numbers" id="DataTables_Table_0_paginate">
					<ul class="pagination">
						<li class="paginate_button page-item previous disabled" id="DataTables_Table_0_previous">
							<a href="#" aria-controls="DataTables_Table_0" data-dt-idx="0" tabindex="0" class="page-link">Previous</a>
						</li>
						<li class="paginate_button page-item active">
							<a href="#" aria-controls="DataTables_Table_0" data-dt-idx="1" tabindex="0" class="page-link">1</a>
						</li>
						<li class="paginate_button page-item ">
							<a href="#" aria-controls="DataTables_Table_0" data-dt-idx="2" tabindex="0" class="page-link">2</a>
						</li>
						<li class="paginate_button page-item ">
							<a href="#" aria-controls="DataTables_Table_0" data-dt-idx="3" tabindex="0" class="page-link">3</a>
						</li>
						<li class="paginate_button page-item next" id="DataTables_Table_0_next">
							<a href="#" aria-controls="DataTables_Table_0" data-dt-idx="4" tabindex="0" class="page-link">Next</a>
						</li>
					</ul>
				</div>
			</div>
		</div>



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

	<!-- Slick JS -->
	<script src="resources/js/slick.js"></script>

	<!-- Custom JS -->
	<script src="resources/js/script.js"></script>

</body>
</html>