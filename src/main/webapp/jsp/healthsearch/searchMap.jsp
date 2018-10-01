<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>GoToHealth - Search</title>
<c:import url="/common/includeCss.jsp" />
<style type="text/css">
.stWrap {
	margin-top: 30px;
}

.stNav::after {
	content: '';
	display: block;
	clear: both;
}

.stNav li {
	display: block;
	float: left;
}

.stNav li a {
	display: block;
	text-align: center;
	padding: 5px 10px;
	background: #4A83FD;
	color: #fff;
	transition: all 0.5s;
}

.stNav li.active a {
	background: #000;
}

.stNav li:first-child a {
	border-radius: 10px 0 0 0;
}

.stNav li:last-child a {
	border-radius: 0 10px 0 0;
}

.stCon {
	background: #000;
	border-radius: 0 10px 10px 10px;
}

.stCon>div:after {
	display: block;
	clear: both;
	content: '';
}

.stCon>div {
	min-height: 270px;
	display: none;
	color: #fff;
	padding: 10px;
}

.stCon>div.active {
	display: block;
}

.stCon .imgBox {
	width: 50%;
	float: left;
	padding: 0 10px;
}

.stCon .textBox {
	width: 50%;
	float: left;
	padding: 0 10px;
}


.close { float:right;}
.close:hover {cursor: pointer;}

</style>
<link href="<c:url value="/searchMap/css/style2.css"/>" rel="stylesheet"
	type="text/css" />

</head>
<body>
	<c:import url="/common/header.jsp" />
	<div id="wrap">
		<div class="container" style="padding-top: 10px;">
			<div class="searchWrap">
				<!--  -->

				<div class="map_wrap">

					<div id="map"
						style="width: 100%; height: 140%; position: relative; overflow: hidden;"></div>
					<div class="hAddr">
						<span class="title">지도중심기준 행정동 주소정보</span> <span id="centerAddr"></span>
					</div>

					<div id="map"
						style="width: 100%; height: 100%; position: relative; overflow: hidden;"></div>

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
			<div class="searchTrainer ">
				<div class="row" style="margin-top: 150px">
					<div class="col-md-6">
						<div class="stWrap">
							<ul class="stNav">
								<li class="active" data-target="con1"><a href="#">정보</a></li>
								<li data-target="con2"><a href="#">정보2</a></li>
								<li data-target="con3"><a href="#">정보3</a></li>
								<li data-target="con4"><a href="#">정보4</a></li>
							</ul>


							<div class="stCon">
								<div class="con1 active">
									<div class="imgBox">
										<a href="#" data-toggle="modal" data-target="#trPic"><img
											src="<c:url value="/img/searchMap/trainer1.jpg"/>" alt=""
											class="img-responsive center-block"></a>
									</div>
									<div class="textBox">
										<c:forEach var="t" items="${trainer}" begin="0" end="0">
이름 : ${t.name} <br>
주소 : ${t.addr1} <br>
${t.addr2} /
${t.addr3} <br>
키 : ${t.height}	<br>
몸무게 : ${t.weight} <br>
자기소개 : ${t.info} <br>
Email : ${t.email} <br>
											<div class="gymName">
												짐 : ${t.gymName} <br>
											</div>
									</div>

								</div>


								<div class="con2">약력 : ${t.history}</div>

								<div class="con3">정보3</div>
								<div class="con4">정보 4</div>
								</c:forEach>
							</div>
						</div>
					</div>


					<div class="col-md-6">
						<div class="stWrap">
							<ul class="stNav">
								<li class="active" data-target="con1"><a href="#">정보</a></li>
								<li data-target="con2"><a href="#">정보2</a></li>
								<li data-target="con3"><a href="#">정보3</a></li>
								<li data-target="con4"><a href="#">정보4</a></li>
							</ul>
							<div class="stCon">
								<div class="con1 active">
									<div class="imgBox">
										<a href="#" data-toggle="modal" data-target="#trPic"><img
											src="<c:url value="/img/searchMap/trainer1.jpg"/>" alt=""
											class="img-responsive center-block"></a>
									</div>
									<div class="textBox">
										<c:forEach var="t" items="${trainer}" begin="1" end="1">
