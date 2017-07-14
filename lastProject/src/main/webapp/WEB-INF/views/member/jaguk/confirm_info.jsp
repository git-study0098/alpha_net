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
				<li class="low"><a>자격증 발급 안내</a>
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
				<li class="low active on"><a>확인서 발급</a>
					<ul style="display: block;">
						<li class="on"><a>확인서발급안내</a></li>
						<li><a>확인서발급신청</a></li>
						<li><a>확인서발급신청내역조회</a></li>
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
					<li>자격증/확인서</li>
					<li>확인서 발급</li>
					<li><strong>확인서 발급 안내</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<!-- 컨텐츠 시작 -->
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">확인서 발급 안내</h3>
				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<h4>확인서 발급신청 / 발급내역조회 및 인쇄는 <span class="fc_b">로그인 후 이용가능한 메뉴</span>입니다.</h4>
				<div class="tbl_normal tbodyWhite btnGo mb40">
					<table summary="로그인 후 이용가능한 메뉴 정보로 메뉴명,상세내용 항목으로 구성">
						<colgroup>
							<col width="25%">
							<col width="*">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">메뉴명</th>
								<th scope="col">상세내용</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">확인서 발급신청</th>
								<td>각종 확인서를 발급 신청할 수 있습니다.
									<p><a class="btn3_type1" href="http://www.q-net.or.kr/iss002.do?id=iss00201&amp;gSite=Q&amp;gId="><span style="min-width:145px">확인서 발급 신청하기</span></a></p>
								</td>
							</tr>
							<tr>
								<th scope="row">발급내역 조회 및 인쇄</th>
								<td>발급 신청한 확인서의 내역조회 및 인쇄를 할수 있습니다.
									<p><a class="btn3_type1" href="http://www.q-net.or.kr/iss003.do?id=iss00301&amp;gSite=Q&amp;gId="><span style="min-width:145px">발급내역 조회 및 인쇄하기</span></a></p>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<h4><span class="fc_r">로그인 없이</span> 이용가능한 메뉴입니다.</h4>
				<div class="tbl_normal tbodyWhite btnGo">
					<table summary="로그인 없이 이용가능한 메뉴 정보로 메뉴명,상세내용 항목으로 구성">
						<colgroup>
							<col width="25%">
							<col width="*">
						</colgroup>
						<thead>
							<tr>
								<th scope="col">메뉴명</th>
								<th scope="col">상세내용</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">문서 진위 확인</th>
								<td>인터넷에서 발급한 확인서의 진위여부 확인 가능합니다.
									<p><a class="btn3_type3" href="http://www.q-net.or.kr/iss004.do?id=iss00401&amp;gSite=Q&amp;gId="><span style="min-width:145px">문서 진위 확인하기</span></a></p>
								</td>
							</tr>
							<tr>
								<th scope="row">발급가능한 프린터 체크</th>
								<td>본인PC에 연결된 프린터가 발급이 가능한지 체크합니다.
									<p id="loadingPrintObj"><a class="btn3_type3" href="JavaScript:prnCheckCopy();"><span style="min-width:145px">발급가능한 프린터 체크 하기</span></a></p>
								</td>
							</tr>
							<tr>
								<th scope="row">이용안내</th>
								<td>확인서 발급 신청 및 출력 도움말입니다.
									<p><button type="button" class="btn3_type3" title="새 창" onclick="pop_info('/qnet/certify/main.html',750,600);"><span style="min-width:145px">이용안내 보기</span></button></p>
								</td>
							</tr>
							<tr>
								<th scope="row">자주 묻는 질문</th>
								<td>확인서 발급에 관한 궁금한점을 해소하실 수 있습니다.
									<p><a class="btn3_type3" href="cst002.do?id=cst00201&amp;gSite=Q&amp;gId="><span style="min-width:145px">자주 묻는 질문 보기</span></a></p>
								</td>
							</tr>
							<tr>
								<th scope="row">프린터 매니저 수동설치</th>
								<td>확인서 출력이 안될 때 다운받으셔서 설치하시기 바랍니다.
									<p><a class="btn3_type3" href="/activex/PrintManager.exe"><span style="min-width:145px">프린터 매니저 수동설치</span></a></p>
								</td>
							</tr>
							<tr>
								<th scope="row">위변조 검증 S/W다운로드</th>
								<td>스케너를 이용한 위변조 검증 S/W를 다운로드, 설치하세요.
									<p><a class="btn3_type3" href="/activex/ezCertVerifier(HRD)_2.3.1.0.exe"><span style="min-width:145px">위변조 검증 S/W다운로드</span></a></p>
								</td>
							</tr>
						</tbody>
					</table>
				</div>
				<!-- //컨텐츠 내용 -->
			</div>
			<!--  컨텐츠 끝 -->
		</div>
	</div>
</article>
