<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
	* {	box-sizing: content-box;}
	
	.searchType {padding-top:10px; margin-bottom:10px; text-align:right; font-size:13px; font-family:naumB}
	.searchType span {color:#666666}
	.searchType span label {position:relative; top:-1px; margin-left:10px; color:#000; vertical-align:middle; letter-spacing:-1px; font-weight:bold}
	.searchType span:first-child label {margin-left:0}
	.searchType select {width:107px; margin-right:40px}
	.searchType input[type="text"] {background:#f9f9f9}
	.searchType input[type="radio"] {width:13px; height:13px; margin:3px 8px 0 0}
	.searchType .txt {position:relative; top:4px; left:0; margin-right:14px}
	.content > .searchType {padding-top:0}
	.searchType.txt_left > span {zoom:1}
	.searchType.txt_left > span:after {content:''; display:block; clear:both}
	.searchType.txt_left > span > label {float:left; top:0; line-height:20px; margin-right:5px}
	.searchType.txt_left > span > select {float:left}
	.searchType.txt_left > span > select.last {width:130px; margin-right:5px}
	
	.pagination1{text-align:center;}
	.pagination1 .page {margin:0 15px}
	.pagination1 .on {height:26px; line-height:23px; padding:0 9px; display:inline-block; color:#fff; border:1px solid #fff; background:#5c5c5c; vertical-align:middle}
	
	.float_box .right {
	    float: right;
	}
	.float_box button {
	    margin: 0 !important;
	}
	
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
							<div class="login_yn">
								<label for="mem_id" class="blind">아이디</label> <input type="text"
									name="mem_id" id="mem_id" style="ime-mode: disabled;">
								<label for="mem_pswd" class="blind">비밀번호</label> <input
									type="password" name="mem_pswd" id="mem_pswd" maxlength="16">
								<a href="#" class="btn_login" id="loginBtn"><span>로그인</span></a>
							</div>
							<div class="login_yn">
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

				<h2 id="lnbTitle" class="tit_lnb">마이페이지</h2>
				<!-- menu리스트 -->
				<ul id="lnbNavi" class="lnb on">
					<li class="low"><a>원서접수관리</a>
						<ul style="display: block;">
							<li><a>원서접수내역</a></li>
							<li><a>원서접수신청</a></li>
							<li><a>시험결과보기</a></li>
							<li><a>사진변경신청/결과</a></li>
						</ul></li>
					<li class="low"><a>응시자격</a>
						<ul style="display: block;">
							<li><a>응시자격자가진단</a></li>
							<li><a>응시가능종목확인</a></li>
							<li><a>응시자격제출셔류확인</a></li>
							<li><a>응시자격서류 온라인 제출</a></li>
						</ul></li>
					<li class="low"><a>발급조회현황</a>
						<ul style="display: block;">
							<li><a>확인서발급내역</a></li>
							<li><a>자격증발급내역</a></li>
							<li><a>자격증취득조회</a></li>
						</ul></li>
					<li class="low"><a>면제정보보기</a>
						<ul style="display: block;">
							<li><a>시험면제</a></li>
							<li><a>과목면제</a></li>
						</ul></li>
					<li class="low active on"><a>개인정보관리</a>
						<ul style="display: block;">
							<li><a>개인정보수정</a></li>
							<li class="on"><a>학력/경력수정</a></li>
							<li><a>회원탈퇴</a></li>
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
					<li>마이페이지</li>
					<li>개인정보관리</li>
					<li><strong>학력/경력수정</strong></li>
				</ul>
			</div>
			<!-- //location -->

			<div class="popup" id="popup_view"></div>
			<div class="content">
				<h3 class="tit_content">학력/경력수정</h3>
				<div class="infoBox">
					<div>
						<p class="list">학력정보는 고등학교이후 학력부터 입력해 주세요. <br>
							본 응시자격 자가진단은 시험 접수 전 본인의 응시자격 여부를 스스로 진단해 보는 것으로서, 실제 제출서류의 사실관계 등에 따라 결과가 달라질 수 있으므로 이 점 유의하시기 바랍니다. <span class="fc_r">(응시가능/불가능 진단결과에 관계없이 시험 접수는 가능)</span>
						</p>
						<ul class="list">
							<li>국가기술자격 취득자는 응시자격 자가진단시 자동으로 반영됩니다.</li>
							<li>대학원 이상은 반드시 대학교 정보를 추가입력하신 후 다음 화면의 경력사항에 연구내용과 경력기간을 입력하세요.(석사 2년, 박사 2년, 석·박사 통합과정은 4년만 경력인정됩니다.)</li>
							<li>학력정보에 변동이 있는 수험자는 “학력정보 추가”버튼을 클릭하여 반드시 최종학력을 추가 입력하시기 바랍니다.</li>
						</ul>
					</div>
					<span></span>
				</div>

				<!-- TAB -->
				<div class="tabLayout">
					<ul>
						<li class="on"><a href="#" title="학력정보입력"><span>학력정보입력</span></a></li>
						<li><a href="/myp012.do?id=myp01203&amp;gSite=Q&amp;gId="><span>경력정보입력</span></a></li>

						<li><a href="/myp012.do?id=myp01204&amp;gSite=Q&amp;gId="><span>기능경기대회 수상경력입력</span></a></li>

					</ul>
				</div>

				<form id="form1">
				<input type="hidden" name="p_jmCd" value="">
				<input type="hidden" name="p_grd_cd" value="">
				<input type="hidden" name="p_jm_oblig_cd" value="">
				<input type="hidden" name="p_section" value="">
				<input type="hidden" name="direction">
				<input type="hidden" name="currentUnivIndex" value="-1">
				<input type="hidden" name="currentUdeptIndex" value="-1">

				<div class="tbl_normal diagnosis_step3 mb5">
					<input type="hidden" class="ui-datepicker-trigger"><!-- 삭제/복원 제어용 -->

					<p class="txt_right mt0"><button type="button" class="btn3_type3" name="helpBtn"><span>자기진단 및 제출서류 도움말</span></button></p>

					<p class="tbl_tlt ok">서류 심사 완료</p>
					<table summary="학력정보입력 폼으로, 학력구분, 학교(기관)명, 학과/전공명, 학적상태, 수료/중퇴일자-재학/졸업일자, 기술훈련과정명, 직무분야 정보 입력">
						<caption>학력정보입력 폼</caption>
						<colgroup>
							<col width="16.2%">
							<col width="33.8%">
							<col width="16.2%">
							<col width="33.8%">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row">학력구분</th>
								<td colspan="3">4년제대학</td>
							</tr>
							<tr>
								<th scope="row">학교(기관)명</th>
								<td>순천향대학교</td>
								<th scope="row">학과/전공 명</th>
								<td>컴퓨터소프트웨어공학(과,부,전공)</td>
							</tr>
							<tr>
								<th scope="row">학적상태</th>
								<td>졸업</td>
								<th scope="row">수료/중퇴일자<br>재학/졸업일자</th>
								<td>2015-02-12</td>
							</tr>
							<tr>
								<th scope="row">기술훈련과정명</th>
								<td></td>
								<th scope="row">직무분야</th>
								<td></td>
							</tr>
							<tr>
								<td colspan="4" class="guideLaw">
									<div class="float_box">
										<div class="left">
											<p>* 응시자격 서류심사 기준일은 <strong>“필기시험일”</strong>입니다.(국가기술자격법 시행규칙 제14조제3항)</p>
										</div>
										<div class="right">
											<button type="button" class="btn3_type2" name="insertSchInfo"><span>학력정보 추가</span></button>
										</div>
									</div>
								</td>
							</tr>
						</tbody>
					</table>
				</div>

				<div id="divSchoolInfo"></div>
				<div class="btn_center">
					<button type="button" class="btn2 btncolor1" onclick="goSubmit('postback')"><span>입력</span></button>
				</div>
			</form>
			</div>
		</div>
		
	</div>
</article>