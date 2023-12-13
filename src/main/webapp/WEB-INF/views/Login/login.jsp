<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Login</title>
<!-- stylesheet.css -->
<link rel="stylesheet" href="${path}/resources/css/reset.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/layout.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/modules.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/contents.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/jquery.mCustomScrollbar.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/DIY.css" type="text/css" />
<!-- script.js -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${path}/resources/js/Login/login.js"></script>
</head>
<body>
	<!-- header,div,footer 로 구성 -->
	<!-- header -->
	<header class="header">
		<%@ include file="../common/header.jsp"%>
	</header>
	<div id="mainDiv">
		<form id="login_form" method="post">
			<!-- div -->
			<div class="loginContatiner">
				<div class="pop-inner">
					<div class="popup-top">
						<h4>
							L.POINT
							<span class="lg-line"></span>
							롯데렌터카 회원 로그인
						</h4>
						<button type="button" class="layer-popup-close" data-layer="layer-login">
							<span class="icon pop-close">닫기 버튼</span>
						</button>
					</div>
					<div class="popup-cont layer-iscroll">
						<div class="iscroll-in">
							<div class="detail-item">
								<!-- 							<div class="detail-top align-c">
								<div class="detail-radio iconBox">
									<ul class="list-type-col3 detail-radio-box">
										<li><input type="radio" id="radio-lpoint"
											name="radio-user-type" checked="" value="P"><label
											for="radio-lpoint">L.POINT 통합회원</label></li>
									</ul>
								</div>
							</div> -->

								<div class="detail-tab-wrap-P lpoint-member active">
									<div class="detail-cont">
										<div class="detail-inputT inputT">
											<input type="text" name="user_id" id="user_id" placeholder="아이디">
										</div>
										<div class="detail-inputT inputT">
											<input type="password" name="user_pw" id="user_pw" placeholder="비밀번호">
										</div>
										<button type="button" class="btn btn-default member-login active" id="submitLogin">로그인</button>
										<pre id="outInfo">
										<c:if test="${loginError ne null}">
											<c:out value="${loginError }"></c:out>
										</c:if>
									</pre>
										<div class="detail-search-wrap">
											<div class="detail-search">
												<ul class="loginUl">
													<li class="loginLi">
														<a href="/register01" class="member-join">회원가입</a>
													</li>
													<li class="loginLi">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
													<li class="loginLi">
														<a href="#none" class="member-find-id">아이디찾기</a>
													</li>
													<li class="loginLi">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
													<li class="loginLi">
														<a href="#none" class="member-find-pw">비밀번호찾기</a>
													</li>
												</ul>
											</div>
										</div>
										<div class="detail-submit"></div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</form>
	</div>
		<!-- footer -->
		<footer class="footer">
			<%@ include file="../common/footer.jsp"%>
		</footer>
</body>
</html>