/* () */

$(document).ready(function() {
	$("#btnMypage").on('click', function() {
		let mypageUrl = "/mypageInit";
		// 세션에서 아이디값을 가져올 수 있을때, 마이페이지
		// 아니면 로그인페이지로 이동
		window.location.href = mypageUrl;
	})
	$("#btnLogin").on('click', function() {

		// 세션에서 아이디값 가져올 수 있을때, 없어지기
		window.location.href = "/login";
	})
	$("#btnLogout").on('click', function() {
		$.ajax({
			url: '/logout',
			type: 'GET',
			async: false,
			success: function() {
				console.log("로그아웃");
				document.location.reload();
			}
		})
	})

})