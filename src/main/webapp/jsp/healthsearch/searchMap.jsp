<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GoToHealth - Search</title>
<c:import url="/common/includeCss.jsp"/>
<style type="text/css">
	.stWrap{
	margin-top: 30px;
}
.stNav::after{
    content:'';
    display: block;
    clear: both;
}
.stNav li{
    display: block;
    float: left;
}
.stNav li a{
    display: block;
    text-align: center;
    padding: 5px 10px;
    background: #4A83FD;
    color: #fff;
    transition: all 0.5s;
}
.stNav li.active a{
    background: #000;
}
.stNav li:first-child a{
    border-radius: 10px 0 0 0 ;
}
.stNav li:last-child a{
    border-radius:0  10px 0 0;
}
.stCon{
    background: #000;
    border-radius:0  10px 10px 10px;
}
.stCon > div:after{
    display: block;
    clear: both;
    content: '';
}
.stCon > div{
    min-height: 270px;
    display: none;
    color: #fff;
    padding: 10px;
}
.stCon > div.active{
    display: block;
}
.stCon .imgBox{
    width: 50%;
    float: left;
    padding: 0 10px;
}
.stCon .textBox{
    width: 50%;
    float: left;
    padding: 0 10px;
  	
}

</style>
 <link href="<c:url value="/searchMap/css/style2.css"/>" rel="stylesheet" type="text/css"/> 

</head>
<body>
	<c:import url="/common/header.jsp"/>
	<div id="wrap">
		<div class="container" style="padding-top:10px;">
			<div class="searchWrap">
				<!--  -->
				
<div class="map_wrap" >

    <div id="map" style="width:100%;height:140%;position:relative;overflow:hidden;"></div>
    <div class="hAddr">
        <span class="title">지도중심기준 행정동 주소정보</span>
        <span id="centerAddr"></span>
    </div>

    <div id="map" style="width:100%;height:100%;position:relative;overflow:hidden;"></div>

    <div id="menu_wrap" class="bg_white">
        <div class="option">
            <div>
                <form onsubmit="searchPlaces(); return false;">
                    키워드 : <input type="text" value="" id="keyword" size="15"> 
                    <button type="submit">검색하기</button> 
                </form>
            </div>
        </div>
        <hr>
        <ul id="placesList"></ul>
        <div id="pagination"></div>
    </div>
    
