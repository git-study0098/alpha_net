<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
* {
	box-sizing: content-box;
}
.pagination1{text-align:center;}
	.pagination1 .page {margin:0 15px}
	.pagination1 .on {height:26px; line-height:23px; padding:0 9px; display:inline-block; color:#fff; border:1px solid #fff; background:#5c5c5c; vertical-align:middle}
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
					<li class="low"><a>확인서 발급</a>
						<ul style="display: block;">
							<li><a>확인서발급안내</a></li>
							<li><a>확인서발급신청</a></li>
							<li><a>확인서발급신청내역조회</a></li>
							<li><a>기능경기확인서신청</a></li>
						</ul></li>
					<li class="low active on"><a>자격취득/미발급 조회</a>
						<ul style="display: block;">
							<li><a>자격증취득조회</a></li>
							<li class="on"><a>자격증 미발급조회</a></li>
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
					<li>자격증 발급</li>
					<li><strong>자격증 미발급 조회</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<!-- 컨텐츠 시작 -->
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">자격증 미발급 조회</h3>
				<!-- //컨텐츠 타이틀 -->
				<div class="infoBox">
					<div>
						<ul class="list">
							<li>취득하신 자격증 미발급시 언제든지 자격증을 발급 받으실 수 있습니다.</li>
							<li>발급의 기한 제한은 없습니다.</li>
						</ul>
					</div>
					<span></span>
				</div>
				<!-- s: 개인정보 입력폼-->
				<form name="showList">
				<div class="personalInfo nonTbl">
					<fieldset>
						<legend>개인정보 입력</legend>
						<p style="height:27px"><label for="uregi">주민등록번호</label>
						<input type="text" id="resdNo1" title="주민번호 앞자리" style="width:66px" maxlength="6" class="numInput"> <span>-</span>
						<input type="password" id="resdNo2" title="주민번호 뒷자리" style="width:73px" maxlength="7" class="numInput"></p>
						<p style="height:27px"><label for="hgulNm">이름</label> <input style="width:166px" id="hgulNm" value="" type="text" maxlength="15"></p> <!-- 수정(0910) -->
						<button type="button" class="loginbtn" onclick="goPage();"><img alt="미발급 자격증 조회" src="../images/common/btn_sch2.gif"></button> <!-- 수정(0910) -->
					</fieldset>
				</div>
				</form>
				<!--// e: 개인정보 입력폼 -->
				<!-- //컨텐츠 내용 -->
				<div id="bd01_01"></div>
			</div>
			<!-- //컨텐츠 내용 -->
		</div>
		<!--  컨텐츠 끝 -->
	</div>
</article>
