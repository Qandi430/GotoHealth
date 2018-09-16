<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GoToHealth - MyPage</title>
<c:import url="/common/includeCss.jsp"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/member/css/style.css"/>"/>
</head>
<body>
	<c:import url="/common/header.jsp"/>
	<div id="wrap" class="myPage">
        <div class="container">
            <h2 class="page_title">My Page</h2>
            <div role="tabpanel">
            <!-- Nav tabs -->
            <ul class="tab_btn" role="tablist">
                <li role="presentation" class="active"><a href="#message" aria-controls="message" role="tab" data-toggle="tab">쪽지함</a></li>
                <li role="presentation"><a href="#myTable" aria-controls="myTable" role="tab" data-toggle="tab">내가 쓴 글</a></li>
                <li role="presentation"><a href="#myInfo" aria-controls="myInfo" role="tab" data-toggle="tab">내 정보</a></li>
                <li role="presentation"><a href="#trainerInfo" aria-controls="trainerInfo" role="tab" data-toggle="tab">트레이너 정보</a></li>
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
                            <form action="">
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
                                <div class="inputWrap">
                                    <a href="#" id="submit">수정</a>
                                    <a href="#" id="drop">탈퇴</a>
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
	<script src="<c:url value="/member/js/script.js"/>"></script>
</body>
</html>