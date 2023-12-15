<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Jeju Map</title>
<!-- stylesheet.css -->
<link rel="stylesheet" href="${path}/resources/css/contents.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/jquery.mCustomScrollbar.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/layout.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/modules.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/reset.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/reservationIndex_22Q4.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/DIY.css" type="text/css" />
<!-- script.js -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${path}/resources/js/Reservation/reservation.js"></script>
<script type="text/javascript" src="${path}/resources/js/common/kakaoMap.js"></script>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${kakaoMapkey}"></script>
<script type="text/javascript"
	src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${kakaoMapkey}&libraries=clusterer"
></script>

</head>
<body>
	<!-- header,main,footer 로 구성 -->
	<!-- header -->
	<header class="header">
		<%@ include file="../common/header.jsp"%>
	</header>
	<!-- main -->
	<main id="mainDiv">
		<div class="totalContainer">
			<div class="mapContainer">
				<div class="mapInit" id="mapJejudo"></div>
			</div>
			<div class="reserContainer">
				<!-- form - data -->
				<form id="frmData">
					<input type="hidden" class="storeChoice" name="storeChoice">
					<input type="hidden" class="carChoice" name="carChoice">
					<ul>
						<!-- 1번째 선택 탭 -->
						<li class="chooseDiv oneChoose">
							<a>차량대여지점선택[클릭]</a>
							<p class="g num">* 대여,반납 지점 동일 *</p>
							<ul class="hidden">
								<c:forEach var="item" items="${selStName}" varStatus="loop">
									<li class="selVal" value="${item}" name="storeNm" id="storeNm">${item}</li>
								</c:forEach>
							</ul>
						</li>
						<!-- 2번째 선택 탭 -->
						<li class="chooseDiv twoChoose">
							<a value="datepicker" id="datepicker">대여기간[클릭]</a>
							<ul>
								<li>
									대여시작일:
									<input class="dayChoiceOut" name="dayChoiceOut" readonly></input>
								</li>
								<li>
									대여종료일:
									<input class="dayChoiceIn" name="dayChoiceIn" readonly></input>
								</li>
							</ul>
						</li>
						<!-- 3번째 차량 선택 모달 -->
						<li class="chooseDiv" id="searchCar">차량조회하러가자[클릭]</li>
						<!-- 4번째 예약 상세페이지로 이동 -->
						<li class="chooseDiv">
							<a id="nextReser">선택한 내용으로 예약 진행[클릭]</a>
						</li>
					</ul>
				</form>
<!-- 				
				form - img
				<form id="frmImg" enctype="multipart/form-data" method="post">
					<label for="files">파일 선택 하자</label>
					<input name="filest" id="files" type="file" onchange="imgPreview(event);">
					<button type="button" id="btnFrmImg">파일업로드</button>
					<div class="imgPreview" id="imgPreview">div영역</div>
				</form>
				 -->
			</div>
			<!-- 차량 선택 모달창 -->
			<div class="modal-carList">
				<div class="Modal-bg"></div>
				<div class="carListModal-wrap">
					<ul>
						<li class="testtesttest">소형승용</li>
						<li>중형승용</li>
						<li>대형승용</li>
						<li>SUV/RV</li>
						<li>친환경 전기차</li>
					</ul>
					<p>. . . . .</p>
					<ul id="cars">
						<li class="loopli">
							<button class="btnloopli"></button>
						</li>
					</ul>
					<div>
						<button class="but3" type="button" id="cancelModalPop">취소</button>
						<button class="but4" type="button" id="closeModal">선택</button>
					</div>
				</div>
			</div>
		</div>

	</main>
	<!-- footer -->
	<footer class="footer">
		<%@ include file="../common/footer.jsp"%>
	</footer>
</body>
<script>
	/*다중 마커 표시용으로 kakaoMap 함수 사용 없이 배열값 마커 위경도로 받기*/
	var container = document.getElementById("mapJejudo"), option = {
		center : new kakao.maps.LatLng(33.431441, 126.574237),
		level : 10
	};
	// 지도생성
	var map = new kakao.maps.Map(container, option);
	// 배열값 마커 생성을 위해 인덱스 쪼개기
	var sellati = new Array();
	<c:forEach var="lati" items="${selStLati}">
	sellati.push("${lati}");
	</c:forEach>
	var sellongi = new Array();
	<c:forEach var="longi" items="${selStLongi}">
	sellongi.push("${longi}");
	</c:forEach>
	// 다중 마커 표시
	for (var i = 0; i < sellati.length; i++) {
		var marker = new kakao.maps.Marker({
			map : map,
			position : new kakao.maps.LatLng(sellati[i], sellongi[i])
		});
	}
</script>
<!-- datepicker.js -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"
></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css"
/>
</html>