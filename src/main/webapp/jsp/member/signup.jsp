<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GotoHealth - Signup</title>
<c:import url="/common/includeCss.jsp"/>
<link rel="stylesheet" href="<c:url value="/css/member/style.css"/>">
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
	<div id="wrap" class="signUp">
        <div class="container">
            <h2 class="page_title">SignUp</h2>
            <div class="formWrap">
                <form action="<c:url value="/signup.do"/>" method="POST" id="signUpForm">
                    <div class="inputWrap">
                        <label for="member_id">ID</label>
                        <input type="text" name="member_id" id="member_id" placeholder="아이디를 입력해주세요">
                        <span class="barColor"></span>
                        <a href="#" id="confirm_id">Confirm</a>
                    </div>
                    <div class="inputWrap">
                        <label for="member_id">이름</label>
                        <input type="text" name="member_name" id="member_name" placeholder="이름을 입력해주세요">
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
                    <div class="inputWrap radioWrap">
                    	<label for="member_type1">회원 타입</label>
                        <input type="radio" name="member_type" id="member_type1" value="normal" class="inline" checked>
                        <label for="member_type1" class="inline">일반회원</label>
                        <input type="radio" name="member_type" id="member_type2" value="trainer" class="inline">
                        <label for="member_type2" class="inline">트레이너</label>
                    </div>
                    <div class="inputWrap trFile">
                        <label for="member_trainer">트레이너 정보</label>
                        <input type="file" name="member_trainer" id="member_tainer">
                    </div>
                    <div class="inputWrap">
                        <a href="#" id="submit">가입</a>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <c:import url="/common/footer.jsp"/>
    <c:import url="/common/includeJs.jsp"/>
    <script>
        $(window).ready(function(){
			$(".radioWrap input").click(function(){
				console.log($("#member_type1").prop("checked"))
				var file = $(".trFile")
	            if($("#member_type2").prop("checked")==true){
	                file.slideDown(300)
	            }else{
	                file.slideUp(300)
	            }
			})
			$("#confirm_id").click(function(){
				var idArr = new Array();
				<c:forEach var="item" items="${list}">
					idArr.push( '${item}' );
				</c:forEach>
				if($("#member_id").val() ==""){
					alert("아이디를 입력해주세요.")
					$("#member_id").val("").focus()
					return false;
				}
				for(var i = 0; i<idArr.length; i++){
					if($("#member_id").val() == idArr[i]){
						alert("중복된 아이디가 존재합니다.")
						$("#member_id").val("").focus()
						return false;
					}
				}
				alert("중복된 아이디가 없습니다.")
				$("#member_pw").focus();
				
			})
			$("#submit").click(function(){
				if($("#member_id").val()==''){
                    alert("ID를 입력해주세요")
                    $("#member_id").focus();
                    return false;
                }
				if($("#member_name").val()==''){
                    alert("이름을 입력해주세요")
                    $("#member_name").focus();
                    return false;
                }
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
                $("#signUpForm").submit();
			})
        })
    </script>
    
</body>
</html>