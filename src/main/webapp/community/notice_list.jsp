<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GoToHealth - Community</title>
<c:import url="/common/includeCss.jsp"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/community/css/common.css"/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/community/css/style.css"/>"/>
</head>
<body>
	<c:import url="/common/header.jsp"/>
	<div id="wrap">
		<div class="container page_qna">
			<div class="inner">
				<ul class="tab_menu_category cf">
					<li class="active"><a href="<c:url value="/community/notice_list.jsp"/>">공지사항</a></li>
					<li><a href="<c:url value="/community/free_list.jsp"/>">자유게시판</a></li>
					<li><a href="<c:url value="/community/gallery_list.jsp"/>">갤러리</a></li>
					<li><a href="<c:url value="/community/qna_list.jsp"/>">질문과 답변</a></li>
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
						<th>추천수</th>
					</tr>
					<tr class="title">
						<td>10</td>
						<td>공지</td>
						<td><a href="<c:url value="/community/notice_detail.jsp"/>" style="color: black; text-decoration: none;">헬스합시다. 헬스헬스헬스!</a></td>
						<td>헬스왕</td>
						<td>2018.04.24</td>
						<td>20</td>
						<td>5</td>
					</tr>
				</table>
				<div class="write">
					<button type="button"  onclick="location.href='<c:url value="/community/notice_write.jsp"/>'" class="btn btn-default" style="margin: 15px 1011px"><a id="write" href="<c:url value="/community/notice_write.jsp"/>">글쓰기</a></button>
				</div>	
				<div class="search">
					<form action="">
						<select class="searchselect" name="searchList">
							<option value="title">제목</option>
							<option value="content">내용</option>
							<option value="titlecontent">제목+내용</option>
						</select>
						<input class="searchinput" type="text" placeholder="검색어를 입력하세요.">
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
	</div>
	<c:import url="/common/footer.jsp"/>
	<c:import url="/common/includeJs.jsp"/>
	<script src="<c:url value="/community/js/script.js"/>"></script>
</body>
</html>