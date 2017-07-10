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
                     name="mem_pswd" id="mem_pswd" maxlength="16"> <a href="#"
                     class="btn_login" id="loginBtn"><span>로그인</span></a>
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
      </ul><!-- menu리스트 끝 -->   
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
						<!-- 컨텐츠 타이틀 -->
						<h3 class="tit_content">자격증 신규/인정/재발급</h3>
						<hr>

						<!-- 컨텐츠 내용 -->
						<div class="tabLayout">
							<ul>
								<li><a href="qlf001.do?id=qlf00102&amp;gSite=Q&amp;gId="><span>신규발급</span></a></li>
								<li class="on"><a
									href="qlf001.do?id=qlf00103&amp;gSite=Q&amp;gId=" title="인정발급"><span>인정발급</span></a></li>
								<li><a href="qlf001.do?id=qlf00104&amp;gSite=Q&amp;gId="><span>재발급</span></a></li>
							</ul>
						</div>
						<div class="tbl_normal thRight">
							<table
								summary="자격증 인정발급 안내로 자격증발급 신청방법, 발급기간, 신청대상, 준비물, 발급장소 정보제공" class="table table-bordered">
								<colgroup>
									<col width="20%">
									<col width="*">
								</colgroup>
								<tbody>
									<tr>
										<th scope="row" class="active">자격증발급 신청방법</th>
										<td>본인 또는 대리인 방문신청 : <span class="fc_r">인터넷 발급 불가</span></td>
									</tr>
									<tr>
										<th scope="row" class="active">발급기간</th>
										<td>신청일로부터 14일 이내 : 자격취득사항 조회 및 확인에 시일이 더 소요될 수도 있습니다.</td>
									</tr>
									<tr>
										<th scope="row" class="active">신청대상</th>
										<td>국가기술자격법에 의한 기술자격과 동종동등한 다른법령에 의한 자격 취득자</td>
									</tr>
									<tr>
										<th scope="row" class="active">준비물</th>
										<td>
											<ul class="list">
												<li>구(舊)자격증 또는 면허증(분실한 경우 제외)</li>
												<li>신분증(주민등록증)</li>
												<li>사진(증명 또는 반명함, 자격증당 1매)</li>
												<li>수수료 : 인터넷 발급 : 3,100원 / 방문 발급 : 3,500원</li>
												<li>국가기술자격증발급신청서(공단에서 발급)</li>
												<li>대리신청의 경우 상기 준비물과 함께 대리인의 신분증</li>
											</ul>
										</td>
									</tr>
									<tr>
										<th scope="row" class="active">발급장소</th>
										<!-- 2015.03.17 jws :  이종용 대리 요청 url변경 http://www.hrdkorea.or.kr/5/4/2 ==> http://www.hrdkorea.or.kr/5/4/2/2  -->
										<!--  2015.12.29 jws : 이종용 대리 요청 자격시험센터 == >  지부지사로 변경 -->
										<!-- 2015.12.321 jws : 김종호대리 요청 URL변경http://www.hrdkorea.or.kr/5/4/2/2 === > http://www.hrdkorea.or.kr/5/4/2/1 -->
										<td>24개 지부 / 지사 <a
											href="http://www.hrdkorea.or.kr/5/4/2/1" target="_blank"
											title="새 창" class="btn4"><span>발급장소 상세안내</span></a></td>
									</tr>
								</tbody>
							</table>
						</div>
					<!-- //컨텐츠 내용 -->
      <!--  컨텐츠 끝 -->
      </div>
   </div>
   </div>
</article>