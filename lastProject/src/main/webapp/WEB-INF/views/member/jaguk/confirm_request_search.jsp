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
					<li class="low active on"><a>확인서 발급</a>
						<ul style="display: block;">
							<li><a>확인서발급안내</a></li>
							<li class="on"><a>확인서발급신청</a></li>
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
					<li>자격증/확인서</li>
					<li>확인서 발급</li>
					<li><strong>확인서 발급 내역 조회</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<!-- 컨텐츠 시작 -->
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">확인서 발급 신청</h3>
				<!-- //컨텐츠 타이틀 -->
				<!-- 콘텐츠 -->
				<h4>
					<span class="fc_b">시험접수확인서</span>
				</h4>
				<div id="viewList" type="String[]">
					<form name="certifrm" method="post">
						<div class="tbl_type1">
							<div id="bd03">
								<table summary="확인서 발급 신청을 선택, 자격번호, 종목명, 합격일자로 정보제공">
									<caption>확인서 발급 신청 목록</caption>
									<colgroup>
										<col width="10%">
										<col width="18%">
										<col width="*">
										<col width="18%">
									</colgroup>
									<thead>
										<tr>
											<th scope="col">선택 <input type="checkbox" id="chk"
												disabled="disabled" title="전체"> <input type="hidden"
												name="gyno"> <input type="hidden" name="suno">
												<input type="hidden" name="lcsno"> <input
												type="hidden" name="passdt"> <input type="hidden"
												name="jmcd"> <input type="hidden" name="perid">
												<input type="hidden" name="printChk">
											</th>
											<th scope="col">시 험 명</th>
											<th scope="col"><input type="hidden" name="jmnm">종
												목 명</th>

											<th scope="col"><input type="hidden" name="chasu">필/실기</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td><input type="hidden" name="gyno"
												value="PL2016392005"> <input type="hidden"
												name="kjty" value="0"> <input type="hidden"
												name="suno" value="R10038978838"> <input
												type="hidden" name="jmcd" value="1320" id="jmCd0"> <input
												type="hidden" name="lcsno" value="2016년 정기 기사 1회"
												id="lcsNo0"> <input type="hidden" name="cnt"
												value="2"> <input type="hidden" name="chasu"
												value="2"> <input type="hidden" name="passdt"
												value="실기" id="passDt0"> <input type="hidden"
												name="jmnm" value="정보처리기사"> <input type="hidden"
												name="perid" value="PI2100118354"> <input
												type="hidden" name="printChk" value="0"> <input
												type="hidden" id="dupStat0" value="1"> <input
												type="checkbox" name="Cb_sel[]" id="chk" value="1"
												onclick="chkcnt(this.value);"></td>
											<td width="35%"><label for="chk0">2016년 정기 기사 1회</label></td>
											<td>정보처리기사</td>
											<td>실기</td>
											<td></td>
										</tr>
										<tr>
											<td><input type="hidden" name="gyno"
												value="PL2016392005"> <input type="hidden"
												name="kjty" value="1"> <input type="hidden"
												name="suno" value="R10037891856"> <input
												type="hidden" name="jmcd" value="1320" id="jmCd1"> <input
												type="hidden" name="lcsno" value="2016년 정기 기사 1회"
												id="lcsNo1"> <input type="hidden" name="cnt"
												value="2"> <input type="hidden" name="chasu"
												value="1"> <input type="hidden" name="passdt"
												value="필기" id="passDt1"> <input type="hidden"
												name="jmnm" value="정보처리기사"> <input type="hidden"
												name="perid" value="PI2100118354"> <input
												type="hidden" name="printChk" value="0"> <input
												type="hidden" id="dupStat1" value="1"> <input
												type="checkbox" name="Cb_sel[]" id="chk" value="2"
												onclick="chkcnt(this.value);"></td>
											<td width="35%"><label for="chk1">2016년 정기 기사 1회</label></td>
											<td>정보처리기사</td>
											<td>필기</td>
											<td></td>
										</tr>

									</tbody>
									<!-- //2014.12.03 : input checkbox id값 중복 변수처리 .  applVo.getImplPlanNm() label for 변수값 처리 -->
								</table>
							</div>
						</div>
						<div class="pagination1"></div>
						<div class="btn_center">
							<input type="hidden" name="applList" value="2">
							<button type="button" class="btn2 btncolor1"
								id="selbtnController" name="selbtn" onclick="certiIssue();">
								<span>선택 신청</span>
							</button>
						</div>

					</form>

					<p class="cont_clist9 mt40">
						※ 청소년지도사, 청소년상담사, 공인중개사 등 공단에서 위탁받아 시행하는 <strong class="fc_r">전문자격의
							자격취득확인서는 서비스 되지 않으며</strong> 시험접수확인서 및 합격확인서 등 기타 확인서는 <strong
							class="fc_r">공단에서 시행한 이후부터 서비스 가능</strong>합니다
					</p>
				</div>

				<form name="sendform" method="post">
					<input type="hidden" name="Hb_gyno"> <input type="hidden"
						name="Hb_suno"> <input type="hidden" name="Hb_chasu">
					<input type="hidden" name="Hb_jmcd"> <input type="hidden"
						name="Hb_chkcnt"> <input type="hidden" name="Hb_lcsno">
					<input type="hidden" name="Hb_passdt"> <input type="hidden"
						name="Hb_docty" value="03">
					<!-- 계열 -->
					<input type="hidden" name="Hb_kycd" value="01">
					<!-- 확인서코드 -->
					<input type="hidden" name="Hb_gubun" value=""> <input
						type="hidden" name="Hb_perid" value="PI2100118354"> <input
						type="hidden" name="Hb_purpose" value="교육기관제출용"> <input
						type="hidden" name="Hb_empresd"> <input type="hidden"
						name="Hb_empnm"> <input type="hidden" name="Hb_feeAmt"
						value=""> <input type="hidden" name="Hb_feeYn" value="N">

					<input type="hidden" name="Hb_hpflg"> <input type="hidden"
						name="Hb_payyn"> <input type="hidden" name="Hb_recptNo">
					<!-- certifrm -->
					<input type="hidden" name="Certifrm_gyno"> <input
						type="hidden" name="Certifrm_suno"> <input type="hidden"
						name="Certifrm_chasu"> <input type="hidden"
						name="Certifrm_jmcd"> <input type="hidden"
						name="Certifrm_lcsno"> <input type="hidden"
						name="Certifrm_passdt"> <input type="hidden"
						name="Certifrm_cbokycd"> <input type="hidden"
						name="Certifrm_pageId"> <input type="hidden"
						name="Certifrm_cbodocty"> <input type="hidden"
						name="Certifrm_jmnm"> <input type="hidden"
						name="isEmployee" value="N"> <input type="hidden"
						name="cbokycdNm" value="시험접수확인서"> <input type="hidden"
						name="chrome" value="">
				</form>
				<form>
				<input type="hidden" name="hrdNo" value=""> <input
					type="hidden" name="empId" value=""> <input type="hidden"
					name="perid" value="PI2100118354"> <input type="hidden"
					name="cbodocty" value="03">
				<iframe name="if_1" style="display: none"></iframe>
				</form>
			</div>
			<!-- //컨텐츠 내용 -->
		</div>
		<!--  컨텐츠 끝 -->
	</div>
</article>
