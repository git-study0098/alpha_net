<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
	*{box-sizing:content-box;}
</style>

<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
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
						<li><img src="../images/step/step_license_on_01.gif" alt=""><span>자격증선택</span><span class="blind">선택</span></li>
						<li><img src="../images/step/step_license_off_02.gif" alt=""><span>선택확인</span></li>
						<li><img src="../images/step/step_license_off_03.gif" alt=""><span>신청서작성</span></li>
						<li><img src="../images/step/step_license_off_04.gif" alt=""><span>본인인증</span></li>
						<li><img src="../images/step/step_license_off_06.gif" alt=""><span>수수료결제</span></li>
						<li><img src="../images/step/step_license_off_05.gif" alt=""><span>접수증출력</span></li>
					</ul>
				</div>

				<div id="bd01_01">
				<form name="frm">
					<div class="tbl_type1">
						<table summary="자격증 발급 신청을 번호, 자격증취득 종목명, 최종합격일자, 발급구분, 발급수수료, 자격증번호 정보 제공 및 선택" class="table">
							<colgroup>
								<col width="7%">
								<col width="*">
								<col width="14%">
								<col width="20%">
								<col width="12%">
								<col width="24%">
							</colgroup>
							<thead>
								<tr>
									<th scope="col">번호</th>
									<th scope="col">자격증취득 종목명</th>
									<th scope="col">최종합격일자</th>
									<th scope="col">발급구분</th>
									<th scope="col">발급수수료</th>
									<th scope="col">자격증번호</th>
								</tr>
							</thead>
							<tbody>

								<tr>
									<td>

								<input type="checkbox" id="chkBox0" name="chkBox0" value="checkbox" onclick="chkDupLcs(0);" disabled="">									

									
									<input type="hidden" name="lcsNo" id="lcsNo0" value="16201130169Z">
									<input type="hidden" name="jmNm" value="정보처리기사">
									<input type="hidden" name="jmCd" id="jmCd0" value="1320">
									<input type="hidden" name="examPassDt" value="20160317">
									<input type="hidden" name="lastPassDt" id="lastPassDt0" value="20160506">
									<input type="hidden" name="issuGb" value="신규발급">
									<input type="hidden" name="issuFee" value="3100">
									<input type="hidden" name="qualGiveGbCcd" value="">
									<input type="hidden" name="orgnJmCd" value="1320">
									<input type="hidden" name="orgnJmNm" value="">
									<input type="hidden" name="issuPrgsStatCcd" value="10">
									<input type="hidden" name="cnclDttm" value="">
									<input type="hidden" name="fstJmNm" value="정보처리기사">
									<input type="hidden" id="Ident0" name="Ident0" value="">
									<input type="hidden" name="Ident" value="">
									<input type="hidden" name="cnt2" value="0">
									<input type="hidden" name="reqStat" id="reqStat0" value="DUP">
									<input type="hidden" name="dupStat" id="dupStat0" value="1">
									</td>
									<td class="tit" id="lcs1_0">
									<label for="chkBox0">
										정보처리기사
								
									</label>
									</td>
											
									<td id="lcs2_0">2016.05.06</td>
									<td id="lcs3_0">
											<input type="hidden" name="rtnYn" id="rtnYn" value="0"> 
												중복신청불가
									</td>
									<td id="lcs4_0">3,100원
									<input type="hidden" id="feeVal0" name="feeVal0" value="3100">
									</td>
									<td id="lcs5_0">16201130169Z</td>
									<td style="display: none;"><div id="viewSel0" style="visibility: hidden; display: none;"><select title="프린트구분 선택" name="selAddInfrmPtr" class="input" id="selAddInfrmPtr" style="width:130px" disabled=""><option value="0">선택불가</option></select></div></td>

		
						
								</tr>
							</tbody>
						</table>
						<input type="hidden" name="infrmCnt" value="1">
						<input type="hidden" id="totFee" name="totFee">
						<input type="hidden" name="appGb">
					</div>
				</form> 
				</div> 

				<ul class="list">
					<li><strong class="fc_3">인터넷으로 자격증 신청이 불가한 경우</strong>
						<ul class="line">
							<li>- 신분증없이 시험에 응시하여 신분 미확인 상태인 경우</li>
							<li>- 법개정으로 취득종목이 한개 이상의 다른 명칭으로 변경되어 선택이 필요한 경우 (이미 선택한 경우 발급신청가능) </li>
							<li>- 자격증을 반납하고 재발급 신청할 경우(근거:국가기술자격법 시행령 제 25조 제2항)</li>
						</ul>
					</li>
				</ul>
								<p class="fc_b impt"><strong>※ <a href="/isr003.do?id=isr00301&amp;gSite=Q&amp;gId=&amp;gTitle=&amp;depth=0401" target="_self">발급신청중인 자격증이 있습니다.	자격증 발급신청 내역 조회에서 확인할 수 있습니다.</a></strong></p>

				<div class="border_linebt2">
					<label for="totIssuFee"><strong>발급수수료</strong></label>
					<input type="text" class="txt_right fc_3" style="width:150px" id="totIssuFee" name="totIssuFee" readonly="readonly"> 원
					<span>배송비 2,340 원(별도)</span>
				</div>
				<div class="btn_center">
					<button type="button" class="btn2 btncolor1" onclick="frmSubmit();"><span>다음</span></button>
				</div>
			</div>
			<!--  컨텐츠 끝 -->
		</div>
	</div>
</article>