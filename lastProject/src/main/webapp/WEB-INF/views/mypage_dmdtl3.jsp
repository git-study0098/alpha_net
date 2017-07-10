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
	
	.noData {
	    padding: 30px 0 !important;
	    font-size: 14px !important;
	    color: #000 !important;
	    font-weight: bold !important;
	    text-align: center !important;
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
					<li class="low active on"><a>응시자격</a>
						<ul style="display: block;">
							<li><a>응시자격자가진단</a></li>
							<li><a>응시가능종목확인</a></li>
							<li class="on"><a>응시자격제출셔류확인</a></li>
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
					<li class="low"><a>개인정보관리</a>
						<ul style="display: block;">
							<li><a>개인정보수정</a></li>
							<li><a>학력/경력수정</a></li>
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
					<li>마이페이지 </li>
					<li>응시자격</li>
					<li><strong>응시자격 제출서류 확인</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<div class="content">
				<h3 class="tit_content">응시자격 제출서류 확인</h3>

				<h4>응시자격 제출서류 확인</h4>
				<div class="tbl_normal tdCenter mb40">
					<table summary="응시자격 제출서류 확인 목록으로, 종목, 구분, 응시자격, 제출서류, 승인일 정보 제공">
						<caption>응시자격 제출서류 확인 목록</caption>
						<colgroup>
							<col width="20%">
							<col width="16%">
							<col width="30%">
							<col width="22%">
							<col width="12%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">종목</th>
								<th scope="col">구분</th>
								<th scope="col">응시자격</th>
								<th scope="col">제출서류</th>
								<th scope="col">승인일</th>
							</tr>
						</thead>
						<tbody>

							<tr>

								<td rowspan="1">정보처리기사</td>

								<td rowspan="1">2016년 정기 기사 2회</td>

								<td rowspan="1">관련학과 대학졸업자</td>

								<td style="text-align:left !important">졸업 증명서</td>
								<td>2016.05.30</td>
							</tr>

						</tbody>
					</table>
					<p class="mt5">※ "응시자격 제출서류 확인"은 필기시험 합격자 발표일부터 확인가능합니다.</p>
				</div>
				<h4>어학성적 제출 내역 확인<em class="contit_pem ml10">(기술자격 국제의료관광코디네이터 종목 접수자만 해당)</em></h4>
				<div class="tbl_normal tdCenter mb10">
					<table summary="어학성적 제출 내역 확인 목록으로, 시험종류, 시험점수, 시험급수, 시험일, 승인상태, 승인일, 승인지사 정보 제공">
						<caption>어학성적 제출 내역 확인 목록</caption>
						<colgroup>
							<col width="20%">
							<col width="12%">
							<col width="12%">
							<col width="15%">
							<col width="15%">
							<col width="15%">
							<col width="11%">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">시험종류</th>
								<th scope="col">시험점수</th>
								<th scope="col">시험급수</th>
								<th scope="col">시험일</th>
								<th scope="col">승인상태</th>
								<th scope="col">승인일</th>
								<th scope="col">승인지사</th>
							</tr>
						</thead>
						<tbody>

							<tr>
								<td colspan="7" class="noData">해당 내역이 없습니다.</td>
							</tr>

						</tbody>
					</table>
					<p class="mt5">
						<strong class="fc_3"> 지역본부 및 지사에 제출한 응시자격 서류 내역 확인</strong><a href="/myp011.do?id=myp01108&amp;gSite=Q&amp;gId=" class="btn4 ml5"><span>바로가기</span></a>
					</p>
				</div>
				<!-- //컨텐츠 내용 -->

			</div>
		</div>
	</div>
</article>