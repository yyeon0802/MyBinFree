<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="/WEB-INF/views/includes/header.jsp" %>

<!-- Contact Section Start -->
<section id="contact" class="section" >
	<div class="contact-form">
		<div class="container">
			<div class="row">
			
			<div class="col-lg-4 col-md-4 col-xs-12 adminpage">
			<a href="/admin/bfamily/list">BFamily 관리 페이지</a>
			</div>
			
			<div class="col-lg-4 col-md-4 col-xs-12 adminpage" >
			<a href="/admin/buddy/list" style="color: gray;" >Buddy 관리 페이지</a>
			</div>
			
			<div class="col-lg-4 col-md-4 col-xs-12 adminpage" >
			<a href="/admin/form/list" style="color: gray;">Buddy 지원자 관리 페이지</a>
			</div>
			
			</div>
			
			<div class="section-header">
				<h2 class="section-title">BFamily 관리 페이지</h2>
			</div>
			
			<div class="row">


				<c:forEach items="${bflist}" var="bflist">
					<div class="col-lg-4 col-md-4 col-xs-12">

						<div class="item-boxes">
							<div class="manage-form">
								회원번호 :
								<c:out value="${bflist.id }" />
								<br> 회원 이름 :
								<c:out value="${bflist.name }" />
								<br> 회원 연락처 :
								<c:out value="${bflist.phone }" />
								<br> 회원 우편번호 :
								<c:out value="${bflist.zipCode }" />
								<br> 회원 주소 :
								<c:out value="${bflist.loc }" />
								<c:out value="${bflist.inputLoc }" />
								<br> 구독 장소의 거주자 이름 :
								<c:out value="${bflist.subName }" />
								<br> 구독 장소 연락처 :
								<c:out value="${bflist.subPhone }" />
								<br> 구독 상품 : 
								<c:out value="${bflist.subItem }" />
								<br> 구독 시작 일 : 
								<c:out value="${bflist.subStart }" />
								<br> 구독 종료 일 : 
								<c:out value="${bflist.subEnd }" />
								<br> 담당 Buddy :
								<c:out value="${bflist.myBuddy }" />
								<hr>
							</div>
							<div class="btn-manage">
								<button data-oper='modify' class="btn btn-common" style="padding: 12px 21px;" value='<c:out value="${bflist.id}"/>'>수정</button>
								<button data-oper='remove' class="btn btn-common" style="padding: 12px 21px;" value='<c:out value="${bflist.id}"/>'>삭제</button>
							</div>

							<form id='operForm<c:out value="${bflist.id}"/>' action="/admin/bfamily/bfamilyModify" method="get">
								<input type='hidden' id='id<c:out value="${bflist.id}"/>' name='id' value='<c:out value="${bflist.id}"/>'>
								<input type="hidden" name="pageNum" value='${pageMaker.cri.pageNum}'>
								<input type="hidden" name="amount" value='${pageMaker.cri.amount}'>
								<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
							</form>
							
						</div>
					</div>
				</c:forEach>

				<!-- Modal -->
				<div class="modal fade" id="myModal" tabindex="-1" role="dialog"
					aria-labelledby="myModalLabel" aria-hidden="true">
					<div class="modal-dialog">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">Modal Title</h4>
							</div>
							<div class="modal-body">처리가 완료되었습니다.</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-default"
									data-dismiss="modal">close</button>
								<button type="button" class="btn btn-primary">Save
									Changes</button>
							</div>
						</div>
					</div>
				</div>
				<!-- end Modal -->

			</div>
			<!-- row end -->
			
			<div class="row">
			<div class="col-lg-4 col-md-4">
			</div>
			<!-- paging start -->
			<div class="col-lg-8 col-md-8 col-xs-12">
				<div class="paging">
					<ul class="pagination">
						<c:if test="${pageMaker.prev}">
							<li class="paginate_button previous">	
								<a href="${pageMaker.startPage -1}">◁ 이전</a>
							</li>
						</c:if>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
						<c:forEach var="num" begin="${pageMaker.startPage}" end="${pageMaker.endPage}">
						 <li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
						 <a href="${num}">${num}</a></li>
						 &nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
						</c:forEach>
						&nbsp;&nbsp;
						<c:if test="${pageMaker.next}">
							<li class="paginate_button next">	
								<a href="${pageMaker.endPage +1 }">다음 ▷</a>
							</li>
						</c:if>	
					</ul>
				</div>
				
				<form id="actionForm" action="/admin/bfamily/list" method="get">
					<input type="hidden" name="pageNum" value='${pageMaker.cri.pageNum}'>
					<input type="hidden" name="amount" value='${pageMaker.cri.amount}'>
				</form>	
				<!-- paging end -->
			
			</div>
			<div class="col-lg-2 col-md-2">
			</div>
			</div>
			<!-- row end -->
		</div>
		
	</div>
</section>
<!-- Contact Section End -->



<script type="text/javascript">
$(document).ready(function() {

	$("button[data-oper='modify']").on("click", function(e){
		$("#operForm" + this.value).submit();
	});

	$("button[data-oper='remove']").on("click", function(e){
		$("#operForm" + this.value).attr("action", "/admin/bfamily/remove").attr("method", "post").submit();
		alert("회원번호 " + this.value + "번이 삭제되었습니다.");
	});
	
	
	var actionForm = $("#actionForm");
	
	$(".paginate_button a").on("click", function(e){
		e.preventDefault();
		console.log("click");
		actionForm.find("input[name='pageNum']").val($(this).attr("href"));
		actionForm.submit();
	});
	
});
</script>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>