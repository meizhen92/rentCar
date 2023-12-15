/* (/reservation) */

$(document).ready(function() {

	// 예약 조건 선택 메뉴 바
	$(".oneChoose > a").on('click', function() {
		// 토글클래스로 하는 방법
		//$(this).next("ul").toggleClass("hide");
		// 토글에 슬라이드 효과 주는 방법
		var clickA = $(this).siblings("ul");
		// :hidden or :visible (요소가 숨김인지 제거된 상태인지 확인하기)
		if (clickA.is(":visible")) {
			clickA.slideUp();
		} else {
			clickA.slideDown();
		}
	});

	// 선택된 조건 화면 효과 & 지도에 마커 표시 (차량 대여 장소)
	$(".oneChoose .selVal").on('click', function() {
		var clickVal = $(this).attr("value");
		var clicktext = $(this).text();

		// 이전에 적용한 스타일을 제거
		$(".selVal").css({ "background-color": "", "font-weight": "" });

		// 현재 클릭한 단어에 스타일 적용
		if (clickVal === clicktext) {
			$(this).css({ "background-color": "skyblue", "font-weight": "bold" });
			$(".storeChoice").val(clicktext);
		}
		console.log(clickVal);
		// 지도에 마커 표시
		$.ajax({
			type: "GET",
			url: "/latiLongi",
			data: {
				selStName: clickVal
			},
			success: function(data) {
				// data: {"latiLongi":[{"store_longi":126.5024063,"store_lati":33.5090471}]}
				console.log(JSON.stringify(data.latiLongi[0]));
				sellati = data.latiLongi[0].store_lati;
				sellongi = data.latiLongi[0].store_longi;
				kakaoMap("mapJejudo", 33.431441, 126.574237, 10, sellati, sellongi);
			},
			error: function(error) {
				console.error(error);
			}
		})
	})

	// 대여 기간 선택(대여일)
	var date = new Date();
	var minD =
		date.getFullYear() + '/' +
		(date.getMonth() + 1) + '/' +
		date.getDate() + ' ' +
		date.getHours() + ':' +
		date.getMinutes();

	var maxGetMonth = new Date(date.setMonth(date.getMonth() + 1));
	var maxIntMonth = maxGetMonth.getMonth() + 1;
	var maxD =
		date.getFullYear() + '/' +
		maxIntMonth + '/' +
		date.getDate() + ' ' +
		date.getHours() + ':' +
		date.getMinutes();

	$("#datepicker").daterangepicker({
		// 시간 선택 추가(24시간)
		"timePicker": true,
		"timePicker24Hour": true,
		// 기본 셋팅(현재 시간)
		autoUpdateInput: false,
		//"startDate": moment().startOf('hour'),
		//"endDate": moment().startOf('hour').add(32, 'hour'),
		// 날짜 선택 범위 제한(locale에 설정된 format과 같아야함)
		minDate: minD,
		maxDate: maxD,

		// 달력 선택 후 인풋창 포맷 선택
		locale: {
			format: 'YYYY/MM/DD HH:mm',   //시간있을때, 'M/DD hh:mm A'
			separator: " ~ ",
			//maxdate: new Date('2020-01-01')
			daysOfWeek: ["일", "월", "화", "수", "목", "금", "토"],
			monthNames: [
				"1월",
				"2월",
				"3월",
				"4월",
				"5월",
				"6월",
				"7월",
				"8월",
				"9월",
				"10월",
				"11월",
				"12월",
			],
			// 취소
			cancelLabel: 'Cancel'
		},

		// 하루만 선택
		singleDatePicker: false,
	},
		// 선택 한 날짜 포맷터 형식 & form에 hidden값 추가 및 선택 값 출력
		function(start, end) {
			var start = start.format('YYYY/MM/DD HH:mm');
			var end = end.format('YYYY/MM/DD HH:mm');
			$(".dayChoiceOut").attr('value', start);
			$(".dayChoiceIn").attr('value', end);
		}
	);
	// daterangepicker button class remove (btn-default css 제거)
	$(".drp-buttons > button").removeClass('btn-default');

	// 차량 조회 모달창 열기(선택가능한 차만 출력)
	$("#searchCar").on('click', function() {
		var store_name = $(".storeChoice").val();
		var dayChoiceOut = $(".dayChoiceOut").val();
		var dayChoiceIn = $(".dayChoiceIn").val();
		$.ajax({
			url: "/carList",
			type: "POST",
			data: {
				store_name: store_name,
				dayChoiceOut: dayChoiceOut,
				dayChoiceIn: dayChoiceIn,
			},
			success: function(data) {
				if (data != "" || data != null) {
					// 배열데이터 반복(li)
					var loopli = document.getElementById("cars");
					// 차량 재 조회 시, innerHTML초기화
					loopli.innerHTML = "";
					$.each(data.carList, function(index, item) { //index가 끝날때까지
						console.log("item", item);
						var result = '';
						var imgRoute = '';
						result += item.car_name;
						imgRoute += item.file_route;
						loopli.innerHTML += "<li class='loopli'><button class='btnloopli' type=button href='' value='result'>" + result + "</button></li>";
						loopli.innerHTML += "<li class='loopli'><img src=" + imgRoute + " />" + result + "</li>";
					})
					// 차량 선택한거 히든 인풋에 담자(success안에서만 작업 가능)
					$(".btnloopli").on('click', function() {
						$(".carChoice").val($(this).text());
						console.log("클릭한차종:        " + $(this).text());
					})
					$(".modal-carList").show();
				}
			}
			,
			function(error) {
				console.error(error);
			}

		})
	})

	// 차량 조회 모달창 버튼 : 취소, 선택
	$("#cancelModalPop, #closeModal").on('click', function() {
		$(".modal-carList").hide();
	})

	// 모든 항목 선택 후 예약진행 페이지로 이동
	$("#nextReser").on('click', function() {
		var store = $(".storeChoice").val();
		var car = $(".carChoice").val();
		var outDay = $(".dayChoiceOut").val();
		var inDay = $(".dayChoiceIn").val();

		if ((store == "" || store == null)) {

			alert("차량대여지점을 선택해주세요");
			return false;
		}
		if ((outDay == "" || outDay == null)) {

			alert("대여기간을 정확하게 선택해주세요");
			return false;
		}
		if ((inDay == "" || inDay == null)) {

			alert("대여기간 종료일을 선택해주세요");
			return false;
		}
		if ((car == "" || car == null)) {

			alert("차량을 선택해주세요");
			return false;
		}
		else {

			$("#frmData").attr("action", "/nextReser")
			$("#frmData").submit();
			return true;
		}
	})



		// 사진 업로드
		$("#btnFrmImg").on('click', function() {
			$("#frmImg").attr("action", "/upImg")
			$("#frmImg").submit();
			return true;
		})

});  // end-ready

// 사진 미리보기
function imgPreview(event) {
	var reader = new FileReader();

	reader.onload = function(event) {
		var img = document.createElement("img");
		img.setAttribute("src", event.target.result);
		document.querySelector("div#imgPreview").appendChild(img);
		console.log(" e.target.result: " + event.target.result);
	};
	reader.readAsDataURL(event.target.files[0]);
}