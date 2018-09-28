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
						<li><a href="shoulderList.do" class="active">어깨</a></li>
						<li><a href="armList.do">팔</a></li>
						<li><a href="absList.do">복근</a></li>
						<li><a href="etcList.do">유산소</a></li>
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
					<c:if test="${board.type == '운동방법' && board.category == '어깨'}">
						<tr class="title">
							<td>${board.no}</td>
							<td>${board.category}</td>
							<td><a href="detail.do?no=${board.no}&typeParam=exerciseShoulder" style="color: black; text-decoration: none;">${board.title}</a></td>
							<td>${board.writer}</td>
							<td><fmt:formatDate value="${board.regDate}" pattern="yyyy.MM.dd"/></td>
							<td>${board.viewCnt}</td>
							<td>${board.viewCnt}</td>
						</tr>
					</c:if>
				</c:forEach>	
				</table>
				<form action="/gth/board/writeForm.do" method="post">
					<input type="hidden" name="typeParam" value="exerciseShoulder">
					<button class="btn btn-default" style="margin: 15px 1011px">글쓰기</button>
				</form>
				<div class="search">
					<form action="shoulderList.do" method="post">
						<select class="searchselect" name="search">
							<option value=''>구분</option>
							<option value="title">제목</option>
							<option value="content">내용</option>
							<option value="titlecontent">제목+내용</option>
						</select>
						<input class="searchinput" type="text" name="word" placeholder="검색어를 입력하세요.">
						<button id="search" class="btn btn-default" >검색</button>
					</form>	
				</div>		
				<ul class="paging cf">
					<c:choose>
						<c:when test="${startPage > 1}">
							<c:choose>
								<c:when test="${empty word and empty search}">
									<li style="border-left: 1px solid #e6e0e7; border-radius: 3px 0 0 3px; background-image: url('/gth/img/community/arrow_double_left_paging.png');"><a href="shoulderList.do?pageNum=1"></a></li>
								</c:when>
								<c:otherwise>
									<li style="border-left: 1px solid #e6e0e7; border-radius: 3px 0 0 3px; background-image: url('/gth/img/community/arrow_double_left_paging.png');"><a href="shoulderList.do?pageNum=1&word=${word}&search=${search}"></a></li>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:otherwise>
							<li style="border-left: 1px solid #e6e0e7; border-radius: 3px 0 0 3px; background-image: url('/gth/img/community/arrow_double_left_paging.png');"><a></a></li>
						</c:otherwise>
					</c:choose>	
					<c:choose>
						<c:when test="${startPage > pageBlock}">
							<c:choose>
								<c:when test="${empty word and empty search}">
									<li style="background-image: url('/gth/img/community/arrow_left_paging.png');"><a href="shoulderList.do?pageNum=${startPage - 5}"></a></li>
								</c:when>
								<c:otherwise>
									<li style="background-image: url('/gth/img/community/arrow_left_paging.png');"><a href="shoulderList.do?pageNum=${startPage - 5}&word=${word}&search=${search}"></a></li>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:otherwise>
							<li style="background-image: url('/gth/img/community/arrow_left_paging.png');"><a></a></li>
						</c:otherwise>	
					</c:choose>	
					<c:forEach var="i" begin="${startPage}" end="${endPage}">
						<c:choose>
							<c:when test="${i == currentPage}">
								<li class="active" style="color: white;">${i}</li>
							</c:when>						
							<c:otherwise>
								<c:choose>
									<c:when test="${empty word and empty search}">
										<li><a href="shoulderList.do?pageNum=${i}">${i}</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="shoulderList.do?pageNum=${i}&word=${word}&search=${search}">${i}</a></li>
									</c:otherwise>
								</c:choose>
							</c:otherwise>		
						</c:choose>				
					</c:forEach>	
					<c:choose>
						<c:when test="${endPage < pageCount}">
							<c:choose>
								<c:when test="${empty word and empty search}">
									<li style="background-image: url('/gth/img/community/arrow_right_paging.png');"><a href="shoulderList.do?pageNum=${startPage + 5}"></a></li>
								</c:when>
								<c:otherwise>
									<li style="background-image: url('/gth/img/community/arrow_right_paging.png');"><a href="shoulderList.do?pageNum=${startPage + 5}&word=${word}&search=${search}"></a></li>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:otherwise>
							<li style="background-image: url('/gth/img/community/arrow_right_paging.png');"><a></a></li>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${endPage < pageCount}">
							<c:choose>
								<c:when test="${empty word and empty search}">
									<li style="border-radius: 0 3px 3px 0; background-image: url('/gth/img/community/arrow_double_right_paging.png');"><a href="shoulderList.do?pageNum=${pageCount}"></a></li>
								</c:when>
								<c:otherwise>
									<li style="border-radius: 0 3px 3px 0; background-image: url('/gth/img/community/arrow_double_right_paging.png');"><a href="shoulderList.do?pageNum=${pageCount}&word=${word}&search=${search}"></a></li>
								</c:otherwise>
							</c:choose>
						</c:when>
						<c:otherwise>
							<li style="border-radius: 0 3px 3px 0; background-image: url('/gth/img/community/arrow_double_right_paging.png');"><a></a></li>
						</c:otherwise>
					</c:choose>
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