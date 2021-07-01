<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE web-app PUBLIC
 "-//Sun Microsystems, Inc.//DTD Web Application 2.3//EN"
 "http://java.sun.com/dtd/web-app_2_3.dtd" >
<html>
<head>
<meta charset="UTF-8">
<title>리뷰 게시판</title>
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
<link rel="stylesheet" href="/resources/css/mypage.css">
<link rel="stylesheet" href="/resources/css/review.css">
<link rel='stylesheet'
	href='https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css' />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>
<body>
	<!-- Header Section Start -->
	<%@ include file="/WEB-INF/views/includes/header.jsp"%>

	<br />
	<br />
	<div class="container" style="padding:100px 0 25px 0;">
		<div class="section-header">
			<h2 class="section-title">BFree 사용 리뷰</h2>
			<p class="section-subtitle">
				실제 BFree를 사용해보신 고객들이 작성해주셨어요.
			</p>
		</div>
	</div>

	<div class="container">
		<div class="row">
			<div class="col-6" style="padding-top: 2%;">
				<!-- 별점 평균 제목 -->
				<div class="rateTitle">
					<span class="sum"><c:out value="${pageMaker.total }" /></span>명의
					BFree 회원이 평가한 평균별점
				</div>

				<!-- 별점 평균 출력 -->
					<!-- 별 출력 -->
					<div class="star-area">
						<div class="stars-outer rate">
							<div class="stars-inner rate"></div>
						</div>
						<span class="sum">
							<c:out value="${starSum}" /> 
						</span>
						<span class="total">/ 10.0</span>
						<input type="hidden" value="${starSum}" id="reviewRate" />
					</div>
					
					<!-- 평균 점수 출력 -->
					<div class="col-4 rateNum">
						
					</div>
			</div>
			<div class="col-6">
				<div class="col-10">	
						<div class="rating-right-part">
							<p>
								<i aria-hidden="true" class="fa fa-star"></i> 5점 <i style="padding-left:74%;">45%</i>
							</p>
							<div class="progress-2"></div>
						</div>
						<div class="rating-right-part">
							<p>
								<i aria-hidden="true" class="fa fa-star"></i> 4점 <i style="padding-left:74%;">30%</i>
							</p>
							<div class="progress-2"></div>
						</div>
						<div class="rating-right-part">
							<p>
								<i aria-hidden="true" class="fa fa-star"></i> 3점 <i style="padding-left:74%;">10%</i>
							</p>
							<div class="progress-3"></div>
						</div>
						<div class="rating-right-part">
							<p>
								<i aria-hidden="true" class="fa fa-star"></i> 2점 <i style="padding-left:74%;">10%</i>
							</p>
							<div class="progress-4"></div>
						</div>
						<div class="rating-right-part">
							<p>
								<i aria-hidden="true" class="fa fa-star"></i> 1점 <i style="padding-left:74%;">5%</i>
							</p>
							<div class="progress-5"></div>
						
					</div>
					<div style="clear: both;"></div>
				</div>
			</div>
		</div>




	<div class="container list">
		<div class="row">
			<div class="col-md-6" style="padding-left: 100px;"></div>
			<!-- 세션이 있을 시 리뷰 작성 링크 뜨게 하기 -->
			<sec:authorize access="hasRole('ROLE_MEMBER')">
				<div class="col-md-6 writeLink">
					<a class="writeR" href="#form" data-toggle="modal"
						data-target="#form"> 리뷰 작성 </a>
				</div>
				<br />
				<br />
			</sec:authorize>
			<table class="table review">
				<thead>
					<tr>
						<div class="container">
							<div class="panel-group" id="accordion" style="">
								<div class="panel panel-default" style="padding-top: 50px;">
									<hr />
									<div class="panel-heading-two">
										<div class="row">
											<div class="col-md-6">
												<a class="accordion-toggle collapsed two"
													data-toggle="collapse" data-parent="#accordion"
													href="#collapseA" style="text-align: start;">리뷰 작성 시 주의
													사항</a>
											</div>
											<div class="col-sm-6" style="text-align: end;">
												<a class="accordion-toggle collapsed button"
													data-toggle="collapse" data-parent="#accordion"
													href="#collapseA">▾</a>
											</div>
										</div>
									</div>
									<hr />
									<div id="collapseA" class="panel-collapse collapse">
										<div class="panel-body">
											상품 정보와 관계가 없는 비방과 욕설은 제재하겠습니다.<br> 불만사항 및 건의사항이 있다면 고객센터
											혹은 챗봇으로 상담 문의 주세요.
										</div>
									</div>
								</div>
							</div>
						</div>
					</tr>
				</thead>
				<c:forEach items="${list}" var="ReviewVO">
					<tr>
						<td class="reviewList">
							<div class="row">
								<div class="col-md-6 col-6 star">
									<c:forEach begin="1" end="${ReviewVO.star }">
										<span class="stars-outer1"></span>
									</c:forEach>
									<c:forEach begin="1" end="${5 - ReviewVO.star }">
										<span class="stars-outer"></span>
									</c:forEach>
								</div>
								<c:if test="${ReviewVO.userName == userName }">
									<div class="col-md-6 col-6 buttonArea">
										<button type='button' class='btn-update' data-toggle="modal"
											data-target="#updateForm" value="${ReviewVO.id }"
											onclick="UpdateId(this);">리뷰 수정</button>
										<button type='button' class='btn-delete'
											value="${ReviewVO.id }" onclick="DeleteId(this);">리뷰
											삭제</button>
									</div>
								</c:if>
								
								<sec:authorize access="hasRole('ROLE_ADMIN')">
									<div class="col-md-6 col-6 buttonArea">
										<button type='button' class='btn-update' data-toggle="modal"
											data-target="#updateForm" value="${ReviewVO.id }"
											onclick="UpdateId(this);">리뷰 수정</button>
										<button type='button' class='btn-delete'
											value="${ReviewVO.id }" onclick="DeleteId(this);">리뷰
											삭제</button>
									</div>
								</sec:authorize>
							</div>
							<div id="reviewContent">
								<c:out value="${ReviewVO.contents }" />
							</div>
							<div class="row">
								<div class="col-md-6 nameItem">
									<c:out value="${ReviewVO.userName }" />
									|
									<c:out value="${ReviewVO.subItem }" />
								</div>
								<div class="col-md-6 day" style="text-align: end;">
									<c:out value="${ReviewVO.creDate}" />
								</div>
								<!-- </td> -->
								<!-- <td> -->
							</div>
						</td>
					</tr>
				</c:forEach>
			</table>


			<div class="container">
				<div class="row">
					<div class="col-md-3"></div>
					<div class="col-md-7">
						<div class="pageInfo_area">
							<ul id="pageInfo" class="pageInfo"">
								<!-- 이전페이지 버튼 -->
								<c:if test="${pageMaker.prev}">
									<li class="pageInfo_btn previous"><a
										href="${pageMaker.startPage-1}">Previous</a></li>
								</c:if>

								<c:forEach var="num" begin="${pageMaker.startPage}"
									end="${pageMaker.endPage}">
									<li class="pageInfo_btn ${pageMaker.cri.pageNum+1 == num ? "active":""} ">
										<a href="${num}">${num}</a>
									</li>
								</c:forEach>

								<!-- 다음페이지 버튼 -->
								<c:if test="${pageMaker.next}">
									<li class="pageInfo_btn next"><a
										href="${pageMaker.endPage+1}">Next</a></li>
								</c:if>
							</ul>
						</div>
					</div>
					<div class="col-md-2"></div>
				</div>
			</div>

			<form id="moveForm" action="/review/list" method="get">
				<input type="hidden" name="pageNum"
					value="${pageMaker.cri.pageNum }"> <input type="hidden"
					name="amount" value="${pageMaker.cri.amount }">
			</form>
		</div>
	</div>





	<div class="modal fade" id="form" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog modal-dialog-centered" role="document">
			<div class="modal-content">
				<div class="text-right cross">
					<i class="fa fa-times mr-2" data-dismiss="modal"></i>
				</div>
				<div class="card-body text-center">
					<img src="/resources/img/good.jpg" height="100" width="100">
					<div class="comment-box text-center">
						<p style="font-size: 25px; padding: 20px;">서비스에 만족하셨나요?</p>
						<form method="post" id="insert-form">
							<input type="hidden" id="email" value="${email}" /> <input
								type="hidden" id="userName" value="${userName}" /> <input
								type="hidden" id="subItem" value="${subItem}" /> <input
								type="hidden" id="star" />
							<div class="rating">
								<input type="radio" name="star" value="5" id="5"><label
									for="5">☆</label> <input type="radio" name="star" value="4"
									id="4"> <label for="4">☆</label> <input type="radio"
									name="star" value="3" id="3"> <label for="3">☆</label>
								<input type="radio" name="star" value="2" id="2"> <label
									for="2">☆</label> <input type="radio" name="star" value="1"
									id="1"> <label for="1">☆</label>
							</div>
							<div class="comment-area">
								<textarea class="form-control" id="contents" name="contents"
									placeholder="리뷰를 작성해주세요." rows="4"></textarea>
							</div>
							<div class="text-center mt-4">
								<button name="submit" type="button"
									class="btn btn-success send px-4" onclick="insert();">
									작성 완료 <i class="fa fa-long-arrow-right ml-1"></i>
								</button>
								<button name="subBtn" type="button"
									class="btn btn-success send px-4" data-dismiss="modal">
									취소 <i class="fa fa-long-arrow-right ml-1"></i>
								</button>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
	<%@ include file="/WEB-INF/views/includes/footer.jsp"%>

	<script type="text/javascript" src="/resources/js/review.js"></script>


	<script>
		var id = '';
		var id2 = '';

		/* 페이징 */
		$(document).ready(
				function() {
					var moveForm = $('#moveForm');

					$(".pageInfo a").on(
							"click",
							function(e) {
								console.log("찍힘")
								e.preventDefault();
								moveForm.find("input[name='pageNum']").val(
										$(this).attr("href"));
								//moveForm.attr("action", "/review/list");
								moveForm.submit();

							});
				});

		/* 별 체크박스 찍기 */
		$('.starRev span').click(function() {
			$(this).parent().children('span').removeClass('on');
			$(this).addClass('on').prevAll('span').addClass('on');
			return false;
		});

		/* 삭제할 리뷰 아이디값 찾기 */
		function DeleteId(object) {
			id2 = object.value;
			Delete();
		}

		/* 리뷰 삭제 */
		function Delete() {
			$.ajax({
				url : "/review/delete",
				type : "get",
				data : {
					'id' : id2
				},
				success : function(data) {
					alert("삭제가 완료되었습니다!");
					window.location.reload();
				}
			})
		}

		/* 수정할 리뷰 아이디값 찾기 */
		function UpdateId(object) {
			id = object.value;
		}

		/* 리뷰 수정 */
		function update() {
			$('input[name="star"]').each(function() {
				if ($(this).prop('checked')) {
					$('#star').val(this.value);
				}
			});
			console.log(id);
			var star = $('#star').val();
			var contents = $('#contents').val();
			$.ajax({
				url : "/review/update",
				type : "post",
				data : {
					'id' : id,
					'star' : star,
					'contents' : contents,
				},
				success : function(data) {
					$('#modal').modal('hide');
					alert("수정이 완료되었습니다!");
					window.location.reload();

				},
				error : function(e) {
					console.log(e);
				}
			});
		}

		/* 리뷰 작성 */
		function insert() {
			$('input[name="star"]').each(function() {
				if ($(this).prop('checked')) {
					$('#star').val(this.value);
				}
			});

			var token = $("meta[name='_csrf']").attr("content");
			var header = $("meta[name='_csrf_header']").attr("content");
			var email = $('#email').val();

			var userName = $('#userName').val();
			console.log(userName);

			var subItem = $('#subItem').val();
			var star = $('#star').val();
			var contents = $('#contents').val();
			console.log(contents);
			$.ajax({
				url : "/review/insert",
				method : "post",
				beforeSend : function(xhr) {
					/*데이터를 전송하기 전에 헤더에 csrf값을 설정한다*/
					xhr.setRequestHeader(header, token);
				},
				data : {
					'email' : email,
					'star' : star,
					'contents' : contents,
					'userName' : userName,
					'subItem' : subItem
				},
				dataType : 'text',
				success : function(data) {
					alert("리뷰 등록이 완료되었습니다!");
					$('#modal').modal('hide');
					window.location.href = '/review/subscribe';
				}
			});
		}

		// 별점 평균별로 별 색깔 변하기

		// 처음 별점
		const ratings = $("#reviewRate").val();
		console.log(ratings);
		// 총 별점
		const starsTotal = 5;

		// 돔이 로딩될때 가져온 별
		document.addEventListener('DOMContentLoaded', getRatings);

		// 가져온 별점
		function getRatings() {
			/* for(let rating in ratings){ */
			// 별점 평균 메기기
			const starPercentage = (ratings / starsTotal) * 100;
			console.log(starPercentage);

			// 10에 가까운 것
			/* const starPercentageRounded = `${Math.round(starPercentage / 10) * 10}%`; */
			console.log(Math.round(starPercentage / 10));
			const starPercentageRounded = Math.round(starPercentage / 10) * 10
					+ '%';
			console.log(starPercentageRounded);

			// 별 세팅하기
			document.querySelector(`.rate.stars-inner.rate`).style.width = starPercentageRounded;
		}
	</script>
</body>
</html>