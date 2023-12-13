/* (location01.jsp) */

$(document).ready(function() {
	// 예약/약관 페이지 (lnb)
	$("#selPri1").on('click', function() {
		// 1일차량대여요금 가져오기
		var price = $(this).text();  // 4000원
		// 숫자만 남기기
		var splitPrice = price.split("원")[0];  // 4000
		// 할인요금 계산하기(회원할인가65%)
		var disPrice = splitPrice * 0.65;
		$("#selPri2").text(disPrice + "원");
		var totalPrice = splitPrice - disPrice;
		$("#selPri4").text(totalPrice + "원");
		console.log(disPrice);
	})

	// 카카오페이 결제
	$("#btnKaPay").on('click', function() {
		var IMP = window.IMP;
		IMP.init();
	})
});