<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
	<div class="logo">
		<h1><a href="<c:url value="/main.do"/>"><img src="<c:url value="/img/logo.png"/>" alt="" class="img-responsive"></a></h1>
	</div>
	<nav>
		<ul>
			<li><a href="<c:url value="/board/noticeList.do"/>">커뮤니티</a></li>
			<li><a href="<c:url value="/protain/protain.do"/>">보충제</a></li>
			<li><a href="<c:url value="/jsp/healthsearch/searchMap.jsp"/>">헬스장 검색</a></li>
			<li><a href="<c:url value="/board/exerciseList.do"/>">운동법</a></li>
			<c:choose>
				<c:when test="${empty user}">
		      		<li><a href="#" data-toggle="modal" data-target="#login">로그인</a></li>
					<li><a href="<c:url value="/signupForm.do"/>">회원가입</a></li>
		      	</c:when>
		      	<c:otherwise>
		      		<li><a href="<c:url value="/mypage.do"/>">마이페이지</a></li>
		      		<li><a href="<c:url value="/logout.do"/>">로그아웃</a></li>
		      	</c:otherwise>
			</c:choose>
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
             <form id="loginForm" action="<c:url value="/login.do"/>" method="post" name="loginForm">
                 <input type="text" id="id" name="id" placeholder="Username">
                 <input type="password" id="pass" name="pass" placeholder="Password">
             </form>
           <button class="forgot">FORGOT PASSWORD ?</button> <button class="login" id="login_btn">LOG IN</button> <button class="signup" onclick="location.href='<c:url value="/signupForm.do"/>'">SIGN UP</button>
         </div>
      </div>
    </div>
  </div>
</div>
</header>
