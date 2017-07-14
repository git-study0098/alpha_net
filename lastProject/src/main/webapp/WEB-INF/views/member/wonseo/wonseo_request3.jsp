<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>  
<style>
	*{box-sizing:content-box;}
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
			<div id="lnb">
				<div class="login">
					<!-- 회원 구분 -->
					<div class="login_tab">
						<a href="#" class="btn on" id="pMem"><span>일반회원</span></a>
						<!-- // class="on" 으로 탭 선택 표시 -->
					</div>
					<!-- //회원 구분 -->

					<!-- //로그인 전 -->
					<form id="loginForm" method="post">
						<input type="hidden" name="pageId" value="man004_01_10"> <input
							type="hidden" name="redir"
							value="man004.do?id=man00401&amp;gSite=Q&amp;gId=&amp;notiType=10">
						<input type="hidden" name="lnb" value="Y"> <input
							type="hidden" name="groupChk" value="N"> <input
							type="hidden" name="logoutYn" value="Y">
						<div class="login_area">

							<!-- 로그인 전 -->
							<div>
								<label for="mem_id" class="blind">아이디</label> <input type="text"
									name="mem_id" id="mem_id" style="ime-mode: disabled;">
								<label for="mem_pswd" class="blind">비밀번호</label> <input
									type="password" name="mem_pswd" id="mem_pswd" maxlength="16">
								<a href="#" class="btn_login" id="loginBtn"><span>로그인</span></a>
							</div>
							<div>
								<ul>
									<li><a
										href="http://www.q-net.or.kr/man003.do?id=man00301&amp;gSite=Q&amp;gId="
										class="golink01"><span>회원가입</span></a></li>
									<li><a
										href="https://www.q-net.or.kr/man002.do?id=man00201&amp;gSite=Q&amp;gId="
										class="golink01"><span>아이디/비밀번호 찾기</span></a></li>
								</ul>
							</div>
							<!-- //로그인 전 -->
						</div>
					</form>
				</div>

				<h2 id="lnbTitle" class="tit_lnb">정기시험</h2>
				<!-- menu리스트 -->
				<ul id="lnbNavi" class="lnb on">
					<li class="low active on"><a>원서접수</a>
						<ul style="display: block;">
							<li><a>원서접수 안내</a></li>
							<li><a>원서접수 신청</a></li>
							<li><a>원서접수 현황</a></li>
							<li><a>장애유형별 편의제공 안내</a></li>
						</ul></li>
					<li class="low"><a>합격자/답안발표</a>
						<ul style="display: block;">
							<li><a>합격자 발표조회</a></li>
							<li><a>응시서류 불합격자 발표</a></li>
							<li><a>가답안/확정답안</a></li>
							<li><a>가답안 의견제시</a></li>
						</ul></li>
					<li class="low"><a>시험일정</a>
						<ul style="display: block;">
							<li><a>월간 시험일정</a></li>
							<li><a>국가기술자격 시험일정</a></li>
							<li><a>전문자격 시험일정</a></li>
						</ul></li>
					<li class="low"><a>필기시험 안내</a>
						<ul style="display: block;">
							<li><a>필기시험 접수안내</a></li>
							<li><a>필기시험 수수료</a></li>
							<li><a>필기관할구역 안내</a></li>
							<li><a>외국학력서류 제출</a></li>
						</ul></li>
					<li class="low"><a>실기시험 안내</a>
						<ul style="display: block;">
							<li><a>실기시험 면제기간</a></li>
							<li><a>실기시험 접수안내</a></li>
							<li><a>실기시험 선택분야</a></li>
							<li><a>실기시험 수수료</a></li>
							<li><a>실기시험 종목별 시험방법</a></li>
							<li><a>수험자 지참 준비물</a></li>
							<li><a>실기시험 일정 변경기준</a></li>
							<li><a>실기일정 및 타지사 이동사유</a></li>
						</ul></li>
					<li class="low"><a>자격정보</a>
						<ul style="display: block;">
							<li><a>국가자격</a></li>
							<li><a>민간자격</a></li>
							<li><a>외국자격</a></li>
						</ul>
					</li>
					<li class="low"><a>자격검정 통계</a>
						<ul style="display: block;">
							<li><a>총괄 현황</a></li>
							<li><a>종목별 현황</a></li>
							<li><a>국가기술 자격 통계 연보</a></li>
							<li><a>수험자 동향</a></li>
						</ul>
					</li>
					<li><a>고객의 국가자격 대여 근절 캠페인</a></li>
				</ul>
				<!-- menu리스트 끝 -->
			</div>
			<div id="lnb2"></div>
		</div>
		<!-- 좌측 메뉴바 끝-->
		
			<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
			<div id="content">
				<!-- location -->
				<div class="location">
					<ul>
						<li>홈</li>
						<li>원서접수</li>
						<li><strong>원서접수신청</strong></li>
					</ul>
				</div>
				<!-- //location -->

				<div class="content">
					<!-- 컨텐츠 타이틀 -->
					<h3 class="tit_content">
						원서접수 신청<span class="sel_subject">(응시종목:정보처리기사(필기))</span>
					</h3>
					<!-- //컨텐츠 타이틀 -->

					<!-- 컨텐츠 내용 -->
					<div class="step" id="rcvStep">
						<ul class="list01">
							<li><img src="../images/step/step_original_off_01.gif"
								alt=""><span>자격선택</span></li>
							<li><img src="../images/step/step_original_off_09.gif"
								alt=""><span>종목선택</span></li>
							<li><img src="../images/step/step_original_on_03.gif"
								alt=""><span>응시유형</span></li>
							<li><img src="../images/step/step_original_on_04.gif" alt=""><span>추가입력</span><span
								class="blind">현재단계 추가입력</span></li>
							<li><img src="../images/step/step_original_off_05.gif"
								alt=""><span>장소선택</span></li>
							<li><img src="../images/step/step_original_off_06.gif"
								alt=""><span>결제하기</span></li>
							<li><img src="../images/step/step_original_off_07.gif"
								alt=""><span>접수완료</span></li>
						</ul>
					</div>
				<form name="myfrm" method="post"
					action="rcv002.do?id=rcv00208&amp;gSite=Q&amp;gId=01&amp;rcvPFlag=Y&amp;gTitle="
					onsubmit="return;">
					<div class="tbl_normal test_details">
						<div class="examinee_img">
							<img name="photoName" id="photoId"
								src="../images/step/sora.jpg" title="소라 사진">
						</div>
						<table id="recptTable" summary="응시종목및등급, 면제과목, 장애여부에 대한 정보 제공"
							style="height: 161px;">
							<caption>응시유형 정보</caption>
							<colgroup>
								<col width="124px">
								<col width="600px">
							</colgroup>
							<tbody>
								<tr class="alterTr">
									<th scope="row">응시종목및등급</th>
									<td>정보처리기사</td>
								</tr>
								<tr class="alterTr">
									<th scope="row">면제과목</th>
									<td>면제과목없음</td>
								</tr>
								<tr class="alterTr">
									<th scope="row">장애여부</th>
									<td class="entry">

										<div class="obstacle_chk">해당없음</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="btn_center">
						<a href="#" class="btn2 btncolor1" onclick="location.href='3choice_jongmok.jsp'"><span>이전</span></a>
						<a href="#" class="btn2 btncolor1" onclick="location.href='5장소선택.jsp'"><span>다음</span></a>
					</div>
				</form>

			</div>
				<!--  컨텐츠 끝 -->
			</div>
		</div>
</article>