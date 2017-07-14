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
							<li><a>취업/훈련/연수</a></li>
							<li class="on"><a>대학생(중고생)장학금</a></li>
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
					<li><strong>대학생(중고생)장학금</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<div class="content">
				<h3 class="tit_content">정부 3.0 고객맞춤 정보방</h3>
				<h4>대학생(중고생)장학금</h4>
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
								href="http://jaedan.nonghyup.com/" target="_blank" title="새창열림">
									<img src="../images/content/cst012_02-cte03-1.gif"
									alt="농협재단">
							</a></th>
							<td><strong class="name">농협재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.dhrdf.or.kr/task/found/kind.jsp"
								target="_blank" title="새창열림"> <img
									src="../images/content/cst012_02-cte03-2.gif"
									alt="대전인재육성장학재단"></a></th>
							<td><strong class="name">대전인재육성장학재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.dongam.biz/index.html" target="_blank"
								title="새창열림"> <img
									src="../images/content/cst012_02-cte03-3.gif" alt="동암장학재단"></a></th>
							<td><strong class="name">동암장학재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://foundation.miraeasset.com/scholarship/internal.do"
								target="_blank" title="새창열림"> <img
									src="../images/content/cst012_02-cte03-4.gif"
									alt="미래에셋박현주재단"></a></th>
							<td><strong class="name">미래에셋박현주재단</strong>
								<p></p></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.sffl.or.kr/" target="_blank" title="새창열림">
									<img src="../images/content/cst012_02-cte03-5.gif"
									alt="미래인재육성재단">
							</a></th>
							<td><strong class="name">미래인재육성재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.sdream.or.kr/index.jsp" target="_blank"
								title="새창열림"> <img
									src="../images/content/cst012_02-cte03-6.gif" alt="삼성꿈장학재단"></a></th>
							<td><strong class="name">삼성꿈장학재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.ssscholarship.com/" target="_blank"
								title="새창열림"> <img
									src="../images/content/cst012_02-cte03-7.gif" alt="삼성장학회"></a></th>
							<td><strong class="name">삼성장학회</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://shscholar.com/?" target="_blank" title="새창열림">
									<img src="../images/content/cst012_02-cte03-8.gif"
									alt="성혜장학회" style="width: 120px">
							</a></th>
							<td><strong class="name">성혜장학회</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.janghakin.or.kr/scholarship/index.jsp"
								target="_blank" title="새창열림"> <img
									src="../images/content/cst012_02-cte03-9.gif" alt="인천인재육성재단"
									style="height: 35px"></a></th>
							<td><strong class="name">인천인재육성재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.gjcsf.or.kr/" target="_blank" title="새창열림">
									<img src="../images/content/cst012_02-cte03-10.gif"
									alt="광주시민장학회" style="height: 35px">
							</a></th>
							<td><strong class="name">광주시민장학회</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.cninjae.or.kr/" target="_blank" title="새창열림">
									<img src="../images/content/cst012_02-cte03-11.gif"
									alt="충청남도인재육성재단">
							</a></th>
							<td><strong class="name">충청남도인재육성재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.chrdf.or.kr/home/main.do" target="_blank"
								title="새창열림"> <img
									src="../images/content/cst012_02-cte03-12.gif"
									alt="충북인재육성재단"></a></th>
							<td><strong class="name">충북인재육성재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.kfas.or.kr/ScholarShip/ScholarShip0501.aspx"
								target="_blank" title="새창열림"> <img
									src="../images/content/cst012_02-cte03-13.gif"
									alt="한국고등교육재단" style="height: 35px"></a></th>
							<td><strong class="name">한국고등교육재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.kosaf.go.kr/" target="_blank" title="새창열림">
									<img src="../images/content/cst012_02-cte03-14.gif"
									alt="한국장학재단" style="height: 25px">
							</a></th>
							<td><strong class="name">한국장학재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.kosffl.or.kr/" target="_blank" title="새창열림">
									<img src="../images/content/cst012_02-cte03-15.gif"
									alt="한국지도자육성장학재단" style="height: 65px">
							</a></th>
							<td><strong class="name">한국지도자육성장학재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.hyundai-cmkfoundation.org/com/esScholarship.do"
								target="_blank" title="새창열림"> <img
									src="../images/content/cst012_02-cte03-16.gif"
									alt="현대차정몽구재단" style="height: 45px"></a></th>
							<td><strong class="name">현대차정몽구재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://www.ibkfoundation.or.kr/IBKF/IndexNew"
								target="_blank" title="새창열림"> <img
									src="../images/content/cst012_02-cte03-17.gif"
									alt="IBK행복나눔재단"></a></th>
							<td><strong class="name">IBK행복나눔재단</strong></td>
						</tr>
						<tr>
							<th scope="row" class="logo"><a
								href="http://scholarship.ktngtogether.com/front/contents/business/postgrad.asp"
								target="_blank" title="새창열림"> <img
									src="../images/content/cst012_02-cte03-18.gif"
									alt="KT&amp;G장학재단"></a></th>
							<td><strong class="name">KT&amp;G장학재단</strong></td>
						</tr>
					</tbody>

				</table>
				<dl class="jungbo30_list">


					<dt class="logo">
						<a href="http://jaedan.nonghyup.com/" target="_blank" title="새창열림">
							<img src="../images/content/cst012_02-cte03-1.gif" alt="농협재단">
						</a>
					</dt>
					<dd>
						<strong class="name">농협재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.dhrdf.or.kr/task/found/kind.jsp"
							target="_blank" title="새창열림"> <img
							src="../images/content/cst012_02-cte03-2.gif" alt="대전인재육성장학재단"></a>
					</dt>
					<dd>
						<strong class="name">대전인재육성장학재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.dongam.biz/index.html" target="_blank"
							title="새창열림"> <img
							src="../images/content/cst012_02-cte03-3.gif" alt="동암장학재단"></a>
					</dt>
					<dd>
						<strong class="name">동암장학재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://foundation.miraeasset.com/scholarship/internal.do"
							target="_blank" title="새창열림"> <img
							src="../images/content/cst012_02-cte03-4.gif" alt="미래에셋박현주재단"></a>
					</dt>
					<dd>
						<strong class="name">미래에셋박현주재단</strong>
						<p></p>
					</dd>


					<dt class="logo">
						<a href="http://www.sffl.or.kr/" target="_blank" title="새창열림">
							<img src="../images/content/cst012_02-cte03-5.gif"
							alt="미래인재육성재단">
						</a>
					</dt>
					<dd>
						<strong class="name">미래인재육성재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.sdream.or.kr/index.jsp" target="_blank"
							title="새창열림"> <img
							src="../images/content/cst012_02-cte03-6.gif" alt="삼성꿈장학재단"></a>
					</dt>
					<dd>
						<strong class="name">삼성꿈장학재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.ssscholarship.com/" target="_blank"
							title="새창열림"> <img
							src="../images/content/cst012_02-cte03-7.gif" alt="삼성장학회"></a>
					</dt>
					<dd>
						<strong class="name">삼성장학회</strong>
					</dd>


					<dt class="logo">
						<a href="http://shscholar.com/?" target="_blank" title="새창열림">
							<img src="../images/content/cst012_02-cte03-8.gif" alt="성혜장학회"
							style="width: 120px">
						</a>
					</dt>
					<dd>
						<strong class="name">성혜장학회</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.janghakin.or.kr/scholarship/index.jsp"
							target="_blank" title="새창열림"> <img
							src="../images/content/cst012_02-cte03-9.gif" alt="인천인재육성재단"
							style="height: 35px"></a>
					</dt>
					<dd>
						<strong class="name">인천인재육성재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.gjcsf.or.kr/" target="_blank" title="새창열림">
							<img src="../images/content/cst012_02-cte03-10.gif"
							alt="광주시민장학회" style="height: 35px">
						</a>
					</dt>
					<dd>
						<strong class="name">광주시민장학회</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.cninjae.or.kr/" target="_blank" title="새창열림">
							<img src="../images/content/cst012_02-cte03-11.gif"
							alt="충청남도인재육성재단">
						</a>
					</dt>
					<dd>
						<strong class="name">충청남도인재육성재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.chrdf.or.kr/home/main.do" target="_blank"
							title="새창열림"> <img
							src="../images/content/cst012_02-cte03-12.gif" alt="충북인재육성재단"></a>
					</dt>
					<dd>
						<strong class="name">충북인재육성재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.kfas.or.kr/ScholarShip/ScholarShip0501.aspx"
							target="_blank" title="새창열림"> <img
							src="../images/content/cst012_02-cte03-13.gif" alt="한국고등교육재단"
							style="height: 35px"></a>
					</dt>
					<dd>
						<strong class="name">한국고등교육재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.kosaf.go.kr/" target="_blank" title="새창열림">
							<img src="../images/content/cst012_02-cte03-14.gif"
							alt="한국장학재단" style="height: 25px">
						</a>
					</dt>
					<dd>
						<strong class="name">한국장학재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.kosffl.or.kr/" target="_blank" title="새창열림">
							<img src="../images/content/cst012_02-cte03-15.gif"
							alt="한국지도자육성장학재단" style="height: 65px">
						</a>
					</dt>
					<dd>
						<strong class="name">한국지도자육성장학재단</strong>
					</dd>


					<dt class="logo">
						<a
							href="http://www.hyundai-cmkfoundation.org/com/esScholarship.do"
							target="_blank" title="새창열림"> <img
							src="../images/content/cst012_02-cte03-16.gif" alt="현대차정몽구재단"
							style="height: 45px"></a>
					</dt>
					<dd>
						<strong class="name">현대차정몽구재단</strong>
					</dd>


					<dt class="logo">
						<a href="http://www.ibkfoundation.or.kr/IBKF/IndexNew"
							target="_blank" title="새창열림"> <img
							src="../images/content/cst012_02-cte03-17.gif" alt="IBK행복나눔재단"></a>
					</dt>
					<dd>
						<strong class="name">IBK행복나눔재단</strong>
					</dd>


					<dt class="logo">
						<a
							href="http://scholarship.ktngtogether.com/front/contents/business/postgrad.asp"
							target="_blank" title="새창열림"> <img
							src="../images/content/cst012_02-cte03-18.gif"
							alt="KT&amp;G장학재단"></a>
					</dt>
					<dd>
						<strong class="name">KT&amp;G장학재단</strong>
					</dd>


				</dl>
			</div>
		</div>
	</div>
</article>