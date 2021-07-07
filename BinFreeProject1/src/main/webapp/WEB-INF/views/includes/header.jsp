<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html lang="en">

<meta name="_csrf" content="${_csrf.token}" />
<meta name="_csrf_header" content="${_csrf.headerName}" />

<head>
<script src="https://code.jquery.com/jquery-1.12.4.min.js"
	integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
	crossorigin="anonymous"></script>

  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="keywords" content="Bootstrap, Landing page, Template, Registration, Landing">
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
  <meta name="author" content="Grayrids">
  <title>Bin-Free Homepage</title>

  <!-- Bootstrap CSS -->
  <!-- css -->
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
  <link rel="stylesheet" href="/resources/css/adminpage.css">
  <link rel="stylesheet" href="/resources/css/kakao.css">
  <link rel="stylesheet" href="/resources/css/pagenation.css">
	    
  <script src="https://code.jquery.com/jquery-latest.js"></script>
  <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>

</head>

<body>
  <!-- Header Section Start -->
  <header id="slider-area">
    <nav class="navbar navbar-expand-md fixed-top scrolling-navbar bg-white">
      <div class="container">
        <a class="navbar-brand" href="/"><span><img src="/resources/img/logo.png"></span></a>

        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse"
          aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
          <i class="lni-menu"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarCollapse">
          <ul class="navbar-nav mr-auto w-100 justify-content-end">
            <li class="nav-item">
              <a class="nav-link page-scroll" href="/subscribe/main">구독</a>
            </li>
            <li class="nav-item">
              <a class="nav-link page-scroll" href="/form/register">구인</a>
            </li>
            <li class="nav-item">
              <a class="nav-link page-scroll" href="/review/list">리뷰</a>
            </li>
            <li class="nav-item">
              <a class="nav-link page-scroll" href="/service">고객센터</a>
            </li>
            
            <li class="nav-item">
            <!-- 로그인 안된 상태 -->
             <sec:authorize access="isAnonymous()">
             		 <a class="nav-link page-scroll" href='<c:url value="/user/loginpage"/>'>로그인</a>
                </sec:authorize>
                
            </li>
            
            <sec:authorize access="hasRole('ROLE_MEMBER')">
            	<li class="nav-item">
               		<a class="nav-link page-scroll" href="/user/mypage">
               		<strong><sec:authentication property="principal.name"/></strong>님 마이페이지</a>
               		
               		<!-- 수정할 것 -->
               		<sec:authentication property="principal.email" var="email" />
					<sec:authentication property="principal.name" var="userName" />
					<sec:authentication property="principal.subItem" var="subItem" />
					<sec:authentication property="principal.phone" var="phone" />
             	</li>
             	
             	<li>
             	<a class="nav-link page-scroll" onclick="document.getElementById('logout').submit();">로그아웃</a>
				</li>
					<form id="logout" action="/logout" method="POST">
			  		 	<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
					</form>
            	
              </sec:authorize>
            
            <sec:authorize access="hasRole('ROLE_ADMIN')">
            <li class="nav-item">
              <a class="nav-link page-scroll" href="/admin/bfamily/list">
            	<strong><sec:authentication property="principal.name"/></strong>님 페이지</a>
            </li>
           <li>
             	<a class="nav-link page-scroll" onclick="document.getElementById('logout').submit();">로그아웃</a>
				</li>
					<form id="logout" action="/logout" method="POST">
			  		 	<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
					</form>
            </sec:authorize>
          </ul>
        </div>
      </div>
    </nav>