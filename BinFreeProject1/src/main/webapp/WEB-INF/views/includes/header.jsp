<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.binfree.web.user.domain.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<% 
	UsersVO user = (UsersVO)session.getAttribute("loginUserInfo"); //session에 있는 정보를 받아온다. 
%>   


<!DOCTYPE html>
<html lang="en">

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

  <script src="https://code.jquery.com/jquery-latest.js"></script>
  <script src="https://developers.kakao.com/sdk/js/kakao.min.js"></script>
 <!-- <script>
    componentDidMount(){
      Kakao.init('2a351a8d6b54e936968fb3673fae2a42');
    }
  </script>  --> 

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
              <a class="nav-link page-scroll" href="/review/subscribe">구독</a>
            </li>
            <li class="nav-item">
              <a class="nav-link page-scroll" href="buddy.html">구인</a>
            </li>
            <li class="nav-item">
              <a class="nav-link page-scroll" href="service.html">고객센터</a>
            </li>
            <sec:authorize access="isAnonymous()">
            <li class="nav-item">
              <a class="nav-link page-scroll" href="user/login">로그인</a>
            </li>
            </sec:authorize>
            <sec:authorize access="hasRole('ROLE_MEMBER')">
            <li class="nav-item">
               <a class="nav-link page-scroll" href="user/mypage"><%=user.getName()%>님 마이페이지</a>
            </li>
            <li class="nav-item">
              <a class="nav-link page-scroll" href="/">로그아웃</a>
            </li>
            </sec:authorize>
            <sec:authorize access="hasRole('ROLE_ADMIN')">
            <li class="nav-item">
              <a class="nav-link page-scroll" href="user/login"><sec:authentication property="principal.username"/>관리자님 페이지</a>
            </li>
            <li class="nav-item">
              <a class="nav-link page-scroll" href="/">로그아웃</a>
            </li>
            </sec:authorize>
          </ul>
        </div>
      </div>
    </nav>