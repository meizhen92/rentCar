<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입(정보입력)</title>
<!-- stylesheet.css -->
<link rel="stylesheet" href="${path}/resources/css/reset.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/layout.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/modules.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/contents.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/jquery.mCustomScrollbar.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/DIY.css" type="text/css" />
<!-- script.js -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${path}/resources/js/Register/register.js"></script>
<script type="text/javascript" src="${path}/resources/js/common/postCode.js"></script>
</head>
<body>
	<!-- header,form,footer 로 구성 -->
	<div>
		<!-- header -->
		<header class="header">
			<%@ include file="../common/header.jsp"%>
		</header>
		<div id="mainDiv">
			<!-- form -->
			<form method="post" name="testForm" id="testForm">
				<div class="container">
					<div class="insert">
						<h2 class="joinTitle">
							< <img src="https://lotterentacar.net/lrhp/pc/images/common/logo-header.png"
								alt="대한민국 No1.롯데렌터카"
							> 회원가입 양식 >
						</h2>
						<table>
							<tr>
								<td class="col1">아이디<span class="num"> *</span></td>
								<td class="col2"><input class="inputSize" type="text" name="user_id" id="user_id"
										placeholder="아이디 입력"
									/> <input class='but1' type="button" value="중복확인" id="btnDupleId" style="display: none;" />
									<span class="inputGuide num" id="inputGuideDupl" style="display: none;">동일한
										아이디가 존재합니다.</span> <span class="inputGuide num" id="inputGuideNoDupl" style="display: none;">사용가능합니다.</span>
									<p id="inputGuideId" style="display: none;">
										※ 아이디는
										<span class="num">영문소문자, 숫자의 조합 6 ~ 20자리</span>
										로 입력이가능합니다.
									</p></td>
							</tr>
							<tr>
								<td class="col1">비밀번호<span class="num"> *</span></td>
								<td class="col2"><input class="inputSize" type="password" name="user_pw" id="user_pw"
										placeholder="비밀번호 입력"
									>
									<p id="inputGuidePw" style="display: none;">
										※ 비밀번호는
										<span class="num">영문소문자, 숫자, 특수문자(~!@#$%^&*)의 조합 8 ~ 20자리</span>
										로 입력이 가능합니다.
									</p></td>
							</tr>
							<tr>
								<td class="col1">비밀번호 확인<span class="num"> *</span></td>
								<td class="col2"><input class="inputSize" type="password" name="user_pwCheck"
										id="user_pwCheck" placeholder="비밀번호 동일하게 입력"
									> <span class="inputGuide num" id="inputGuidePwCheck" style="display: none;">비밀번호가
										일치하지 않습니다</span></td>
							</tr>
							<tr>
								<td class="col1">이름<span class="num"> *</span></td>
								<td class="col2"><input class="inputSize" type="text" name="user_name" id="user_name"
										placeholder="이름 입력"
									></td>
							</tr>
							<tr>
								<td class="col1">성별<span class="num"> *</span></td>
								<td class="col2"><select name="user_gender" id="user_gender">
										<option value="" selected>선택</option>
										<option value="M">남성</option>
										<option value="W">여성</option>
								</select></td>
							</tr>
							<tr>
								<td class="col1">주소<span class="num"> *</span></td>
								<td class="col2"><input class="inputSize" type="text" name="user_addr" id="user_addr"
										readonly
									> <input class='but2' type="button" value="우편번호 찾기" id="btnPost"></td>
							</tr>
							<tr>
								<td class="col1">상세주소</td>
								<td class="col2"><input class="inputSize" type="text" name="user_addrdt"
										id="user_addrdt" placeholder="상세주소 입력"
									></td>
							</tr>
							<tr>
								<td class="col1">우편번호<span class="num"> *</span></td>
								<td class="col2"><input type="text" name="user_postcode" id="user_postcode" readonly></td>
							</tr>
							<tr>
								<td class="col1" rowspan="2">전화번호<span class="num"> *</span></td>
								<td class="col2"><input class="inputSize" type="text" name="user_phone" id="user_phone"
										placeholder="11자리 전화번호 입력(-없이)"
									> <input class='but2' type="button" value="전화번호 인증" id="btnPhone"></td>
							</tr>
							<tr>
								<td class="col2"><input type="text" id="checkNum" placeholder="인증번호 4자리 입력"> <input
										class='but2' type="button" id="btncheckNum" value="인증번호 확인"
									></td>
							</tr>
							<tr>
								<td class="col1">이메일<span class="num"> *</span></td>
								<td class="col2"><input type="text" name="mailid" id="mailid" placeholder="이메일">
									<span class="a">@</span> <input type="text" name="domain" id="domain" placeholder="도메인">
									<select onChange="selDomain(this.value)">
										<option value="self" selected>직접입력</option>
										<option value="naver.com">naver.com</option>
										<option value="gmail.com">gmail.com</option>
										<option value="daum.net">daum.net</option>
										<option value="nate.com">nate.com</option>
								</select></td>
							</tr>
						</table>
					</div>
					<div class="create">
						<input class="but3" type="button" value="가입취소" id="btnHome">
						<input class="but4" type="button" value="회원가입" name="btnJoin" id="btnJoin"
							onclick="registerOk();"
						>
					</div>
				</div>
			</form>
		</div>
		<!-- footer -->
		<footer class="footer">
			<%@ include file="../common/footer.jsp"%>
		</footer>
	</div>
</body>
</html>