<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GoToHealth - MyPage</title>
<c:import url="/common/includeCss.jsp"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/member/style.css"/>"/>
<script language="javascript">
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("팝업API 호출 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "abc.go.kr";

function goPopup(){
	// 주소검색을 수행할 팝업 페이지를 호출합니다.
	// 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrLinkUrl.do)를 호출하게 됩니다.
	var pop = window.open("<c:url value="/jsp/member/jusoPopup.jsp"/>","pop","width=570,height=420, scrollbars=yes, resizable=yes"); 
	
	// 모바일 웹인 경우, 호출된 페이지(jusopopup.jsp)에서 실제 주소검색URL(http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do)를 호출하게 됩니다.
    //var pop = window.open("/popup/jusoPopup.jsp","pop","scrollbars=yes, resizable=yes"); 
}
    <% 
	request.setCharacterEncoding("UTF-8");  //한글깨지면 주석제거
	//request.setCharacterEncoding("EUC-KR");  //해당시스템의 인코딩타입이 EUC-KR일경우에
	String inputYn = request.getParameter("inputYn"); 
	String roadFullAddr = request.getParameter("roadFullAddr"); 
	String roadAddrPart1 = request.getParameter("roadAddrPart1"); 
	String roadAddrPart2 = request.getParameter("roadAddrPart2"); 
	String engAddr = request.getParameter("engAddr"); 
	String jibunAddr = request.getParameter("jibunAddr"); 
	String zipNo = request.getParameter("zipNo"); 
	String addrDetail = request.getParameter("addrDetail"); 
	String admCd    = request.getParameter("admCd");
	String rnMgtSn = request.getParameter("rnMgtSn");
	String bdMgtSn  = request.getParameter("bdMgtSn");
	String detBdNmList  = request.getParameter("detBdNmList");	
	/** 2017년 2월 추가제공 **/
	String bdNm  = request.getParameter("bdNm");
	String bdKdcd  = request.getParameter("bdKdcd");
	String siNm  = request.getParameter("siNm");
	String sggNm  = request.getParameter("sggNm");
	String emdNm  = request.getParameter("emdNm");
	String liNm  = request.getParameter("liNm");
	String rn  = request.getParameter("rn");
	String udrtYn  = request.getParameter("udrtYn");
	String buldMnnm  = request.getParameter("buldMnnm");
	String buldSlno  = request.getParameter("buldSlno");
	String mtYn  = request.getParameter("mtYn");
	String lnbrMnnm  = request.getParameter("lnbrMnnm");
	String lnbrSlno  = request.getParameter("lnbrSlno");
	/** 2017년 3월 추가제공 **/
	String emdNo  = request.getParameter("emdNo");

%>

function jusoCallBack(roadFullAddr,roadAddrPart1,addrDetail,roadAddrPart2,engAddr, jibunAddr, zipNo, admCd, rnMgtSn, bdMgtSn,detBdNmList,bdNm,bdKdcd,siNm,sggNm,emdNm,liNm,rn,udrtYn,buldMnnm,buldSlno,mtYn,lnbrMnnm,lnbrSlno,emdNo){
		// 팝업페이지에서 주소입력한 정보를 받아서, 현 페이지에 정보를 등록합니다.
		//document.getElementById("roadFullAddr").value = roadFullAddr;
		//document.getElementById("roadAddrPart1").value = roadAddrPart1;
		//document.getElementById("roadAddrPart2").value = roadAddrPart2;
		document.getElementById("addrDetail").value = addrDetail;
		//document.getElementById("engAddr").value = engAddr;
		//document.getElementById("jibunAddr").value = jibunAddr;
		document.getElementById("zipNo").value = zipNo;
		//document.getElementById("admCd").value = admCd;
		//document.getElementById("rnMgtSn").value = rnMgtSn;
		//document.getElementById("bdMgtSn").value = bdMgtSn;
		//document.getElementById("detBdNmList").value = detBdNmList;
		/** 2017년 2월 추가제공 **/
		//document.getElementById("bdNm").value = bdNm;
		//document.getElementById("bdKdcd").value = bdKdcd;
		document.getElementById("siNm").value = siNm;
		document.getElementById("sggNm").value = sggNm+" "+emdNm;
		//document.getElementById("emdNm").value = emdNm;
		//document.getElementById("liNm").value = liNm;
		//document.getElementById("rn").value = rn;
		//document.getElementById("udrtYn").value = udrtYn;
		//document.getElementById("buldMnnm").value = buldMnnm;
		//document.getElementById("buldSlno").value = buldSlno;
		//document.getElementById("mtYn").value = mtYn;
		//document.getElementById("lnbrMnnm").value = lnbrMnnm;
		//document.getElementById("lnbrSlno").value = lnbrSlno;
		/** 2017년 3월 추가제공 **/
		//document.getElementById("emdNo").value = emdNo;
		
}

</script>
</head>
<body>
	<c:import url="/common/header.jsp"/>
	<div id="wrap" class="myPage">
        <div class="container">
            <h2 class="page_title">My Page</h2>
            <div role="tabpanel">
            <!-- Nav tabs -->
            <ul class="tab_btn" role="tablist">
                <li role="presentation" class="message_btn active"><a href="#message" aria-controls="message" role="tab" data-toggle="tab">쪽지함</a></li>
                <li role="presentation" class="myTable_btn"><a href="#myTable" aria-controls="myTable" role="tab" data-toggle="tab">내가 쓴 글</a></li>
                <li role="presentation" class="myInfo_btn"><a href="#myInfo" aria-controls="myInfo" role="tab" data-toggle="tab">내 정보</a></li>
                <c:if test="${user.type eq 'trainer' }">
                	<li role="presentation" class="trainerInfo_btn"><a href="#trainerInfo" aria-controls="trainerInfo" role="tab" data-toggle="tab">트레이너 정보</a></li>
                </c:if>
            </ul>
		
            <!-- Tab panes -->
            <div class="tab-content">
                <div role="tabpanel" class="tab-pane active" id="message">
                    <h5>쪽지 함</h5>
                    <div class="messageList">
                        <ul class="cf">
                            <li class="active recive"><a href="#">받은 쪽지함</a></li>
                            <li class="sned"><a href="#">보낸 쪽지함</a></li>
                        </ul>
                    </div>
                    <div class="messageContents">
                        <div class="contentsWrap reciveMessage active">
                            <div class="contentsHeader cf">
                                <div class="name">보낸사람</div>
                                <div class="title">제목</div>
                                <div class="date">날짜</div>
                                <div class="chk">확인</div>
                            </div>
                            <ul class="contentsBody cf">
                                <li>
                                    <div class="name">관리자</div>
                                    <div class="title"><a href="#"  data-toggle="modal" data-target="#myModal">제목부분</a></div>
                                    <div class="date">2018/09.14</div>
                                    <div class="chk">읽음</div>
                                </li>
                                <li>
                                    <div class="name">관리자</div>
                                    <div class="title"><a href="#"  data-toggle="modal" data-target="#myModal">제목부분</a></div>
                                    <div class="date">2018/09.14</div>
                                    <div class="chk">읽음</div>
                                </li>
                                <li>
                                    <div class="name">관리자</div>
                                    <div class="title"><a href="#"  data-toggle="modal" data-target="#myModal">제목부분</a></div>
                                    <div class="date">2018/09.14</div>
                                    <div class="chk">읽음</div>
                                </li>
                                <li>
                                    <div class="name">관리자</div>
                                    <div class="title"><a href="#"  data-toggle="modal" data-target="#myModal">제목부분</a></div>
                                    <div class="date">2018/09.14</div>
                                    <div class="chk">읽음</div>
                                </li>
                                <li>
                                    <div class="name">관리자</div>
                                    <div class="title"><a href="#"  data-toggle="modal" data-target="#myModal">제목부분</a></div>
                                    <div class="date">2018/09.14</div>
                                    <div class="chk">읽음</div>
                                </li>
                                
                            </ul>
                        </div>
                        <div class="contentsWrap sendMessage">
                            <div class="contentsHeader cf">
                                <div class="name">받는사람</div>
                                <div class="title">제목</div>
                                <div class="date">날짜</div>
                                <div class="chk">확인</div>
                            </div>
                            <ul class="contentsBody cf">
                                <li>
                                    <div class="name">관리자</div>
                                    <div class="title"><a href="#"  data-toggle="modal" data-target="#myModal">제목부분</a></div>
                                    <div class="date">2018/09.14</div>
                                    <div class="chk">읽음</div>
                                </li>
                                <li>
                                    <div class="name">관리자</div>
                                    <div class="title"><a href="#"  data-toggle="modal" data-target="#myModal">제목부분</a></div>
                                    <div class="date">2018/09.14</div>
                                    <div class="chk">읽음</div>
                                </li>
                                <li>
                                    <div class="name">관리자</div>
                                    <div class="title"><a href="#"  data-toggle="modal" data-target="#myModal">제목부분</a></div>
                                    <div class="date">2018/09.14</div>
                                    <div class="chk">읽음</div>
                                </li>
                                <li>
                                    <div class="name">관리자</div>
                                    <div class="title"><a href="#"  data-toggle="modal" data-target="#myModal">제목부분</a></div>
                                    <div class="date">2018/09.14</div>
                                    <div class="chk">읽음</div>
                                </li>
                                <li>
                                    <div class="name">관리자</div>
                                    <div class="title"><a href="#"  data-toggle="modal" data-target="#myModal">제목부분</a></div>
                                    <div class="date">2018/09.14</div>
                                    <div class="chk">읽음</div>
                                </li>
                                
                            </ul>
                        </div>
                        <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                        <div class="modal-dialog">
                            <div class="modal-content">
                            <div class="modal-header">
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                                <h4 class="modal-title" id="myModalLabel">Modal title</h4>
                            </div>
                            <div class="modal-body">
                                ...
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                <button type="button" class="btn btn-primary">Save changes</button>
                            </div>
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
                <div role="tabpanel" class="tab-pane" id="myTable">
                        <h5>내가 쓴 게시물</h5>
                    <table class="table myTable">
                        <colgroup>
                            <col width="10%"/>
                            <col width=""/>
                            <col width="10%"/>
                            <col width="10%"/>
                            <col width="10%"/>
                        </colgroup>
                        <thead>
                            <tr>
                                <th>타입</th>
                                <th>제목</th>
                                <th>날짜</th>
                                <th>조회수</th>
                                <th>답글</th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>자유게시판</td>
                                <td><a href="#">제목입니다</a></td>
                                <td>2018.09.15</td>
                                <td>100</td>
                                <td>1</td>
                            </tr>
                            <tr>
                                <td>자유게시판</td>
                                <td><a href="#">제목입니다</a></td>
                                <td>2018.09.15</td>
                                <td>100</td>
                                <td>1</td>
                            </tr>
                            <tr>
                                <td>자유게시판</td>
                                <td><a href="#">제목입니다</a></td>
                                <td>2018.09.15</td>
                                <td>100</td>
                                <td>1</td>
                            </tr>
                            <tr>
                                <td>자유게시판</td>
                                <td><a href="#">제목입니다</a></td>
                                <td>2018.09.15</td>
                                <td>100</td>
                                <td>1</td>
                            </tr>
                            <tr>
                                <td>자유게시판</td>
                                <td><a href="#">제목입니다</a></td>
                                <td>2018.09.15</td>
                                <td>100</td>
                                <td>1</td>
                            </tr>
                            <tr>
                                <td>자유게시판</td>
                                <td><a href="#">제목입니다</a></td>
                                <td>2018.09.15</td>
                                <td>100</td>
                                <td>1</td>
                            </tr>
                        </tbody>
                    </table>
                </div>
                <div role="tabpanel" class="tab-pane" id="myInfo">
                        <h5>내정보</h5>
                        <div class="modifyWrap">
                            <form action="<c:url value="/updateMember.do"/>" method="POST" id="updateMember" name="updateMember">
                                <div class="inputWrap">
                                <label for="member_id">ID</label>
                                    <input type="text" name="member_id" id="member_id" value="아이디" readonly>
                                    <span class="barColor"></span>
                                </div>
                                <div class="inputWrap">
                                    <label for="member_pw">password</label>
                                    <input type="password" name="member_pw" id="member_pw"  placeholder="비밀번호를 입력해주세요">
                                    <span class="barColor"></span>
                                </div>
                                <div class="inputWrap">
                                        <label for="member_pw">password Confirm</label>
                                        <input type="password" name="confirm_pw" id="confirm_pw"  placeholder="비밀번호를 다시 입력해주세요">
                                        <span class="barColor"></span>
                                    </div>
                                <div class="inputWrap">
                                    <label for="member_pw">E-mail</label>
                                    <input type="email" name="member_mail" id="member_mail"  placeholder="이메일을 입력해주세요">
                                    <span class="barColor"></span>
                                </div>
                                <div class="addrWrap" onClick="goPopup();" style="margin-top: 30px;">
			                        <div class="inputWrap">
			                            <label for="">주소1</label>
			                            <input type="text" name="member_addr1" id="siNm" readonly>   
			                        </div>
			                        <div class="inputWrap">
			                            <label for="">주소2</label>
			                            <input type="text" name="member_addr2" id="sggNm" readonly>
			                        </div>
			                        <div class="inputWrap">
			                            <label for="">상세주소</label>
			                            <input type="text" name="member_addr3" id="addrDetail" readonly>
			                        </div>
			                        <div class="inputWrap">
			                            <label for="">우편번호</label>
			                            <input type="text" name="member_zipNo" id="zipNo" readonly>  
			                        </div>
			                    </div>
                                <div class="inputWrap">
                                    <a href="#" id="submit">수정</a>
                                    <a href="<c:url value="/deleteMember.do?id=${user.id}"/>" id="drop">탈퇴</a>
                                </div>
                            </form>
                        </div>
                        <script>
                            
                        </script>
                </div>
                <div role="tabpanel" class="tab-pane" id="trainerInfo">
                        <h5>트레이너 정보</h5>
                        <div class="modifyWrap">
                            <form action="">
                                <div class="inputWrap">
                                        <label for="member_id">ID</label>
                                    <input type="text" name="member_id" id="member_id" value="아이디" readonly value="${user.id}">
                                    <span class="barColor"></span>
                                </div>
                                <div class="inputWrap">
                                    <label for="member_pw">password</label>
                                    <input type="password" name="member_pw" id="member_pw"  placeholder="비밀번호를 입력해주세요">
                                    <span class="barColor"></span>
                                </div>
                                <div class="inputWrap">
                                        <label for="member_pw">password Confirm</label>
                                        <input type="password" name="confirm_pw" id="confirm_pw"  placeholder="비밀번호를 다시 입력해주세요">
                                        <span class="barColor"></span>
                                    </div>
                                <div class="inputWrap">
                                    <label for="member_pw">E-mail</label>
                                    <input type="email" name="member_mail" id="member_mail"  placeholder="이메일을 입력해주세요" value="${user.email}">
                                    <span class="barColor"></span>
                                </div>
                                <div class="inputWrap">
                                    <a href="#" id="submit">수정</a>

                                </div>
                            </form>
                        </div>
                </div>
            </div>

            </div>
        </div>
    </div>
    <c:import url="/common/footer.jsp"/>
	<c:import url="/common/includeJs.jsp"/>
	<script src="<c:url value="/js/member/script.js"/>"></script>
	<script>
		$(".myInfo_btn").click(function(){
			$.ajax({
				type : "GET",
				url : "/gth/updateMemberForm.do",
				success : function(data){
					$("#member_id").val(data.id)
					$("#member_pw").val(data.pass)
					$("#member_mail").val(data.email)
					$("#siNm").val(data.addr1)
					$("#sggNm").val(data.addr2)
					$("#addrDetail").val(data.addr3)
					$("#zipNo").val(data.postnum)
					console.log(data)
				}
			})
		})
		$("#updateMember #submit").click(function(){
            if($("#member_pw").val()==''){
                alert("비밀번호를 입력해주세요")
                $("#member_pw").focus()
                return false;
            }
            if($("#confirm_pw").val()==''){
                alert("비밀번호 확인을 입력해 주세요")
                $("#confirm_pw").focus()
                return false;
            }
            if($("#member_pw").val() != $("#confirm_pw").val()){
                alert("비밀번호가 일치하지 않습니다.")
                $("#confirm_pw").val("").focus()
                return false;
            }
            $("#updateMember").submit();
		})
	</script>
	<script>
		var msg;
		<c:choose>
		    <c:when test="${alert eq 'y' }">
				msg = "등록된 회원정보가 존재하지 않습니다.";
				alert(msg);
		    </c:when>
		    <c:when test="${alert eq 's'}">
		        msg = "수정되었습니다.";
		        alert(msg);
		    </c:when>
		</c:choose>
		
	</script>
</body>
</html>