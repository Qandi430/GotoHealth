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
					<li><a href="<c:url value="/community/notice_list.jsp"/>">공지사항</a></li>
					<li><a href="<c:url value="/community/free_list.jsp"/>">자유게시판</a></li>
					<li class="active"><a href="<c:url value="/community/gallery_list.jsp"/>">갤러리</a></li>
					<li><a href="<c:url value="/community/qna_list.jsp"/>">질문과 답변</a></li>
				</ul>
				<div style="width: 100%; height: 50px;">
				<select name="arrays" style="float: right; width: 65px; height: 30px; font-size: 15px; margin: 10px 0;">
						<option value="new">최신순</option>
						<option value="lookup">조회순</option>
						<option value="recommendation">추천순</option>
					</select>
				</div>	
				<ul class="list_event cf">
					<li><a href="<c:url value="/community/gallery_detail.jsp"/>">
						<img src="<c:url value="/img/community/ex.jpg"/>" alt="">
						<div class="inner">
							<p>3개월 전후</p>
							<div class="cf">
								<p class="fl">아이디</p>
								<div class="fr">2018.04.24</div>
							</div>
						</div>
					</a></li>
					<li><a href="<c:url value="/community/gallery_detail.jsp"/>">
						<img src="<c:url value="/img/community/ex.jpg"/>" alt="">
						<div class="inner">
							<p>3개월 전후</p>
							<div class="cf">
								<p class="fl">아이디</p>
								<div class="fr">2018.04.24</div>
							</div>
						</div>
					</a></li>
					<li><a href="<c:url value="/community/gallery_detail.jsp"/>">
						<img src="<c:url value="/img/community/ex.jpg"/>" alt="">
						<div class="inner">
							<p>3개월 전후</p>
							<div class="cf">
								<p class="fl">아이디</p>
								<div class="fr">2018.04.24</div>
							</div>
						</div>
					</a></li>
					<li><a href="<c:url value="/community/gallery_detail.jsp"/>">
						<img src="<c:url value="/img/community/ex.jpg"/>" alt="">
						<div class="inner">
							<p>3개월 전후</p>
							<div class="cf">
								<p class="fl">아이디</p>
								<div class="fr">2018.04.24</div>
							</div>
						</div>
					</a></li>
					<li><a href="<c:url value="/community/gallery_detail.jsp"/>">
						<img src="<c:url value="/img/community/ex.jpg"/>" alt="">
						<div class="inner">
							<p>3개월 전후</p>
							<div class="cf">
								<p class="fl">아이디</p>
								<div class="fr">2018.04.24</div>
							</div>
						</div>
					</a></li>
					<li><a href="<c:url value="/community/gallery_detail.jsp"/>">
						<img src="<c:url value="/img/community/ex.jpg"/>" alt="">
						<div class="inner">
							<p>3개월 전후</p>
							<div class="cf">
								<p class="fl">아이디</p>
								<div class="fr">2018.04.24</div>
							</div>
						</div>
					</a></li>
				</ul>
				<div class="write">
					<button type="button" class="btn btn-default" style="margin: 15px 1011px"><a id="write" href="<c:url value="/community/gallery_write.jsp"/>">글쓰기</a></button>
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