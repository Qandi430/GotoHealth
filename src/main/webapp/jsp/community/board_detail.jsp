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
</head>
<body>
	<c:import url="/common/header.jsp"/>
	<div id="wrap">
		<!-- container -->
		<div class="container page_qna">
			<div class="inner">
				<c:if test="${typeParam == 'exercise'}">
					<ul class="tab_menu_category cf">
						<li class="way active"><a>운동방법</a></li>
					</ul>
					<div class="box_sort cf">
						<ul class="list_sort cf">
							<li><a href="exerciseList.do" class="active">전체</a></li>
							<li><a href="chestList.do">가슴</a></li>
							<li><a href="backList.do">등</a></li>
							<li><a href="legList.do">다리</a></li>
							<li><a href="shoulderList.do">어깨</a></li>
							<li><a href="armList.do">팔</a></li>
							<li><a href="absList.do">복근</a></li>
							<li><a href="etcList.do">유산소</a></li>
						</ul>
					</div>
				</c:if>
				<c:if test="${typeParam == 'exerciseChest'}">
					<ul class="tab_menu_category cf">
						<li class="way active"><a>운동방법</a></li>
					</ul>
					<div class="box_sort cf">
						<ul class="list_sort cf">
							<li><a href="exerciseList.do">전체</a></li>
							<li><a href="chestList.do" class="active">가슴</a></li>
							<li><a href="backList.do">등</a></li>
							<li><a href="legList.do">다리</a></li>
							<li><a href="shoulderList.do">어깨</a></li>
							<li><a href="armList.do">팔</a></li>
							<li><a href="absList.do">복근</a></li>
							<li><a href="etcList.do">유산소</a></li>
						</ul>
					</div>
				</c:if>
				<c:if test="${typeParam == 'exerciseBack'}">
					<ul class="tab_menu_category cf">
						<li class="way active"><a>운동방법</a></li>
					</ul>
					<div class="box_sort cf">
						<ul class="list_sort cf">
							<li><a href="exerciseList.do">전체</a></li>
							<li><a href="chestList.do">가슴</a></li>
							<li><a href="backList.do" class="active">등</a></li>
							<li><a href="legList.do">다리</a></li>
							<li><a href="shoulderList.do">어깨</a></li>
							<li><a href="armList.do">팔</a></li>
							<li><a href="absList.do">복근</a></li>
							<li><a href="etcList.do">유산소</a></li>
						</ul>
					</div>
				</c:if>
				<c:if test="${typeParam == 'exerciseLeg'}">
					<ul class="tab_menu_category cf">
						<li class="way active"><a>운동방법</a></li>
					</ul>
					<div class="box_sort cf">
						<ul class="list_sort cf">
							<li><a href="exerciseList.do">전체</a></li>
							<li><a href="chestList.do">가슴</a></li>
							<li><a href="backList.do">등</a></li>
							<li><a href="legList.do" class="active">다리</a></li>
							<li><a href="shoulderList.do">어깨</a></li>
							<li><a href="armList.do">팔</a></li>
							<li><a href="absList.do">복근</a></li>
							<li><a href="etcList.do">유산소</a></li>
						</ul>
					</div>
				</c:if>
				<c:if test="${typeParam == 'exerciseShoulder'}">
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
				</c:if>
				<c:if test="${typeParam == 'exerciseArm'}">
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
							<li><a href="armList.do" class="active">팔</a></li>
							<li><a href="absList.do">복근</a></li>
							<li><a href="etcList.do">유산소</a></li>
						</ul>
					</div>
				</c:if>
				<c:if test="${typeParam == 'exerciseAbs'}">
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
							<li><a href="absList.do" class="active">복근</a></li>
							<li><a href="etcList.do">유산소</a></li>
						</ul>
					</div>
				</c:if>
				<c:if test="${typeParam == 'exerciseEtc'}">
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
				</c:if>
				<c:if test="${typeParam == 'notice'}">
					<ul class="tab_menu_category cf">
						<li class="active"><a href="<c:url value="noticeList.do"/>">공지사항</a></li>
						<li><a href="<c:url value="freeList.do"/>">자유게시판</a></li>
						<li><a href="<c:url value="galleryList.do"/>">갤러리</a></li>
						<li><a href="<c:url value="qnaList.do"/>">질문과 답변</a></li>
				</ul>
				</c:if>
				<c:if test="${typeParam == 'free'}">
					<ul class="tab_menu_category cf">
						<li ><a href="<c:url value="noticeList.do"/>">공지사항</a></li>
						<li class="active"><a href="<c:url value="freeList.do"/>">자유게시판</a></li>
						<li><a href="<c:url value="galleryList.do"/>">갤러리</a></li>
						<li><a href="<c:url value="qnaList.do"/>">질문과 답변</a></li>
				</ul>
				</c:if>
				<c:if test="${typeParam == 'gallery'}">
					<ul class="tab_menu_category cf">
						<li><a href="<c:url value="noticeList.do"/>">공지사항</a></li>
						<li><a href="<c:url value="freeList.do"/>">자유게시판</a></li>
						<li class="active"><a href="<c:url value="galleryList.do"/>">갤러리</a></li>
						<li><a href="<c:url value="qnaList.do"/>">질문과 답변</a></li>
				</ul>
				</c:if>
				<c:if test="${typeParam == 'qna'}">
					<ul class="tab_menu_category cf">
						<li><a href="<c:url value="noticeList.do"/>">공지사항</a></li>
						<li><a href="<c:url value="freeList.do"/>">자유게시판</a></li>
						<li><a href="<c:url value="galleryList.do"/>">갤러리</a></li>
						<li class="active"><a href="<c:url value="qnaList.do"/>">질문과 답변</a></li>
				</ul>
				</c:if>
				<table class="table_qna" width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<th>제목</th>
						<td class="title" colspan="7">${board.title}</td>	
					</tr>
					<tr>
						<th>작성자</th>
						<td class="name">${board.writer}</td>
						<th>작성일</th>	
						<td class="reg-date"><fmt:formatDate value="${board.regDate}" pattern="yyyy.MM.dd HH:mm:ss"/></td>
						<c:if test="${typeParam != 'notice'}">
							<th>조회수</th>
							<td class="cnt">${board.viewCnt}</td>
							<c:if test="${typeParam != 'qna'}">
								<th>추천수</th>
								<td class="cnt">${board.viewCnt}</td>
							</c:if>	
						</c:if>
					</tr>
					<tr>
						<td colspan="8">${board.content}</td>
					</tr>	
				</table>
				<c:if test="${typeParam != 'notice' and typeParam != 'qna'}">
					<div class="rec">
						<button type="button" class="btn btn-warning btn-lg">추천</button>
					</div>	
				</c:if>	
					<div class="rn">
					</div>
				<div class="update-deletebutton">
					<a href="updateForm.do?no=${board.no}&typeParam=${typeParam}" type="button" class="btn btn-default btn-lg" style="color: black; text-decoration: none">수정</a>
					<a href="delete.do?no=${board.no}&typeParam=${typeParam}" type="button" class="btn btn-default btn-lg" style="color: black; text-decoration: none">삭제</a>
					<c:if test="${typeParam == 'exercise'}">
						<a href="<c:url value="exerciseList.do"/>" type="button" class="btn btn-default btn-lg" style="color: black; text-decoration: none">목록</a>
					</c:if>
					<c:if test="${typeParam == 'exerciseChest'}">
						<a href="<c:url value="chestList.do"/>" type="button" class="btn btn-default btn-lg" style="color: black; text-decoration: none">목록</a>
					</c:if>
					<c:if test="${typeParam == 'exerciseBack'}">
						<a href="<c:url value="backList.do"/>" type="button" class="btn btn-default btn-lg" style="color: black; text-decoration: none">목록</a>
					</c:if>
					<c:if test="${typeParam == 'exerciseLeg'}">
						<a href="<c:url value="legList.do"/>" type="button" class="btn btn-default btn-lg" style="color: black; text-decoration: none">목록</a>
					</c:if>
					<c:if test="${typeParam == 'exerciseShoulder'}">
						<a href="<c:url value="shoulderList.do"/>" type="button" class="btn btn-default btn-lg" style="color: black; text-decoration: none">목록</a>
					</c:if>
					<c:if test="${typeParam == 'exerciseArm'}">
						<a href="<c:url value="armList.do"/>" type="button" class="btn btn-default btn-lg" style="color: black; text-decoration: none">목록</a>
					</c:if>
					<c:if test="${typeParam == 'exerciseAbs'}">
						<a href="<c:url value="absList.do"/>" type="button" class="btn btn-default btn-lg" style="color: black; text-decoration: none">목록</a>
					</c:if>
					<c:if test="${typeParam == 'exerciseEtc'}">
						<a href="<c:url value="etcList.do"/>" type="button" class="btn btn-default btn-lg" style="color: black; text-decoration: none">목록</a>
					</c:if>
					<c:if test="${typeParam == 'notice'}">
						<a href="<c:url value="noticeList.do"/>" type="button" class="btn btn-default btn-lg" style="color: black; text-decoration: none">목록</a>
					</c:if>
					<c:if test="${typeParam == 'free'}">
						<a href="<c:url value="freeList.do"/>" type="button" class="btn btn-default btn-lg" style="color: black; text-decoration: none">목록</a>
					</c:if>
					<c:if test="${typeParam == 'gallery'}">
						<a href="<c:url value="galleryList.do"/>" type="button" class="btn btn-default btn-lg" style="color: black; text-decoration: none">목록</a>
					</c:if>
					<c:if test="${typeParam == 'qna'}">
						<a href="<c:url value="qnaList.do"/>" type="button" class="btn btn-default btn-lg" style="color: black; text-decoration: none">목록</a>
					</c:if>
				</div>	
				<div class="rn">
				</div>
				<c:if test="${typeParam != 'notice' and typeParam != 'qna'}">
					<table class="table_qna" width="100%" cellpadding="0" cellspacing="0">
						<tr>
							<td style="border-bottom: none; padding-bottom: 0" ><textarea name="" id="" cols="30" rows="10" placeholder="댓글을 입력해주세요." style="resize: none; overflow-y: auto;"></textarea></td>
						</tr>
						<tr>
							<td><a id="comment" href="<c:url value="/jsp/community/exercise_detail.jsp"/>" type="button" class="btn btn-default comment" style="float: right">등록</a></td>
						</tr>
					</table>
					<table class="table_qna comment" width="100%" cellpadding="0" cellspacing="0">
						<tr style="border-top: 1px solid #6d686b">
							<td>조성일</td>
							<td style="text-align: right">2015.03.22 13:31</td>
						</tr>
						<tr>
							<td colspan="2" style="border-bottom: none">가나다다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아</td>
						</tr>
						<tr>
							<td colspan="2">
								<span class="update-button">
									<button type="button" class="btn btn-default">수정</button>
									<button type="button" class="btn btn-default">삭제</button>
								</span>
							</td>
						</tr>
						<tr>
							<td colspan="2" style="border-bottom: none"></td>
						</tr>
						<tr style="border-top: 1px solid #6d686b">
							<td>조성일</td>
							<td style="text-align: right">2015.03.22 13:31</td>
						</tr>
						<tr>
							<td colspan="2" style="border-bottom: none">가나다다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아가나다라마바사아</td>
						</tr>
						<tr>
							<td colspan="2">
								<span class="update-button">
									<button type="button" class="btn btn-default">수정</button>
									<button type="button" class="btn btn-default">삭제</button>
								</span>
							</td>
						</tr>
						<tr>
							<td colspan="2" style="border-bottom: none"></td>
						</tr>
					</table>
				</c:if>	
			</div>
		</div>
	</div>
	<c:import url="/common/footer.jsp"/>
	<c:import url="/common/includeJs.jsp"/>
	<script src="<c:url value="/js/community/script.js"/>"></script>
</body>
</html>