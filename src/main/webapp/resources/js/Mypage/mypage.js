/* (/mypage) */

// event.which === 8 : 백스페이스 키

$(document).ready(function() {

	// 회원탈퇴 버튼
	$("#deleteUser").on('click', function() {
		popOpen();
	})

	// 전화번호 인풋 창 숫자만 입력 가능하도록 제어
	$("#update_userPhone").on('keydown', function(event) {
		if ((event.which >= 48 && event.which <= 57) || (event.which >= 96 && event.which <= 105 || event.which === 8)) {
			return true;
		} else {
			event.preventDefault();
			return false;
		}
	})

	// 도메인 셀렉트 박스 입력 연결
	$("#user-email-select").on('change', function(event) {
		if (event.target.value != "self") {
			$("#user-email-tail").val(event.target.value);
		}
	})

	// 우편번호 찾기 버튼 
	$("#btnPost").on('click', function() {
		execDaumPostcode();
	})

	// 취소 버튼
	$("#btnHome").on('click', function() {
		alert('홈화면으로 이동합니다')
		window.location.href = '/init';
	})

	// 확인 버튼
	$("#updatebtn").on('click', function() {
		var updateArr = [];
		if ($("#update_userName").val().trim()) {
			updateArr.push($("#update_userName").val().trim());
		}
		if ($("#update_userPhone").val().trim()) {
			updateArr.push($("#update_userPhone").val().trim());
		}
		if ($("#user_addr").val().trim()) {
			updateArr.push($("#user_addr").val().trim());
		}
		if ($("#user_postcode").val().trim()) {
			updateArr.push($("#user_postcode").val().trim());
		}
		if (updateArr.length == 4 && updateArr != "") {
			updateUser();
			alert("수정 사항이 저장되었습니다!");
		} else {
			alert("필수 입력칸을 확인하세요!");
		}
	})
})

// 회원 탈퇴 버튼
function deleteUser() {
	$.ajax({
		url: "/deleteUser",
		type: "POST",
		async: true,
		data: {},
		success: function() {
			window.location.href = '/main';
		}
	})
}

// 탈퇴 확인 모달 창 Open
function popOpen() {
	$(".deleteUserModal").show();

	$("#btnDeleteUser").click(function() {
		deleteUser();
	});
	$("#btnDeleteUserC").click(function() {
		popClose();
		console.log("클릭");
	});
}

// 탈퇴 확인 모달 창 Close
function popClose() {
	$(".deleteUserModal").hide();
}

// 수정 버튼
function updateUser() {
	var user_name = $("#update_userName").val().trim();
	var user_phone = $("#update_userPhone").val().trim();
	var user_email = $("#user-email-head").val().trim() + '@' + $("#user-email-tail").val().trim();
	var user_addr = $("#user_addr").val().trim();
	var user_addrdt = $("#user_addrdt").val().trim();
	var user_postcode = $("#user_postcode").val().trim();

	$.ajax({
		url: "/updateUser",
		type: "POST",
		async: true,
		data: {
			user_name: user_name,
			user_phone: user_phone,
			user_email: user_email,
			user_addr: user_addr,
			user_addrdt: user_addrdt,
			user_postcode: user_postcode
		},
		success: function() {
			document.location.reload();
		}

	})
}