<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<%@ include file="/WEB-INF/views/includes/header.jsp"%>

	<!-- <link href='https://fonts.googleapis.com/css?family=Roboto:400,100,300,700' rel='stylesheet' type='text/css'>

	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	
	<link rel="stylesheet" href="/resources/css/style2.css">
 -->

 <!-- Contact Section Start -->
  <section id="contact" class="section" style="margin-top: 40px;">
    <div class="contact-form">
      <div class="container">
        <div class="section-header">
          <h2 class="section-title">담당 BFamily 현황</h2>
          <p class="section-subtitle">만 15세 이상이라면 누구나 지원 가능합니다<br> 당신의 연락을 기다리고 있을게요</p>
        </div>
        <div class="row">
          <div class="col-lg-12 col-md-12 col-xs-12">
              <!-- Div using .table-responsive class-->  
              <div class="table-responsive">  
                  <!--Bootstrap Table using .table class-->  
                  <table class="table">  
                      <thead>  
                          <tr>  
                              <th>No.</th>  
                              <th>구독자</th>  
                              <th>연락처</th>  
                              <th>시군구</th>
                              <th>상세주소</th>
                          </tr>  
                      </thead>  
                      <tbody>
                      	<c:forEach items="${list }" var="bflist" varStatus="status">
                          <tr>  
                              <c:set var="curPage" value="${pageMaker.cri.pageNum}"/>
                              <c:set var="amount" value="${pageMaker.cri.amount}"/>
                              <td><c:out value="${(total-status.index) -((curPage-1) * amount)}"/></td>  
                              <td><c:out value="${bflist.subName }"/></td>  
                              <td><c:out value="${bflist.subPhone }"/></td>  
                              <td><c:out value="${bflist.loc }"/></td>
                              <td><c:out value="${bflist.inputLoc }"/></td>
                          </tr>
                        </c:forEach>  
                      </tbody>  
                  </table>  
              </div>  
          </div>
        </div>
      </div>
    </div>
    </div>
    
    <!-- paging start -->
         <div class="row">
            <div class="col-lg-4 col-md-4"></div>
            <div class="col-lg-8 col-md-8 col-xs-12">
               <div class="paging">
                  <ul class="pagination">
                     <c:if test="${pageMaker.prev}">
                        <li class="paginate_button previous"><a
                           href="${pageMaker.startPage -1}">◁ 이전</a></li>
                     </c:if>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
                     <c:forEach var="num" begin="${pageMaker.startPage}"
                        end="${pageMaker.endPage}">
                        <li class="paginate_button  ${pageMaker.cri.pageNum == num ? "active":""} ">
                           <a href="${num}">${num}</a>
                        </li>
                   &nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;&nbsp;&nbsp;&nbsp;
                  </c:forEach>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <c:if test="${pageMaker.next}">
                        <li class="paginate_button next"><a href="${pageMaker.endPage +1 }">다음 ▷</a></li>
                     </c:if>
                  </ul>
               </div>
               <form id="actionForm" action="/admin/buddy/withbfamily" method="get">
                  <input type="hidden" name="id" value='<c:out value="${id }"/>'/>
                  <input type="hidden" name="pageNum" value='<c:out value="${pageMaker.cri.pageNum }"/>'/> 
                  <input type="hidden" name="amount" value='<c:out value="${pageMaker.cri.amount }"/>'/>
               </form>
               <!-- paging end -->
    <!-- searchbar start -->
  <br/><br/><br/><br/><br/><br/>
    <div class="search-box col-md-7">               
        <form id="searchForm" action="/admin/buddy/withbfamily" method="get">
            <div class="input-group mb-3">
                <div class="input-group-prepend form-control">
                <select name="type" style="background: #f5f5f5; border: none;">
                    <<!-- button class="btn btn-light dropdown-toggle" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"><option value="">--</button> -->
                    <div class="dropdown-menu" >
                      <option value="" <c:out value="${pageMaker.cri.type== null?'selected':'' }"/>>&nbsp;&nbsp;&nbsp;</option>
                      <option value="N" <c:out value="${pageMaker.cri.type eq 'N'?'selected':'' }"/>>구독자</option>
                      <option value="P" <c:out value="${pageMaker.cri.type eq 'P'?'selected':'' }"/>>연락처</option>
                      <option value="L" <c:out value="${pageMaker.cri.type eq 'L'?'selected':'' }"/>>시군구</option>    
                      <option value="I" <c:out value="${pageMaker.cri.type eq 'I'?'selected':'' }"/>>상세주소</option>    
                      <!-- <a class="dropdown-item" href="#"> -->                 
                    </div>
                </select>
                </div>
                <input type="text" class="form-control" name="keyword" value='<c:out value="${pageMaker.cri.keyword }"/>' aria-label="Search input with dropdown button" />
                <input type="hidden" name="id" value='<c:out value="${id }"/>'/>
                <input type="hidden" name="pageNum" value='<c:out value="${pageMaker.cri.pageNum }"/>'/> 
                <input type="hidden" name="amount" value='<c:out value="${pageMaker.cri.amount }"/>'/>
                <div class="input-group-append">
                    <button class="btn btn-success">Search</button>
                </div>
            </div>
        </form>        
    </div>
    <br/><br/><br/><br/><br/><br/>
   <!-- searchbar end  -->   
    
  </section>
  <!-- Contact Section End -->

    
	
<script type="text/javascript">
   $(document).ready(
         function() {

            var actionForm = $("#actionForm");

            $(".paginate_button a").on("click", function(e) {
                     e.preventDefault();
                     console.log("click");
                     actionForm.find("input[name='pageNum']").val($(this).attr("href")); 
                    
                     actionForm.submit();
                  });
            
            var searchForm = $("#searchForm");
            
            $("#searchForm button").on("click", function(e) {
               	if(!searchForm.find("option:selected").val()){
               		alert("검색 종류를 선택하세요.")
               		return false;
               	}
               	if(!searchForm.find("input[name='keyword']").val()){
               		alert("검색단어를 입력하세요.")
               		return false;
               	}
               	searchForm.find("input[name='pageNum']").val("1");
               	e.preventDefault();
               	
               	searchForm.submit();
             });
            
         });
</script>

<%@ include file="/WEB-INF/views/includes/footer.jsp"%>