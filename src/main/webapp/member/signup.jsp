<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GotoHealth - Signup</title>
<c:import url="/common/includeCss.jsp"/>
</head>
<body>
	<c:import url="/common/header.jsp"/>
	<div id="wrap" class="signUp">
        <div class="container">
            <h2 class="page_title">SignUp</h2>
            <div class="formWrap">
                <form action="">
                    <div class="inputWrap">
                            <label for="member_id">ID</label>
                        <input type="text" name="member_id" id="member_id" placeholder="아이디를 입력해주세요">
                        <span class="barColor"></span>
                        <a href="#" id="confirm_id">Confirm</a>
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
                    <div class="inputWrap">
                        <a href="#" id="submit">가입</a>
                    </div>
                </form>
                <script>
                    
                </script>
            </div>
        </div>
    </div>
    <c:import url="/common/footer.jsp"/>
	<c:import url="/common/includeJs.jsp"/>
</body>
</html>