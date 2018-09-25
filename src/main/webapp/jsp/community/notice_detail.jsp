<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
					<li class="active"><a href="<c:url value="/jsp/community/notice_list.jsp"/>">공지사항</a></li>
					<li><a href="<c:url value="/jsp/community/free_list.jsp"/>">자유게시판</a></li>
					<li><a href="<c:url value="/jsp/community/gallery_list.jsp"/>">갤러리</a></li>
					<li><a href="<c:url value="/jsp/community/qna_list.jsp"/>">질문과 답변</a></li>
				</ul>
				<table class="table_qna" width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<th>제목</th>
						<td class="title" colspan="7">하이하이하ㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎㅎ</td>	
					</tr>
					<tr>
						<th>작성자</th>
						<td class="name">조성일</td>
						<th>작성일</th>	
						<td class="reg-date" colspan="5">2015.03.22 13:31</td>
					</tr>
					<tr>
						<td colspan="8">가나다라마바사아가나다sadasdsasaaㅇㄴㄹㅇ너래얀러우우아ㅜㄴㅇ마ㅣㅜㅇㄹ니뤼ㅏㅁㄴ우라ㅣㅁㄴ우ㅏㅣㄻㄴ우ㅏㅣ루ㅏㅁㄴ이룬아ㅣ루ㅏㅁㄴ아ㅣㅜㄹㅇㄴ라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아</td>
					</tr>	
				</table>
					<div class="rn">
					</div>
				<div class="update-deletebutton">
					<a href="<c:url value="/jsp/community/notice_update.jsp"/>" type="button" class="btn btn-default btn-lg" style="color: black; text-decoration: none">수정</a>
					<a href="#" type="button" class="btn btn-default btn-lg" style="color: black; text-decoration: none">삭제</a>
					<a href="<c:url value="/jsp/community/notice_list.jsp" />" type="button" class="btn btn-default btn-lg" style="color: black; text-decoration: none">목록</a>
				</div>	
				<div class="rn">
				</div>
			</div>
		</div>
	</div>
	<c:import url="/common/footer.jsp"/>
	<c:import url="/common/includeJs.jsp"/>
	<script src="<c:url value="/js/community/script.js"/>"></script>
</body>
</html>