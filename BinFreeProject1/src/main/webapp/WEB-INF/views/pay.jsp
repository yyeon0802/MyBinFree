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
    <title>Bin-Free Homepage</title>

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/line-icons.css">
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="css/owl.theme.css">
    <link rel="stylesheet" href="css/nivo-lightbox.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/color-switcher.css">
    <link rel="stylesheet" href="css/menu_sideslide.css">
    <link rel="stylesheet" href="css/main.css">    
    <link rel="stylesheet" href="css/responsive.css">

    <style type="text/css">
  /* Table css start*/
  .data-table {
  border: 1px solid #E5E5E5;
  border-spacing: 0;
  text-align: left;
  width: 100%;
  font-size: 12px;
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
  font-size: 12px;
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
  .data-table thead td, .data-table tfoot th, .data-table tfoot td, .cart .totals table th, .cart .totals table td {
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
  .shopping-cart-table-total td { border:none;}
  /*---------- Table css end ---------- */	
  .bs-wizard {margin-top: 40px;}

/*Form Wizard*/
.bs-wizard {border-bottom: solid 0px #e0e0e0; padding: 0 0 10px 0;}
.bs-wizard > .bs-wizard-step {padding: 0; position: relative;}
.bs-wizard > .bs-wizard-step + .bs-wizard-step {}
.bs-wizard > .bs-wizard-step .bs-wizard-stepnum {color: #595959; font-size: 16px; margin-bottom: 5px;}
.bs-wizard > .bs-wizard-step .bs-wizard-info {color: #999; font-size: 14px;}
.bs-wizard > .bs-wizard-step > .bs-wizard-dot {position: absolute; width: 30px; height: 30px; display: block; background: #1abc9c; top: 45px; left: 50%; margin-top: -15px; margin-left: -15px; border-radius: 50%;} 
.bs-wizard > .bs-wizard-step > .bs-wizard-dot:after {content: ' '; width: 14px; height: 14px; background: #fbbd19; border-radius: 50px; position: absolute; top: 8px; left: 8px; } 
.bs-wizard > .bs-wizard-step > .progress {position: relative; border-radius: 0px; height: 8px; box-shadow: none; margin: 20px 0;}
.bs-wizard > .bs-wizard-step > .progress > .progress-bar {width:0px; box-shadow: none; background: #1abc9c;}
.bs-wizard > .bs-wizard-step.complete > .progress > .progress-bar {width:100%;}
.bs-wizard > .bs-wizard-step.active > .progress > .progress-bar {width:50%;}
.bs-wizard > .bs-wizard-step:first-child.active > .progress > .progress-bar {width:0%;}
.bs-wizard > .bs-wizard-step:last-child.active > .progress > .progress-bar {width: 100%;}
.bs-wizard > .bs-wizard-step.disabled > .bs-wizard-dot {background-color: #f5f5f5;}
.bs-wizard > .bs-wizard-step.disabled > .bs-wizard-dot:after {opacity: 0;}
.bs-wizard > .bs-wizard-step:first-child  > .progress {left: 50%; width: 50%;}
.bs-wizard > .bs-wizard-step:last-child  > .progress {width: 50%;}
.bs-wizard > .bs-wizard-step.disabled a.bs-wizard-dot{ pointer-events: none; }
/*END Form Wizard*/
      </style>
<script src="https://use.fontawesome.com/0f7c16f922.js"></script>    <!--Joo-->
<!-- <link href="//netdna.bootstrapcdn.com/bootstrap/3.1.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"> -->
<link rel="stylesheet" href="css/css/3.1.0.css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
  </head>
  
  <body>
    <!-- Header Section Start -->
    <header id="slider-area">  
      <nav class="navbar navbar-expand-md fixed-top scrolling-navbar bg-white">
        <div class="container">          
          <!-- <a class="navbar-brand" href="home.html"><span <class="lni-bulb"></span>BinFree</a> -->
          <a class="navbar-brand" href="home.html"><span><img src="img/logo.png"></span></a>

          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
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



    </header><br>
    <!-- Header Section End --> 



    <!-- Start Pricing Table Section -->
    <!-- steps start -->
    <div class="container">
        
            
      <div class="row bs-wizard" >
          
          <div class="col-xs-4 bs-wizard-step complete">
            <div class="text-center bs-wizard-stepnum">Step 1</div>
            <div class="progress"><div class="progress-bar"></div></div>
            <a href="#" class="bs-wizard-dot"></a>
            <div class="bs-wizard-info text-center">구독신청 정보와 <br>구독자 정보를 확인해주세요.</div>
          </div>
          
          <div class="col-xs-4 bs-wizard-step complete"><!-- complete -->
            <div class="text-center bs-wizard-stepnum">Step 2</div>
            <div class="progress"><div class="progress-bar"></div></div>
            <a href="#" class="bs-wizard-dot"></a>
            <div class="bs-wizard-info text-center">결제 수단을 선택하고 <br>결제를 진행해주세요.</div>
          </div>
      
          <div class="col-xs-4 bs-wizard-step disabled"><!-- active -->
            <div class="text-center bs-wizard-stepnum">Step 3</div>
            <div class="progress"><div class="progress-bar"></div></div>
            <a href="#" class="bs-wizard-dot"></a>
            <div class="bs-wizard-info text-center">잠시만 기다려주시면 <br>당신의 버디가 매칭됩니다!</div>
          </div>
      </div>
  
  
  
  
  
</div>
</div>
    <!-- steps end -->
   
  </div>
  </div>



        
        <!-- Main Container -->
        <div class="container rounded bg-white mt-15 mb-5"style="margin-top:70px">

        <section class="main-container col2-right-layout" style="margin-top: 30px;">
          <div class="main container">
            <div class="row">
              <div class="col-main col-sm-12">
                  
                <div class="page-title" style="margin-top:10px">
                  <h1 style="font-size: 25px;">구독 정보</h1>
                </div>
                <div class="my-account">
                  <div class="dashboard">
                    <div class="welcome-msg"> <br><strong>결제를 진행합니다!</strong>
                      <p>아래에서 결제 정보를 확인하실 수 있습니다. 구독정보를 확인하시려면 <a href="#">마이페이지</a>로 이동해 주세요.</p><br><br>
                    </div>
                    <!-- <div class="recent-orders"> -->
                      <div class="title-buttons"><strong> </strong> </div>
                      <div class="table-responsive">
                        <table class="data-table" id="my-orders-table">
                          <col width="1">
                          <col width="1">
                          <col width="1">
                          <col width="1">
                          <col width="1">
                          <col width="1">
                          <thead>
                            <tr class="first last">
                              <th>상품명</th>
                              <th>옵션</th>
                              <th>수량</th>
                              <th><span class="nobr">금액</span></th>
                              <th>쿠폰할인</th>
                              <th>&nbsp;</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr class="first odd">
                              <td>베스트 구독 </td>
                              <td>6개월</td>
                              <td>1</td>
                              <td><span class="price">60,000</span></td>
                              <td><em>-0</em></td>
                              <td class="a-center last"><span class="nobr"> <a href="#">쿠폰 선택</a> </td>
                            </tr>
                            <tr class="last even">
                              <td>스타터 구독</td>
                              <td>1개월</td>
                              <td>1</td>
                              <td><span class="price">100,000</span></td>
                              <td><em>-0</em></td>
                              <td class="a-center last"><span class="nobr"> <a href="#">쿠폰 선택</a> </td>
                            </tr>
                          </tbody>
                        </table>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>






                <div class="container rounded  mt-5 mb-5">
                  <div class="row">
                      
                      <div class="col-md-8 border-right">
                          <div class="p-3 py-5">
                              <div class="d-flex justify-content-between align-items-center mb-3">
                                  <h4 class="text-right" style="font-size: 25px;">결제 방법</h4>
                              </div>
                              <div style="float: left; padding: 20px;">
                              &nbsp;&nbsp;&nbsp;<i class="fa fa-krw fa-3x" aria-hidden="true" style="padding: 13px;"></i><br>
                              <label><input type="radio" name="pay" value="cash" checked>&nbsp;무통장입급</label>
              
                              </div>
                              <div style="float: left; padding: 20px;">
                                &nbsp;<i class="fa fa-credit-card fa-3x" aria-hidden="true" style="padding: 13px;"></i><br>
                                <label><input type="radio" name="pay" value="card" checked>&nbsp;신용카드</label>
                              </div>
                              <div style="float: left; padding: 20px;">
                                &nbsp;&nbsp;&nbsp;<a><img src="img/order/kakaopay.png" style="height:70px;padding: 10px;"></a><br>
                                <label><input type="radio" name="pay" value="kakaopay" checked> &nbsp;카카오페이</label>
                              </div>
                              <div style="float: left; padding: 20px;">
                                &nbsp;&nbsp;&nbsp;<a><img src="img/order/naverpay.png" style="height: 70px;padding: 10px;"></a><br>
                                <label><input type="radio" name="pay" value="naverpay" checked>&nbsp; 네이버페이</label>
                              </div>
                          </div>
                      </div>
                      <div class="col-md-4">
                          <div class="p-3 py-5">
                              <!-- <div class="d-flex justify-content-between align-items-center experience"><span>Edit Experience</span></div><br> -->
                        <div class="col-md-12" style="text-align: center;">
                          <div class="mb-3" style="text-align: center;">
                              <h4  style="font-size: 25px;text-align: center;">총 결제 금액</h4>
                          </div>
                        <div class="col-md-12"><label class="labels"style="font-size:25px"><strong>160,000원<br><br></strong></label></div>
                        <div class="col-md-12 submit-button">
                          <button class="btn btn-common btn-effect" id="submit" type="submit">결제하기</button>
                          <div id="msgSubmit" class="h3 hidden"></div> 
                          <div class="clearfix"></div> 
                          </div>
                      </div>
                  </div>
            

              </div>

              <!-- <div class="col-md-4"> -->
                <div class="p-6 py-5">
                  
                </div>
              <!-- </div> -->

            
              
            </div>
            </div>
          </div>
        </section>
        

        

      </div>
      <!-- End Pricing Table Section -->






    <!-- Footer Section Start -->
    <footer style="margin-top: 50px;padding: 50px;">
      <!-- Footer Area Start -->
      <section class="footer-Content">
        <div class="container">
          <div class="row">          
            <div class="col-sm-12">
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
    <script src="js/color-switcher.js"></script>
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
    <script src="js/contact-form-script.js"></script>   
    <script src="js/main.js"></script>
    
  </body>
</html>