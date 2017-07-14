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
						<input type="hidden" name="pageId" value="man004_01_10"> 
						<input type="hidden" name="redir" value="man004.do?id=man00401&amp;gSite=Q&amp;gId=&amp;notiType=10">
						<input type="hidden" name="lnb" value="Y"> 
						<input type="hidden" name="groupChk" value="N"> 
						<input type="hidden" name="logoutYn" value="Y">
						<div class="login_area">

							<!-- 로그인 전 -->
							<div class="login_yn">
								<label for="mem_id" class="blind">아이디</label> 
								<input type="text" name="mem_id" id="mem_id" style="ime-mode: disabled;">
								<label for="mem_pswd" class="blind">비밀번호</label> 
								<input type="password" name="mem_pswd" id="mem_pswd" maxlength="16">
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
					<li class="low"><a>고객 맞춤정보</a>
						<ul style="display: block;">
							<li><a>취업/훈련/연수</a></li>
							<li><a>대학생(중고생)장학금</a></li>
						</ul></li>
					<li class="low active on"><a>관련학과 지정신청</a></li>
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
					<li><strong>관련학과 지정신청</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<form name="udeptList" id="udeptList" method="post" action="cst013.do?id=cst01301s01&amp;gSite=Q&amp;gId=">
				<input type="hidden" name="charger" value=""><!-- 담당자 -->
				<input type="hidden" name="cnfmNo" value=""><!-- 확인번호 -->
				<input type="hidden" name="pageGubun" value="1"><!-- 화면구분 -->
			</form>

			<div class="content">
				<h3 class="tit_content">관련학과 지정신청</h3>
				<div class="tbl_normal diagnosis_step3">
					<table summary="관련학과 지정신청 폼으로 담당자명, 확인번호 입력">
						<caption>관련학과 지정신청 사전등록폼</caption>
						<colgroup>
							<col width="20%">
							<col width="*">
						</colgroup>
						<tbody>
							<tr>
								<th scope="row"><label for="charger">담당자 명</label></th>
								<td>
									<input type="text" name="charger" style="width:150px" id="charger" title="담당자명 입력" maxlength="50">
								</td>
							</tr>
							<tr>
								<th scope="row"><label for="cnfmNo">확인번호</label></th>
								<td>
									<input type="password" name="cnfmNo" style="width:150px" id="cnfmNo" title="확인번호 입력" maxlength="6">&nbsp;&nbsp;&nbsp;&nbsp;<a href="#" onclick="goPage(2)">확인번호를 잊은 경우 <u>Click</u> 하세요.</a>
								</td>
							</tr>
						</tbody>
					</table>
					<p class="fc_0 mt5">- 관련학과 신청을 위한 확인번호를 6자리로 설정하세요.</p>
					<p class="fc_0 mt5">- 관련학과 지정신청은 대학기관(학과 사무실 등)만 가능합니다.(학사과정에 한함)</p>
				</div>
				<div class="btn_center">
					<button type="button" class="btn2 btncolor1" onclick="goPage(1)"><span>신청하기</span></button>
					<button type="button" class="btn2 btncolor1" onclick="goPage(3)"><span>결과보기</span></button>
				</div>
			</div>
		</div>
	</div>
</article>