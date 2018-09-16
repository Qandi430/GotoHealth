<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
	<div class="logo">
		<h1><a href="<c:url value="/main.jsp"/>"><img src="<c:url value="/img/logo.png"/>" alt="" class="img-responsive"></a></h1>
	</div>
	<nav>
		<ul>
			<li><a href="<c:url value="/community/notice_list.jsp"/>">커뮤니티</a></li>
			<li><a href="<c:url value="/product/product.jsp"/>">보충제</a></li>
			<li><a href="<c:url value="/searchMap/searchMap.jsp"/>">헬스장 검색</a></li>
			<li><a href="<c:url value="/community/exercise_list.jsp"/>">운동법</a></li>
			<li><a href="#" data-toggle="modal" data-target="#login">로그인</a></li>
			<li><a href="<c:url value="/member/signup.jsp"/>">회원가입</a></li>
			<li><a href="<c:url value="/member/mypage.jsp"/>">마이페이지</a></li>
		</ul>
	</nav>
	<div class="modal fade" id="login" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-body">
        <div class="loginLogo">
        <img src="<c:url value="/img/logo.png"/>" alt="" class="img-responsive center-block">
    </div>
       <div class="loginWrap">
           Login
             <form>
                 <input type="text" id="username" placeholder="Username">
                 <input type="password" id="password" placeholder="Password">
             </form>
           <button class="forgot">FORGOT PASSWORD ?</button> <button class="login">LOG IN</button> <button class="signup" onclick="location.href='<c:url value="/member/signup.jsp"/>'">SIGN UP</button>
         </div>
      </div>
    </div>
  </div>
</div>
</header>