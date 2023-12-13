/* (/main) */

$(document).ready(function() {

	// 메인 화면 이미지 슬라이드(slick)
	$(".slide_div").slick(
		{
			//dots: true, // 점기능
			autoplay: true,
			autoplaySpeed: 2000,
		}
	);

	// 제주 예약하기 버튼
	$("#btnJejuP").on('click', function() {
		var locaNo = $(this).val();
		// 제주 버튼 누르면 제주지역코드 13 전송	
		$.ajax({
			type: "GET",
			async: false,
			url: "/reservationdata",
			data: {
				locaNo: locaNo
			},
			success: function(data) {
				console.log("data   :   " + data);
				// 받은 값은 success안에서만 사용 가능!!하므로 
				// controller에서 @RequestParam으로 쓸 수 있게 url로 쏴줌 
				window.location.href = "/reservation13?locaNo=" + data.locaNo;
			},
			error: function(error) {
				console.error(error);
			}
		})
	})
})