이름 : ${t.name} <br>
주소 : ${t.addr1} <br>
${t.addr2} /
${t.addr3} <br>
키 : ${t.height}	<br>
몸무게 : ${t.weight} <br>
자기소개 : ${t.info} <br>
Email : ${t.email} <br>
											<div class="gymName">
												짐 : ${t.gymName}<br>
											</div>
									</div>
								</div>
								<div class="con2">정보 2</div>
								<div class="con3">정보3</div>
								<div class="con4">정보 4</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="stWrap">
							<ul class="stNav">
								<li class="active" data-target="con1"><a href="#">정보</a></li>
								<li data-target="con2"><a href="#">정보2</a></li>
								<li data-target="con3"><a href="#">정보3</a></li>
								<li data-target="con4"><a href="#">정보4</a></li>
							</ul>
							<div class="stCon">
								<div class="con1 active">
									<div class="imgBox">
										<a href="#" data-toggle="modal" data-target="#trPic"><img
											src="<c:url value="/img/searchMap/trainer1.jpg"/>" alt=""
											class="img-responsive center-block"></a>
									</div>
									<div class="textBox">
										<c:forEach var="t" items="${trainer}" begin="2" end="2">
이름 : ${t.name} <br>
주소 : ${t.addr1} <br>
${t.addr2} /
${t.addr3} <br>
키 : ${t.height}	<br>
몸무게 : ${t.weight} <br>
자기소개 : ${t.info} <br>
Email : ${t.email} <br>
											<div class="gymName">
												짐 : ${t.gymName} <br>
											</div>
									</div>
								</div>
								<div class="con2">정보 2</div>
								<div class="con3">정보3</div>
								<div class="con4">정보 4</div>
								</c:forEach>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="stWrap">
							<ul class="stNav">
								<li class="active" data-target="con1"><a href="#">정보</a></li>
								<li data-target="con2"><a href="#">정보2</a></li>
								<li data-target="con3"><a href="#">정보3</a></li>
								<li data-target="con4"><a href="#">정보4</a></li>
							</ul>
							<div class="stCon">
								<div class="con1 active">
									<div class="imgBox">
										<a href="#" data-toggle="modal" data-target="#trPic"><img
											src="<c:url value="/img/searchMap/trainer1.jpg"/>" alt=""
											class="img-responsive center-block"></a>
									</div>
									<div class="textBox">Lorem ipsum dolor sit amet,
										consectetur adipisicing elit, sed do eiusmod tempor incididunt
										ut labore et dolore magna aliqua. Ut enim ad minim veniam,
										quis nostrud exercitation ullamco laboris nisi ut aliquip ex
										ea commodo consequat. Duis aute irure dolor in reprehenderit
										in voluptate velit esse cillum dolore eu fugiat nulla
										pariatur. Excepteur sint occaecat cupidatat non proident, sunt
										in culpa qui officia deserunt mollit anim id est laborum.</div>
								</div>
								<div class="con2">정보 2</div>
								<div class="con3">정보3</div>
								<div class="con4">정보 4</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="stWrap">
							<ul class="stNav">
								<li class="active" data-target="con1"><a href="#">정보</a></li>
								<li data-target="con2"><a href="#">정보2</a></li>
								<li data-target="con3"><a href="#">정보3</a></li>
								<li data-target="con4"><a href="#">정보4</a></li>
							</ul>
							<div class="stCon">
								<div class="con1 active">
									<div class="imgBox">
										<a href="#" data-toggle="modal" data-target="#trPic"><img
											src="<c:url value="/img/searchMap/trainer1.jpg"/>" alt=""
											class="img-responsive center-block"></a>
									</div>
									<div class="textBox">Lorem ipsum dolor sit amet,
										consectetur adipisicing elit, sed do eiusmod tempor incididunt
										ut labore et dolore magna aliqua. Ut enim ad minim veniam,
										quis nostrud exercitation ullamco laboris nisi ut aliquip ex
										ea commodo consequat. Duis aute irure dolor in reprehenderit
										in voluptate velit esse cillum dolore eu fugiat nulla
										pariatur. Excepteur sint occaecat cupidatat non proident, sunt
										in culpa qui officia deserunt mollit anim id est laborum.</div>
								</div>
								<div class="con2">정보 2</div>
								<div class="con3">정보3</div>
								<div class="con4">정보 4</div>
							</div>
						</div>
					</div>
					<div class="col-md-6">
						<div class="stWrap">
							<ul class="stNav">
								<li class="active" data-target="con1"><a href="#">정보</a></li>
								<li data-target="con2"><a href="#">정보2</a></li>
								<li data-target="con3"><a href="#">정보3</a></li>
								<li data-target="con4"><a href="#">정보4</a></li>
							</ul>
							<div class="stCon">
								<div class="con1 active">
									<div class="imgBox">
										<a href="#" data-toggle="modal" data-target="#trPic"><img
											src="<c:url value="/img/searchMap/trainer1.jpg"/>" alt=""
											class="img-responsive center-block"></a>
									</div>
									<div class="textBox">Lorem ipsum dolor sit amet,
										consectetur adipisicing elit, sed do eiusmod tempor incididunt
										ut labore et dolore magna aliqua. Ut enim ad minim veniam,
										quis nostrud exercitation ullamco laboris nisi ut aliquip ex
										ea commodo consequat. Duis aute irure dolor in reprehenderit
										in voluptate velit esse cillum dolore eu fugiat nulla
										pariatur. Excepteur sint occaecat cupidatat non proident, sunt
										in culpa qui officia deserunt mollit anim id est laborum.</div>
								</div>
								<div class="con2">정보 2</div>
								<div class="con3">정보3</div>
								<div class="con4">정보 4</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>


	<!-- Modal -->
	<div class="modal fade" id="trPic" tabindex="-1" role="dialog"
		aria-labelledby="myModalLabel" aria-hidden="true">
		<div class="modal-dialog">
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
					<h4 class="modal-title" id="myModalLabel">trainer name</h4>
				</div>
				<div class="modal-body">
					<img src="" class="img-responsive center-block" />
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>
	<c:import url="/common/footer.jsp" />
	<c:import url="/common/includeJs.jsp" />
	<script src="<c:url value="/js/healthsearch/script.js"/>"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b75a51b551d9bdf76c11d18c7194695e&libraries=services"></script>
	<script>
		var markers = [];

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new daum.maps.Map(mapContainer, mapOption);

		// 장소 검색 객체를 생성합니다
		var ps = new daum.maps.services.Places();

		// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
		var infowindow = new daum.maps.InfoWindow({
			zIndex : 1
		});

		// 키워드로 장소를 검색합니다
		searchPlaces();

		// 키워드 검색을 요청하는 함수입니다

		function searchPlaces() {
			var jb = document.querySelectorAll('.stWrap');

			var keyword = document.getElementById('keyword').value;

			if (keyword) {

				for (var i = 0; i < jb.length; i++) {
					jb[i].style.display = 'none';
				}

			}
			if (!keyword) {

				for (var i = 0; i < jb.length; i++) {
					jb[i].style.display = 'unset';
				}
			}

			if (!keyword.replace(/^\s+|\s+$/g, '')) {

				return false;
			}
			var aaa = document.getElementById('keyword').value;
			
			
			/* zzzzzzzzzzzzzz */
			for (var i = 0; i < 5; i++) {
				var jb1 = document.querySelectorAll('.stWrap')[i];
				if (jb1.innerText.indexOf(aaa) != -1) {
					jb1.style.display = 'unset';
				}
			}
			;

			// 장소검색 객체를 통해 키워드로 장소검색을 요청합니다
			 ps.keywordSearch(keyword, placesSearchCB); 
			/* ps.categorySearch('BK9', placesSearchCB, {useMapBounds:true}); */
			
			
		}
			
		

		// 장소검색이 완료됐을 때 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
			if (status === daum.maps.services.Status.OK) {

				// 정상적으로 검색이 완료됐으면
				// 검색 목록과 마커를 표출합니다
				/* 
					if(data[0].category_name.indexOf('헬스클럽')==-1){
					return false					
				} else { */
				displayPlaces(data);
				/* } */
				
				
			
					
				// 페이지 번호를 표출합니다
				displayPagination(pagination);
				
			} else if (status === daum.maps.services.Status.ZERO_RESULT) {

				alert('검색 결과가 존재하지 않습니다.');
				return;

			} else if (status === daum.maps.services.Status.ERROR) {

				alert('검색 결과 중 오류가 발생했습니다.');
				return;

			}
		}
		
		
		
		// 검색 결과 목록과 마커를 표출하는 함수입니다
		function displayPlaces(places) {

			var listEl = document.getElementById('placesList'), menuEl = document
					.getElementById('menu_wrap'), fragment = document
					.createDocumentFragment(), bounds = new daum.maps.LatLngBounds(), listStr = '';

			// 검색 결과 목록에 추가된 항목들을 제거합니다
			removeAllChildNods(listEl);

			// 지도에 표시되고 있는 마커를 제거합니다
			removeMarker();

			for (var i = 0; i < places.length; i++) {
				
				// 마커를 생성하고 지도에 표시합니다
				var placePosition = new daum.maps.LatLng(places[i].y,places[i].x), 
				marker = addMarker(placePosition, i), 
				itemEl = getListItem(i, places[i]); 
				// 검색 결과 항목 Element를 생성합니다

				// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
				// LatLngBounds 객체에 좌표를 추가합니다
				bounds.extend(placePosition);

				// 마커와 검색결과 항목에 mouseover 했을때
				// 해당 장소에 인포윈도우에 장소명을 표시합니다
				// mouseout 했을 때는 인포윈도우를 닫습니다
				(function(marker, title) {
					daum.maps.event.addListener(marker, 'click', function() {
								displayInfowindow(marker, title);
								
							});
					
					var placePosition = new daum.maps.LatLng(places[i].y,places[i].x)
				

				/* 	daum.maps.event.addListener(marker, 'mouseout', function() {
						infowindow.close();
					});
 */
					itemEl.onclick = function() {
						displayInfowindow(marker, title);
						var moveLatLon = new daum.maps.LatLng(placePosition.jb, placePosition.ib);
					    
						// 확대
						var level = map.getLevel();
						console.dir(level);
						if(level>3){							
						 map.setLevel(level =3);
						}
					    // 지도 중심을 이동 시킵니다
					    map.setCenter(moveLatLon);
					    
					};

					/* itemEl.onmouseout = function() {
						infowindow.close();
					}; */

				})(marker, places[i].place_name);

				fragment.appendChild(itemEl);

			}

			// 검색결과 항목들을 검색결과 목록 Elemnet에 추가합니다
			listEl.appendChild(fragment);
			menuEl.scrollTop = 0;

			// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
			map.setBounds(bounds);

		}

		// 검색결과 항목을 Element로 반환하는 함수입니다
		//현재 진행중인것ㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋㅋ//
		function getListItem(index, places) {

			// console.dir(places);
			
			var el = document.createElement('li'), itemStr = '<span class="markerbg marker_'
					+ (index + 1)
					+ '"></span>'
					+ '<div class="info">'
					+ '   <h5>' + places.place_name + '</h5>';

			if (places.road_address_name) {
				itemStr += '    <span>' + places.road_address_name + '</span>'
						+ '   <span class="jibun gray">' + places.address_name
						+ '</span>';
			} else {
				itemStr += '    <span>' + places.address_name + '</span>';
			}

			itemStr += '  <span class="tel">' + places.phone + '</span>'

			var url = places.place_url;

			itemStr += '<a href="'+url+'" target="blank">' + url + '</a>'
			'</div>';

			el.innerHTML = itemStr;
			el.className = 'item';

			return el;
		}

		// 마커를 생성하고 지도 위에 마커를 표시하는 함수입니다
		function addMarker(position, idx, title) {
			var imageSrc = 'http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/marker_number_blue.png', // 마커 이미지 url, 스프라이트 이미지를 씁니다
			imageSize = new daum.maps.Size(36, 37), // 마커 이미지의 크기
			imgOptions = {
				spriteSize : new daum.maps.Size(36, 691), // 스프라이트 이미지의 크기
				spriteOrigin : new daum.maps.Point(0, (idx * 46) + 10), // 스프라이트 이미지 중 사용할 영역의 좌상단 좌표
				offset : new daum.maps.Point(13, 37)
			// 마커 좌표에 일치시킬 이미지 내에서의 좌표
			}, markerImage = new daum.maps.MarkerImage(imageSrc, imageSize,
					imgOptions), marker = new daum.maps.Marker({
				position : position, // 마커의 위치
				image : markerImage
			});

			marker.setMap(map); // 지도 위에 마커를 표출합니다
			markers.push(marker); // 배열에 생성된 마커를 추가합니다

			return marker;
		}

		
		// 지도 위에 표시되고 있는 마커를 모두 제거합니다
		function removeMarker() {
			for (var i = 0; i < markers.length; i++) {
			
				markers[i].setMap(null);
			}
			markers = [];
		}

		// 검색결과 목록 하단에 페이지번호를 표시는 함수입니다
		function displayPagination(pagination) {
			var paginationEl = document.getElementById('pagination'), fragment = document
					.createDocumentFragment(), i;

			// 기존에 추가된 페이지번호를 삭제합니다
			while (paginationEl.hasChildNodes()) {
				paginationEl.removeChild(paginationEl.lastChild);
			}

			for (i = 1; i <= pagination.last; i++) {
				var el = document.createElement('a');
				el.href = "#";
				el.innerHTML = i;

				if (i === pagination.current) {
					el.className = 'on';
				} else {
					el.onclick = (function(i) {
						return function() {
							pagination.gotoPage(i);

						}
					})(i);
				}

				fragment.appendChild(el);
			}
			paginationEl.appendChild(fragment);
		}

		// 검색결과 목록 또는 마커를 클릭했을 때 호출되는 함수입니다
		// 인포윈도우에 장소명을 표시합니다
		function displayInfowindow(marker, title) {
			var content = '<div style="padding:5px;z-index:1;" >' + title
					+'<img class="close" onclick="oclose()" src="http://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png"/>'+'</div>';

					
			infowindow.setContent(content);
			infowindow.open(map, marker);
			
		}

		function oclose() {
			infowindow.close()
			
		}
		// 검색결과 목록의 자식 Element를 제거하는 함수입니다
		function removeAllChildNods(el) {
			while (el.hasChildNodes()) {
				el.removeChild(el.lastChild);
			}
		}

		var geocoder = new daum.maps.services.Geocoder();

		var marker = new daum.maps.Marker(), // 클릭한 위치를 표시할 마커입니다
		infowindow = new daum.maps.InfoWindow({zindex : 1}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다

		// 현재 지도 중심좌표로 주소를 검색해서 지도 좌측 상단에 표시합니다
		searchAddrFromCoords(map.getCenter(), displayCenterInfo);
		
		// 지도를 클릭했을 때 클릭 위치 좌표에 대한 주소정보를 표시하도록 이벤트를 등록합니다
		daum.maps.event.addListener(map, 'click', function(mouseEvent) {

			searchDetailAddrFromCoords(mouseEvent.latLng, function(result,
					status) {

				if (status === daum.maps.services.Status.OK) {
					var detailAddr = !!result[0].road_address ? '<div>도로명주소 : '
							+ result[0].road_address.address_name + '</div>'
							: '';
					detailAddr += '<div>지번 주소 : '
							+ result[0].address.address_name + '</div>';

					var content = '<div class="bAddr">'
							+ '<span class="title">주소정보</span>' + detailAddr
							+ '</div>';

					// 마커를 클릭한 위치에 표시합니다 
					marker.setPosition(mouseEvent.latLng);
					marker.setMap(map);

					// 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
					infowindow.setContent(content);
					infowindow.open(map, marker);

				}
			});
		});

		// 중심 좌표나 확대 수준이 변경됐을 때 지도 중심 좌표에 대한 주소 정보를 표시하도록 이벤트를 등록합니다
		daum.maps.event.addListener(map, 'idle', function() {
			searchAddrFromCoords(map.getCenter(), displayCenterInfo);
		});

		function searchAddrFromCoords(coords, callback) {
			// 좌표로 행정동 주소 정보를 요청합니다
			geocoder.coord2RegionCode(coords.getLng(), coords.getLat(),
					callback);

		}

		function searchDetailAddrFromCoords(coords, callback) {
			// 좌표로 법정동 상세 주소 정보를 요청합니다
			geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
		}

		// 지도 좌측상단에 지도 중심좌표에 대한 주소정보를 표출하는 함수입니다

		function displayCenterInfo(result, status) {
			if (status === daum.maps.services.Status.OK) {
				var infoDiv = document.getElementById('centerAddr');

				for (var i = 0; i < result.length; i++) {
					// 행정동의 region_type 값은 'H' 이므로
					if (result[i].region_type === 'H') {
						infoDiv.innerHTML = result[i].address_name;
						break;
					}
				}
				/*   
				var jb1 = document.querySelectorAll( '.stWrap')
				<c:forEach var="g" items="${trainer}">
				    var jb1 = document.querySelectorAll( '.stWrap')[0];	
					var jb2 = document.querySelectorAll( '.stWrap')[1];	
					var jb3 = document.querySelectorAll( '.stWrap')[2];	
					var jb4 = document.querySelectorAll( '.stWrap')[3];	
					var jb5 = document.querySelectorAll( '.stWrap')[4];	
					var jb6 = document.querySelectorAll( '.stWrap')[5];	
				    
					var go = jb1.innerText.indexOf("${g.addr1}");
				     if(result[i].address_name.indexOf('${g.addr1}')!=-1 && go!=-1){
				    	 jb1.style.display ='unset';   		
				} 
				     var go = jb2.innerText.indexOf("${g.addr1}");
				     if(result[i].address_name.indexOf('${g.addr1}')!=-1 && go!=-1){
				    	 jb2.style.display ='unset';   		
				} 
				     
				     var go = jb3.innerText.indexOf("${g.addr1}");
				     if(result[i].address_name.indexOf('${g.addr1}')!=-1 && go!=-1){
				    	 jb3.style.display ='unset';   		
				} 
				     
				     else {
					
					jb1.style.display ='none';
					jb2.style.display ='none';
					jb3.style.display ='none';
					jb4.style.display ='none';
					jb5.style.display ='none';
					jb6.style.display ='none';
					
					  
				}
				 </c:forEach> */

			}
		}
		
		
	</script>


</body>
</html>