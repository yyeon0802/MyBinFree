<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html lang="en">
<head>
<!-- Required meta tags -->
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="keywords"
	content="Bootstrap, Landing page, Template, Registration, Landing">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1">
<meta name="author" content="Grayrids">
<title>Bin-Free Homepage</title>

<style type="text/css">
/* Table css start*/
.data-table {
	border: 1px solid #E5E5E5;
	border-spacing: 0;
	text-align: left;
	width: 100%;
	font-size: 14px;
}

.data-table thead tr, .data-table tfoot tr {
	background-color: #f5f5f5;
}

.data-table thead th:first-child {
	background-color: #f5f5f5;
	border-radius: 3px 0px 0 3px;
}

.data-table thead th {
	background-color: #f5f5f5;
	color: #333;
}

.data-table th {
	line-height: 20px;
	padding: 10px;
	font-weight: 600;
	font-size: 14px;
	text-transform: uppercase;
}

.data-table td {
	line-height: 20px;
	padding: 10px;
	vertical-align: top;
}

.data-table p {
	text-align: center
}

.data-table thead td, .data-table tfoot th, .data-table tfoot td, .cart .totals table th,
	.cart .totals table td {
	border-bottom: 1px solid #e5e5e5;
}

.cart-table .btn-update, .cart-table .btn-empty {
	float: right;
	margin-left: 8px;
}

.data-table tbody th, .data-table tbody td {
	border-right: 0px solid #eaeaea;
	border-bottom: 1px solid #eaeaea;
	padding: 10px 10px 6px;
}

.shopping-cart-table-total td {
	border: none;
}
/*---------- Table css end ---------- */
.bs-wizard {
	margin-top: 40px;
}

/*Form Wizard*/
.bs-wizard {
	border-bottom: solid 0px #e0e0e0;
	padding: 0 0 10px 0;
}

.bs-wizard>.bs-wizard-step {
	padding: 0;
	position: relative;
}

.bs-wizard>.bs-wizard-step+.bs-wizard-step {
	
}

.bs-wizard>.bs-wizard-step .bs-wizard-stepnum {
	color: #595959;
	font-size: 16px;
	margin-bottom: 5px;
}

.bs-wizard>.bs-wizard-step .bs-wizard-info {
	color: #999;
	font-size: 14px;
}

.bs-wizard>.bs-wizard-step>.bs-wizard-dot {
	position: absolute;
	width: 30px;
	height: 30px;
	display: block;
	background: #1abc9c;
	top: 45px;
	left: 50%;
	margin-top: -15px;
	margin-left: -15px;
	border-radius: 50%;
}

.bs-wizard>.bs-wizard-step>.bs-wizard-dot:after {
	content: ' ';
	width: 14px;
	height: 14px;
	background: #fbbd19;
	border-radius: 50px;
	position: absolute;
	top: 8px;
	left: 8px;
}

.bs-wizard>.bs-wizard-step>.progress {
	position: relative;
	border-radius: 0px;
	height: 8px;
	box-shadow: none;
	margin: 20px 0;
}

.bs-wizard>.bs-wizard-step>.progress>.progress-bar {
	width: 0px;
	box-shadow: none;
	background: #1abc9c;
}

.bs-wizard>.bs-wizard-step.complete>.progress>.progress-bar {
	width: 100%;
}

.bs-wizard>.bs-wizard-step.active>.progress>.progress-bar {
	width: 50%;
}

.bs-wizard>.bs-wizard-step:first-child.active>.progress>.progress-bar {
	width: 0%;
}

.bs-wizard>.bs-wizard-step:last-child.active>.progress>.progress-bar {
	width: 100%;
}

.bs-wizard>.bs-wizard-step.disabled>.bs-wizard-dot {
	background-color: #f5f5f5;
}

.bs-wizard>.bs-wizard-step.disabled>.bs-wizard-dot:after {
	opacity: 0;
}

.bs-wizard>.bs-wizard-step:first-child>.progress {
	left: 50%;
	width: 50%;
}

.bs-wizard>.bs-wizard-step:last-child>.progress {
	width: 50%;
}

.bs-wizard>.bs-wizard-step.disabled a.bs-wizard-dot {
	pointer-events: none;
}
/*END Form Wizard*/
</style>

<script src="https://use.fontawesome.com/0f7c16f922.js"></script>
<!--Joo-->
<!-- <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
<link rel="stylesheet" href="/resources/css/css/3.1.0.css">
<script
	src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>

