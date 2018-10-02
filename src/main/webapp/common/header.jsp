<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script type="text/javascript" src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js" charset="utf-8"></script>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script> <!-- kakao -->
<header>
	<div class="logo">
		<h1 style="margin:0;"><a href="<c:url value="/main.do"/>"><img src="<c:url value="/img/logo.png"/>" alt="" class="img-responsive"></a></h1>
	</div>
	<nav>
		<ul>
			<li><a href="<c:url value="/board/noticeList.do"/>">커뮤니티</a></li>
			<li><a href="<c:url value="/protain/protain.do"/>">보충제</a></li>
			<li><a href="<c:url value="/gth/healthsearch.do"/>">헬스장 검색</a></li>
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
         
           <br>
           <div id="naverIdLogin" style="width:400px; margin-bottom:10px"></div>
           <div id="kakao-login-btn"></div>
		   <a href="http://developers.kakao.com/logout"></a>
         </div>
      </div>
    </div>
  </div>
</div>
</header>
<!-- 네이버아디디로로그인 초기화 Script -->
<script type="text/javascript">
	var naverLogin = new naver.LoginWithNaverId(
		{
			clientId: "rxpuAmW6frnazVQEVtMX",
			callbackUrl: "http://localhost:8000/gth/jsp/member/navercallback.jsp",
			isPopup: true, /* 팝업을 통한 연동처리 여부 */
			loginButton: {color: "green", type: 3, height: 48 } /* 로그인 버튼의 타입을 지정 */
		}
	);
	
	/* 설정정보를 초기화하고 연동을 준비 */
	naverLogin.init();
	
</script>


<!-- kakao -->
<script type='text/javascript'>
  //<![CDATA[
    // 사용할 앱의 JavaScript 키를 설정해 주세요.
    Kakao.init('223a23beab21c621cc99cc026d0788af');
    // 카카오 로그인 버튼을 생성합니다.
    Kakao.Auth.createLoginButton({
      container: '#kakao-login-btn',
      success: function() {
 			
    	 location.href="/gth/main.do"
        //alert(JSON.stringify(authObj));
      },
      fail: function(err) {
         alert(JSON.stringify(err));
      }
    });
  //]]>
</script>