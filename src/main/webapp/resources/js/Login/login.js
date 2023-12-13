/* (/login) */
$(document).ready(function() {

	// 로그인 버튼(유효성 검사)
	$("#submitLogin").on('click', function() {

		var memberId = $("#user_id").val().trim();
		var memberPw = $("#user_pw").val().trim();
		if (memberId == "" || memberId == null) {
			alert("아이디를 입력해주세요!");
			$("#user_id").focus();
			return false;
		}
		if (memberPw == "" || memberPw == null) {
			alert("비밀번호를 입력해주세요!");
			$("#user_pw").focus();
			return false;
		}
		else {
			$("#login_form").attr("action", "/loginValidation");
			$("#login_form").submit();
			return true;
		}
	})
})