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
								name="mem_id" id="mem_id" style="ime-mode: disabled;"> <label
								for="mem_pswd" class="blind">비밀번호</label> <input type="password"
								name="mem_pswd" id="mem_pswd" maxlength="16"> <a
								href="#" class="btn_login" id="loginBtn"><span>로그인</span></a>
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

			<h2 id="lnbTitle" class="tit_lnb">자격증/확인서</h2>
			<!-- menu리스트 -->
			<ul id="lnbNavi" class="lnb on">
				<li class="low active on"><a>자격증 발급 안내</a>
					<ul style="display: block;">
						<li><a>자격증발급/발급처</a></li>
						<li><a>신규/인정/재발급</a></li>
						<li><a>기능사보기능사자격부여</a></li>
						<li><a>면허발급대상종목</a></li>
						<li><a>국가자격취득자주의사항</a></li>
						<li><a>보수교육갱신등록폐지</a></li>
						<li><a>폐지종목자격증발급</a></li>
					</ul></li>
				<li class="low"><a>자격증 발급</a>
					<ul style="display: block;">
						<li><a>자격증발급신청</a></li>
						<li><a>자격증발급신청내역조회</a></li>
					</ul></li>
				<li class="low"><a>확인서 발급</a>
					<ul style="display: block;">
						<li><a>확인서발급안내</a></li>
						<li><a>확인서발급신청</a></li>
						<li><a>확인서발급신청내역조회</a></li>
						<li><a>기능경기확인서신청</a></li>
					</ul></li>
				<li class="low"><a>자격취득/미발급 조회</a>
					<ul style="display: block;">
						<li><a>자격증취득조회</a></li>
						<li><a>자격증 미발급조회</a></li>
					</ul></li>
				<li class="low"><a>확인서/자격증 진위확인</a>
					<ul style="display: block;">
						<li><a>확인서진위확인</a></li>
						<li><a>자격증진위확인</a></li>
						<li><a>단체진위확인</a></li>
					</ul></li>
			</ul>
			<!-- menu리스트 끝 -->
		</div>
		<!-- 좌측 메뉴바 끝-->
		<div id="lnb2"></div>
		</div>

		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>원서접수</li>
					<li><strong>원서접수 안내</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<!-- 컨텐츠 시작 -->
			<div class="content">
				<h3 class="tit_content">자격증 발급 신청</h3>
				<div class="step">
					<ul class="list06">
						<li><img src="../images/step/step_license_off_01.gif" alt=""><span>자격증선택</span></li>
						<li><img src="../images/step/step_license_on_02.gif" alt=""><span>선택확인</span><span class="blind">선택</span></li>
						<li><img src="../images/step/step_license_off_03.gif" alt=""><span>신청서작성</span></li>
						<li><img src="../images/step/step_license_off_04.gif" alt=""><span>본인인증</span></li>
						<li><img src="../images/step/step_license_off_06.gif" alt=""><span>수수료결제</span></li>
						<li><img src="../images/step/step_license_off_05.gif" alt=""><span>접수증출력</span></li>
					</ul>
				</div>

				<p class="list fc_3 mb10">
					선택한 자격내역(<strong>1건</strong>)은 아래와 같습니다.
				</p>

				<div id="bd01_01">
					<form name="frm">
					<div class="tbl_type1">

						<table summary="자격증번호, 자격증취득 종목명, 필기합격일자, 최종합격일자, 발급구분, 발급수수료 정보 제공">
							<colgroup>
								<col width="7%">
								<col width="24%">
								<col width="14%">
								<col width="15%">
								<col width="15%">
								<col width="13%">
								<col width="12%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">자격증번호</th>
									<th scope="col">자격증취득 종목명</th>
									<th scope="col">필기합격일자</th>
									<th scope="col">최종합격일자</th>
									<th scope="col">비고</th>
									<th scope="col">추가정보 출력</th>
									<th scope="col">발급수수료</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<td>16201130169Z
									<input type="hidden" name="lcsNo" value="16201130169Z">
									<input type="hidden" name="jmNm" value="정보처리기사">
									<input type="hidden" name="fstJmNm" value="정보처리기사">
									<input type="hidden" name="jmCd" value="1320">
									<input type="hidden" name="examPassDt" value="20160317">
									<input type="hidden" name="lastPassDt" value="20160506">
									<input type="hidden" name="issuFee" value="3100">
									<input type="hidden" name="issuGb" value="신규발급">
									<input type="hidden" name="selAddInfrmPtr" value="0">
									<input type="hidden" name="qualGiveGbCcd" value="1">
									<input type="hidden" name="preQualGiveGbCcd" value="">
									<input type="hidden" name="orgnJmCd" value="1320">
									<input type="hidden" name="orgnJmNm" value="">
									</td>
									<td>정보처리기사

									</td>
									<td>2016.03.17</td>
									<td>2016.05.06</td>
									<td>신규발급</td>
									<td>
										출력안함

									</td>
									<td>3,100원</td>
								</tr>
							</tbody>
						</table>

						<input type="hidden" name="appGb" value="">
						<input type="hidden" name="totFee" value="3100">
						<input type="hidden" name="infrmCnt" value="1">
						<input type="hidden" name="phtPath" value="PL2016392005/2/13008898">
						<input type="hidden" name="phtPath2" value="receipt/PL2016392005/2/13008898">
						<input type="hidden" name="imgbuf2" value="receipt/PL2016392005/2/">
						<input type="hidden" name="chkPht" value="Y" style="width:70px;">
						<input type="hidden" name="idenChk" value="Y" style="width:70px;">
						<input type="hidden" name="planId" value="PL2016392005">
						<input type="hidden" name="seqNo" value="2">
						<input type="hidden" name="suNo" value="13008898">

					</div> 
				</form> 
				</div> 

				<ul class="list_lines01 type2">
					<li>
						<p class="tit">발급수수료 : <strong>3,100 원</strong> <span>배송비 2,340 원(별도)</span> </p>
						<ul class="list_basic list line">
							<li>- <strong>배송신청</strong> : 인터넷으로 신청(결제) 후 우편으로 자격증 수령 (본인 확인된 사진이 공단에 등록된 경우에만 배송가능)</li>
							<li>- <strong>방문신청</strong> : 인터넷으로 신청(결제) 후 지부(지사)로 방문하여 자격증 수령
								<ul class="impt">
									<li>※ 방문시 본인 신분증 지참하여 확인하여야 함. 대리인 방문시 본인 및 대리인 신분증 모두 지참</li>
								</ul>
							</li>
						</ul>
					</li>
				</ul>
				<div class="btn_center btnPos">
					<button type="button" class="btn2 btncolor1" onclick="location.href='7자격증발급신청.jsp'"><span>이전</span></button>
					<button type="button" class="btn2 btncolor1" onclick="location.href='9신청서작성.jsp'"><span>배송신청</span></button> 
					<button type="button" class="btn2 btncolor1" onclick="location.href='9신청서작성.jsp'"><span>방문신청</span></button>
				</div>

			</div>
			<!--  컨텐츠 끝 -->
		</div>
	</div>
</article>