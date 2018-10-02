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
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.3.1/css/all.css" integrity="sha384-mzrmE5qonljUremFsqc01SB46JvROS7bZs3IO2EmfFsd15uHvIt+Y8vEf7N7fWAU" crossorigin="anonymous">
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
				<div>
				　
				</div>
				<table class="table_notice" width="100%" cellpadding="0" cellspacing="0">
					<tr style="background:rgba(0,0,0,0.03);">
						<th>번호</th>
						<th>구분</th>
						<th>제목</th>
						<th>닉네임</th>
						<th>등록일</th>
						<th>조회수</th>
					</tr>
					<tr class="title" style="background:rgba(0,0,0,0.02);">
						<td><i class="fas fa-volume-up" style="color:rgb(185, 36, 36); font-size: 27px;"></i></td>
						<td>${newNotice.category}</td>
						<td><a href="detail.do?no=${newNotice.no}&typeParam=notice&pageNum=${currentPage}" onclick="return doAction(${user.id})">${newNotice.title}</a></td>
						<td>${newNotice.writer}</td>
						<td><fmt:formatDate value="${newNotice.regDate}" pattern="yyyy.MM.dd"/></td>
						<td>-</td>
					</tr>
				<c:forEach var="board" items="${list}" >
					<c:if test="${board.type == '질문과 답변'}">
						<tr class="title">
							<td>${board.no}</td>
							<td>${board.category}</td>
							<td>	 					  	
                 		 	    <a href="detail.do?no=${board.no}&typeParam=qna&pageNum=${currentPage}" style="color: black; text-decoration: none;" onclick="return doAction(${user.id})">${board.title}</a>
                 		    </td>
							<td>${board.writer}</td>
							<td><fmt:formatDate value="${board.regDate}" pattern="yyyy.MM.dd"/></td>
							<td>${board.viewCnt}</td>
						</tr>
					</c:if>
				</c:forEach>
				<c:if test="${empty list}">
					<tr class="title">
						<td colspan="6">등록된 게시물이 없습니다.</td>
					</tr>
				</c:if>			
				</table>
				<form action="uploadForm.do" method="post">
					<input type="hidden" name="typeParam" value="qna">					
					<c:if test="${empty user.id}">
						<button type="button" class="btn btn-default" style="margin: 15px 1011px; border: none;" ></button>
					</c:if>
					<c:if test="${not empty user.id}">
						<button class="btn btn-default" style="margin: 15px 1011px">글쓰기</button>
					</c:if>
				</form>
				<div class="search">
					<form action="qnaList.do" method="post">
						<c:if test="${search == null}">
							<select class="searchselect" name="search">
								<option value="title">제목</option>
								<option value="content">내용</option>
								<option value="titlecontent">제목+내용</option>
							</select>
						</c:if>
						<c:if test="${search == 'title'}">
							<select class="searchselect" name="search">
								<option value="title" selected>제목</option>
								<option value="content">내용</option>
								<option value="titlecontent">제목+내용</option>
							</select>
						</c:if>
						<c:if test="${search == 'content'}">
							<select class="searchselect" name="search">
								<option value="title">제목</option>
								<option value="content" selected>내용</option>
								<option value="titlecontent">제목+내용</option>
							</select>
						</c:if>
						<c:if test="${search == 'titlecontent'}">
							<select class="searchselect" name="search">
								<option value="title">제목</option>
								<option value="content">내용</option>
								<option value="titlecontent" selected>제목+내용</option>
							</select>
						</c:if>
						<input class="searchinput" type="text" name="word" placeholder="검색어를 입력하세요." value="${word}">
						<button id="search" class="btn btn-default" >검색</button>
					</form>	
				</div>			
				<ul class="paging cf">
					<c:choose>
						<c:when test="${startPage > 1}">
							<c:choose>
								<c:when test="${empty word and empty search}">
									<li style="border-left: 1px solid #e6e0e7; border-radius: 3px 0 0 3px; background-image: url('/gth/img/community/arrow_double_left_paging.png');"><a href="qnaList.do?pageNum=1"></a></li>
								</c:when>
								<c:otherwise>
									<li style="border-left: 1px solid #e6e0e7; border-radius: 3px 0 0 3px; background-image: url('/gth/img/community/arrow_double_left_paging.png');"><a href="qnaList.do?pageNum=1&word=${word}&search=${search}"></a></li>
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
									<li style="background-image: url('/gth/img/community/arrow_left_paging.png');"><a href="qnaList.do?pageNum=${startPage - 5}"></a></li>
								</c:when>
								<c:otherwise>
									<li style="background-image: url('/gth/img/community/arrow_left_paging.png');"><a href="qnaList.do?pageNum=${startPage - 5}&word=${word}&search=${search}"></a></li>
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
										<li><a href="qnaList.do?pageNum=${i}">${i}</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="qnaList.do?pageNum=${i}&word=${word}&search=${search}">${i}</a></li>
									</c:otherwise>
								</c:choose>
							</c:otherwise>		
						</c:choose>				
					</c:forEach>	
					<c:choose>
						<c:when test="${endPage < pageCount}">
							<c:choose>
								<c:when test="${empty word and empty search}">
									<li style="background-image: url('/gth/img/community/arrow_right_paging.png');"><a href="qnaList.do?pageNum=${startPage + 5}"></a></li>
								</c:when>
								<c:otherwise>
									<li style="background-image: url('/gth/img/community/arrow_right_paging.png');"><a href="qnaList.do?pageNum=${startPage + 5}&word=${word}&search=${search}"></a></li>
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
									<li style="border-radius: 0 3px 3px 0; background-image: url('/gth/img/community/arrow_double_right_paging.png');"><a href="qnaList.do?pageNum=${pageCount}"></a></li>
								</c:when>
								<c:otherwise>
									<li style="border-radius: 0 3px 3px 0; background-image: url('/gth/img/community/arrow_double_right_paging.png');"><a href="qnaList.do?pageNum=${pageCount}&word=${word}&search=${search}"></a></li>
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
	</div>
	<c:import url="/common/footer.jsp"/>
	<c:import url="/common/includeJs.jsp"/>
	<script src="<c:url value="/js/community/script.js"/>"></script>
	<script type="text/javascript">
    function doAction(id) {
        if(id == undefined) {
            alert("로그인 하십시오.");
            return false;
        }
        return true;
    }    
	</script>
</body>
</html>