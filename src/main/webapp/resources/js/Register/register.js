/* (register01.jsp, register02.jsp) */
$(document).ready(function() {

	/*
	 * param : -
	 * author : 김미진
	 * description : 회원가입: 약관 동의 페이지
	 * */

	$("#btnNext").click(function() {
		window.location.href = '/register02';
	})

	/*
	 * param : -
	 * author : 김미진
	 * description : 회원가입: 사용자 정보 추가 페이지
	 * */

	// 아이디 입력 유효성 검사
	// 영문소문자 / 숫자 필수 입력 (정규식 사용)
	$("#user_id").on('input', function() {
		let userIdRegex = /^(?=.*[a-z])(?=.*[0-9])[a-z0-9]+$/;
		let userId = $(this).val().trim();
		if (userId.length >= 6 && userId.length <= 20 && userIdRegex.test(userId)) {
			$("#inputGuideId").hide();
			$("#btnDupleId").show();
		} else {
			$("#inputGuideId").show();
			$("#btnDupleId").hide();
			$("#inputGuideNoDupl").hide(); // 중복확인 후 입력 값 지웠을 때, hide 
		}
	})
	// 아이디 중복확인 버튼
	$("#btnDupleId").on('click', function() {
		duplicateUserId();
	})

	// 비밀번호 입력 유효성 검사
	// 영문소문자 / 숫자 / 특수문자 필수 입력 (정규식 사용)
	$("#user_pw, #user_pwCheck").on('input', function() {
		var userPwCheckValid = false;
		let userPwRegex = /^(?=.*[a-z])(?=.*[0-9])(?=.*[~!@#$%^&*])[a-z0-9~!@#$%^&*]+$/;
		let userPw = $("#user_pw").val().trim();
		if (userPw.length >= 8 && userPw.length <= 20 && userPwRegex.test(userPw)) {
			$("#inputGuidePw").hide();
			pwCheck();
			return userPwCheckValid = true;
		} else {
			$("#inputGuidePw").show();
			pwCheck();
			return userPwCheckValid = false;
		}
	})
	// 우편번호 찾기 버튼 
	$("#btnPost").on('click', function() {
		execDaumPostcode();
	})

	// 전화번호 인증 버튼
	$("#btnPhone").on('click', function() {
		checkPhoneNum();
	})

	// 가입취소버튼
	$("#btnHome").on('click', function() {
		alert('홈화면으로 이동합니다')
		window.location.href = '/main';
	})

})

/* 함수 */

/* register02.jsp */

// 아이디 중복 확인
var userIdDuplValid = false;
function duplicateUserId() {
	let userId = $("#user_id").val().trim();
	$.ajax({
		url: '/register02_dupl',
		type: 'POST',
		async: false, //  userIdDuplValid에 true인지 false인지 확인하고 넘어가기 위해서!
		data: {
			user_id: userId
		},
		success: function(data) {
			if (data == "true") {
				$("#inputGuideDupl").show();
				$("#inputGuideNoDupl").hide();
				userIdDuplValid = false;
			} else {
				$("#inputGuideDupl").hide();
				$("#inputGuideNoDupl").show();
				userIdDuplValid = true;
			}
		}
	})
}

// 비밀번호 일치 확인
function pwCheck() {
	let userPw = $("#user_pw").val().trim();
	let userPwCheck = $("#user_pwCheck").val().trim();
	if (userPwCheck != userPw) {
		$("#inputGuidePwCheck").show();
	} else {
		$("#inputGuidePwCheck").hide();
	}
}


// 핸드폰 번호로 문자 전송 및 인증번호 확인 함수
var checkNumValid = false;
function checkPhoneNum() {
	let phoneNum = $("#user_phone").val().trim();
	alert("인증 번호 전송!")
	$.ajax({
		url: '/register02_phone',
		type: 'GET',
		async: true,
		data: {
			user_phone: phoneNum
		},
		success: function(data) {
			if (data != null) {
				$("#btncheckNum").on('click', function() {
					if (data == $("#checkNum").val()) {
						alert("핸드폰 인증 성공");
						checkNumValid = true;
					} else {
						alert("다쉬해라");
						checkNumValid = false;
					}
				})
			}
		}
	})
}

// 도메인 셀렉트 박스 입력 연결
function selDomain(data) {
	if (data != "self") {
		$("#domain").val(data);
	}
}

// 회원가입 시 체크
function registerOk() {
	// var formTest = $("#testForm").serialize();
	var user_id = $("#user_id").val().trim();
	var user_pw = $("#user_pw").val().trim();
	var user_pwCheck = $("#user_pwCheck").val().trim();
	var user_name = $("#user_name").val().trim();
	var user_gender = $("#user_gender").val().trim();
	var user_addr = $("#user_addr").val().trim();
	var user_postcode = $("#user_postcode").val().trim();
	var user_phone = $("#user_phone").val().trim();
	var btncheckNum = $("#btncheckNum").val().trim();
	var mailid = $("#mailid").val().trim();
	var user_email = $("#domain").val().trim();

	if (user_id == "" || user_id == null) {
		alert("사용하실 아이디를 입력해주세요!");
		$("#user_id").focus();
		return false;
	}
	if (!userIdDuplValid) {
		console.log(userIdDuplValid)
		alert('아이디 중복확인을 진행하세요!');
		return false;
	}
	if (user_pw == "" || user_pw == null) {
		alert("비밀번호를 입력해주세요!");
		$("#user_pw").focus();
		return false;
	}
	if (user_pwCheck == "" || user_pwCheck == null) {
		console.log(userIdDuplValid)
		alert("비밀번호 확인을 입력해주세요!");
		$("#user_pwCheck").focus();
		return false;
	}
	if (user_name == "" || user_name == null) {
		alert("이름을 입력해주세요!");
		$("#user_name").focus();
		return false;
	}
	if (user_gender == "" || user_gender == null) {
		alert("성별을 선택해주세요!");
		$("#user_gender").focus();
		return false;
	}
	if (user_addr == "" || user_addr == null) {
		alert("우편번호 찾기를 눌러 주소를 입력해주세요!");
		return false;
	}
	if (user_postcode == "" || user_postcode == null) {
		alert("우편번호 찾기를 눌러 우편번호를 입력해주세요!");
		return false;
	}
	if (user_phone == "" || user_phone == null) {
		alert("전화번호를 입력해주세요!");
		$("#user_phone").focus();
		return false;
	}
	if (btncheckNum == "" || btncheckNum == null) {
		alert("인증번호 4자리를 입력해주세요!");
		$("#btncheckNum").focus();
		return false;
	}
	if (!checkNumValid) {
		console.log(checkNumValid);
		alert("인증번호 확인을 진행하세요!")
		return false;
	}
	if (mailid == "" || mailid == null) {
		alert("이메일 주소를 입력해주세요!");
		$("#mailid").focus();
		return false;
	}
	if (user_email == "" || user_email == null) {
		alert("이메일 주소를  입력해주세요!");
		$("#domain").focus();
		return false;
	}
	else {
		$("#testForm").attr("action", "/register02_join");
		$("#testForm").submit();
		return true;
	}
}
