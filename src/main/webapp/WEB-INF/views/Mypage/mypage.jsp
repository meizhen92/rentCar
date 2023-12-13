<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html dir="ltr" lang="kor">
<head class="at-element-marker">
<meta charset="utf-8">
<title>마이페이지(유저)</title>
<!-- stylesheet.css -->
<link rel="stylesheet" href="${path}/resources/css/reset.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/layout.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/modules.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/contents.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/jquery.mCustomScrollbar.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/DIY.css" type="text/css" />
<!-- script.js -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${path}/resources/js/Mypage/mypage.js"></script>
<script type="text/javascript" src="${path}/resources/js/common/postCode.js"></script>
</head>


<body>
	<!-- header,div,footer 로 구성 -->
	<!-- header -->
	<header class="header">
		<%@ include file="../common/header.jsp"%>
	</header>
	<div id="mainDiv">
		<form id="mypage_form" method="get" action="/mypage">
			<!-- div -->
			<div class="container" data-id="template-container">

				<div class="mypage-body-cont modify-lpoint">
					<div class="section-form type2">

						<div class="section-form type2 updateUserForm">
							<p class="txt-color-red align-r mb-20">* 는 필수입력 항목입니다.</p>
							<div class="form-header">
								<h3 class="tit-size-mid">회원정보 수정</h3>
							</div>
							<div class="form-cont">
								<div class="row type2 type3">
									<label for="" class="input-tit">이름 <span class="txt-color-red">*</span></label>
									<div class="inputT mypageDelete">
										<input type="text" value="${selectUser.user_name}" name="user_name" id="update_userName" />
										<input type="button" class="but3 btnDeleteUser" value="회원탈퇴" name="deleteUser"
											id="deleteUser"
										>
									</div>
								</div>
								<div class="row type2 type3">
									<label for="" class="input-tit">아이디</label>
									<div class="input-cont">
										<div class="txt user-id">${selectUser.user_id}</div>
									</div>
								</div>

								<div class="row type2 type3">
									<label for="" class="input-tit">전화번호 <span class="txt-color-red">*</span></label>
									<div class="input-cont">
										<div class="box-between">
											<div class="inputT">
												<input type="text" value="${selectUser.user_phone}" id="update_userPhone"
													name="user-mobile-last" maxlength="11"
												/>
											</div>
										</div>
									</div>
								</div>
								<div class="row type2 type3">
									<label for="" class="input-tit">이메일</label>
									<div class="input-cont">
										<div class="box-between">
											<div class="inputT">
												<input type="text"
													value="${selectUser.user_email ne null ? selectUser.user_email.split('@')[0]:''}"
													name="user-email-head" id="user-email-head" placeholder="이메일 정보 입력하세요"
												>
											</div>
											<em class="at">@</em>
											<div class="inputT">
												<input type="text"
													value="${selectUser.user_email ne null ? selectUser.user_email.split('@')[1]:''}"
													name="user-email-tail" id="user-email-tail"
												>
											</div>
											<select class="selectbox" name="" id="user-email-select">
												<option value="self">직접입력</option>
												<option value="naver.com">naver.com</option>
												<option value="gmail.com">gmail.com</option>
												<option value="daum.net">daum.net</option>
												<option value="nate.com">nate.com</option>
											</select>
										</div>
									</div>
								</div>
								<div class="row type2 type3">
									<label for="" class="input-tit">주소 <span class="txt-color-red">*</span></label>
									<div class="input-cont">
										<div class="addr-area">
											<div class="box-type3 mb-10">
												<div class="inputT">
													<input type="text" value="${selectUser.user_addr}" name="user-address-zipcode"
														id="user_addr" readonly
													>
												</div>
												<button type="button" class="btn btn-black left user-address-zipcode-search"
													id="btnPost"
												>우편번호 찾기</button>
											</div>
											<div class="inputT">
												<input type="text" value="${selectUser.user_addrdt}" name="user-address-detail-01"
													id="user_addrdt"
												>
											</div>
										</div>
										<div class="inputT">
											<input type="text" value="${selectUser.user_postcode}" name="user-address-detail-02"
												id="user_postcode" readonly
											>
										</div>
									</div>
								</div>
							</div>
						</div>
						<div class="btn-area">
							<button type="button" class="btn btn-white cancel" value="수정취소" id="updatebtnHome">취소</button>
							<button type="button" class="btn btn-red next" value="정보수정" name="updatebtn" id="updatebtn">수정</button>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
	<!-- modal 영역 -->
	<div class="deleteUserModal">
		<div class="Modal-bg"></div>
		<div class="deleteUserModal-wrap" id="deleteUserModal">
			<p>정말진짜루 탈퇴할꺼닝?</p>
			<button type="button" id="btnDeleteUserC">취소</button>
			<button type="button" id="btnDeleteUser">탈퇴진행</button>
		</div>
	</div>
	<!-- footer -->
	<footer class="footer">
		<%@ include file="../common/footer.jsp"%>
	</footer>
</body>
</html>