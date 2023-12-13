<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=${kakaoMapkey}&libraries=clusterer"></script>
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
					<!-- object 자료형: dayChoiceOut, dayChoiceIn -->
					<input type="hidden" class="dayChoiceOut" name="dayChoiceOut">
					<input type="hidden" class="dayChoiceIn" name="dayChoiceIn">
					<ul>
						<!-- 1번째 선택 탭 -->
						<li class="chooseDiv oneChoose">
							<a>차량대여지점선택</a>
							<p class="g num">* 대여,반납 지점 동일 *</p>
							<ul class="hidden">
								<c:forEach var="item" items="${selStName}" varStatus="loop">
									<li class="selVal" value="${item}" name="storeNm" id="storeNm">${item}</li>
								</c:forEach>
							</ul>
						</li>
						<!-- 3번째 선택 탭 -->
						<li class="chooseDiv twoChoose">
							<a>대여기간</a>
							<ul class="hidden">
								<li>
									<input class="dateRangePickerInput" type="text" id="datepicker" value="datepicker"></input>
								</li>
							</ul>
						</li>
						<li id="searchCar">!차량조회하러가자!</li>
						<!-- 4번째 선택 탭 -->
						<li>
							<a id="nextReser">선택한 내용으로 예약 진행하기!</a>
						</li>
					</ul>
				</form>
<!-- 				form - img
				<form id="frmImg" enctype="multipart/form-data" method="post">
					<label for="files">파일 선택 하자</label>
					<input name="filest" id="files" type="file" onchange="imgPreview(event);">
					<button type="button" id="btnFrmImg">파일업로드</button>
					<div class="imgPreview" id="imgPreview">div영역</div>
				</form> -->
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
<!-- datepicker.js -->
<script type="text/javascript" src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript" src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
</html>