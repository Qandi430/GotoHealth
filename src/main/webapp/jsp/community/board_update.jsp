<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GoToHealth - Exercise</title>
<c:import url="/common/includeCss.jsp"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/community/common.css"/>"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/community/style.css"/>"/>
<!-- summernote -->
<link href="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script> 
<script src="http://netdna.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.js"></script> 
<link href="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.css" rel="stylesheet">
<script src="http://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.9/summernote.js"></script>
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
				<br>
				<br>
				<div class="box_notice">
					<div class="inner">※  &nbsp;모든 내역은 필수입니다.</div>
				</div>
					<form action="update.do" method="post" class="update" name="mForm" onsubmit="return doAction()">
						<table class="table_qna" width="100%" cellpadding="0" cellspacing="0">
							<tr>
								<th>제목 <span>*</span></th>
								<td><input type="text" name="title" value="${board.title}"></td>
							</tr>
							<tr>
							</tr>
							<tr>
								<th>내용 <span>*</span></th>
								<td><textarea name="content" id="summernote" style="resize: none; overflow-y: auto;">${board.content}</textarea></td>
							</tr>
						</table>
						<input type="hidden" name="no" value="${board.no}">
						<input type="hidden" name="typeParam" value="${typeParam}">
						<input type="hidden" name="pageNum" value="${pageNum}">
						<div class="box_buttons cf">
						<c:if test="${typeParam == 'notice'}">
							<a href="<c:url value='detail.do?no=${board.no}&typeParam=notice&pageNum=${pageNum}'/>" class="btn_left">취소하기</a>
						</c:if>
						<c:if test="${typeParam == 'free'}">
							<a href="<c:url value='detail.do?no=${board.no}&typeParam=free&pageNum=${pageNum}'/>" class="btn_left">취소하기</a>
						</c:if>
						<c:if test="${typeParam == 'gallery'}">
							<a href="<c:url value='detail.do?no=${board.no}&typeParam=gallery&pageNum=${pageNum}'/>" class="btn_left">취소하기</a>
						</c:if>
						<c:if test="${typeParam == 'qna'}">
							<a href="<c:url value='detail.do?no=${board.no}&typeParam=qna&pageNum=${pageNum}'/>" class="btn_left">취소하기</a>
						</c:if>
						<c:if test="${typeParam == 'exercise'}">
							<a href="<c:url value='detail.do?no=${board.no}&typeParam=exercise&pageNum=${pageNum}'/>" class="btn_left">취소하기</a>
						</c:if>
						<c:if test="${typeParam == 'exerciseChest'}">
							<a href="<c:url value='detail.do?no=${board.no}&typeParam=exerciseChest&pageNum=${pageNum}'/>" class="btn_left">취소하기</a>
						</c:if>
						<c:if test="${typeParam == 'exerciseBack'}">
							<a href="<c:url value='detail.do?no=${board.no}&typeParam=exerciseBack&pageNum=${pageNum}'/>" class="btn_left">취소하기</a>
						</c:if>
						<c:if test="${typeParam == 'exerciseLeg'}">
							<a href="<c:url value='detail.do?no=${board.no}&typeParam=exerciseLeg&pageNum=${pageNum}'/>" class="btn_left">취소하기</a>
						</c:if>
						<c:if test="${typeParam == 'exerciseShoulder'}">
							<a href="<c:url value='detail.do?no=${board.no}&typeParam=exerciseShoulder&pageNum=${pageNum}'/>" class="btn_left">취소하기</a>
						</c:if>
						<c:if test="${typeParam == 'exerciseArm'}">
							<a href="<c:url value='detail.do?no=${board.no}&typeParam=exerciseArm&pageNum=${pageNum}'/>" class="btn_left">취소하기</a>
						</c:if>
						<c:if test="${typeParam == 'exerciseAbs'}">
							<a href="<c:url value='detail.do?no=${board.no}&typeParam=exerciseAbs&pageNum=${pageNum}'/>" class="btn_left">취소하기</a>
						</c:if>
						<c:if test="${typeParam == 'exerciseEtc'}">
							<a href="<c:url value='detail.do?no=${board.no}&typeParam=exerciseEtc&pageNum=${pageNum}'/>" class="btn_left">취소하기</a>
						</c:if>
							<button>
								<a class="btn_right" onclick="return doAction()">수정하기</a>
							</button>
						</div>
				</form>
			</div>
		</div>
		<!-- //container -->
	</div>
	<c:import url="/common/footer.jsp"/>
	<script src="<c:url value="/js/community/script.js"/>"></script>
	<script type="text/javascript">
	$(function(){
		$('#summernote').summernote({
			height: 600,
			fontNames : [ '맑은고딕', 'Arial', 'Arial Black', 'Comic Sans MS', 'Courier New', ],
			fontNamesIgnoreCheck : [ '맑은고딕' ],
			focus: true,
			callbacks: {
				onImageUpload: function(files, editor, welEditable) {
		            for (var i = files.length - 1; i >= 0; i--) {
		            	sendFile(files[i], this);
		            }
		        }
			}
		});
	})
	
	function sendFile(file, el) {
		var form_data = new FormData();
      	form_data.append('file', file);
      	$.ajax({
        	data: form_data,
        	type: "POST",
        	url: '/gth/board/writeForm.do',
        	cache: false,
        	contentType: false,
        	enctype: 'multipart/form-data',
        	processData: false,
        	success: function(img_name) {
          		$(el).summernote('editor.insertImage', img_name);
        	}
      	});
    } 
	
    function doAction() {
        var f = document.mForm ; 

        if(f.title.value == "") {
            alert("제목을 입력하세요");
            f.title.focus();
            return false;
        }

        if(f.content.value == "") {
            alert("내용을 입력하세요");
            f.content.focus();
            return false;
        }
        
        return true;
    }    
	</script>
</body>
</html>