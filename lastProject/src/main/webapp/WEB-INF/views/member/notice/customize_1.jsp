<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
	* {	box-sizing: content-box;}
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

				<h2 id="lnbTitle" class="tit_lnb">고객지원</h2>
				<!-- menu리스트 -->
				<ul id="lnbNavi" class="lnb on">
					<li class="low"><a>공지사항</a>
						<ul style="display: block;">
							<li><a>공지사항</a></li>
							<li><a>자격제도</a></li>
							<li><a>시행</a></li>
							<li><a>출제</a></li>
							<li><a>서비스 개선</a></li>
						</ul></li>
					<li class="low"><a>이용안내</a>
						<ul style="display: block;">
							<li><a>사이트 이용방법</a></li>
							<li><a>자주찾는 질문</a></li>
						</ul></li>
					<li class="low"><a>자료실</a>
						<ul style="display: block;">
							<li><a>각종서식</a></li>
							<li><a>출제기준</a></li>
							<li><a>기출문제(기술사)</a></li>
							<li><a>공개문제</a></li>
							<li><a>관련법령</a></li>
						</ul></li>
					<li class="low"><a>환불안내</a>
						<ul style="display: block;">
							<li><a>기술자격 환불안내</a></li>
							<li><a>전문자격 환불안내</a></li>
						</ul></li>
					<li class="low active on"><a>고객 맞춤정보</a>
						<ul style="display: block;">
							<li class="on"><a>취업/훈련/연수</a></li>
							<li><a>대학생(중고생)장학금</a></li>
						</ul></li>
					<li class="low"><a>관련학과 지정신청</a></li>
					<li><a>고객의 소리</a></li>
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
					<li>고객지원</li>
					<li>정부 3.0 고객맞춤 정보방</li>
					<li><strong>취업/훈련/연수</strong></li>
				</ul>
			</div>
			<!-- //location -->

			<div class="content">
				<h3 class="tit_content">정부 3.0 고객맞춤 정보방</h3>
				<h4>취업 · 훈련 · 연수</h4>
				<table class="des_table02 cw500"
					summary="취업 · 훈련 · 연수 관련 기관 안내 및 사이트 바로가기 정보제공">
					<caption>취업 · 훈련 · 연수 관련기관</caption>
					<colgroup>
						<col width="290px">
						<col width="*">
					</colgroup>
					<tbody>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.gsbc.or.kr/gsbc/support/education.do"
								target="_blank" title="새창열림"><img
									src="../images/content/cst012_02-cte01-1.gif" alt="종소기업지원센터"></a></th>
							<td><strong class="name">경기도중소기업종합지원센터</strong>
								<p>경기도내 구인·구직자를 대상으로 구인, 구직, 알선 서비스를 온라인으로 제공합니다.</p></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://gojobs.mospa.go.kr/" target="_blank" title="새창열림"><img
									src="../images/content/cst012_02-cte01-2.gif" alt="나라일터"></a></th>
							<td><strong class="name">나라일터</strong>
								<p>공무원 공개경쟁 및 특별채용 시험 공고 및 채용 일정 등 안내합니다.</p></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.saramin.co.kr" target="_blank" title="새창열림"><img
									src="../images/content/cst012_02-cte01-3.gif" alt="사람인"></a></th>
							<td><strong class="name">사람인</strong>
								<p>사람을 중심으로 하는 맞춤형 일자리 정보를 제공합니다.</p></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.wesc.or.kr/" target="_blank" title="새창열림"><img
									src="../images/content/cst012_02-cte01-4.gif"
									alt="wesc-여성기업종합지원센터"></a></th>
							<td><strong class="name">여성기업종합지원센터</strong>
								<p>여성기업에 대한 정보 제공, 교육 및 연수, 창업보육 등을 종합지원합니다.</p></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.work.go.kr/seekMain.do" target="_blank"
								title="새창열림"><img
									src="../images/content/cst012_02-cte01-5.gif" alt="워크넷"></a></th>
							<td><strong class="name">워크넷</strong>
								<p>다양한 일자리정보, 인재정보 등 취업관련 정보 및 사이버 직업상담, 채용박람회 일정 등 다양한 정보를
									제공합니다.</p></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.worldjob.or.kr/index.do" target="_blank"
								title="새창열림"><img
									src="../images/content/cst012_02-cte01-7.gif" alt="월드잡"></a></th>
							<td><strong class="name">월드잡</strong>
								<p>한국산업인력공단이 운영하는 해외취업 사이트로써 간호사·IT 인력, 항공승무원, 기술인력 등 해외취업 및
									연수 각종 정보를 제공합니다.</p></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.incruit.com/" target="_blank" title="새창열림">
									<img src="../images/content/cst012_02-cte01-8.gif"
									alt="인크루트">
							</a></th>
							<td><strong class="name">인크루트</strong>
								<p>다양한 일자리정보, 인재정보 등 각종 취업관련 정보를 제공합니다.</p></td>
						</tr>

						<tr>
							<th scope="row" class="logo"><a
								href="http://www.jobkorea.co.kr/text/main.asp?rp_Stat=1"
								target="_blank" title="새창열림"> <img
									src="../images/content/cst012_02-cte01-10.gif" alt="잡코리아"></a></th>
							<td><strong class="name">잡코리아</strong>
								<p>국내최대의 민간일자리 정보사이트로써 구인자에게 맞춤형 구직정보를 제공합니다.</p></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.vnet.go.kr/" target="_blank" title="새창열림">
									<img src="../images/content/cst012_02-cte01-11.gif"
									alt="제대군인지원센터">
							</a></th>
							<td><strong class="name">제대군인지원센터</strong>
								<p>중,장기 복무 제대군인 일자리 및 창업지원 직업교육 안내합니다.</p></td>
						</tr>
					</tbody>

				</table>
				<dl class="jungbo30_list">

					<dt class="logo">
						<a href="http://www.gsbc.or.kr/gsbc/support/education.do"
							target="_blank" title="새창열림"><img
							src="../images/content/cst012_02-cte01-1.gif" alt="종소기업지원센터"></a>
					</dt>
					<dd>
						<strong class="name">경기도중소기업종합지원센터</strong>
						<p>경기도내 구인·구직자를 대상으로 구인, 구직, 알선 서비스를 온라인으로 제공합니다.</p>
					</dd>
					<dt class="logo">
						<a href="http://gojobs.mospa.go.kr/" target="_blank" title="새창열림"><img
							src="../images/content/cst012_02-cte01-2.gif" alt="나라일터"></a>
					</dt>
					<dd>
						<strong class="name">나라일터</strong>
						<p>공무원 공개경쟁 및 특별채용 시험 공고 및 채용 일정 등 안내합니다.</p>
					</dd>


					<dt class="logo">
						<a href="http://www.saramin.co.kr" target="_blank" title="새창열림"><img
							src="../images/content/cst012_02-cte01-3.gif" alt="사람인"></a>
					</dt>
					<dd>
						<strong class="name">사람인</strong>
						<p>사람을 중심으로 하는 맞춤형 일자리 정보를 제공합니다.</p>
					</dd>


					<dt class="logo">
						<a href="http://www.wesc.or.kr/" target="_blank" title="새창열림"><img
							src="../images/content/cst012_02-cte01-4.gif"
							alt="wesc-여성기업종합지원센터"></a>
					</dt>
					<dd>
						<strong class="name">여성기업종합지원센터</strong>
						<p>여성기업에 대한 정보 제공, 교육 및 연수, 창업보육 등을 종합지원합니다.</p>
					</dd>


					<dt class="logo">
						<a href="http://www.work.go.kr/seekMain.do" target="_blank"
							title="새창열림"><img
							src="../images/content/cst012_02-cte01-5.gif" alt="워크넷"></a>
					</dt>
					<dd>
						<strong class="name">워크넷</strong>
						<p>다양한 일자리정보, 인재정보 등 취업관련 정보 및 사이버 직업상담, 채용박람회 일정 등 다양한 정보를
							제공합니다.</p>
					</dd>


					<dt class="logo">
						<a href="http://www.worldjob.or.kr/index.do" target="_blank"
							title="새창열림"><img
							src="../images/content/cst012_02-cte01-7.gif" alt="월드잡"></a>
					</dt>
					<dd>
						<strong class="name">월드잡</strong>
						<p>한국산업인력공단이 운영하는 해외취업 사이트로써 간호사·IT 인력, 항공승무원, 기술인력 등 해외취업 및
							연수 각종 정보를 제공합니다.</p>
					</dd>


					<dt class="logo">
						<a href="http://www.incruit.com/" target="_blank" title="새창열림">
							<img src="../images/content/cst012_02-cte01-8.gif" alt="인크루트">
						</a>
					</dt>
					<dd>
						<strong class="name">인크루트</strong>
						<p>다양한 일자리정보, 인재정보 등 각종 취업관련 정보를 제공합니다.</p>
					</dd>


					<dt class="logo">
						<a href="http://www.ilmoa.go.kr/ilmoa_pub/main.do" target="_blank"
							title="새창열림"> <img
							src="../images/content/cst012_02-cte01-9.gif" alt="일모아"></a>
					</dt>
					<dd>
						<strong class="name">일모아</strong>
						<p>정부에서 추진하고 있는 일자리 지원사업정보[청년실업, 사회적일자리, 취약 계층 및 직업훈련]를 제공합니다.</p>
					</dd>


					<dt class="logo">
						<a href="http://www.jobkorea.co.kr/text/main.asp?rp_Stat=1"
							target="_blank" title="새창열림"> <img
							src="../images/content/cst012_02-cte01-10.gif" alt="잡코리아"></a>
					</dt>
					<dd>
						<strong class="name">잡코리아</strong>
						<p>국내최대의 민간일자리 정보사이트로써 구인자에게 맞춤형 구직정보를 제공합니다.</p>
					</dd>


					<dt class="logo">
						<a href="http://www.vnet.go.kr/" target="_blank" title="새창열림">
							<img src="../images/content/cst012_02-cte01-11.gif"
							alt="제대군인지원센터">
						</a>
					</dt>
					<dd>
						<strong class="name">제대군인지원센터</strong>
						<p>중,장기 복무 제대군인 일자리 및 창업지원 직업교육 안내합니다.</p>
					</dd>


				</dl>
			</div>
		</div>
	</div>
</article>