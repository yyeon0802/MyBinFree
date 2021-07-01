<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE web-app PUBLIC
 "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN"
 "http://java.sun.com/dtd/web-app_2_3.dtd" >
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

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<link rel="stylesheet" href="/resources/css/line-icons.css">
<link rel="stylesheet" href="/resources/css/owl.carousel.css">
<link rel="stylesheet" href="/resources/css/owl.theme.css">
<link rel="stylesheet" href="/resources/css/nivo-lightbox.css">
<link rel="stylesheet" href="/resources/css/magnific-popup.css">
<link rel="stylesheet" href="/resources/css/animate.css">
<link rel="stylesheet" href="/resources/css/menu_sideslide.css">
<link rel="stylesheet" href="/resources/css/main.css">
<link rel="stylesheet" href="/resources/css/responsive.css">
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css' />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<style>

.btn.btn-common.btn-effect.sub {
	color: white;
}

</style>

</head>

<body>
	<!-- Header Section Start -->
	<%@ include file="/WEB-INF/views/includes/header.jsp"%>
	<!-- Header Section End -->


	<!-- Start Pricing Table Section -->
	<div id="pricing" class="section pricing-section">
		<div class="container" style="margin-top: 40px;">
			<div class="section-header">
				<h2 class="section-title">구독 상품을 확인해보세요</h2>
				<span></span>
				<p class="section-subtitle">합리적인 가격으로 만나는 구독 서비스</p>
			</div>

			<div class="row pricing-tables">
				<div class="col-lg-4 col-md-4 col-xs-12">
					<div class="pricing-table">
						<div class="pricing-details">
							<h2>스타터 구독</h2>
							<div class="price">
								3,900원 <br> <span>1개월</span>
							</div>
							<ul>
								<li>서비스 이용이 처음이신분들을 위해</li>
								<li>서비스를 가볍게 이용해보고 싶은 분들에게</li>
								<li>장기구독하기에는 부담스러운 분들에게</li>
								<li>월 이용료 3,900원에</li>
								<li>새로운 라이프스타일을 경험하세요.</li>
							</ul>
						</div>
						<div class="plan-button">
							<a href="order.html" class="btn btn-common btn-effect sub">구독하기</a>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-4 col-xs-12">
					<div class="pricing-table pricing-big">
						<div class="pricing-details">
							<h2>베스트 구독</h2>
							<div class="price">
								19,900원 <br> <span>6개월</span>
							</div>
							<ul>
								<li>BFree 최고의 상품</li>
								<li>편리함을 넘어 사회적 기여까지</li>
								<li>최고의 소비를</li>
								<li>6개월 이용료 19,900원에</li>
								<li>최고의 가격으로 만나보세요.</li>
							</ul>
						</div>
						<div class="plan-button">
							<a href="order.html" class="btn btn-common btn-effect sub">구독하기</a>
						</div>
					</div>
				</div>

				<div class="col-lg-4 col-md-4 col-xs-12">
					<div class="pricing-table">
						<div class="pricing-details">
							<h2>프리미엄 구독</h2>
							<div class="price">
								34,900원 <br> <span>1년</span>
							</div>
							<ul>
								<li>가장 길고, 가장 저렴하게</li>
								<li>1년간의 최고의 경험</li>
								<li>그 동안의 구독으로는 부족했던 분들에게</li>
								<li>1년 이용료 34,900월에</li>
								<li>가장 합리적인 가격으로 만나보세요.</li>
							</ul>
						</div>
						<div class="plan-button">
							<a href="order.html" class="btn btn-common btn-effect sub">구독하기</a>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<!-- End Pricing Table Section -->

	<div class="container">
		<div class="row subimg">
			<div class="col-sm-12">
				<img src="/resources/img/friend/circle.png"
					style="max-width: 100%; height: auto; padding: 40px;">
			</div>
		</div>
	</div>


	

	<!-- Footer Section Start -->
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>


</body>

</html>