<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<style>
* {	box-sizing: content-box;}
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
					<li class="low"><a>자격취득/미발급 조회</a>
						<ul style="display: block;">
							<li><a>자격증취득조회</a></li>
							<li><a>자격증 미발급조회</a></li>
						</ul></li>
					<li class="low active on"><a>확인서/자격증 진위확인</a>
						<ul style="display: block;">
							<li class="on"><a>확인서진위확인</a></li>
							<li><a>자격증진위확인</a></li>
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
					<li>확인서/자격증 진위확인</li>
					<li><strong>확인서 진위 확인</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<!-- 컨텐츠 시작 -->
			<div class="content">
				<h3 class="tit_content">확인서 진위확인</h3>

				<div class="tbl_type2 mb10">
					<iframe name="if_1" style="display:none"></iframe><table summary="성명, 문서확인번호 HRD 입력 및 정보 제공">
						<caption>확인서 진위확인</caption>
						<colgroup>
							<col width="10%">
							<col width="20%">
							<col width="20%">
							<col width="50%">
						</colgroup>
						<tbody>
			<form name="searchform" method="post"></form>
							<tr>
								<th scope="row"><label for="nm">성명</label></th>
								<td><input type="text" id="nm" style="width:100px" title="성명 입력" name="nm" maxlength="30"></td>
								<th scope="row"><label for="certino1">문서확인번호</label></th>
								<td> <!-- 수정(1022) -->
									<span><strong>HRD</strong> -
										<input type="text" name="certino1" style="ime-mode:disabled; width:88px" title="문서확인번호(HRD) 앞자리 입력" maxlength="14" class="numInput"> -
										<input type="text" style="ime-mode:disabled; width:88px" title="문서확인번호(HRD) 뒷자리 입력" name="certino2" maxlength="5" class="numInput">
										<button type="button" class="btn3_icon search" title="새 창" onclick="getsearch()"><span class="blind">검색</span></button>
									</span>
								</td>
							</tr>
	
	
						</tbody>
					</table>
				</div>
				<div class="infoBox">
					<div>
						<ul class="list impt">
							<li>※ 성명과 증명서 상단의 '<strong>원본확인 문서확인</strong>'을 입력하시면 진위여부 확인이 가능합니다.</li>
							<li>※ 발급문서는 발급일로부터 <strong>90일동안</strong> 조회가 가능합니다.</li>
							<li>※ 발급일로부터 90일이 지난 문서는 조회가 되지 않으므로 조회를 원할 경우 '<strong>위변조검증프로그램</strong>'을 이용하시기 바랍니다.
								<p>
									(20바코드 조회를 위해 스캐너 필요)
									<button type="button" class="btn4" title="새 창" onclick="pop_info('/qnet/certify/main.html',750,600);"><span>이용방법</span></button>
								</p>
							</li>
						</ul>
					</div>
					<span></span>
				</div>
			</div>
			<!-- //컨텐츠 내용 -->
		</div>
		<!--  컨텐츠 끝 -->
	</div>
</article>
