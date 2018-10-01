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
								<td class="cnt"><span class="rec_count"></span></td>
							</c:if>	
						</c:if>
					</tr>
					<tr>
						<td colspan="8">${board.content}</td>
					</tr>	
				</table>
				<c:if test="${typeParam != 'notice' and typeParam != 'qna'}">
					<div class="rec">
					<button class="w3-button w3-black w3-round" id="rec_update" style="position: relative;">
						<i class="fa fa-heart" style="font-size: 65px; color: rgb(185, 36, 36)"></i>
						<span style="font-size: 17px; color: white; width: 40px; position:absolute; top:17px; left: 13px">추천</span>
					</button> 
					</div>	
				</c:if>	
					<div class="rn">
						<div style="width: 83px; margin: 0 auto;">
							<form action="replyForm.do">
								<c:if test="${typeParam == 'qna'}">
									<input type="hidden" name="no" value="${board.no}">
									<button class="btn btn-default btn-lg">답변하기</button>
								</c:if>
							</form>
						</div>
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
							<td style="border-bottom: none; padding-bottom: 0" ><textarea name="comment_content" id="comment_content" cols="30" rows="10" placeholder="댓글을 입력해주세요." style="resize: none; overflow-y: auto;"></textarea></td>
						</tr>
						<tr>
							<td><a id="comment" type="button" class="btn btn-default comment" style="float: right">등록</a></td>
						</tr>
					</table>
					<div id="commentList">

					</div>
				</c:if>	
			</div>
		</div>
	</div>
  <script type="text/javascript">
 	$(function(){
		// 추천버튼 클릭시(추천 추가 또는 추천 제거)
		$("#rec_update").click(function(){
			$.ajax({
				url: "recomUpdate.do",
                type: "POST",
                data: {
                    no: ${board.no},
                    id: 'ex'
                },
                success: function (result) {
                	if(result == 0) {
            			alert("추천!");
                	} else {
            			alert("추천 취소!");
                	}
			        recCount();
                },
			});
		});
		
		// 게시글 추천수
	    function recCount() {
			$.ajax({
				url: "recomCount.do",
                type: "POST",
                data: {
                    no: ${board.no}
                },
                success: function (count) {
                	$(".rec_count").html(count);
                },
			});
	    };
	    recCount();
	    getCommentList(${board.no});
	
		function getCommentList(no) {
			var xhr = new XMLHttpRequest();
			xhr.onreadystatechange = function() {
				if(xhr.readyState == 4) {
					if(xhr.status == 200) {
						var board = JSON.parse(xhr.responseText);
						var html = "<table class='table_qna comment' width='100%' cellpadding='0' cellspacing='0'>";
						for(let c of board.commentList) {
							html += "<tr style='border-top: 1px solid #6d686b'>";
							html += "<td>" + c.writer + "</td>";
							html += "<td style='text-align: right'>" + c.regDate + "</td>";
							html += "</tr>";
							html += "<tr>";
							html += "<td colspan='2' style='border-bottom: none'>" + c.content + "</td>";
							html += "</tr>";
							html += "<tr>";
							html += "<td colspan='2' id='b" + c.commentNo + "'>";
							html += "<span class='update-button' style='margin:0 0; float:right'>";
							html += "<button id='up" + c.commentNo + "' class='btn btn-default c_update' onclick='commentUpdateForm(" + c.commentNo + ",\"" + c.content + "\")'>수정</button>";
							html += "<button id='del" + c.commentNo + "' class='btn btn-default c_delete' onclick='commentDelete(" + c.commentNo + "," + c.no + ")'>삭제</button>";
							html += "</span>";
							html += "</td>";
							html += "</tr>";
							html += "<tr>";
							html += "<td colspan='2' style='border-bottom: none'>";
							html += "</td>";
							html += "</tr>";
						};
						html += "</table>";
						$("#commentList").html(html); 
						$("#comment_content").attr("placeholder", "댓글을 입력해주세요.").val("");
					};
				};
			};
			xhr.open("GET", "/gth/board/commentlist.do?no=" + no, true);
			xhr.send();
		};

    }); /* 추천, 최초 댓글 리스트 */	
    
	function getCommentList(no) {
		var xhr = new XMLHttpRequest();
		xhr.onreadystatechange = function() {
			if(xhr.readyState == 4) {
				if(xhr.status == 200) {
					var board = JSON.parse(xhr.responseText);
					var html = "<table class='table_qna comment' width='100%' cellpadding='0' cellspacing='0'>";
					for(let c of board.commentList) {
						html += "<tr style='border-top: 1px solid #6d686b'>";
						html += "<td>" + c.writer + "</td>";
						html += "<td style='text-align: right'>" + c.regDate + "</td>";
						html += "</tr>";
						html += "<tr>";
						html += "<td colspan='2' style='border-bottom: none'>" + c.content + "</td>";
						html += "</tr>";
						html += "<tr>";
						html += "<td colspan='2' id='b" + c.commentNo + "'>";
						html += "<span class='update-button' style='margin:0 0; float:right'>";
						html += "<button id='up" + c.commentNo + "' class='btn btn-default c_update' onclick='commentUpdateForm(" + c.commentNo + ",\"" + c.content + "\")'>수정</button>";
						html += "<button id='del" + c.commentNo + "' class='btn btn-default c_delete' onclick='commentDelete(" + c.commentNo + "," + c.no + ")'>삭제</button>";
						html += "</span>";
						html += "</td>";
						html += "</tr>";
						html += "<tr>";
						html += "<td colspan='2' style='border-bottom: none'>";
						html += "</td>";
						html += "</tr>";
					};
					html += "</table>";
					$("#commentList").html(html); 
					$("#comment_content").attr("placeholder", "댓글을 입력해주세요.").val("");
				};
			};
		};
		xhr.open("GET", "/gth/board/commentlist.do?no=" + no, true);
		xhr.send();
   	}; /* 리스트 */
    	
	$("#comment").click(function() {
		var no = ${board.no};
		var writer = 'writer';
		var content = document.getElementById("comment_content").value;
		$.ajax({
			type: "POST",
			url: "/gth/board/commentinsert.do",
			data: {no: no, writer: writer, content: content},
			success: function(data) {
				getCommentList(no);
			}
		});
	}); /* 등록 */
    
	function commentDelete(cno, no) {
		$.ajax({
			url: "/gth/board/commentdelete.do?cno=" + cno,
			success: function(data) {
				getCommentList(no);
			}
		});
	};/* 삭제 */
	
	function commentUpdateForm(cno, content) {
		var no = ${board.no};
		$("#b" + cno).append(
				$("<input type='text' id='input" + cno + "' class='input' value='" + content + "'/>"),
				$("<button id='update" + cno + "' class='btn btn-default updatebnt' onclick='Commentupdate(" + cno + ", " + no + ", " + "\"input" + cno + "\")'>").html("수정"),
				$("<button id='cancel" + cno + "' class='btn btn-default cancelbnt' onclick='Commentcancel()'>").html("취소")
		)
		$(".input").css("display", "none")
		$(".updatebnt").css("display", "none")
		$(".cancelbnt").css("display", "none") 
		$("#input" + cno).css("display", "inline").focus()
		$("#update" + cno).css("display", "inline")
		$("#cancel" + cno).css("display", "inline")
		
		$(".c_update").css("display", "inline")
		$(".c_delete").css("display", "inline")
		$("#up" + cno).css("display", "none")
		$("#del" + cno).css("display", "none")	
	};/* 수정  폼 */
	
	function Commentupdate(cno, no, id) {
		var content = document.querySelector("#" + id).value; 
		
		$.ajax({
			type: "POST",
			url: "/gth/board/commentupdate.do",
			data: {cno: cno, content: content},
			success: function(data) {
				getCommentList(no)
			}
		});
	};/* 수정  */
	
	function Commentcancel() {
		$(".input").css("display", "none")
		$(".updatebnt").css("display", "none")
		$(".cancelbnt").css("display", "none")
	
		$(".c_update").css("display", "inline")
		$(".c_delete").css("display", "inline")
	};
  	</script>
	<c:import url="/common/footer.jsp"/>
	<c:import url="/common/includeJs.jsp"/>
	<script src="<c:url value="/js/community/script.js"/>"></script>
</body>
</html>