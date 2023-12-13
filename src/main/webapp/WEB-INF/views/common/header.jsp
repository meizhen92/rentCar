<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>common_header</title>
<!-- script.js -->
<script type="text/javascript" src="${path}/resources/js/common/header.js"></script>
</head>
<body>
	<nav class="header-nav header-nav-line" >
		<!-- header 리본 바 -->
		<div class="inner">
			<div class="nav-wrap">
				<div>
					<a href="/main"> <img src="https://lotterentacar.net/lrhp/pc/images/common/logo-header.png"
						alt="대한민국 No1.롯데렌터카"
					>
					</a>
				</div>
				<ul>
					<li><a href="javascript:$.noop();" class="draw-btn draw-btn-s" data-target="draw-cont-01" data-on="true"
						data-siblings="true" id="T2FN01" data-link-area="GNB" data-link-name="단기렌터카" data-link-text="단기렌터카"
					>단기렌터카</a></li>
					<li><a href="javascript:$.noop();" class="draw-btn draw-btn-s" data-target="draw-cont-02" data-on="true"
						data-siblings="true" id="T2FN02" data-link-area="GNB" data-link-name="신차 장기렌터카" data-link-text="신차 장기렌터카"
					>신차 장기렌터카</a></li>
					<li><a href="javascript:$.noop();" class="draw-btn draw-btn-s" data-target="draw-cont-03" data-on="true"
						data-siblings="true" id="T2FN03" data-link-area="GNB" data-link-name="중고차 장기렌터카" data-link-text="중고차 장기렌터카"
					>중고차 장기렌터카</a></li>
					<li><a href="javascript:$.noop();" class="draw-btn draw-btn-s" data-target="draw-cont-04" data-on="true"
						data-siblings="true" id="T2FN08" data-link-area="GNB" data-link-name="법인 장기렌터카" data-link-text="법인 장기렌터카"
					>법인 장기렌터카</a></li>
					<li><a href="javascript:$.noop();" class="draw-btn draw-btn-s" data-target="draw-cont-05" data-on="true"
						data-siblings="true" id="T2FN07" data-link-area="GNB" data-link-name="차방정" data-link-text="차방정"
					>차방정</a></li>
					<li><a href="javascript:$.noop();" class="draw-btn draw-btn-s" data-target="draw-cont-06" data-on="true"
						data-siblings="true" id="T2FN05" data-link-area="GNB" data-link-name="고객지원" data-link-text="고객지원"
					>고객지원</a></li>
				</ul>
			</div>
			<div class="nav-menu">
				<ul>
					<li><button type="button" class="btn" id="btnMypage">
							<i class="icon mypage">마이페이지</i>
						</button></li>
					<li><button type="button" class="btn draw-btn draw-btn-all" data-target="draw-cont-07" data-on="true"
							data-siblings="true"
						>
							<i class="icon draw">전체메뉴</i>
						</button></li>
					<li><button type="button" class="btn" onclick="location.href=''">
							<i class="icon global">영어설정</i>
						</button></li>
				</ul>
			</div>
		</div>
	</nav>
	<div>
		<div id="toggleLogin">
			<c:choose>
				<c:when test="${ empty UserID }">
					<div class="loginLi">편리한 사용을 위해 로그인해주세요!</div>
					<p class="btnLoginC loginLi" id="btnLogin">로그인</p>
				</c:when>
				<c:otherwise>
					<div class="loginLi">${UserID}님,환영합니다!</div>
					<p class="btnLoginC loginLi" id="btnLogout">로그아웃</p>
				</c:otherwise>
			</c:choose>
		</div>
	</div>
</body>
</html>