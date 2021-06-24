<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="keywords" content="Bootstrap, Landing page, Template, Registration, Landing">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="author" content="Grayrids">
  <title>Bin-Free bFamilypage</title>

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="/resources/css/bootstrap.min.css">
  <link rel="stylesheet" href="/resources/css/line-icons.css">
  <link rel="stylesheet" href="/resources/css/owl.carousel.css">
  <link rel="stylesheet" href="/resources/css/owl.theme.css">
  <link rel="stylesheet" href="/resources/css/nivo-lightbox.css">
  <link rel="stylesheet" href="/resources/css/magnific-popup.css">
  <link rel="stylesheet" href="/resources/css/animate.css">
  <link rel="stylesheet" href="/resources/css/color-switcher.css">
  <link rel="stylesheet" href="/resources/css/menu_sideslide.css">
  <link rel="stylesheet" href="/resources/css/main.css">
  <link rel="stylesheet" href="/resources/css/responsive.css">
  <link rel="stylesheet" href="/resources/css/adminpage.css">
</head>

<body>
  <!-- Header Section Start -->
  <header id="slider-area">
    <nav class="navbar navbar-expand-md fixed-top scrolling-navbar bg-white">
      <div class="container">
        <a class="navbar-brand" href="home.html"><span><img src="img/logo.png"></span></a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
          aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <i class="lni-menu"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto w-100 justify-content-end">
            <li class="nav-item">
              <a class="nav-link page-scroll" href="friends.html">구독</a>
            </li>
            <li class="nav-item">
              <a class="nav-link page-scroll" href="buddy.html">구인</a>
            </li>
            <li class="nav-item">
              <a class="nav-link page-scroll" href="service.html">고객센터</a>
            </li>
            <li class="nav-item">
              <a class="nav-link page-scroll" href="login.html">로그인</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
  </header>
  <!-- Header Section End -->

  <section id="tabs">
    <div class="container"> 
      <h6 class="section-title h1">&nbsp</h6>     
      <div class="row">
        <div class="col-xs-12 col-md-12">
          <nav>
            <div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
              <a class="nav-item nav-link active" id="nav-bFamily-tab" data-toggle="tab" href="#nav-bFamily" role="tab"
                aria-controls="nav-bFamily" aria-selected="true">BFamily 관리</a>
              <a class="nav-item nav-link" id="nav-buddy-tab" data-toggle="tab" href="#nav-buddy" role="tab"
                aria-controls="nav-buddy" aria-selected="false">Buddy 관리</a>
              <a class="nav-item nav-link" id="nav-formBuddy-tab" data-toggle="tab" href="#nav-formBuddy" role="tab"
                aria-controls="nav-formBuddy" aria-selected="false">Buddy 지원서 관리</a>
            </div>
          </nav>
          <div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">

            <!-- BFamily 관리 페이지 시작 -->
            <div class="tab-pane fade show active" id="nav-bFamily" role="tabpanel" aria-labelledby="nav-bFamily-tab">

              <div class="col-lg-4 col-md-4 col-xs-12">
                <div class="item-boxes">
                  <div class="manage-form">
                    회원번호 : 1
                    <br>
                    이름 : 이름1
                    <br>
                    가입일 : 2021월 05월 28일
                    <br>
                    연락처 : 010-1234-5678
                    <br>
                    서비스 주소 : 구독시 입력
                    <br>
                    서비스 시작일 :
                    <br>
                    서비스 종료일 :
                    <hr>
                  </div>
                  <div class="btn-manage">
                    <button class="btn btn-common" name="delete">삭제</button>
                  </div>
                </div>
              </div>

              <br>
              <hr>
              <br>
              <div class="col-lg-12 col-md-12 col-xs-12">
                <div class="paging">
                  <a href="#">이전</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 | 2 | 3 | 4 | 5 | 6
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">다음</a>
                </div>
              </div>

            </div>
            <!-- BFamily 관리 페이지 끝 -->

            <!-- Buddy 관리 페이지 시작 -->
            <div class="tab-pane fade" id="nav-buddy" role="tabpanel" aria-labelledby="nav-buddy-tab">

              <div class="col-lg-4 col-md-4 col-xs-12">
                <div class="item-boxes">
                  <img src="img/buddy/human.jpeg" class="per-pic" name="">
                  <div class="manage-form">
                    <hr>
                    직원번호 : 1
                    <br>
                    이름 : 이름1
                    <br>
                    입사일 : 2021월 05월 28일
                    <br>
                    퇴사일 : none
                    <br>
                    연락처 : 010-1234-5678
                    <br>
                    주소 : 서울특별시
                    <br>
                    담당 지역 : 서울특별시
                    <hr>
                  </div>
                  <div class="btn-manage">
                    <button class="btn btn-common" name="">수정</button>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <button class="btn btn-common" name="">삭제</button>
                  </div>
                </div>
              </div>

              <br>
              <hr>
              <br>
              <div class="col-lg-12 col-md-12 col-xs-12">
                <div class="paging">
                  <a href="#">이전</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 | 2 | 3 | 4 | 5 | 6
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">다음</a>
                </div>
              </div>

            </div>
            <!-- Buddy 관리 페이지 끝 -->

            <!-- Buddy 지원서 관리 페이지 시작 -->
            <div class="tab-pane fade" id="nav-formBuddy" role="tabpanel" aria-labelledby="nav-formBuddy-tab">

              <div class="col-lg-4 col-md-4 col-xs-12">
                <div class="item-boxes">
                  <img src="img/buddy/human.jpeg" class="per-pic" name="">
                  <div class="manage-form">
                    <hr>
                    지원번호 : 1
                    <br>
                    이름 : 이름1
                    <br>
                    지원일 : 2021월 05월 28일
                    <br>
                    연락처 : 010-1234-5678
                    <br>
                    주소 : 서울특별시
                    <br>
                    담당 하고 싶은 지역 : 서울특별시
                    <hr>
                  </div>
                  <div class="btn-manage">
                    <button class="btn btn-common" name="update">합격</button>
                    &nbsp;&nbsp;&nbsp;&nbsp;
                    <button class="btn btn-common" name="delete">불합격</button>
                  </div>
                </div>
              </div>

              <br>
              <hr>
              <br>
              <div class="col-lg-12 col-md-12 col-xs-12">
                <div class="paging">
                  <a href="#">이전</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 1 | 2 | 3 | 4 | 5 | 6
                  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="#">다음</a>
                </div>
              </div>

            </div>
            <!-- Buddy 지원서 관리 페이지 끝 -->

          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- ./Tabs -->


  <!-- Footer Section Start -->
  <footer>
    <!-- Footer Area Start -->
    <section class="footer-Content">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="widget">
              <br>
              <h3 class="block-title">Bin-Free</h3>
              <ul class="contact-footer">
                <li>
                  <span>상호명 : 비트캠프 D풀이 | 사업자 등록번호 : 123-45-67890</span>
                  <span>통신판매업 신고번호 : 2021-서울서초-0524</span>
                  <span>대표자 : D풀이 | 소재지 : 서울특별시 서초구 강남대로 459(백암빌딩 구관)</span>
                  <span>문의 : bitcamp@test.com</span>
                </li>
                <li>
                  <span>Copyright©2021 BFree. All rights reserved.</span>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </section>
    <!-- Footer area End -->

    <!-- Copyright Start  -->
    <div id="copyright">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <div class="site-info float-left">
              <p>Crafted by <a href="#" rel="nofollow">D풀이</a></p>
            </div>
            <div class="float-right">
              <ul class="nav nav-inline">
                <li class="nav-item">
                  <a class="nav-link" href="#">이용안내</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">사업자정보확인</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">이용약관</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="#">개인정보처리방침</a>
                </li>
              </ul>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Copyright End -->

  </footer>
  <!-- Footer Section End -->

  <!-- Go To Top Link -->
  <a href="#" class="back-to-top">
    <i class="lni-arrow-up"></i>
  </a>

  <div id="loader">
    <div class="spinner">
      <div class="double-bounce1"></div>
      <div class="double-bounce2"></div>
    </div>
  </div>

  <!-- jQuery first, then Tether, then Bootstrap JS. -->
  <script src="js/jquery-min.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/classie.js"></script>
  <!-- <script src="js/color-switcher.js"></script> -->
  <script src="js/jquery.mixitup.js"></script>
  <script src="js/nivo-lightbox.js"></script>
  <script src="js/owl.carousel.js"></script>
  <script src="js/jquery.stellar.min.js"></script>
  <script src="js/jquery.nav.js"></script>
  <script src="js/scrolling-nav.js"></script>
  <script src="js/jquery.easing.min.js"></script>
  <script src="js/wow.js"></script>
  <script src="js/jquery.vide.js"></script>
  <script src="js/jquery.counterup.min.js"></script>
  <script src="js/jquery.magnific-popup.min.js"></script>
  <script src="js/waypoints.min.js"></script>
  <script src="js/form-validator.min.js"></script>
  <script src="js/formBuddy-form-script.js"></script>
  <script src="js/main.js"></script>


</body>

</html>