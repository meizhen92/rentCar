<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>Detail Reservation</title>
<!-- stylesheet.css -->
<link rel="stylesheet" href="${path}/resources/css/contents.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/jquery.mCustomScrollbar.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/layout.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/modules.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/reset.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/reservationIndex_22Q4.css" type="text/css" />
<link rel="stylesheet" href="${path}/resources/css/DIY.css" type="text/css" />
<!-- script.js -->
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script type="text/javascript" src="${path}/resources/js/Reservation/detailReser.js"></script>
</head>
<body>
	<!-- header,main,footer 로 구성 -->
	<!-- header -->
	<header class="header">
		<%@ include file="../common/header.jsp"%>
	</header>
	<!-- main -->
	<main id="mainDiv">
		<!--단기렌터카 예약/약관 -->
		<div class="short-container">
			<div class="inner-type2">
				<!-- 페이지 타이틀 -->
				<section class="section-headline">
					<h2 class="tit">예약진행</h2>
				</section>
				<!-- //페이지 타이틀 -->
				<!-- 진행 단계 -->
				<div class="section-top">
					<ol class="step-list">
						<li class="active">
							<span class="icon complete"></span>
							<p class="txt">예약확인/결제</p>
						</li>
						<li>
							<span class="icon progress"></span>
							<p class="txt">완료</p>
						</li>
					</ol>
				</div>
				<!-- //진행 단계 -->
				<div class="realTime-cont" style="min-height: 1160px;">
					<div class="section-cont">

						<fieldset>
							<section class="section-form form1">
								<div class="form-header">
									<h3 class="tit-size-mid">예약상세내역</h3>
								</div>
								<div class="form-cont">
									<div class="row type2">
										<span class="input-tit">대여일시&nbsp;/&nbsp;지점</span>
										<div class="txt">${dayChoiceOut}&nbsp;/&nbsp;${storeChoice}</div>
									</div>
									<div class="row type2">
										<span class="input-tit">반납일시&nbsp;/&nbsp;지점</span>
										<div class="txt">${dayChoiceIn}&nbsp;/&nbsp;${storeChoice}</div>
									</div>
									<div class="row type2">
										<span class="input-tit">차량상세정보</span>
										<div class="txt">${carChoice}</div>
									</div>
									<div class="row type2">
										<span class="input-tit">총 대여 기간</span>
										<div class="txt txt-color-red">${days}일&nbsp;${hours}시간&nbsp;${minutes}분</div>
									</div>
								</div>
							</section>
							<section class="section-form form2">
								<div class="form-header">
									<h3 class="tit-size-mid">예약자 정보확인</h3>
								</div>
								<div class="form-cont">
									<div id="reserv-person-info">
										<div class="row type2">
											<label for="" class="input-tit">이름</label>
											<div class="input-cont">
												<input type="text" id="userName" name="userName" value="${UserNm}" placeholder="이름 입력">
											</div>
										</div>
										<div class="row type2 certify-area">
											<label for="" class="input-tit">전화번호</label>
											<div class="input-cont">
												<div class="box-type3">
													<div class="inputT">
														<input type="text" name="userPhone" id="userPhone" value="${UserPh }" placeholder="전화번호(형식:00011112222)" />
													</div>
												</div>
											</div>
										</div>
										<div>
											<ul class="lst dot">
												<li class="txt-color-red">운전면허증은 결제 후 사전체크인 시 입력해주시기 바랍니다.</li>
												<li class="txt-color-red">운전면허증 취득 1년 미만 또는 만 21세 미만 고객님은 차량 대여가 불가합니다.</li>
												<li class="txt-color-red">10인승 이상 차량 대여 시 1종 보통 이상의 면허가 필요합니다.</li>
											</ul>
										</div>
									</div>
								</div>
							</section>
							<section class="section-form form3" style="display: none;">
								<div class="form-header">
									<h3 class="tit-size-mid">예약자 운전면허 정보확인</h3>
								</div>
								<div class="form-cont driver-license-section revise">
									<div class="row">
										<div class="selection">
											<p class="input-tit">면허구분</p>
											<div class="input-cont">
												<p id="nationTargetP" class="txt-color-red" style="display: block;">※ 대한민국 국적을 가진 사람은 국내면허증을 소지해야 대여가
													가능합니다.</p>
												<ul class="radio-area">
													<li>
														<div class="radio-icon-box">
															<input type="radio" id="LicenseDiv1" name="LicenseDiv" value="1" checked="">
															<label for="LicenseDiv1" style="display: none;">국내면허증</label>
														</div>
													</li>
												</ul>
											</div>
										</div>
										<!-- 국내 면허증 -->
										<div id="korDrvlicense" class="domestic-license">
											<div class="driver-license-cont">

												<div class="type-box">
													<span class="numbering">1</span>
													<select id="licenseGradeCode" name="licenseGradeCode" class="selectbox">
														<option value="" selected="">면허종류 선택하세요.</option>
														<option value="13" data-code="11">1 종대형</option>
														<option value="12" data-code="12">1 종보통</option>
														<option value="16" data-code="32">2 종보통</option>
														<option value="17" data-code="33">2 종오토</option>
													</select>
												</div>

												<div class="number-box">
													<span class="numbering">2</span>
													<div class="box-between">
														<select name="licenseNo1" id="licenseNo1" title="면허증번호" class="selectbox">
															<option value="" selected="">선택</option>
															<option value="11">11</option>
															<option value="12">12</option>
															<option value="13">13</option>
															<option value="14">14</option>
															<option value="15">15</option>
															<option value="16">16</option>
															<option value="17">17</option>
															<option value="18">18</option>
															<option value="19">19</option>
															<option value="20">20</option>
															<option value="21">21</option>
															<option value="22">22</option>
															<option value="23">23</option>
															<option value="24">24</option>
															<option value="25">25</option>
															<option value="26">26</option>
															<option value="27">27</option>
															<option value="28">28</option>
															<option value="서울">서울</option>
															<option value="부산">부산</option>
															<option value="경기">경기</option>
															<option value="강원">강원</option>
															<option value="충북">충북</option>
															<option value="충남">충남</option>
															<option value="전북">전북</option>
															<option value="전남">전남</option>
															<option value="경북">경북</option>
															<option value="경남">경남</option>
															<option value="제주">제주</option>
															<option value="대구">대구</option>
															<option value="인천">인천</option>
															<option value="광주">광주</option>
															<option value="대전">대전</option>
															<option value="울산">울산</option>
														</select>
														<div class="inputT">
															<input type="text" maxlength="2" title="면허증번호 두번째 숫자" name="licenseNo2" value=""
																onkeyup="gfn_util_onKeyOnlyNumber();moveNextFocus();"
															>
														</div>
														<div class="inputT">
															<input type="password" maxlength="6" title="면허증번호 세번째 숫자" name="licenseNo3" value=""
																onkeyup="gfn_util_onKeyOnlyNumber();moveNextFocus();"
															>
														</div>
														<div class="inputT">
															<input type="text" maxlength="2" title="면허증번호 마지막 숫자" name="licenseNo4" value=""
																onkeyup="gfn_util_onKeyOnlyNumber();moveNextFocus();"
															>
														</div>
													</div>
												</div>

												<!-- 이름 -->
												<div class="name-box">
													<span class="numbering">3</span>
													<div class="inputT">
														<input type="text" id="drvLicUserName" name="drvLicUserName" value="김미진">

													</div>
												</div>

												<!-- 생년월일 -->
												<div class="birth-box">
													<span class="numbering">4</span>
													<div class="box-between" style="justify-content: flex-start">
														<div class="inputT">

															<input type="text" id="driverUserBirth" name="driverUserBirth" maxlength="6" value="921001"
																onkeyup="gfn_util_onKeyOnlyNumber();moveNextFocus();" placeholder="YYMMDD"
															>
														</div>
														<span class="mg"> - </span>
														<div class="inputT">
															<input type="text" id="driverUserBirth2" name="driverUserBirth2" maxlength="1" value=""
																onkeyup="gfn_util_onKeyOnlyNumber();moveNextFocusLicense();" placeholder=""
															>
														</div>
													</div>
												</div>

												<!-- 면허증 갱신기간 /발급일자 -->
												<div class="expiration-date-box">
													<span class="numbering">5</span>
													<div class="box-align">
														<span class="symbol">~</span>
														<div class="inputT">
															<input type="hidden" id="licenseAvlYYYY" name="licenseAvlYYYY" value="">
															<input type="hidden" id="licenseAvlMM" name="licenseAvlMM" value="">
															<input type="hidden" id="licenseAvlDD" name="licenseAvlDD" value="">
															<input type="text" name="licenseAvl" id="licenseAvl" maxlength="8" value=""
																onkeyup="gfn_util_onKeyOnlyNumber();moveNextFocus();" placeholder="YYYYMMDD"
															>
														</div>
													</div>
												</div>
												<div class="issue-date-box">
													<span class="numbering">6</span>
													<div class="inputT">
														<input type="text" maxlength="8" name="licenseAcq" id="licenseAcq" value=""
															onkeyup="this.value=this.value.replace(/[^0-9]/g,'')" placeholder="YYYYMMDD"
														>
														<input type="hidden" id="licenseAcqYYYY" name="licenseAcqYYYY" value="">
														<input type="hidden" id="licenseAcqMM" name="licenseAcqMM" value="">
														<input type="hidden" id="licenseAcqDD" name="licenseAcqDD" value="">
													</div>
												</div>
											</div>
											<div class="guide-cont">
												<h5 class="tit">면허정보 입력항목 안내</h5>
												<ul class="lst num">
													<li>
														<span class="bul numbering">1</span>
														면허종류 : 10인승 이상 차량은 1종 보통 이상의 면허가 필요합니다.
													</li>
													<li>
														<span class="bul numbering">2</span>
														면허번호 : 지역정보를 숫자코드로 입력합니다.
													</li>
													<li>
														<span class="bul numbering">3</span>
														이름 : 외국인인 경우 공백없이 영어 대문자를 입력합니다.
													</li>
													<li>
														<span class="bul numbering">4</span>
														생년월일 : 주민등록번호 앞 7자리를 입력합니다.
													</li>
													<li>
														<span class="bul numbering">5</span>
														만료일자 : 면허증 유효기간이 지났다면 대여가 불가합니다.
													</li>
													<li>
														<span class="bul numbering">6</span>
														발급일자 : 신규 또는 갱신, 재발급한 면허증의 발급일자를 입력합니다.
													</li>
												</ul>
											</div>
										</div>
										<!-- // 국내 면허증 -->
										<!-- 국제 면허증 -->

										<div id="glvDrvlicense" style="display: none;" class="international-license  detail-tab-wrap-I ">
											<div class="driver-license-cont">
												<div class="country-box">
													<span class="numbering">1</span>
													<select id="license_country_en" name="license_country_en" class="selectbox">
														<option value="" selected="selected">선택</option>
														<optgroup label="Administrative regions">
															<option value="Hong Kong" data-category="Administrative regions">Hong Kong</option>
															<option value="Macao" data-category="Administrative regions">Macao</option>
														</optgroup>
														<optgroup label="Asia">
															<option value="Bangladesh" data-category="Asia">Bangladesh</option>
															<option value="Cambodia" data-category="Asia">Cambodia</option>
															<option value="India" data-category="Asia">India</option>
															<option value="Japan" data-category="Asia">Japan</option>
															<option value="Kazakhstan" data-category="Asia">Kazakhstan</option>
															<option value="Kyrgyzstan" data-category="Asia">Kyrgyzstan</option>
															<option value="Laos" data-category="Asia">Laos</option>
															<option value="Malaysia" data-category="Asia">Malaysia</option>
															<option value="Mongolia" data-category="Asia">Mongolia</option>
															<option value="Pakistan" data-category="Asia">Pakistan</option>
															<option value="Republic of Korea" data-category="Asia">Republic of Korea</option>
															<option value="Republic of Philippines" data-category="Asia">Republic of Philippines</option>
															<option value="Singapore" data-category="Asia">Singapore</option>
															<option value="Sri Lanka" data-category="Asia">Sri Lanka</option>
															<option value="Tajikistan" data-category="Asia">Tajikistan</option>
															<option value="Thailand" data-category="Asia">Thailand</option>
															<option value="Turkmenistan" data-category="Asia">Turkmenistan</option>
															<option value="Uzbekistan" data-category="Asia">Uzbekistan</option>
															<option value="Vietnam" data-category="Asia">Vietnam</option>
														</optgroup>
														<optgroup label="Oceania">
															<option value="Australia" data-category="Oceania">Australia</option>
															<option value="Fiji" data-category="Oceania">Fiji</option>
															<option value="New Zealand" data-category="Oceania">New Zealand</option>
															<option value="Papua New Guinea" data-category="Oceania">Papua New Guinea</option>
														</optgroup>
														<optgroup label="America">
															<option value="Argentine Republic" data-category="America">Argentine Republic</option>
															<option value="Bahamas" data-category="America">Bahamas</option>
															<option value="Barbados" data-category="America">Barbados</option>
															<option value="Brazil" data-category="America">Brazil</option>
															<option value="Canada" data-category="America">Canada</option>
															<option value="Chile" data-category="America">Chile</option>
															<option value="Commonwealth of Dominica" data-category="America">Commonwealth of Dominica</option>
															<option value="Cuba" data-category="America">Cuba</option>
															<option value="Ecuador" data-category="America">Ecuador</option>
															<option value="Guatemala" data-category="America">Guatemala</option>
															<option value="Guyana" data-category="America">Guyana</option>
															<option value="Haiti" data-category="America">Haiti</option>
															<option value="Jamaica" data-category="America">Jamaica</option>
															<option value="Paraguay" data-category="America">Paraguay</option>
															<option value="Peru" data-category="America">Peru</option>
															<option value="Trinidad and Tobago" data-category="America">Trinidad and Tobago</option>
															<option value="United States of America" data-category="America">United States of America</option>
															<option value="Uruguay" data-category="America">Uruguay</option>
															<option value="Venezuela" data-category="America">Venezuela</option>
														</optgroup>
														<optgroup label="Europe">
															<option value="Albania" data-category="Europe">Albania</option>
															<option value="Armenia" data-category="Europe">Armenia</option>
															<option value="Austria" data-category="Europe">Austria</option>
															<option value="Belarus" data-category="Europe">Belarus</option>
															<option value="Belgium" data-category="Europe">Belgium</option>
															<option value="Bosnia and Herzegovina" data-category="Europe">Bosnia and Herzegovina</option>
															<option value="Bulgaria" data-category="Europe">Bulgaria</option>
															<option value="Croatia" data-category="Europe">Croatia</option>
															<option value="Cyprus" data-category="Europe">Cyprus</option>
															<option value="Czech Republic" data-category="Europe">Czech Republic</option>
															<option value="Denmark" data-category="Europe">Denmark</option>
															<option value="Estonia" data-category="Europe">Estonia</option>
															<option value="Finland" data-category="Europe">Finland</option>
															<option value="France" data-category="Europe">France</option>
															<option value="Georgia" data-category="Europe">Georgia</option>
															<option value="Germany" data-category="Europe">Germany</option>
															<option value="Greece" data-category="Europe">Greece</option>
															<option value="Hungary" data-category="Europe">Hungary</option>
															<option value="Iceland" data-category="Europe">Iceland</option>
															<option value="Ireland" data-category="Europe">Ireland</option>
															<option value="Italy" data-category="Europe">Italy</option>
															<option value="Latvia" data-category="Europe">Latvia</option>
															<option value="Lithuania" data-category="Europe">Lithuania</option>
															<option value="Luxembourg" data-category="Europe">Luxembourg</option>
															<option value="Macedonia" data-category="Europe">Macedonia</option>
															<option value="Malta" data-category="Europe">Malta</option>
															<option value="Moldova" data-category="Europe">Moldova</option>
															<option value="Monaco" data-category="Europe">Monaco</option>
															<option value="Montenegro" data-category="Europe">Montenegro</option>
															<option value="Netherlands" data-category="Europe">Netherlands</option>
															<option value="Norway" data-category="Europe">Norway</option>
															<option value="Poland" data-category="Europe">Poland</option>
															<option value="Portugal" data-category="Europe">Portugal</option>
															<option value="Romania" data-category="Europe">Romania</option>
															<option value="Russia" data-category="Europe">Russia</option>
															<option value="San Marino" data-category="Europe">San Marino</option>
															<option value="Serbia" data-category="Europe">Serbia</option>
															<option value="Slovak Republic" data-category="Europe">Slovak Republic</option>
															<option value="Slovenia" data-category="Europe">Slovenia</option>
															<option value="Spain" data-category="Europe">Spain</option>
															<option value="Sweden" data-category="Europe">Sweden</option>
															<option value="Switzerland" data-category="Europe">Switzerland</option>
															<option value="Ukraine" data-category="Europe">Ukraine</option>
															<option value="Turkey" data-category="Europe">Turkey</option>
															<option value="United Kingdom" data-category="Europe">United Kingdom</option>
															<option value="Vatican" data-category="Europe">Vatican</option>
														</optgroup>
														<optgroup label="Middle East">
															<option value="Bahrain" data-category="Middle East">Bahrain</option>
															<option value="Iran" data-category="Middle East">Iran</option>
															<option value="Iraq" data-category="Middle East">Iraq</option>
															<option value="Israel" data-category="Middle East">Israel</option>
															<option value="Jordan" data-category="Middle East">Jordan</option>
															<option value="Kuwait" data-category="Middle East">Kuwait</option>
															<option value="Lebanon" data-category="Middle East">Lebanon</option>
															<option value="Qatar" data-category="Middle East">Qatar</option>
															<option value="Saudi Arabia" data-category="Middle East">Saudi Arabia</option>
															<option value="Syria" data-category="Middle East">Syria</option>
															<option value="United Arab Emirates" data-category="Middle East">United Arab Emirates</option>
														</optgroup>
														<optgroup label="Africa">
															<option value="Algeria" data-category="Africa">Algeria</option>
															<option value="Azerbaijan" data-category="Africa">Azerbaijan</option>
															<option value="Benin" data-category="Africa">Benin</option>
															<option value="Botswana" data-category="Africa">Botswana</option>
															<option value="Burkina Faso" data-category="Africa">Burkina Faso</option>
															<option value="Central African Republic" data-category="Africa">Central African Republic</option>
															<option value="Cote d'Ivoire" data-category="Africa">Cote d'Ivoire</option>
															<option value="Democratic Republic of the Congo" data-category="Africa">Democratic Republic of
																the Congo</option>
															<option value="Egypt" data-category="Africa">Egypt</option>
															<option value="Ghana" data-category="Africa">Ghana</option>
															<option value="Kenya" data-category="Africa">Kenya</option>
															<option value="Lesotho" data-category="Africa">Lesotho</option>
															<option value="Liberia" data-category="Africa">Liberia</option>
															<option value="Madagascar" data-category="Africa">Madagascar</option>
															<option value="Malawi" data-category="Africa">Malawi</option>
															<option value="Mali" data-category="Africa">Mali</option>
															<option value="Morocco" data-category="Africa">Morocco</option>
															<option value="Namibia" data-category="Africa">Namibia</option>
															<option value="Niger" data-category="Africa">Niger</option>
															<option value="Nigeria" data-category="Africa">Nigeria</option>
															<option value="Republic of the Congo" data-category="Africa">Republic of the Congo</option>
															<option value="Rwanda" data-category="Africa">Rwanda</option>
															<option value="Senegal" data-category="Africa">Senegal</option>
															<option value="Seychelles" data-category="Africa">Seychelles</option>
															<option value="Sierra Leone" data-category="Africa">Sierra Leone</option>
															<option value="South Africa" data-category="Africa">South Africa</option>
															<option value="Togo" data-category="Africa">Togo</option>
															<option value="Tunisia" data-category="Africa">Tunisia</option>
															<option value="Uganda" data-category="Africa">Uganda</option>
															<option value="Zimbabwe" data-category="Africa">Zimbabwe</option>
														</optgroup>
													</select>
												</div>
												<div class="number-box">
													<span class="numbering">2</span>
													<div class="inputT">
														<input type="text" onkeyup="gfn_util_onKeyOnlyNumber();moveNextFocus();" maxlength="12" value=""
															id="InternationalLicenseNumber" name="InternationalLicenseNumber" placeholder="운전면허 번호를 입력하세요"
														>
													</div>
												</div>

												<div class="birth-box">
													<span class="numbering">3</span>

													<div class="box-between">
														<div class="inputT">
															<input type="text" id="Glbirthday" name="Glbirthday" maxlength="2" placeholder="DD" value="">
														</div>
														<span>.</span>
														<select name="GlbirthMonth" id="GlbirthMonth" class="selectbox">
															<option value="NONE">선택</option>
															<option value="01">Jan</option>
															<option value="02">Feb</option>
															<option value="03">Mar</option>
															<option value="04">Apr</option>
															<option value="05">May</option>
															<option value="06">Jun</option>
															<option value="07">Jul</option>
															<option value="08">Aug</option>
															<option value="09">Sep</option>
															<option value="10">Oct</option>
															<option value="11">Nov</option>
															<option value="12">Dec</option>
														</select>
														<span>.</span>
														<div class="inputT">
															<input type="text" id="GlbirthYear" name="GlbirthYear" maxlength="4" placeholder="YYYY">
														</div>
													</div>

												</div>

												<div class="type-box">
													<span class="numbering">4</span>
													<ul>
														<li>
															<div class="radio-icon-box type-square">
																<input type="radio" id="chk02" name="licenseGradeCodeEn" value="22">
																<label for="chk02">B</label>
															</div>
														</li>
														<li>
															<div class="radio-icon-box type-square">
																<input type="radio" id="chk04" name="licenseGradeCodeEn" value="24">
																<label for="chk04">D</label>
															</div>
														</li>
													</ul>
												</div>
											</div>
											<div class="guide-cont">
												<h5 class="tit">면허정보 입력항목 안내</h5>
												<ul class="lst num">
													<li>
														<span class="bul numbering">1</span>
														발급국가 : 국제면허증을 발급한 국가를 선택합니다.
													</li>
													<li>
														<span class="bul numbering">2</span>
														면허번호 : 면허번호 12자리를 입력합니다.
													</li>
													<li>
														<span class="bul numbering">3</span>
														생년월일 : 면허증 기준 생년월일을 입력하세요. (DD.MM.YYYY)
													</li>
													<li>
														<span class="bul numbering">4</span>
														면허종류 : 10인승 이상 차량은 D 등급 면허가 있어야 운전이 가능합니다.
													</li>
												</ul>
											</div>
										</div>
										<!-- // 국제 면허증 -->

										<div class="mt-10">
											<ul class="lst dot">
												<li class="txt-color-red">예약자(임차인)는 면허증을 반드시 지참하고 지점에 방문해 주시기 바랍니다.</li>
												<li class="txt-color-red">차량 대여 시 면허증 정보가 상이할 경우, 예약이 취소되거나 추가 확인이 필요할 수 있습니다.</li>
											</ul>
										</div>

									</div>
								</div>
							</section>

							<section class="section-form form7" id="prechkArea" style="display: none;">
								<div class="form-header">
									<h3 class="tit-size-mid">사전체크인을 위한 이용자 필수 동의사항</h3>
								</div>
								<!-- 20201217 : 마크업 변경(약관 공통화) -->
								<div class="form-cont agree-area agreeAccor">
									<div class="row">
										<div class="agree-header">
											<div class="agree-header-top">
												<div class="chk-icon-box type-circle">
													<input type="checkbox" id="jejuAll">
													<label for="jejuAll"> 전체동의 </label>
												</div>
											</div>
										</div>
										<div class="agree-body" id="carCheckinAgree">
											<ul>
												<li>
													<div class="agree-body-header policyArea">
														<div class="chk-icon-box">
															<input type="checkbox" id="agree4" name="agree4" value="X">
															<label for="agree4" id="policy-title-31">자차손해면책제도 / 휴차보상료에 대한 동의(필수)</label>
														</div>
														<button type="button" class="btnToggle " data-target="policy-toggleCont31" data-on="true"
															data-siblings="false"
														>자세히</button>
													</div>
													<div class="agree-body-cont toggleCont policy-toggleCont31 " style="display: none;">
														<script>
															$('document')
																	.ready(
																			function() {
																				$(
																						'#policy-title-31')
																						.text(
																								'자차손해면책제도 / 휴차보상료에 대한 동의(필수)');
																			});
														</script>
														<section class="provisionWrap">
															<h1>자차손해 면책 제도(CDW)</h1>
															<ul class="agree-list-type2">
																<li>차량 대여 중 귀책사유로 인해 발생하는 모든 차량 손해(손, 망실)는 고객님의 책임 입니다.</li>
																<li>단, 자차손해 면책제도(CDW)에 가입하시면 고객의 실수로 발생한 자차사고에 대한 보호를 받으실 수가 있으며, 가입은 고객님의 선택 사항입니다.</li>
																<li>대인 : 무한, 대물 : 2천만원, 자손 :1천 5백만원</li>
															</ul>

															<h2>내륙 지역</h2>
															<ul class="agree-list-type2">
																<li>차량손해의 액수에 상관없이 사고건당 5만원~30만원으로 차량 손해에 대한 책임을 보호받을 수 있습니다. 단, 차량손해 면책제도의 면책금 가입종류에 따라 가입 요금이
																	다릅니다.</li>
																<li>
																	면책금 종류
																	<ul class="agree-list-type2">
																		<li>국산차량 : 고객부담금면제, 5만원, 30만원</li>
																		<li>수입차량 : 30만원(단일 면책금 제도 운영)</li>
																	</ul>
																</li>
															</ul>

															<h2>제주 지역</h2>
															<ul class="agree-list-type2">
																<li>
																	면책금 종류
																	<ul class="agree-list-type2">
																		<li>국산차량 : 완전 면책 제도, 30만원(일부 차량)</li>
																		<li>수입차량 : 30만원(단일 면책금 제도 운영)</li>
																		<li>완전 면책 제도는 차량 손해 액수에 상관없이 고객 부담금이 없으며, 차량 손해에 대한 책임을 보호 받을 수 있습니다.</li>
																	</ul>
																</li>
															</ul>

															<h2>차량 수리비</h2>
															<ul class="agree-list-type2">
																<li>차량 대여 중 귀책사유로 인해 발생하는 모든 차량 손해(손, 망실)는 고객님께서 차량 수리비를 지불하셔야 합니다.</li>
																<li>휴차 보상 : CDW 가입유무와 관계 없이 잔존가 대비 50% 이상 파손이 발생 할 경우 수리기간 동안 영업 손해에 따른 비용(수리기간 동안 대여 차량 정상요금의
																	50%)을 부담 하셔야 합니다.</li>
																<li>단, 차량손해 면책 제도에 가입하시면 자차 사고에 대한 보호를 받으실 수 있습니다. 차량 수리비가 면책금 가입 종류에 따라 가입된 면책금 미만인 경우 실비 정산을 하며,
																	가입된 면책금 이상인 경우 각각 가입하신 최고 면책금만 지불하시면 됩니다.</li>
															</ul>
														</section>
													</div>
												</li>
												<!-- [NEW]개인정보 수집ㆍ이용 동의(필수) -->
												<li>
													<div class="agree-body-header policyArea">
														<div class="chk-icon-box">
															<input type="checkbox" id="agree6" name="agree6" value="X" onchange="checkAllAgreement(this);">
															<label for="agree6" id="precheckin_01">개인정보 수집ㆍ이용 동의(필수)</label>
														</div>
														<button type="button" class="btnToggle" data-target="precheckin_01" data-on="true" data-siblings="false">
															자세히</button>
													</div>
													<div class="agree-body-cont toggleCont precheckin_01 precheckin-box">
														<section class="provisionWrap">
															<h2>가. 수집 · 이용 목적</h2>
															<h3>1) 고객 관리</h3>
															<p>
																본인확인, 개인식별, 계약 체결 의사 확인, 명의도용 방지, 운전면허 소지 및 연령 등 확인, 고지사항 전달, 고객 문의/불만 처리, 분쟁 조정을 위한 기록 보존, 해피콜 (고객만족도
																조사)<br> 개인정보 처리 동의에 관한 사항 변경에 대한 동의 수취, 불법 행위 제재, 차량을 이용한 범죄 예방, 수사기관/정부기관/행정청/법원 등의 적법한 조사, 요구 또는
																명령 등에 대한 협조/이행
															</p>
															<h3>2) 계약 체결 · 유지 · 이행 · 관리</h3>
															<p>
																계약 체결/종료 처리, 계약 이행 및 요금 정산/청구/수납/추심, 계약 · 자동차대여약관 위반에 대한 조치, 물품 배송, 도로교통법 위반 등으로 인한 과태료/범칙금 처리<br>
																사고 처리, 보험계약체결 · 유지 · 관리(해지, 변경, 부활, 취소, 조회 등), 보험금 지급 · 심사, 보험사고 조사(보험사기 조사 포함), 차량 정비/수리/관리, 긴급출동/차량대여
																· 반납/대차 서비스 등 제공<br> 청구서/명세서/(전자)세금계산서 발송, 우편물 발송, SMS 발송, 기타 인터넷 홈페이지 등에 고지된 수탁자에게 개인 정보 · 거래정보
																전산처리 업무, 서비스 제공 등 계약의 이행에 필요한 업무 위탁
															</p>
															<h3>3) 서비스 · 상품 개발 · 특화 및 품질 개선</h3>
															<p>신규 서비스 · 상품 개발 · 특화, 서비스 · 상품의 유효성 확인, 서비스 품질개선, 이용빈도 파악 및 서비스 이용에 대한 통계 · 분석</p>
															<h2>나. 수집 · 이용 항목</h2>
															<h3>1) 필수사항 : 계약 체결 등을 위하여 필수적으로 수집 · 이용되는 최소한의 정보</h3>
															<p class="txt1">
																가) 성명, 상호, 생년월일, 국적, 성별, 사업자등록번호, 주소(자택,직장,사업장), 연락전화번호(휴대폰,자택,직장), 운전면허종류, 면허발급일, 면허증 갱신기간,
																이메일주소(전자세금계산서 등 수령 시)<br> 직장정보, 고객번호(롯데렌탈 주식회사가 고객 관리 목적으로 부여), 식별번호(Safekey, 마이핀 등), 접속기기정보(IP주소,
																MAC Address, HDD/SSD Serial 넘버, UUD)<br> 나) 신용거래정본(본 계약 이전 및 이후의 거래내용 포함) : 리스 및 할부금융, 렌탈, 대출 및
																채무보증, 한도, 신용개설정보(계약번호, 개설일자, 개설금액, 차량명)등<br> 다) 신용능력정보 : 재산, 채무, 소득의 총액, 납세실적, 신용등급 등 기타 신용거래능력 판단에
																필요한 신용거래 능력 정보 (개인신용정보 조회 시)<br> 라) 신용질서문란정보 : 신용도 판단에 필요한 연체, 채무불이행, 부도, 대지급 또는 허위 기타 부정한 방법에 의한
																신용질서 문란행위 등 신용도를 판단할 수 없는 정보<br> 마) 공공기관정보, 개인회생, 파산, 면책, 채무불이행자 등재 등 법원의 재판(결정정보), 체납정보, 주민등록관련정보,
																사회보험 및 공공요금관련정보, 등 본인식별·신용도 및 거래능력을 판단할 수 있는 공공기관 보유정보(개인신용정보 조회 시)<br> 바) 거래정보 : 자동차 임대차계약과 관련하여
																거래내용을 판단할 수 있는 계약일, 계약기간, 대여료, 대여차량, 거래현황, 채무불이행 등 정보<br> 사) 본인이 대표자로 있는 가맹점의 기업정보(사업자등록번호, 상호,
																업종코드 등), 매출관련 정보, 부도*폐업 정보 등(개인신용정보 조회 시)<br> 아) 보험계약 관련 정보(개인신용정보 조회 시)<br> 자) 예금주, 은행명, 계좌번호
																등 계좌정보 및 예금주와 관계(출금이체 신청 시)<br> <br> ※ 이하에서는 신용거래정보, 신용능력정보, 신용질서문란정보, 거래정보에 해당하는 각각의 개별정보 명칭은
																생략합니다.
															</p>
															<h2>다. 보유 및 이용기간</h2>
															<h3 style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">1) 개인(신용)정보
																수집*이용 목적 달성 시 까지 또는 본인의 수집*이용 동의 철회 요청 시까지</h3>
															<h3 style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">2) 단, 수집*이용
																목적을 달성하거나 본인의 철회 요청이 있더라도 다음의 정보에 대해서는 아래의 명시한 기간 동안 보존</h3>
															<p class="txt1" style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">
																가) 요금 정산, 과태료/범칙금 처리, 채무 추심 등 계약이행, 분쟁 대비를 위해 필요한 정보는 계약에 따른 거래관계의 종료 후 3년까지, 미이행/분쟁이 계속될 경우 이행 완료/분쟁 해결
																시까지<br> 나) 고객의 불만 또는 분쟁 처리에 관한 기록은 마지막 처리일로부터 5년<br> 다) 명의도용, 폭행, 협박, 사기, 공갈, 재물손괴, 차량의 무단
																담보제공, 무단 처분, 무단 해체, 자동차 등록번호판 교체, 차대번호 훼손 등 불법행위, 차량을 이용한 범죄 등에 관한 기록은 행위일로부터 10년<br> 라) 상법 등 관련
																법령에 특별한 규정이 있을 경우 그에 의하여 보관
															</p>
															<h2>라. 동의 거부권 및 불이익</h2>
															<p>본인은 위와 같은 본인의 개인(신용)정보 수집·이용에 관한 동의를 거부할 권리가 있습니다. 다만, 계약 체결 등을 위해 필요한 최소한의 개인(신용)정보 수집·이용에 관한 동의를
																거부하는 경우에는 계약체결,유지,이행,관리 등 불가, 계약관련 정보 및 안내사항 수취 불가 등 불이익이 있을 수 있습니다.</p>
															<div class="row type2">
																<span class="input-tit">임차인</span>
																<div class="input-cont">
																	<ul class="radio-area">
																		<li>
																			<div class="radio-icon-box">
																				<input type="radio" id="prech1-01" class="prv_agree" name="prech1-1" value="X" checked="">
																				<label for="prech1-01">동의함</label>
																			</div>
																		</li>
																		<li>
																			<div class="radio-icon-box">
																				<input type="radio" id="prech1-02" class="prv_agree" name="prech1-1" value="N">
																				<label for="prech1-02">동의하지 않음</label>
																			</div>
																		</li>
																	</ul>
																</div>
															</div>
														</section>
														<script>
															$(document)
																	.ready(
																			function() {
																				$(
																						'#precheckin_01')
																						.text(
																								'개인정보 수집ㆍ이용 동의(필수)');
																			});
														</script>
													</div>
												</li>
												<!-- // [NEW]개인정보 수집ㆍ이용 동의(필수) -->

												<!-- [NEW]고유식별정보 수집이용 동의(필수) -->
												<li>
													<div class="agree-body-header policyArea">
														<div class="chk-icon-box">
															<input type="checkbox" id="agree7" name="agree7" value="X" onchange="checkAllAgreement(this);">
															<label for="agree7" id="precheckin_02">고유식별정보 수집이용 동의(필수)</label>
														</div>
														<button type="button" class="btnToggle" data-target="precheckin_02" data-on="true" data-siblings="false">
															자세히</button>
													</div>
													<div class="agree-body-cont toggleCont precheckin_02 precheckin-box">
														<section class="provisionWrap">
															<h2>가. 수집 · 이용 목적</h2>
															<h3>1) 고객 관리</h3>
															<p>본인확인, 개인식별, 계약 체결 의사 확인, 명의도용 방지, 운전면허 소지 및 연령 등 확인, 분쟁 조정을 위한 기록 보존 수사기관/정부기관/행정청/법원 등의 적법한 조사,
																요구 또는 명령 등에 대한 협조/이행</p>
															<h3>2) 계약 체결 · 유지 · 이행 · 관리</h3>
															<p>
																계약 체결/종료 처리, 계약 이행 및 요금 정산/청구/수납/추심, 계약 · 자동차대여약관 위반에 대한 조치, 물품 배송, 도로교통법 위반 등으로 인한 과태료/범칙금 처리<br>
																사고 처리, 보험계약체결 · 유지 · 관리(해지, 변경, 부활, 취소, 조회 등), 보험금 지급 · 심사, 보험사고 조사(보험사기 조사 포함), 긴급출동/차량대여 · 반납/대차 서비스 등
																제공
															</p>
															<h3>3) 자동차 보험, 도로교통법 위반 등으로 인한 과태료/범칙금 관련, 통행료, 사용로, 주차요금 등 처리 관련 제 3자 제공</h3>
															<p class="txt1">
																가) 차량 사고의 처리 및 보험 보상, 비용 정산(청구), 보험계약체결,유지,관리(해지,변경,부활,취소,조회 등), 보험금 지급, 심사, 보험사고 조사(보험사기 조사 포함)을 위한 제공<br>
																나) 도로교통법 위반 등으로 인한 과태료/범칙금 등에 관한 사항을 통지하거나 처분을 위한 경찰서, 경찰청, 관할 관청 등에게 이의 제기, 실제 위반자에 대한 통지·처분에 대한 제공<br>
																다) 유료도로관리청, 유료도로관리권자, 주차장관리자, 국가 또는 지방자치단체 등에게 유료도로 통행, 주차장 이용 등으로 인한 통행료, 사용료, 주차요금 등의 통지·부과·수납을 위한 제공
															</p>
															<h2>나. 수집 · 이용 항목</h2>
															<h3 style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">1) 고유식별정보 :
																여권, 외국인등록번호, 운전면허번호</h3>
															<h2>다. 보유 및 이용기간</h2>
															<h3 style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">1) 개인(신용)정보
																수집*이용 목적 달성 시 까지 또는 본인의 수집*이용 동의 철회 요청 시까지</h3>
															<h3 style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">2) 단, 수집*이용
																목적을 달성하거나 본인의 철회 요청이 있더라도 다음의 정보에 대해서는 아래의 명시한 기간 동안 보존</h3>
															<p class="txt1" style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">
																가) 요금 정산, 과태료/범칙금 처리, 채무 추심 등 계약이행, 분쟁 대비를 위해 필요한 정보는 계약에 따른 거래관계의 종료 후 3년까지, 미이행/분쟁이 계속될 경우 이행 완료/분쟁 해결
																시까지<br> 나) 고객의 불만 또는 분쟁 처리에 관한 기록은 마지막 처리일로부터 5년<br> 다) 명의도용, 폭행, 협박, 사기, 공갈, 재물손괴, 차량의 무단
																담보제공, 무단 처분, 무단 해체, 자동차 등록번호판 교체, 차대번호 훼손 등 불법행위, 차량을 이용한 범죄 등에 관한 기록은 행위일로부터 10년<br> 라) 상법 등 관련
																법령에 특별한 규정이 있을 경우 그에 의하여 보관
															</p>
															<h2>라. 동의 거부권 및 불이익</h2>
															<p>본인은 위와 같은 정보 수집·이용에 관한 동의를 거부할 권리가 있습니다. 다만, 계약 체결 등을 위해 필요한 최소한의 정보 수집·이용에 관한 동의를 거부하는 경우에는
																계약체결,유지,이행,관리 등 불가 등 불이익이 있을 수 있습니다.</p>
															<div class="row type2">
																<span class="input-tit">임차인</span>
																<div class="input-cont">
																	<ul class="radio-area">
																		<li>
																			<div class="radio-icon-box">
																				<input type="radio" id="prech2-01" class="prv_agree" name="prech2-1" value="X" checked="">
																				<label for="prech2-01">동의함</label>
																			</div>
																		</li>
																		<li>
																			<div class="radio-icon-box">
																				<input type="radio" id="prech2-02" class="prv_agree" name="prech2-1" value="N">
																				<label for="prech2-02">동의하지 않음</label>
																			</div>
																		</li>
																	</ul>
																</div>
															</div>
														</section>
														<script>
															$(document)
																	.ready(
																			function() {
																				$(
																						'#precheckin_02')
																						.text(
																								'고유식별정보 수집이용 동의(필수)');
																			});
														</script>
													</div>
												</li>
												<!-- // [NEW]고유식별정보 수집이용 동의(필수) -->

												<!-- [NEW]개인정보 3자 제공 동의(필수) -->
												<li>
													<div class="agree-body-header policyArea">
														<div class="chk-icon-box">
															<input type="checkbox" id="agree8" name="agree8" value="X" onchange="checkAllAgreement(this);">
															<label for="agree8" id="precheckin_03">개인정보 3자 제공 동의(필수)</label>
														</div>
														<button type="button" class="btnToggle" data-target="precheckin_03" data-on="true" data-siblings="false">
															자세히</button>
													</div>
													<div class="agree-body-cont toggleCont precheckin_03 precheckin-box">
														<section class="provisionWrap">
															<h2>가. 제공받는 자, 제공받는 자의 이용목적, 제공하는 개인정보 항목</h2>
															<h3>1) 자동차 보험 관련</h3>
															<p class="txt1" style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">
																가) 롯데손해보험, 전국렌터카공제조합, DB손해보험, KB손해보험, 메리츠화재, MG손해보험, 현대해상화재보험, 삼성화재해상, AXA손해보험 등 대여차량의 보험을 담당하는 보험회사<br>
																(보험회사가 추가, 변경될 수 있음)에게 차량 사고의 처리 및 보험 보상, 비용 정산(청구), 보험계약체결,유지,관리(해지, 변경, 부활, 취소, 조회 등), 보험금 지급, 심사, 보험
																사고 조사(보험사기 조사 포함)를 위해서 다음 나)의 개인정보를 제공<br> 나) 필수사항 : 계약 체결 등을 위하여 필수적으로 수집,이용,제공되는 최소한의 정보
															</p>
															<p class="txt2" style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">
																A. 성명, 연락전화번호(휴대폰,자택,직장)</p>
															<p class="txt2" style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">A.
																성명, 연락전화번호(휴대폰,자택,직장)</p>
															<h3>2) 도로교통법 위반 등으로 인한 과태료/범칙금 등 처리 관련</h3>
															<p class="txt1" style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">
																가) 도로교통법 위반 등으로 인한 과태료/범칙금 등에 관한 사항을 통지하거나 처분을 위한 경찰서,경찰청,관할 관청 등에게 이의 제기, 실제 위반자에 대한 통지,처분을 위하여 다음 나)의
																개인정보를 제공<br> 나) 필수사항 : 계약 체결 등을 위하여 필수적으로 수집,이용,제공되는 최소한의 정보
															</p>
															<p class="txt2" style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">
																A. 성명, 상호, 사업자등록번호, 생년월일, 성별, 주소(자택,직장,사업장), 연락전화번호(휴대폰,자택,직장)<br> B. 계약정보 : 자동차 임대차 계약서에 기재되어 있는
																대여차량 차종, 차량번호, 대여&amp;반납지점, 대여&amp;반납일시, 대여료 등 정보
															</p>
															<h3>3) 차량 배송 서비스 관련 (서비스 이용 시)</h3>
															<p class="txt1" style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">
																가) 차량 배송 서비스를 수행하는 Agent에게 차량 이동, 본인 확인, 수수료 정산을 위하여 다음 나)의 개인정보를 제공<br> 나) 필수사항 : 계약 체결 등을 위하여
																필수적으로 수집,이용,제공되는 최소한의 정보
															</p>
															<p class="txt2" style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">
																A. 성명, 상호, 주소(자택,직장,사업장), 연락전화번호(휴대폰,자택,직장)<br> B. 계약정보 : 자동차 임대차 계약서에 기재되어 있는 계약번호, 대여&amp;반납일시,
																대여&amp;반납지점, 대여차량 차종, 차량번호 등 수수료 정산에 필요한 일체의 정보
															</p>
															<h3>4) 신용도 평가 및 본 계약의 유지 및 사후관리 관련</h3>
															<p class="txt1" style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">
																가) 본인의 신용도 평가, 실명확인 등 신용조회업무, 신용정보의 집중 및 활용, 신용관련 모형개발 및 (통계)분석, 고객이 허위 혹은 부정한 의도로 여러 회사를 통해 리스 혹은 렌탈
																계약을 동시에 체결하는 것을 방지하기 위한 목적으로 신용조회회사(나이스평가정보 주식회사, 코리아크레딧뷰로 주식회사)에 다음 나)의 개인(신용)정보를 제공<br> 나) 필수사항 :
																신용도 평가, 신용정보 집중 및 활용 등을 위하여 필수적으로 수집,이용,제공되는 최소한의 정보
															</p>
															<p class="txt2" style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">
																A. 성명, 상호, 생년월일, 국적,성별, 사업자등록번호, 주소(자택,직장,사업장), 연락전화번호(휴대폰,자택,직장), 직장정보, 고객번호(롯데렌탈 주식회사가 고객 관리 목적으로 부여),
																식별번호(Safekey, 마이핀 등), 접속기기정보(IP정보, MAC Address, HDD/SSD Serial 넘버, UUID)<br> B. 신용거래정보(계약 이전 및 이후의
																거래내용 포함)<br> C. 신용능력정보(개인신용정보 조회 시)<br> D. 신용질서문란정보<br> E. 거래정보
															</p>
															<h3>5) 통행료, 사용료, 주차요금 등 처리 관련</h3>
															<p class="txt1" style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">
																가) 유료도로관리청, 유료도로관리권자, 주차장관리자, 국가 또는 지방자치단체 등에게 유료도로 통행, 주차장 이용 등으로 인한 통행료, 사용료, 주차요금 등의 통지,부과,수납을 위하여 다음
																나)의 개인(신용)정보를 제공<br> 나) 필수사항 : 계약 체결 등을 위하여 필수적으로 수집,이용,제공되는 최소한의 정보
															</p>
															<p class="txt2" style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">
																A. 성명, 상호, 사업자등록번호, 생년월일, 성별, 주소(자택,직장,사업장), 연락전화번호(휴대폰,자택,직장)<br> B. 계약정보 : 자동차 임대차 계약서에 기재되어 있는
																대여차량 차종, 차량번호, 대여&amp;반납지점, 대여&amp;반납일시 대여료 정보 등
															</p>
															<h3>6) 운전면허정보에 대한 유효성 검증</h3>
															<p class="txt1" style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">
																가) 여객자동차 운수사업법에 따른 운전자격 확인을 위한 운전면허정보 검증을 위하여 도로교통공단으로 다음 (나)의 개인정보를 제공<br> 나) 필수 사항 : 운전면허번호, 이름,
																생년월일, 면허종류, 대여시작일, 대여종료일
															</p>
															<h2>나. 보유 및 이용기간</h2>
															<h3 style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">1) 개인(신용)정보
																제공 목적 달성 시까지 또는 본인의 제공 동의 철회 요청 시까지</h3>
															<p class="txt1" style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">
																A. 자동차 보험 처리/정산 완료 시까지<br> B. 과태료/범칙금 처리/정산 완료 시까지<br> C. 차량 배송 서비스/정산 완료 시 까지<br> D. 신용도
																평가, 본 계약 유지 및 사후관리 업무 종료시까지<br> E. 통행료, 사용료, 주차요금 등 처리/정산 완료 시 까지<br> F. 면허정보 검증을 위한 정보 제공일로부터
																3개월
															</p>
															<h3 style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">2) 단, 제공목적을
																달성하거나 본인의 철회 요청이 있더라도, 다음의 정보에 대해서는 아래의 명시한 기간 동안 보존</h3>
															<p class="txt1" style="color: red; font-size: 1.2em; font-weight: bold; text-decoration: underline;">
																가) 내부보고, 감사 및 검사, 비용 정산(청구), 과태료/범칙금 처리 등 계약이행, 분쟁 대비를 위해 필요한 정보는 계약에 따른 거래 관계의 종료 후 3년 까지 미이행/분쟁이 계속될
																경우 이행 완료/분쟁 해결 시까지<br> 나) 보험사기, 명의도용, 차량의 무단 담보제공, 무단 처분, 무단 해체, 자동차 등록번호판 교체, 차대번호 훼손 등 불법행위, 차량을
																이용한 범죄 등에 관한 기록은 행위일로부터 10년<br> 다) 상법 등 관련 법령에 특별한 규정이 있을 경우 그에 의하여 보관
															</p>
															<h2>다. 동의 거부권 및 불이익</h2>
															<p>본인은 위와 같은 본인의 개인(신용)정보 제공에 관한 동의를 거부할 권리가 있습니다. 다만, 계약 체결 등을 위해 필요한 최소한의 개인(신용)정보 제공에 관한 동의를 거부하는
																경우 계약의 체결, 유지, 이행, 관리 등이 불가능하거나 차량 사고 처리 업무가 지연되는 등의 불이익이 있을 수 있습니다.</p>
															<div class="row type2">
																<span class="input-tit">임차인</span>
																<div class="input-cont">
																	<ul class="radio-area">
																		<li>
																			<div class="radio-icon-box">
																				<input type="radio" id="prech3-01" class="prv_agree" name="prech3-1" value="X" checked="">
																				<label for="prech3-01">동의함</label>
																			</div>
																		</li>
																		<li>
																			<div class="radio-icon-box">
																				<input type="radio" id="prech3-02" class="prv_agree" name="prech3-1" value="N">
																				<label for="prech3-02">동의하지 않음</label>
																			</div>
																		</li>
																	</ul>
																</div>
															</div>
														</section>
														<script>
															$(document)
																	.ready(
																			function() {
																				$(
																						'#precheckin_03')
																						.text(
																								'개인정보 3자 제공 동의(필수)');
																			});
														</script>
													</div>
												</li>
												<!-- // [NEW]개인정보 3자 제공 동의(필수) -->

												<!-- [NEW]위치정보 및 영상정보 수집에 대한 동의(필수) -->
												<li>
													<div class="agree-body-header policyArea">
														<div class="chk-icon-box">
															<input type="checkbox" id="agree9" name="agree9" value="X" onchange="checkAllAgreement(this);">
															<label for="agree9" id="precheckin_04">위치정보 및 영상정보 수집에 대한 동의(필수)</label>
														</div>
														<button type="button" class="btnToggle" data-target="precheckin_04" data-on="true" data-siblings="false">
															자세히</button>
													</div>
													<div class="agree-body-cont toggleCont precheckin_04 precheckin-box">
														<section class="provisionWrap">
															<h2>가. 수집 이용 목적</h2>
															<h3>1) 위치정보 : 차량 내 블랙박스 작동 및 네비게이션에 의한 위치 및 교통 안내 서비스</h3>
															<h3>2) 영상정보 : 사고처리를 위한 차량 블랙박스의 작동</h3>
															<h2>나. 수집 항목</h2>
															<h3>1) 블랙박스 및 네비게이션으로부터 수집될 수 있는 위치 정보</h3>
															<h3>2) 블랙박스로 촬영되는 영상정보 및 그에 포함될 수 있는 개인정보</h3>
															<h2>다. 보유 및 이용 기간</h2>
															<h3>1) 차량 내 네비게이션 및 블랙박스 폐기 시점</h3>
															<h3>2) 단, 정보주체가 원하는 경우 차량 반납 전 위치정보 및 영상정보 삭제 가능</h3>
															<div class="row type2">
																<span class="input-tit">임차인</span>
																<div class="input-cont">
																	<ul class="radio-area">
																		<li>
																			<div class="radio-icon-box">
																				<input type="radio" id="prech4-01" class="prv_agree" name="prech4-1" value="X" checked="">
																				<label for="prech4-01">동의함</label>
																			</div>
																		</li>
																		<li>
																			<div class="radio-icon-box">
																				<input type="radio" id="prech4-02" class="prv_agree" name="prech4-1" value="N">
																				<label for="prech4-02">동의하지 않음</label>
																			</div>
																		</li>
																	</ul>
																</div>
															</div>
														</section>
														<script>
															$(document)
																	.ready(
																			function() {
																				$(
																						'#precheckin_04')
																						.text(
																								'위치정보 및 영상정보 수집에 대한 동의(필수)');
																			});
														</script>
													</div>
												</li>
												<!-- // [NEW]위치정보 및 영상정보 수집에 대한 동의(필수) -->
												<li>
													<div class="agree-body-header policyArea">
														<div class="chk-icon-box">
															<input type="checkbox" id="agree_rental" name="agree_rental" value="X">
															<label for="agree_rental" id="policy-title-33">계약 및 롯데렌터카 자동차대여약관의 주요 고지사항(필수)</label>
														</div>
														<button type="button" class="btnToggle " data-target="policy-toggleCont33" data-on="true"
															data-siblings="false"
														>자세히</button>
													</div>
													<div class="agree-body-cont toggleCont policy-toggleCont33 " style="display: none;">
														<script>
															$('document')
																	.ready(
																			function() {
																				$(
																						'#policy-title-33')
																						.text(
																								'계약 및 롯데렌터카 자동차대여약관의 주요 고지사항(필수)');
																			});
														</script>
														<section class="provisionWrap">
															<!-- <h1>계약 및 롯데렌터카 자동차대여약관의 주요 고지사항</h1> -->
															<ul class="agree-list-type1">
																<li>본인(임차인, 공동임차인)은 계약사항에 대해 연대하여 임차인으로서의 책임을 집니다.</li>
																<li>차량 임대기간동안 발생한 과태료는 본인(임차인, 공동임차인) 부담입니다.</li>
																<li>차량 임대기간동안 사고발생 시, 약관에 따라 회사에서 체결한 자동차보험 및 본인(임차인, 공동임차인)이 선택 가입한 자차손해면책제도(CDW)의 범위내 손해를 보상 받을 수
																	있습니다.</li>
																<li>본인(임차인,공동임차인)은 본 계약서상에 기재된 제반사항 및 약관의 내용을 숙지하여 승인하였기에 이에 서명합니다.</li>
															</ul>
														</section>

													</div>
												</li>

											</ul>
										</div>

									</div>
								</div>
								<!-- //20201217 : 마크업 변경(약관 공통화) -->
							</section>

						</fieldset>

					</div>
					<!-- 스틱키 lnb -->
					<div class="section-sticky-lnb">
						<div class="lnb-wrap">
							<div class="sticky-view-info">
								<div id="changeCarName" class="info-top align-c">${carChoice }</div>
								<div class="info-cover">
									<img id="carImgSrc" src="/atch/getImage.do?atchFileId=FILE0000000001842716&amp;fileSn=0" alt="예약자동차이미지">
								</div>
								<ul class="lst dot">
									<li>실제 대여하는 차량과 외관, 색상, 옵션 등 차이가 있을 수 있으며 사고 또는 고장 등 부득이한 경우 동급차종으로 변경될 수 있습니다.</li>
								</ul>
							</div>
							<div class="detail-sticky-items">
								<div class="detail-sticky" style="top: 162.5px;">
									<div class="detail-sticky-iscroll">

										<div class="sticky-cont">
											<div class="cont-result">
												<ul>
													<li>
														<div>
															<strong>대여정보</strong>
															<div>
																<span> ${storeChoice } </span>
																<span>${dayChoiceOut }</span>
															</div>
														</div>
													</li>
													<li>
														<div>
															<strong>반납정보</strong>
															<div>
																<span> ${storeChoice } </span>
																<span>${dayChoiceIn }</span>
															</div>
														</div>
													</li>
													<li>
														<div>
															<strong>차량대여요금</strong>
															<div>
																<span class="price" id="selPri1">${selCarInfo.car_price}<em>원</em></span>
															</div>
														</div>
													</li>
													<li id="dicountShow">
														<div>
															<strong>할인요금</strong>
															<div>
																<span class="price" id="selPri2"><em>원</em>
																</span>
															</div>
														</div>
													</li>
													<li>
														<div>
															<strong>총금액</strong>
															<div>
																<span class="price" id="selPri4">

																	<em>원</em>
																</span>
															</div>
														</div>
													</li>
												</ul>
											</div>
										</div>
										<div class="mt-10">
											<ul class="lst dot">
												<li class="txt-color-red">다음 단계에서 할인의 변경, 보험 및 옵션의 선택에 따라 총금액은 달라질 수 있으니 결제 전 꼭 확인바랍니다.</li>
											</ul>
										</div>
										<div class="sticky-btn">
											<ul class="list-type-col2">
												<li>
													<a href="javascript:;" class="btn btn-white" onclick="javascript:goStep1()" data-link-area="제주 렌트"
														data-link-name="예약/약관" data-link-text="step2_이전"
													>이전</a>
												</li>
												<li>
													<button type="button" class="btn btn-red"  id="btnKaPay" 
													>다음</button>
												</li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!-- //스틱키 lnb -->
				</div>
			</div>
		</div>
		<!-- //단기렌터카 예약/약관 -->
	</main>
	<%-- 	<!-- footer -->
	<footer class="footer">
		<%@ include file="../common/footer.jsp"%>
	</footer> --%>
</body>
</html>