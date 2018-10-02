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
					<li class="active"><a href="<c:url value="galleryList.do"/>">갤러리</a></li>
					<li><a href="<c:url value="qnaList.do"/>">질문과 답변</a></li>
				</ul>
				<div style="width: 100%; height: 50px;">
				<form action="galleryList.do" method="post">
					<input type="hidden" name="search" value="${search}">
					<input type="hidden" name="word" value="${word}">
					<c:if test="${arrays eq null}">
						<select name="arrays" style="float: right; width: 65px; font-size: 15px; height: 30px; margin: 10px 0;" onchange="this.form.submit()">
		  						<option hidden>최신순</option>
								<option value="regDate" selected>최신순</option>
								<option value="viewCnt">조회순</option>
								<option value="recomCnt">추천순</option>
						</select>
					</c:if>
					<c:if test="${arrays == ''}">
						<select name="arrays" style="float: right; width: 65px; font-size: 15px; height: 30px; margin: 10px 0;" onchange="this.form.submit()">
	  						<option hidden>최신순</option>
							<option value="regDate" selected>최신순</option>
							<option value="viewCnt">조회순</option>
							<option value="recomCnt">추천순</option>
						</select>
					</c:if>
					<c:if test="${arrays == 'reg_date'}">
						<select name="arrays" style="float: right; width: 65px; font-size: 15px; height: 30px; margin: 10px 0;" onchange="this.form.submit()">
	 						<option hidden>최신순</option>
							<option value="regDate" selected>최신순</option>
							<option value="viewCnt">조회순</option>
							<option value="recomCnt">추천순</option>
						</select>
					</c:if>
					<c:if test="${arrays == 'view_cnt'}">
 						<select name="arrays" style="float: right; width: 65px; font-size: 15px; height: 30px; margin: 10px 0;" onchange="this.form.submit()">
	  						<option hidden>최신순</option>
							<option value="regDate">최신순</option>
							<option value="viewCnt" selected>조회순</option>
							<option value="recomCnt">추천순</option>
						</select>
					</c:if>
					<c:if test="${arrays == 'recom_cnt'}">
 						<select name="arrays" style="float: right; width: 65px; font-size: 15px; height: 30px; margin: 10px 0;" onchange="this.form.submit()">
	  						<option hidden>최신순</option>
							<option value="regDate">최신순</option>
							<option value="viewCnt">조회순</option>
							<option value="recomCnt" selected>추천순</option>
						</select>
					</c:if>
				</form>	
				</div>	
				<ul class="list_event cf">
					<c:forEach var="board" items="${list}" >
						<c:if test="${board.type == '포토갤러리'}">
							<li class="title">
								<a href="detail.do?no=${board.no}&typeParam=gallery&pageNum=${currentPage}" onclick="return doAction(${user.id})">							
								<c:forEach var="file" items="${board.fileList}">
									<c:choose>
										<c:when test="${empty file.path}">
											<img src="/gth/img/community/ex.jpg"/>
									 	</c:when>
										<c:otherwise>
											<img src="${file.path}"/>
										</c:otherwise>
									</c:choose>
								</c:forEach> 
								</a>
								<div class="inner">
									<p>${board.title} <c:if test="${board.commentCnt != 0}"> [${board.commentCnt}]</c:if></p>
									<div class="cf">
										<p class="fl">${board.writer}</p>
										<div class="fr"><fmt:formatDate value="${board.regDate}" pattern="yyyy.MM.dd"/></div>
									</div>
								</div>
							</li>
						</c:if>
					</c:forEach>
				</ul>
				<table class="table_notice" width="100%" cellpadding="0" cellspacing="0">
					<c:if test="${empty list}">
						<tr class="title">
							<td colspan="5">등록된 게시물이 없습니다.</td>
						</tr>
					</c:if>	
				</table>		
				<form action="uploadForm.do" method="post">
					<input type="hidden" name="typeParam" value="gallery">					
					<c:if test="${empty user.id}">
						<button type="button" class="btn btn-default" style="margin: 15px 1011px; border: none;" ></button>
					</c:if>
					<c:if test="${not empty user.id}">
						<button class="btn btn-default" style="margin: 15px 1011px">글쓰기</button>
					</c:if>
				</form>
				<div class="search">
					<form action="galleryList.do" method="post">
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
									<li style="border-left: 1px solid #e6e0e7; border-radius: 3px 0 0 3px; background-image: url('/gth/img/community/arrow_double_left_paging.png');"><a href="galleryList.do?pageNum=1&arrays=${arrays}"></a></li>
								</c:when>
								<c:otherwise>
									<li style="border-left: 1px solid #e6e0e7; border-radius: 3px 0 0 3px; background-image: url('/gth/img/community/arrow_double_left_paging.png');"><a href="galleryList.do?pageNum=1&word=${word}&search=${search}&arrays=${arrays}"></a></li>
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
									<li style="background-image: url('/gth/img/community/arrow_left_paging.png');"><a href="galleryList.do?pageNum=${startPage - 5}&arrays=${arrays}"></a></li>
								</c:when>
								<c:otherwise>
									<li style="background-image: url('/gth/img/community/arrow_left_paging.png');"><a href="galleryList.do?pageNum=${startPage - 5}&word=${word}&search=${search}&arrays=${arrays}"></a></li>
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
										<li><a href="galleryList.do?pageNum=${i}&arrays=${arrays}">${i}</a></li>
									</c:when>
									<c:otherwise>
										<li><a href="galleryList.do?pageNum=${i}&word=${word}&search=${search}&arrays=${arrays}">${i}</a></li>
									</c:otherwise>
								</c:choose>
							</c:otherwise>		
						</c:choose>				
					</c:forEach>	
					<c:choose>
						<c:when test="${endPage < pageCount}">
							<c:choose>
								<c:when test="${empty word and empty search}">
									<li style="background-image: url('/gth/img/community/arrow_right_paging.png');"><a href="galleryList.do?pageNum=${startPage + 5}&arrays=${arrays}"></a></li>
								</c:when>
								<c:otherwise>
									<li style="background-image: url('/gth/img/community/arrow_right_paging.png');"><a href="galleryList.do?pageNum=${startPage + 5}&word=${word}&search=${search}&arrays=${arrays}"></a></li>
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
									<li style="border-radius: 0 3px 3px 0; background-image: url('/gth/img/community/arrow_double_right_paging.png');"><a href="galleryList.do?pageNum=${pageCount}&arrays=${arrays}"></a></li>
								</c:when>
								<c:otherwise>
									<li style="border-radius: 0 3px 3px 0; background-image: url('/gth/img/community/arrow_double_right_paging.png');"><a href="galleryList.do?pageNum=${pageCount}&word=${word}&search=${search}&arrays=${arrays}"></a></li>
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