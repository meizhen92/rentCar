<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>회원가입(약관동의)</title>
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
</head>
<body>
	<!-- header,main,footer 로 구성 -->
	<div>
		<!-- header -->
		<header class="header">
			<%@ include file="../common/header.jsp"%>
		</header>
		<!-- main -->
		<main id="mainDiv">
			<div></div>
			<div>
				<div>
					<section></section>
					<div></div>
					<!-- 서비스 약관 동의 -->
					<section>
						<div>
							<h3>서비스 약관 동의</h3>
						</div>
						<div>
							<div>
								<!-- 전체동의 -->
								<div>
									<input type="checkbox">
									<label>전체동의</label>
								</div>
								<p />
								<!-- 이용약관 -->
								<div>
									<div>부릉렌터카 이용약관</div>
									<div>
										<ul>
											<li>
												<div>
													<input type="checkbox">
													<label>부릉렌터카 회원사 약관(필수)</label>
												</div>
											</li>
											<li>
												<div>
													<input type="checkbox">
													<label>필수입력정보 수집동의서(필수)</label>
												</div>
											</li>
											<li>

												<div>
													<input type="checkbox">
													<label>고유식별정보 수집/이용 동의서(선택)</label>
												</div>
											</li>
											<li>

												<div>
													<input type="checkbox">
													<label>마케팅 목적의 개인정보 수집/이용 동의(선택)</label>
												</div>
											</li>
											<li>
												<div>
													<input type="checkbox">
													<label>마케팅 목적의 개인정보 제 3자 제공 동의(선택)</label>
												</div>
											</li>
										</ul>
									</div>
								</div>
								<!-- 선택약관 설명 -->
								<div>
									<p />
									선택 약관에 동의하지 않으셔도 가입이 가능합니다!!
								</div>
							</div>
						</div>
					</section>
					<!-- 취소, 다음 버튼 -->
					<div>
						<button>취소</button>
						<button type="button" id="btnNext">다음</button>
					</div>
				</div>
			</div>
		</main>
		<!-- footer -->
		<footer class="footer">
			<%@ include file="../common/footer.jsp"%>
		</footer>
	</div>
</body>
</html>