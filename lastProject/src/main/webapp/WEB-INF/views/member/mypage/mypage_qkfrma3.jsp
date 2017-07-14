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
	
</style>
<article>
	<div id="container">
		<!-- 좌측 메뉴바 -->
		<div>
	<jsp:include page="mypageLnb.jsp" />
			<!-- 좌측 메뉴바 끝-->
			<div id="lnb2"></div>
		</div>

		<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
		<div id="content">
			  	<div class="location">
					<ul>
						<li>홈</li>

					<li>마이페이지</li>
					<li>발급조회현황</li>

						<li><strong>자격증 취득조회</strong></li>
					</ul>
				</div>
			<!-- //location -->
			<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">자격증 취득조회</h3>
				<div class="infoBox">
					<div>
						<p class="list">취득자격증의 자격증발급, 확인서발급이 필요한 경우 자격증/확인서를 방문해 주세요. 보다 친절한 행정서비스로 보답하겠습니다. 단, 공단에서 시행하지 않는 국가기술자격 종목은 관련 시행기관으로 문의하여 주시기 바랍니다.</p>
					</div>
					<span></span>
				</div>

<div id="bd01_01">


				<!-- 컨텐츠 내용 -->
				<div class="tbl_type1">
					<table summary="자격증 취득조회를 자격증번호, 자격명, 필기합격일자, 최종합격일자로 정보를 제공">
						<caption>자격증 취득조회 목록</caption>
						<colgroup>
							<col width="12%">
							<col width="*">
							<col width="10%">
							<col width="18%">
						</colgroup>
							<thead>
								<tr>
									<th scope="col">자격증번호</th>
									<th scope="col">자격명</th>
									<th scope="col">필기합격일자</th>
									<th scope="col">최종합격일자</th>
								</tr>
							</thead>
						<tbody>
				
								<tr>
									<td>16202130230U</td>
									<td class="txt_center">정보처리기사</td>
									<td>2016.05.19</td>
									<td>2016.07.15</td>
								</tr>
					
					</tbody>
				</table>
			</div>
			<!-- //컨텐츠 타이틀 -->
			<div class="pagination1">
									<div class="pagination1 mb20">
						<button type="button" class="btn3_icon3 btn_prev_first" title="이전10페이지"><span class="blind">이전10페이지</span></button>
						<button type="button" class="btn3_icon3 btn_prev_page" title="이전 페이지"><span class="blind">이전 페이지</span></button>
						<span class="page">
							<strong class="on" title="1페이지">1</strong>
						</span>
						<button type="button" class="btn3_icon3 btn_next_page" title="다음 페이지"><span class="blind">다음 페이지</span></button>
						<button type="button" class="btn3_icon3 btn_next_end" title="다음10페이지"><span class="blind">다음10페이지</span></button>
					</div>

			</div>
			<div class="btn_center">
				<button type="button" title="바로가기" class="btn2 btncolor1" onclick="goNext1();"><span>자격증 발급</span></button>
				<button type="button" title="바로가기" class="btn2 btncolor2" onclick="goNext2();"><span>확인서 신청</span></button>
			</div>
			
		<script>
		window.onload = function (){
			goMainChk("Y");
		};
		
		function goMainChk(flag) {
			if ("N" == flag){
				alert("잘못된 접근입니다.");
				self.location='/man001.do?gSite=Q';
			}
		}
		</script></div>

				<!-- //컨텐츠 내용 -->
			</div>
		</div>
		
	</div>
</article>