</div>
				
				
				
				<!--  -->
			</div>
			
			
			<!--트레이너 화면단  -->
			<div class="searchTrainer">
				<div class="row" style="margin-top:150px">
					<div class="col-md-6" >
						<div class="stWrap">
							<ul class="stNav">
								<li class="active" data-target="con1"><a href="#" >정보</a></li>
								<li data-target="con2"><a href="#" >정보2</a></li>
								<li data-target="con3"><a href="#" >정보3</a></li>
								<li data-target="con4"><a href="#" >정보4</a></li>
							</ul>
							<div class="stCon">
								<div class="con1 active">
									<div class="imgBox">
										<a href="#" data-toggle="modal" data-target="#trPic"><img src="<c:url value="/img/searchMap/trainer1.jpg"/>" alt="" class="img-responsive center-block"></a>
									</div>
									<div class="textBox">
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
									</div>
								</div>
								<div class="con2">
									정보 2
								</div>
								<div class="con3">
									정보3
								</div>
								<div class="con4">
									정보 4
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="stWrap">
							<ul class="stNav">
								<li class="active" data-target="con1"><a href="#" >정보</a></li>
								<li data-target="con2"><a href="#" >정보2</a></li>
								<li data-target="con3"><a href="#" >정보3</a></li>
								<li data-target="con4"><a href="#" >정보4</a></li>
							</ul>
							<div class="stCon">
								<div class="con1 active">
									<div class="imgBox">
										<a href="#"  data-toggle="modal" data-target="#trPic"><img src="<c:url value="/img/searchMap/trainer1.jpg"/>" alt="" class="img-responsive center-block"></a>
									</div>
									<div class="textBox">
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
									</div>
								</div>
								<div class="con2">
									정보 2
								</div>
								<div class="con3">
									정보3
								</div>
								<div class="con4">
									정보 4
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="stWrap">
							<ul class="stNav">
								<li class="active" data-target="con1"><a href="#" >정보</a></li>
								<li data-target="con2"><a href="#" >정보2</a></li>
								<li data-target="con3"><a href="#" >정보3</a></li>
								<li data-target="con4"><a href="#" >정보4</a></li>
							</ul>
							<div class="stCon">
								<div class="con1 active">
									<div class="imgBox">
										<a href="#" data-toggle="modal" data-target="#trPic"><img src="<c:url value="/img/searchMap/trainer1.jpg"/>" alt="" class="img-responsive center-block"></a>
									</div>
									<div class="textBox">
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
									</div>
								</div>
								<div class="con2">
									정보 2
								</div>
								<div class="con3">
									정보3
								</div>
								<div class="con4">
									정보 4
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="stWrap">
							<ul class="stNav">
								<li class="active" data-target="con1"><a href="#" >정보</a></li>
								<li data-target="con2"><a href="#" >정보2</a></li>
								<li data-target="con3"><a href="#" >정보3</a></li>
								<li data-target="con4"><a href="#" >정보4</a></li>
							</ul>
							<div class="stCon">
								<div class="con1 active">
									<div class="imgBox">
										<a href="#" data-toggle="modal" data-target="#trPic"><img src="<c:url value="/img/searchMap/trainer1.jpg"/>" alt="" class="img-responsive center-block"></a>
									</div>
									<div class="textBox">
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
									</div>
								</div>
								<div class="con2">
									정보 2
								</div>
								<div class="con3">
									정보3
								</div>
								<div class="con4">
									정보 4
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="stWrap">
							<ul class="stNav">
								<li class="active" data-target="con1"><a href="#" >정보</a></li>
								<li data-target="con2"><a href="#" >정보2</a></li>
								<li data-target="con3"><a href="#" >정보3</a></li>
								<li data-target="con4"><a href="#" >정보4</a></li>
							</ul>
							<div class="stCon">
								<div class="con1 active">
									<div class="imgBox">
										<a href="#" data-toggle="modal" data-target="#trPic"><img src="<c:url value="/img/searchMap/trainer1.jpg"/>" alt="" class="img-responsive center-block"></a>
									</div>
									<div class="textBox">
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
									</div>
								</div>
								<div class="con2">
									정보 2
								</div>
								<div class="con3">
									정보3
								</div>
								<div class="con4">
									정보 4
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="stWrap">
							<ul class="stNav">
								<li class="active" data-target="con1"><a href="#" >정보</a></li>
								<li data-target="con2"><a href="#" >정보2</a></li>
								<li data-target="con3"><a href="#" >정보3</a></li>
								<li data-target="con4"><a href="#" >정보4</a></li>
							</ul>
							<div class="stCon">
								<div class="con1 active">
									<div class="imgBox">
										<a href="#" data-toggle="modal" data-target="#trPic"><img src="<c:url value="/img/searchMap/trainer1.jpg"/>" alt="" class="img-responsive center-block"></a>
									</div>
									<div class="textBox">
										Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
									</div>
								</div>
								<div class="con2">
									정보 2
								</div>
								<div class="con3">
									정보3
								</div>
								<div class="con4">
									정보 4
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- Modal -->
	<div class="modal fade" id="trPic" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
	  <div class="modal-dialog">
	    <div class="modal-content">
	      <div class="modal-header">
	        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
	        <h4 class="modal-title" id="myModalLabel">trainer name</h4>
	      </div>
	      <div class="modal-body">
	        <img src="" class="img-responsive center-block"/>
	      </div>
	      <div class="modal-footer">
	        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
	      </div>
	    </div>
	  </div>
	</div>
	<c:import url="/common/footer.jsp"/>
	<c:import url="/common/includeJs.jsp"/>
	<script src="<c:url value="/js/healthsearch/script.js"/>"></script>
	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b75a51b551d9bdf76c11d18c7194695e&libraries=services"></script>
<script src="../searchMap/js/mapscript.js">
</script>
</body>
</html>