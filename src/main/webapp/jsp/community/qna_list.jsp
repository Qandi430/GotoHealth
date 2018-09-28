<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GoToHealth - Community</title>
<c:import url="/common/includeCss.jsp"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/community/common.css"/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/community/style.css"/>"/>
</head>
<body>
	<c:import url="/common/header.jsp"/>
	<div id="wrap">
		<div class="container page_qna">
			<div class="inner">
				<ul class="tab_menu_category cf">
					<li><a href="<c:url value="noticeList.do"/>">공지사항</a></li>
					<li><a href="<c:url value="freeList.do"/>">자유게시판</a></li>
					<li><a href="<c:url value="galleryList.do"/>">갤러리</a></li>
					<li class="active"><a href="<c:url value="qnaList.do"/>">질문과 답변</a></li>
				</ul>
				<select name="arrays" style="float: right; width: 65px; font-size: 15px; height: 30px; margin: 10px 0;">
					<option value="new">최신순</option>
					<option value="lookup">조회순</option>
					<option value="recommendation">추천순</option>
				</select>
				<table class="table_notice" width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<th>번호</th>
						<th>구분</th>
						<th>제목</th>
						<th>닉네임</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>
				<c:forEach var="board" items="${list}" >
					<c:if test="${board.type == '질문과 답변'}">
						<tr class="title">
							<td>${board.no}</td>
							<td>${board.category}</td>
							<td><a href="detail.do?no=${board.no}&typeParam=qna" style="color: black; text-decoration: none;">${board.title}</a></td>
							<td>${board.writer}</td>
							<td><fmt:formatDate value="${board.regDate}" pattern="yyyy.MM.dd"/></td>
							<td>${board.viewCnt}</td>
						</tr>
					</c:if>
				</c:forEach>	
				</table>
				<form action="/gth/board/writeForm.do" method="post">
					<input type="hidden" name="typeParam" value="qna">
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
					<c:choose>
						<c:when test="${startPage > 1}">
							<li style="border-left: 1px solid #e6e0e7; border-radius: 3px 0 0 3px; background-image: url('/gth/img/community/arrow_double_left_paging.png');"><a href="qnaList.do?pageNum=1"></a></li>
						</c:when>
						<c:otherwise>
							<li style="border-left: 1px solid #e6e0e7; border-radius: 3px 0 0 3px; background-image: url('/gth/img/community/arrow_double_left_paging.png');"><a></a></li>
						</c:otherwise>
					</c:choose>	
					<c:choose>
						<c:when test="${startPage > pageBlock}">
							<li style="background-image: url('/gth/img/community/arrow_left_paging.png');"><a href="qnaList.do?pageNum=${startPage - 5}"></a></li>
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
								<li><a href="qnaList.do?pageNum=${i}">${i}</a></li>
							</c:otherwise>		
						</c:choose>				
					</c:forEach>	
					<c:choose>
						<c:when test="${endPage < pageCount}">
							<li style="background-image: url('/gth/img/community/arrow_right_paging.png');"><a href="qnaList.do?pageNum=${startPage + 5}"></a></li>
						</c:when>
						<c:otherwise>
							<li style="background-image: url('/gth/img/community/arrow_right_paging.png');"><a></a></li>
						</c:otherwise>
					</c:choose>
					<c:choose>
						<c:when test="${endPage < pageCount}">
							<li style="border-radius: 0 3px 3px 0; background-image: url('/gth/img/community/arrow_double_right_paging.png');"><a href="qnaList.do?pageNum=${pageCount}"></a></li>
						</c:when>
						<c:otherwise>
							<li style="border-radius: 0 3px 3px 0; background-image: url('/gth/img/community/arrow_double_right_paging.png');"><a></a></li>
						</c:otherwise>
					</c:choose>
				</ul>
			</div>
		</div>
	</div>
	<c:import url="/common/footer.jsp"/>
	<c:import url="/common/includeJs.jsp"/>
	<script src="<c:url value="/js/community/script.js"/>"></script>
</body>
</html>