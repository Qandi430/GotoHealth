<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GoToHealth - Exercise</title>
<c:import url="/common/includeCss.jsp"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/community/css/common.css"/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/community/css/style.css"/>"/>
</head>
<body>
	<c:import url="/common/header.jsp"/>
	<div id="wrap">
		<!-- container -->
		<div class="container page_qna">
			<div class="inner">
				<ul class="tab_menu_category cf">
					<li class="way active"><a>운동방법</a></li>
				</ul>
				<div class="box_sort cf">
					<ul class="list_sort cf">
						<li><a href="javascript:;" class="active">전체</a></li>
						<li><a href="javascript:;">가슴</a></li>
						<li><a href="javascript:;">등</a></li>
						<li><a href="javascript:;">다리</a></li>
						<li><a href="javascript:;">어깨</a></li>
						<li><a href="javascript:;">팔</a></li>
						<li><a href="javascript:;">복근</a></li>
						<li><a href="javascript:;">유산소</a></li>
					</ul>
				</div>
				<br>
				<br>
				<div class="box_notice">
					<div class="inner">※ 파일 첨부를 제외한 모든 내역은 필수입니다.</div>
				</div>
				<table class="table_qna" width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<th>제목 <span>*</span></th>
						<td><input type="text" placeholder="제목을 입력하세요."></td>
					</tr>
					<tr>
					</tr>
					<tr>
						<th>파일 첨부</th>
						<td>
							<div class="cf">
								<input type="text" readonly="readonly" title="File Route" id="fileLoute" placeholder="파일을 첨부하세요.">
								<label for="file_qna" onchange="javascript:document.getElementById('fileLoute').value=this.value">파일선택<input type="file" id="file_qna"></label>
								<a href="javascript:;">+</a>
								<a href="javascript:;">-</a>
							</div>
						</td>
					</tr>
					<tr>
						<th>내용 <span>*</span></th>
						<td><textarea name="" id="" cols="30" rows="10" style="resize: none; overflow-y: auto;"></textarea></td>
					</tr>
				</table>
				<div class="box_buttons cf">
					<a href="<c:url value="/community/exercise_detail.jsp"/>" class="btn_left">취소하기</a>
					<a href="<c:url value="/community/exercise_detail.jsp"/>" class="btn_right">수정하기</a>
				</div>
			</div>
		</div>
		<!-- //container -->
	</div>
	<c:import url="/common/footer.jsp"/>
	<c:import url="/common/includeJs.jsp"/>
	<script src="<c:url value="/community/js/script.js"/>"></script>
</body>
</html>