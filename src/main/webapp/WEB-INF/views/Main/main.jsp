<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- JSTL -->
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>롯데렌터카</title>
<!-- stylesheet.css -->
<link rel="stylesheet" href="${path}/resources/css/contents.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/indexShortReserve_22Q4.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/layout.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/modules.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/reset.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/jquery.mCustomScrollbar.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/DIY.css" type="text/css" />
<!-- script.js -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${path}/resources/js/Main/main.js"></script>
<!-- slick라이브러리 -->
<link rel="stylesheet" type="text/css"
	href="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.css"
/>
<script type="text/javascript" src="//cdn.jsdelivr.net/npm/slick-carousel@1.8.1/slick/slick.min.js"></script>
</head>
<body>
	<!-- header,main,footer 로 구성 -->
	<!-- header -->
	<header class="header">
		<%@ include file="../common/header.jsp"%>
	</header>
	<!-- main -->
	<main id="mainDiv">
		<!-- 메인화면 그림 부분 -->
		<div class="mainChoosePhoto">
			<div class="slide_div">
				<div>
					<img src="https://lotterentacar.net/atch/getImage.do?atchFileId=FILE0000000001988420" />
				</div>
				<div>
					<img src="https://lotterentacar.net/atch/getImage.do?atchFileId=FILE0000000003229507" />
				</div>
				<div>
					<img src="https://lotterentacar.net/atch/getImage.do?atchFileId=FILE0000000003118756" />
				</div>
				<div>
					<img src="https://lotterentacar.net/atch/getImage.do?atchFileId=FILE0000000003143801" />
				</div>
				<div>
					<img src="https://lotterentacar.net/atch/getImage.do?atchFileId=FILE0000000003181216" />
				</div>
				<div>
					<img src="https://lotterentacar.net/atch/getImage.do?atchFileId=FILE0000000003120886" />
				</div>
				<div>
					<img src="https://lotterentacar.net/atch/getImage.do?atchFileId=FILE0000000003089169" />
				</div>
				<div>
					<img src="https://lotterentacar.net/atch/getImage.do?atchFileId=FILE0000000002546816" />
				</div>
				<div>
					<img src="https://lotterentacar.net/atch/getImage.do?atchFileId=FILE0000000002428971" />
				</div>
				<div>
					<img src="https://lotterentacar.net/atch/getImage.do?atchFileId=FILE0000000001988420" />
				</div>
				<div>
					<img src="https://lotterentacar.net/atch/getImage.do?atchFileId=FILE0000000003130463" />
				</div>
			</div>
		</div>
		<!-- 메인화면 예약 지점 선택 부분 -->
		<div class="mainChoose">
			<div class="section-visual-booking-branch">
				<div class="m-tit">
					<h2>[단기렌터카] 차량 대여장소 선택</h2>
				</div>
				<div class="btn-reserv-jeju">
					<button class="btn-reserv-jeju" value="${locationList[12].location_no}" id="btnJejuP">
						<span>제주예약 하기 click👆</span>
					</button>
				</div>
				<div class="shor-main-toggle-cont shor-main-cont-01">
					<div class="shor-main-toggle-txt">
						<div class="shor-main-list-wrap">
							<div class="tooltip-layer absolute-type tooltipCont tooltipCont01">
								<div class="tooltip type2">
									<button type="button" class="btn-tooltip-close tooltipClose">닫기</button>
									<div class="tooltip-inner">
										<h3 class="tooltip-tit"></h3>
										<div class="tooltip-list">
											<ul class="lst dot t-toltip-contents">
											</ul>
										</div>
									</div>
								</div>
							</div>
							<div class="shor-main-list-lt">
								<div id="firstRegionList" class="ScrollPosition mCustomScrollbar _mCS_1 mCS-autoHide">
									<div id="mCSB_1" class="mCustomScrollBox mCS-light mCSB_vertical mCSB_inside"
										style="max-height: none;" tabindex="0"
									>
										<div id="mCSB_1_container" class="mCSB_container"
											style="position: relative; top: 0; left: 0;" dir="ltr"
										>
											<ul>
												<c:forEach var="item" items="${locationList}" varStatus="loop">
													<c:if test="${item.location_no ne 13}">
														<li class="first-region btnLocaP" value="${loop.count}">
															<button type="button" class="btn btn-link first-region">${item.location_name}</button>
														</li>
													</c:if>
												</c:forEach>
											</ul>
										</div>
										<div id="mCSB_1_scrollbar_vertical"
											class="mCSB_scrollTools mCSB_1_scrollbar mCS-light mCSB_scrollTools_vertical"
											style="display: block;"
										>
											<div class="mCSB_draggerContainer">
												<div id="mCSB_1_dragger_vertical" class="mCSB_dragger"
													style="position: absolute; min-height: 30px; display: block; height: 212px; max-height: 375px; top: 0px;"
												>
													<div class="mCSB_dragger_bar" style="line-height: 30px;"></div>
												</div>
												<div class="mCSB_draggerRail"></div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</main>
	<!-- footer -->
	<footer class="footer">
		<%@ include file="../common/footer.jsp"%>
	</footer>
</body>
</html>