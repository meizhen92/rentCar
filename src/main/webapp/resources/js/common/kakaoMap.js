/* (카카오맵 api) */
// jsp상단 스크립트 추가 (1. 지도, 2. 지도라이브러리, 3. 카카오맵js파일)

/* script.js */
// 카카오 지도 api (key 있음)
// document.write('<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=[tb_secret 참조]"></script>')

// 지도관련 라이브러리
//// services: 장소검색, 주소-좌표 변환 (사용 X)
//// clusterer: 마커 클러스터링 (사용 O)
//// drawing: 마커와 그래픽스 객체를 쉽게 그릴 수 있게 그리기 모드 지원 (사용 X)
//// document.write('<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=[tb_secret 참조]&libraries=clusterer"></script>')

// 함수 사용: kakaoMap("요소id", 위도(숫자로 우리나라 33~43), 경도(숫자로 우리나라 124~132), 확대레벨(숫자로 1~14), 마커위도, 마커경도)
function kakaoMap(eleId, lati, longi, level, mlati, mlongi) {

	var container = document.getElementById(eleId),
		option = {
			center: new kakao.maps.LatLng(lati, longi),
			level: level
		};

	var map = new kakao.maps.Map(container, option);

	/* 마커 */
	// 마커가 표시될 위치
	var markerPosition = new kakao.maps.LatLng(mlati, mlongi);

	// 마커 생성
	var marker = new kakao.maps.Marker({
		position: markerPosition
	});

	// 마커 지도 표시 설정
	marker.setMap(map);

	// 마커 제거
	// marker.setMap(null);    

}



//////// 도로명주소로 위도,경도 자동 위치 지정
/*<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>주소로 장소 표시하기</title>
    
</head>
<body>
<p style="margin-top:-12px">
	<em class="link">
		<a href="javascript:void(0);" onclick="window.open('http://fiy.daum.net/fiy/map/CsGeneral.daum', '_blank', 'width=981, height=650')">
			혹시 주소 결과가 잘못 나오는 경우에는 여기에 제보해주세요.
		</a>
	</em>
</p>
<div id="map" style="width:100%;height:350px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=발급받은 APP KEY를 사용하세요&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
	mapOption = {
		center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
		level: 3 // 지도의 확대 레벨
	};  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다 (여기에 도로명 주소 변수로 넣기!)
geocoder.addressSearch('제주특별자치도 제주시 첨단로 242', function(result, status) {

	// 정상적으로 검색이 완료됐으면 
	 if (status === kakao.maps.services.Status.OK) {

		var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

		// 결과값으로 받은 위치를 마커로 표시합니다
		var marker = new kakao.maps.Marker({
			map: map,
			position: coords
		});

		// 인포윈도우로 장소에 대한 설명을 표시합니다
		var infowindow = new kakao.maps.InfoWindow({
			content: '<div style="width:150px;text-align:center;padding:6px 0;">우리회사</div>'
		});
		infowindow.open(map, marker);

		// 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		map.setCenter(coords);
	} 
});    
</script>
</body>
</html>*/