<body>
	<!-- Header Section Start -->
	<%@ include file="/WEB-INF/views/includes/header.jsp"%>
	<!-- Header Section End -->


	<br />
	<br />
	<br />
	<br />
	<br />
	<!-- Start Pricing Table Section -->
	<!-- steps start -->
	<div class="container">
		<div class="row bs-wizard">

			<div class="col-xs-4 bs-wizard-step complete">
				<div class="text-center bs-wizard-stepnum">Step 1</div>
				<div class="progress">
					<div class="progress-bar"></div>
				</div>
				<a href="#" class="bs-wizard-dot"></a>
				<div class="bs-wizard-info text-center">
					구독신청 정보와 <br>구독자 정보를 확인해주세요.
				</div>
			</div>

			<div class="col-xs-4 bs-wizard-step complete">
				<!-- complete -->
				<div class="text-center bs-wizard-stepnum">Step 2</div>
				<div class="progress">
					<div class="progress-bar"></div>
				</div>
				<a href="#" class="bs-wizard-dot"></a>
				<div class="bs-wizard-info text-center">
					결제 수단을 선택하고 <br>결제를 진행해주세요.
				</div>
			</div>

			<div class="col-xs-4 bs-wizard-step disabled">
				<!-- active -->
				<div class="text-center bs-wizard-stepnum">Step 3</div>
				<div class="progress">
					<div class="progress-bar"></div>
				</div>
				<a href="#" class="bs-wizard-dot"></a>
				<div class="bs-wizard-info text-center">
					잠시만 기다려주시면 <br>당신의 버디가 매칭됩니다!
				</div>
			</div>
		</div>





	</div>
	<!-- steps end -->





	<!-- Main Container -->
	<div class="container rounded bg-white mt-15 mb-5"
		style="margin-top: 70px">

		<section class="main-container col2-right-layout"
			>
			<div class="main container">
				<div class="row">
					<div class="col-main col-sm-12">

						<div class="page-title" style="margin-top: 10px">
							<h1 style="font-size: 25px;">구독 정보</h1>
						</div>
						<div class="my-account">
							<div class="dashboard">
								<div class="welcome-msg">
									<br> <strong>결제를 진행합니다!</strong>
									<p>
										아래에서 결제 정보를 확인하실 수 있습니다. 구독정보를 확인하시려면 <a href="#">마이페이지</a>로
										이동해 주세요.
									</p>
									<br> <br>
								</div>
								<!-- <div class="recent-orders"> -->
								<div class="title-buttons">
									<strong> </strong>
								</div>
								<%@ include file="/WEB-INF/views/subscribe/itemBox.jsp"%>
							</div>
						</div>
					</div>
				</div>
			</div>





			<br/>
			<br/>
			<div class="container rounded  mt-5 mb-5">
				<div class="row">

					<div class="col-md-8 border-right">
						<div class="p-3 py-5">
							<div
								class="d-flex justify-content-between align-items-center mb-3">
								<h4 class="text-right" style="font-size: 25px;">결제 방법</h4>
							</div>
							<div style="float: left; padding: 20px;">
								&nbsp;&nbsp;&nbsp;<i class="fa fa-krw fa-3x" aria-hidden="true"
									style="padding: 13px;"></i><br> <label><input
									type="radio" name="pay" value="cash" checked>&nbsp;무통장입급</label>

							</div>
							<div style="float: left; padding: 20px;">
								&nbsp;<i class="fa fa-credit-card fa-3x" aria-hidden="true"
									style="padding: 13px;"></i><br> <label><input
									type="radio" name="pay" value="card" checked>&nbsp;신용카드</label>
							</div>
							<div style="float: left; padding: 20px;">
								&nbsp;&nbsp;&nbsp;<a><img
									src="/resources/img/order/kakaopay.png"
									style="height: 70px; padding: 10px;"></a><br> <label><input
									type="radio" name="pay" value="kakaopay" checked>
									&nbsp;카카오페이</label>
							</div>
							<div style="float: left; padding: 20px;">
								&nbsp;&nbsp;&nbsp;<a><img
									src="/resources/img/order/naverpay.png"
									style="height: 70px; padding: 10px;"></a><br> <label><input
									type="radio" name="pay" value="naverpay" checked>&nbsp;
									네이버페이</label>
							</div>
						</div>
					</div>
					<div class="col-md-4">
						<div class="p-3 py-5">
							<!-- <div class="d-flex justify-content-between align-items-center experience"><span>Edit Experience</span></div><br> -->
							<div class="col-md-12" style="text-align: center;">
								<div class="mb-3" style="text-align: center;">
									<h4 style="font-size: 25px; text-align: center;">총 결제 금액</h4>
								</div>
								<div class="col-md-12">
									<label class="labels" style="font-size: 25px"><strong>${sub.subPrice }원<br>
											<br></strong></label>
								</div>
								<div class="col-md-12 submit-button">
									<button class="btn btn-common btn-effect" id="submit"
										type="submit">결제하기</button>
									<div id="msgSubmit" class="h3 hidden"></div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>


					</div>

					<!-- <div class="col-md-4"> -->
					<div class="p-6 py-5"></div>
					<!-- </div> -->



				</div>
			</div>
	</div>
	</section>




	</div>
	<!-- End Pricing Table Section -->



	<!-- Footer Section Start -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>

</body>
</html>