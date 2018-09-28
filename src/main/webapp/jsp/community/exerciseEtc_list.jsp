<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GoToHealth - Exercise</title>
<c:import url="/common/includeCss.jsp"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/community/common.css"/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/community/style.css"/>"/>
<script src="https://code.jquery.com/jquery-3.3.1.js"
        integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
        crossorigin="anonymous"></script> 
</head>
<body>
	<c:import url="/common/header.jsp"/>
	<div id="wrap">
		<!-- container -->
		<div class="container page_faq">
			<div class="inner">
				<ul class="tab_menu_category cf">
					<li class="way active"><a>운동방법</a></li>
				</ul>
				<div class="box_sort cf">
					<ul class="list_sort cf">
						<li><a href="exerciseList.do">전체</a></li>
						<li><a href="chestList.do">가슴</a></li>
						<li><a href="backList.do">등</a></li>
						<li><a href="legList.do">다리</a></li>
						<li><a href="shoulderList.do">어깨</a></li>
						<li><a href="armList.do">팔</a></li>
						<li><a href="absList.do">복근</a></li>
						<li><a href="etcList.do" class="active">유산소</a></li>
					</ul>
				</div>
				<div class="cf">
				</div>
				<select name="arrays" style="float: right; width: 65px; font-size: 15px; height: 30px; margin: 10px 0;">
					<option value="new">최신순</option>
					<option value="lookup">조회순</option>
					<option value="recommendation">추천순</option>
				</select>
				<table class="table_faq" width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<th>번호</th>
						<th>구분</th>
						<th>제목</th>
						<th>닉네임</th>
						<th>등록일</th>
						<th>조회수</th>
						<th>추천수</th>
					</tr>
				<c:forEach var="board" items="${list}" >
					<c:if test="${board.type == '운동방법' && board.category == '유산소'}">
						<tr class="title">
							<td>${board.no}</td>
							<td>${board.category}</td>
							<td><a href="detail.do?no=${board.no}&typeParam=exerciseEtc" style="color: black; text-decoration: none;">${board.title}</a></td>
							<td>${board.writer}</td>
							<td><fmt:formatDate value="${board.regDate}" pattern="yyyy.MM.dd"/></td>
							<td>${board.viewCnt}</td>
							<td>${board.viewCnt}</td>
						</tr>
					</c:if>
				</c:forEach>	
				</table>
				<form action="/gth/board/writeForm.do" method="post">
					<input type="hidden" name="typeParam" value="exerciseEtc">
					<button class="btn btn-default" style="margin: 15px 1011px">글쓰기</button>
				</form>
				<div class="search">
					<form action="">
						<select class="searchselect" name="searchList">
							<option value="title">제목</option>
							<option value="content">내용</option>
							<option value="titlecontent">제목+내용</option>
						</select>
						<input class="searchinput" type="text" placeholder="검색어를 입력하세요.">
						<button type="button" id="search" class="btn btn-default" >검색</button>
					</form>	
				</div>		
				<ul class="paging cf">
					<li><a href="javascript:;"></a></li>
					<li><a href="javascript:;"></a></li>
					<li class="active"><a href="javascript:;">1</a></li>
					<li><a href="javascript:;">2</a></li>
					<li><a href="javascript:;">3</a></li>
					<li><a href="javascript:;">4</a></li>
					<li><a href="javascript:;">5</a></li>
					<li><a href="javascript:;">6</a></li>
					<li><a href="javascript:;">7</a></li>
					<li><a href="javascript:;">8</a></li>
					<li><a href="javascript:;"></a></li>
					<li><a href="javascript:;"></a></li>
				</ul>
			</div>
		</div>
		<!-- //container -->
	</div>
	<c:import url="/common/footer.jsp"/>
	<c:import url="/common/includeJs.jsp"/>
	<script src="<c:url value="/js/community/script.js"/>"></script>
</body>
</html>