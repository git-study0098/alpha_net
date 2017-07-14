<%@page import="com.last.common.vo.Notice1VO"%>
<%@page import="com.last.common.vo.PagingVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
   Integer pageNumber = (Integer)request.getAttribute("pageNumber");
   PagingVO viewData =
   (PagingVO)request.getAttribute("viewData");
%>

<script>
	function go_noticeDetail(noticeCode){
		alert("음");
		var noticeForm = document.noticeDetail;
		noticeForm.action = "/useInfoUpdateForm?notice_code="+noticeCode;
		noticeForm.submit();
	}	
</script>

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
					<li class="low active on"><a>이용안내</a>
						<ul style="display: block;">
							<li class="on"><a>사이트 이용방법</a></li>
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
					<li class="low"><a>관련학과 지정신청</a></li>
					<li><a>고객의 소리</a></li>
				</ul>
				<!-- menu리스트 끝 -->
			</div>
			<!-- 좌측 메뉴바 끝-->
			<div id="lnb2"></div>
		</div>
		<div id="content">
			<!-- location -->
			<div class="location">
				<ul>
					<li>홈</li>
					<li>고객지원</li>
					<li>이용안내</li>
					<li><strong>사이트 이용방법</strong></li>
				</ul>
			</div>
			<!-- //location -->
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">사이트 이용안내</h3>
				<!-- //컨텐츠 타이틀 -->

				<!-- 컨텐츠 내용 -->
				<div>
					<div class="searchType">
						<span> <label for="schType">검색</label> <select
							title="검색구분 선택" name="schType" id="schType" class="m0">
								<option value="A" selected="selected">전체</option>
								<option value="T">글제목</option>
								<option value="C">내용</option>
								<option value="U">글쓴이</option>
						</select> <input type="text" style="width: 150px" name="schText"
							id="schText" title="검색어 입력"> <a href="#"
							class="btn3_icon search" onclick="getUseInfoList(1)"><span
								class="blind">검색</span></a>
								<!-- useinfo List -->
						</span>
					</div>
					<form name="noticeDetail">
					<div id="viewList">
						<div class="tbl_type1">
							<table summary="번호, 제목, 작성자, 날짜 정보 제공"
								style="table-layout: fixed">
								<caption>각종서식 목록</caption>
								<colgroup>
									<col width="7%">
									<col width="*">
									<col width="16%">
									<col width="16%">
								</colgroup>
								<thead>
									<tr>
										<th scope="col">번호</th>
										<th scope="col">제목</th>
										<th scope="col">작성자</th>
										<th scope="col">날짜</th>
									</tr>
								</thead>
								<tbody>
<!-- 여기에 c:choose문 같은 반복문 써서 표시하면 될듯 합니다 . -->
									<!-- 게시판 테이블 내용 -->
										<c:choose>

										<c:when test="${viewData.notice1CountPerPage > 0 }">
										<c:forEach items="${viewData.notice1List }" var="notice" varStatus="number">
										<tr>
											<td>${number.count}</td> <!-- 글번호 -->
											<td><a href="<%=request.getContextPath() %>/useInfoUpdateForm?notice_code=${notice.notice_code }" >${notice.title}</a></td>
											<td>${notice.admin_code}</td>
											<td>${notice.regist_date}</td>
										</tr>
											<input type="hidden" value="${notice.notice_code}" name="noticeCode"/>
										</c:forEach>
										</c:when>
										<c:otherwise>
										<tr>
											<td style="text-align: center;">내용이 없습니다.</td>
										</tr>
										</c:otherwise>
										</c:choose>
																		
<!-- 									<tr> -->
<!-- 										<td>1</td> -->
<!-- 										<td><a href="#" -->
<!-- 											onclick="goNext('1005178', '1','Q006','1201')">콘크리트기사 출제기준(2016.1.1~2018.12.31)</a></td> -->
<!-- 										<td>NCS센터 NC..</td> -->
<!-- 										<td>2017.05.24</td> -->
<!-- 									</tr> -->
								</tbody>
							</table>
						</div>
						<div class="pagination1 mb20">
							<button type="button" class="btn3_icon3 btn_prev_first"
								onclick="goPage(1);" title="이전10페이지">
								<span class="blind">이전10페이지</span>
							</button>
							<button type="button" class="btn3_icon3 btn_prev_page"
								onclick="goPage(11);" title="이전 페이지">
								<span class="blind">이전 페이지</span>
							</button>
							
							<span class="page">
							<%
									for(int i = 1; i<viewData.getPageTotalCount()+1; i++){
										if(pageNumber==i){
								%>	
										<strong class="on" title="<%=i %>페이지"><%=i %></strong>
									<%
										
										}else{
									%>
										<button type="button" class="btn5" onclick="goPage(<%=i%>);"
											title="<%=i%>페이지">
											<span><%=i%></span>
										</button> 
										<% }
									}
								%>
							
<!-- 							 <strong class="on" title="1페이지">1</strong> -->
<!-- 								<button type="button" class="btn5" onclick="goPage(2);" -->
<!-- 									title="2페이지"> -->
<!-- 									<span>2</span> -->
<!-- 								</button> -->
<!-- 								<button type="button" class="btn5" onclick="goPage(3);" -->
<!-- 									title="3페이지"> -->
<!-- 									<span>3</span> -->
<!-- 								</button> -->
<!-- 								<button type="button" class="btn5" onclick="goPage(4);" -->
<!-- 									title="4페이지"> -->
<!-- 									<span>4</span> -->
<!-- 								</button> -->
<!-- 								<button type="button" class="btn5" onclick="goPage(5);" -->
<!-- 									title="5페이지"> -->
<!-- 									<span>5</span> -->
<!-- 								</button> -->
<!-- 								<button type="button" class="btn5" onclick="goPage(6);" -->
<!-- 									title="6페이지"> -->
<!-- 									<span>6</span> -->
<!-- 								</button> -->
							</span>
							
							<button type="button" class="btn3_icon3 btn_next_page"
								onclick="goPage(2);" title="다음 페이지">
								<span class="blind">다음 페이지</span>
							</button>
							<button type="button" class="btn3_icon3 btn_next_end"
								onclick="goPage(11);" title="다음10페이지">
								<span class="blind">다음10페이지</span>
							</button>
						</div>
					</div>
				</div>
				<!-- //컨텐츠 내용 -->
			</div>
		</div>
	</div>
</article>