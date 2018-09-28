<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GoToHealth - Product</title>
<c:import url="/common/includeCss.jsp"/>
<link rel="stylesheet" type="text/css" href="<c:url value="/css/protain/style.css"/>"/>
<link></>
</head>
<body>
	<c:import url="/common/header.jsp"/>
	
	

	<div id="wrap">      
      <div class="subNav">
      	
        <ul class="subNav-list">
          <li class="subNav-list-item"  role="presentation"><a onclick="doAction('protain.do')" class="subNav-list-item-link" href="#popularity" aria-controls="popularity" role="tab" data-toggle="tab">인기도순</a></li>
          <li class="subNav-list-item" role="presentation"><a onclick="doAction('total.do')" class="subNav-list-item-link" href="#sales" aria-controls="sales" role="tab" data-toggle="tab">누적 판매순</a></li>
          <li class="subNav-list-item active" role="presentation"><a onclick="doAction('recent.do')" class="subNav-list-item-link" href="#latest" aria-controls="latest" role="tab" data-toggle="tab">최신 등록순</a></li>
          <li class="subNav-list-item" role="presentation"><a onclick="doAction('good.do')" class="subNav-list-item-link" href="#satisfaction" aria-controls="satisfaction" role="tab" data-toggle="tab">만족도순</a></li>
        </ul>
      </div><!-- end subNav -->
      <div class="tab-content">
	    <div role="tabpanel" class="tab-pane active" id="latest">
		              <c:forEach var="b" items="${listPro2}" varStatus="loop">
	    	<div class="block">
		        <a href="#">
		          <div class="box box_bowShadow">
		            <div class="split">
		              <div class="split-left">
		                <div class="totem">
		                  <p class="totem-hd">${loop.count}위 상품</p>
		                  <p class="totem-bd">${b.title}</p>
		                  <p class="totem-ft">${b.price}</p>
		                </div>
		              </div>
		              <div class="split-right">
		                <img src="${b.img}" alt="">
		              </div>
		            </div>
		          </div><!-- end box -->
		        </a>
		      </div><!-- end block -->

						</c:forEach>
	
	  </div>
      
	</div>
    <c:import url="/common/footer.jsp"/>
	<c:import url="/common/includeJs.jsp"/>
	
	<script>
		function doAction(callPage){
			
			location.href=callPage
			
		}
	</script>
</body>
</html>