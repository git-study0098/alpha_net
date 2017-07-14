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
			<jsp:include page="wonseoLnb.jsp"/>
			<div id="lnb2"></div>
		</div>
		<!-- 좌측 메뉴바 끝-->
		
			<!-- 내용 부분 들어 가는 곳 입니다. 로케이션 수정하시고 하면 됩니다. -->
			<div id="content">
				<!-- location -->
				<div class="location">
					<ul>
						<li>홈</li>
						<li>원서접수</li>
						<li><strong>원서접수신청</strong></li>
					</ul>
				</div>
				<!-- //location -->

				<div class="content">
					<!-- 컨텐츠 타이틀 -->
					<h3 class="tit_content">
						원서접수 신청<span class="sel_subject">(응시종목:정보처리기사(필기))</span>
					</h3>
					<!-- //컨텐츠 타이틀 -->

					<!-- 컨텐츠 내용 -->
					<div class="step" id="rcvStep">
						<ul class="list01">
							<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_01.gif"
								alt=""><span>자격선택</span></li>
							<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_09.gif"
								alt=""><span>종목선택</span></li>
							<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_on_03.gif"
								alt=""><span>응시유형</span></li>
							<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_on_04.gif" alt=""><span>추가입력</span><span
								class="blind">현재단계 추가입력</span></li>
							<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_05.gif"
								alt=""><span>장소선택</span></li>
							<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_06.gif"
								alt=""><span>결제하기</span></li>
							<li><img src="<%=request.getContextPath()%>/resources/images/step/step_original_off_07.gif"
								alt=""><span>접수완료</span></li>
						</ul>
					</div>
				<form name="myfrm" method="post"
					action="rcv002.do?id=rcv00208&amp;gSite=Q&amp;gId=01&amp;rcvPFlag=Y&amp;gTitle="
					onsubmit="return;">
					<div class="tbl_normal test_details">
						<div class="examinee_img">
							<img name="photoName" id="photoId"
								src="<%=request.getContextPath()%>/resources/images/step/sora.jpg" title="소라 사진">
						</div>
						<table id="recptTable" summary="응시종목및등급, 면제과목, 장애여부에 대한 정보 제공"
							style="height: 161px;">
							<caption>응시유형 정보</caption>
							<colgroup>
								<col width="124px">
								<col width="600px">
							</colgroup>
							<tbody>
								<tr class="alterTr">
									<th scope="row">응시종목및등급</th>
									<td>정보처리기사</td>
								</tr>
								<tr class="alterTr">
									<th scope="row">면제과목</th>
									<td>면제과목없음</td>
								</tr>
								<tr class="alterTr">
									<th scope="row">장애여부</th>
									<td class="entry">

										<div class="obstacle_chk">해당없음</div>
									</td>
								</tr>
							</tbody>
						</table>
					</div>

					<div class="btn_center">
						<a href="#" class="btn2 btncolor1" onclick="location.href='3choice_jongmok.jsp'"><span>이전</span></a>
						<a href="#" class="btn2 btncolor1" onclick="location.href='5장소선택.jsp'"><span>다음</span></a>
					</div>
				</form>

			</div>
				<!--  컨텐츠 끝 -->
			</div>
		</div>
</article>