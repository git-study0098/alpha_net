<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script type="text/javascript" src="resources/js/member.js"></script>
<title>Insert title here</title>
<% 
	request.setCharacterEncoding("UTF-8"); 
	String zipNo = request.getParameter("zipNo");
	String roadFullAddr = request.getParameter("roadAddrPart1");
	String addrDetail = request.getParameter("addrDetail");
	String inputYn = request.getParameter("inputYn"); 
%>
</head>
<script language="javascript">
// opener관련 오류가 발생하는 경우 아래 주석을 해지하고, 사용자의 도메인정보를 입력합니다. ("주소입력화면 소스"도 동일하게 적용시켜야 합니다.)
//document.domain = "/member/signup.jsp";

function init(){
	var url = location.href;
	var confmKey ="U01TX0FVVEgyMDE3MDYyODEzMzkzNjIyMTY3";
	var resultType = "4"; // 도로명주소 검색결과 화면 출력내용, 1 : 도로명, 2 : 도로명+지번, 3 : 도로명+상세건물명, 4 : 도로명+지번+상세건물명
	var inputYn= "<%=inputYn%>";
	if(inputYn != "Y"){
		document.form.confmKey.value = confmKey;
		document.form.returnUrl.value = url;
		document.form.resultType.value = resultType;
		document.form.action="http://www.juso.go.kr/addrlink/addrLinkUrl.do"; //인터넷망
		//document.form.action="http://www.juso.go.kr/addrlink/addrMobileLinkUrl.do"; //모바일 웹인 경우, 인터넷망
		document.form.submit();
	}else{
		opener.jusoCallback2("<%=zipNo%>","<%=roadFullAddr%>","<%=addrDetail%>");
		alert("여긴 안들오ㅇ니끼22")
		window.close();
		}
}
</script>
<body onload="init();">
	<form id="form" name="form" method="post">
		<input type="hidden" id="confmKey" name="confmKey" value=""/>
		<input type="hidden" id="returnUrl" name="returnUrl" value=""/>
		<input type="hidden" id="resultType" name="resultType" value=""/>
		<!-- 해당시스템의 인코딩타입이 EUC-KR일경우에만 추가 START-->
		<!-- 
		<input type="hidden" id="encodingType" name="encodingType" value="EUC-KR"/>
		 -->
		<!-- 해당시스템의 인코딩타입이 EUC-KR일경우에만 추가 END-->
	</form>
</body>
</html>