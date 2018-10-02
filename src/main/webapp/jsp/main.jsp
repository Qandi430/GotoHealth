<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Go To Health!!</title>
	<c:import url="/common/includeCss.jsp"/>
</head>
<body>
	<c:import url="/common/header.jsp"/>
	<div id="wrap">
		<section class="contents" id="contents01">
			<!-- 16:9 aspect ratio -->
			<video id="main_video" autoplay loop>
			  <source src="<c:url value="/img/gth.mp4"/>" type="video/mp4">
			</video>
			<span class="msg" style="background:url(<c:url value="/img/main-bg.png"/>)no-repeat center center/cover;"></span>
		</section>
		<section class="contents" id="contents02">
			<div class="container">
				<h2 class="contentsTitle">How To Exercise</h2>
				<div class="item item01">
					<img src="<c:url value="/img/contents01_item01.jpg"/>" alt="">
					<a href="<c:url value="/board/exerciseList.do"/>">
						All
					</a>
				</div>
				<div class="item item02">
					<img src="<c:url value="/img/contents01_item02.jpg"/>" alt="">
					<a href="<c:url value="/board/armList.do"/>">Arm</a>
				</div>
				<div class="item item03">
					<img src="<c:url value="/img/contents01_item03.jpg"/>" alt="">
					<a href="<c:url value="/board/shoulderList.do"/>">shoulder</a>
				</div>
				<div class="item item04">
					<img src="<c:url value="/img/contents01_item04.jpg"/>" alt="">
					<a href="<c:url value="/board/chestList.do"/>">Chest</a>
				</div>
				<div class="item item05">
					<img src="<c:url value="/img/contents01_item05.jpg"/>" alt="">
					<a href="<c:url value="/board/backList.do"/>">Back</a>
				</div>
				<div class="item item06">
					<img src="<c:url value="/img/contents01_item06.jpg"/>" alt="">
					<a href="<c:url value="/board/legList.do"/>">Leg</a>
				</div>
				<div class="item item07">
					<img src="<c:url value="/img/contents01_item07.jpg" />" alt="">
					<a href="<c:url value="/board/absList.do"/>">ABS</a>
				</div>
				<div class="item item08">
					<img src="<c:url value="/img/contents01_item08.jpg" />" alt="">
					<a href="<c:url value="/board/etcList.do"/>">etc</a>
				</div>		
			</div>
		</section>
		<section class="contents" id="contents03" >
			<div class="container">
				<div class="row">
					<div class="col-md-5">
						<a href="<c:url value="/gth/healthsearch.do"/>" class="item01">
							<h5>지도 검색</h5>
							<img src="<c:url value="/img/contents03_item01.jpg" />" alt="" class="img-responsive center-block">
							<p>집 주변 헬스장과 트레이너를 찾아볼 수 있습니다.</p>
						</a>	
					</div>
					<div class="col-md-7">
						<h5>공지사항</h5>
						<table class="table">
							<colgroup>
								<col width="10%"/>
								<col width="60%"/>
								<col width="10%"/>
								<col width="10%"/>
								<col width="10%"/>
							</colgroup>
							<thead>
								<tr>
									<th>번호</th>
									<th>제목</th>
									<th>작성자</th>
									<th>작성일</th>
									<th>조회수</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="board" items="${list}" >
									<tr class="title">
										<td>${board.no}</td>
										<td><a href="board/detail.do?no=${board.no}&typeParam=notice" style="color: black; text-decoration: none;">${board.title}</a></td>
										<td>${board.writer}</td>
										<td><fmt:formatDate value="${board.regDate}" pattern="yyyy.MM.dd"/></td>
										<td>${board.viewCnt}
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>	
				</div>
			</div>
		</section>
		<section class="contents" id="contents04">
			<div class="container">
				<div id="main_slide" class="owl-carousel owl-theme">
				<c:forEach var="a" items="${listPro}" varStatus="loop">
			    	<div class="item">
			    		<a href="">
			    			<img src="${a.img}" class="img-responsive center-block" style="max-width: 180px;">
			    			<h6>${a.title}</h6>
			    		</a>
			    	</div>
				  </c:forEach>
				</div>
			</div>
		</section>
	</div>
	<c:import url="/common/footer.jsp"/>
	<c:import url="/common/includeJs.jsp"/>
	
	<script>
		var msg;
		<c:choose>
		    <c:when test="${alert eq 'y' }">
				msg = "등록된 회원정보가 존재하지 않습니다.";
				alert(msg);
		    </c:when>
		    <c:when test="${alert eq 's'}">
		        msg = "승인후 회원가입이 완료됩니다.";
		        alert(msg);
		    </c:when>
		    <c:when test="${alert eq 'f'}">
		        msg = "회원가입에 실패 하였습니다.";
		        alert(msg);
		    </c:when>
		</c:choose>
	</script>
	<script>
		
		var wow = new WOW({});
		wow.init();
		window.onload = function(){
			document.getElementById("main_video").play();
		}
	</script>
</body>
</html>