<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true"%>  
<style>
    #container {position: relative; width: 980px;margin: 0 auto;background: url(../images/common/bg_container.gif) repeat-y left top;}
   #lnb {padding-right:20px; float:left; padding-bottom:100px; width:205px; margin-right:30px}
   .main #content{float:left; margin:0 auto; width:725px;}
   #lnb{border-right:2px solid #ededee; box-shadow:1px 1px 5px #ededee; }
   
   
   #content {
    float: left;
    padding-bottom: 100px;
    width: 725px;
	}
   
   a {font-family: Malgun Gothic,'맑은고딕', '돋움',Dotum,'굴림',Gulim,Helvetica,sans-serif;text-decoration: none;}
   }
.slide_menu .slide_title > a {display:block; font-size:15px; font-weight:bold; color:#333; letter-spacing:-1px}
	.slide_menu .slide_title > a:hover, .slide_menu > li .slide_title > a:focus {color:#333}
   /* 서브메뉴 */
      /* 로그인 */
      .login_tab {margin-top:20px; margin-bottom:1px; overflow:hidden}
      .login_tab .btn {float:right; display:inline-block; color:#666}
      .login_tab .btn {background:#ddd}
      .login_tab .btn span {display:block; width:102px; padding:0; text-align:center; font-weight:bold; color:#666}
      .login_tab .btn:first-child {float:left}
      .login_tab .btn:hover, .login_tab .btn:focus, .login_tab .btn.on {background:#575757}
      .login_tab .btn.on span {color:#feffff}
      
      input[type="text"],input[type="password"] {height:15px; line-height:14px; padding:2px 5px; vertical-align:middle; border:1px solid #999; background:#f0f0f0; color:#666; font-size:12px}
      .blind {position:absolute; width:1px; text-align:left; font-size:0; line-height:0; text-indent:-999em}

      .login_area {position:relative; height:103px; padding:10px; border:1px solid #e1e1e1; background:#f3f3f3}
      .login_area > div {overflow:hidden}
      .login_area ul {float:right; margin:5px 0; overflow:hidden}
      .login_area ul li {float:left; margin-left:6px}
      .login_area input {width:102px; height:14px; border:1px solid #b8bcbf; border-right:1px solid #d1d6da; border-bottom:1px solid #d1d6da; background:#fff}
      .login_area input[type="text"] {margin-bottom:2px}
      .login_area .p_info {position:absolute; left:0; bottom:8px; padding:0 8px; line-height:12px; letter-spacing:-1px; font-size:11px; color:#757575}
      .login_area .my_list {margin:5px 0}
      .login_area .btn_login {position:absolute; top:10px; right:10px}
      .login_area .btn_login2 {position:absolute; bottom:10px}
      .login_area .btn_login3.btncolor1,
      .login_area .btn_lpoginapp {float:right}
      .login_area .btn_login3.btncolor2,
      .login_area .btn_loginsend {float:left}
      .login_area .welcom {margin-bottom:5px; border-bottom:1px solid #fff}
      .login_area .welcom p {height:18px; border-bottom:1px solid #e5e5e5; text-align:center; line-height:14px; font-size:12px} /* font : 11px -> 12px */
      
      .btn_login > span {width:65px; height:40px; font-size:13px; font-weight:bold; color:#fff; line-height:14px; vertical-align:middle}
      a.btn, a.btn2, a.btn4, a.btn3_type1, a.btn3_type2, a.btn3_type3, a.btn3_type4, a.btn3_icon, a.btn3_icon2, a.btn3_icon3, a.btn_login, a.btn_login2, a.btn_login3, a.btn_lpoginapp, a.btn_loginsend, a.btn_big, a.golink01 { display: inline-block;vertical-align: middle;text-indent: 0;}
      .btn_login > span {line-height:42px;}
      .btn_cerapp > span {padding-top:20px}
      .btn_login2 > span {line-height:16px;}
      .btn_login3 > span {line-height:16px;}
      .btn_lpoginapp > span {line-height:24px;}
      .btn_loginsend > span span {line-height:10px}
      .btn_loginsend > span strong {line-height:15px}
      .golink01 > span {line-height:12px}
      
      .btn_login {background: #2f5586;border: 1px solid #1f3e65;border-radius: 3px;}      
      .btn > span,.btn2 > span,.btn4 > span,.btn3_type1 > span,.btn3_type2 > span,.btn3_type3 > span,.btn3_type4 > span,.btn3_icon > span,
      .btn3_icon2 > span,.btn3_icon3 > span,.btn_login > span,.btn_login2 > span,.btn_login3 > span,.btn_cerapp > span,.btn_lpoginapp > span,
      .btn_loginsend > span,.btn_big > span,.btn_big2 > span,.golink01 > span {position:relative; display:inline-block; text-align:center; vertical-align:middle; white-space:nowrap}
      .btn > span, .btn2 > span, .btn4 > span {font-weight:bold; color:#fff}
      .btn > span {height:21px; padding:0 9px; font-size:12px} 
      
      .golink01 > span {padding-right:15px; height:16px; background:url(../images/common/bg_arrow2.png) right center no-repeat; font-size:11px; color:#666; letter-spacing:-1px; text-align:left; vertical-align:middle}
      .golink01 > span span {vertical-align:middle}
      
      
      /* 좌측메뉴 */
      .tit_lnb {margin:30px 0 20px; height:36px; background:url('../images/common/lnb_tit.gif') no-repeat left bottom; font-size:22px; color:#272727}
      .lnb {border-bottom:1px solid #ededee; margin-bottom:20px}
      .lnb > li {}
      .lnb > li > a {display:block; padding:5px 25px 0 0; height:23px; background:url('../images/common/lnb_arr_off.png') no-repeat 188px 10px; border-top:1px solid #ededee; font-size:15px; font-weight:bold; color:#333}
      .lnb > li > a:hover {padding-left:10px; background:#00477c url('../images/common/lnb_arr_on.png') no-repeat 188px 10px; color:#fff}
      .lnb > li.on > a {padding-left:10px; background:#00477c url('../images/common/lnb_arr_on.png') no-repeat 188px 10px; color:#fff}
      .lnb > li.low > a {background:url('../images/common/lnb_off.png') no-repeat 188px 12px}
      .lnb > li.low > a:hover {background:#00477c url('../images/common/lnb_on.png') no-repeat 188px 11px}
      .lnb > li.low.on > a {padding-left:10px; background:#00477c url('../images/common/lnb_on.png') no-repeat 188px 11px; color:#fff}
      .lnb > li.low.on > ul {display:block}
      .lnb > li > ul {margin-bottom:10px; border-top:1px solid #ededee}
      .lnb > li > ul > li {margin-top:7px; padding-left:16px; background:url(../images/common/lnb_bl.gif) no-repeat 10px 7px}
      .lnb > li > ul > li > a {display:inline-block; padding:2px 3px 5px 3px; font-size:12px; line-height:1.0em; color:#666}
      .lnb > li > ul > li > a:hover, .lnb > li > ul > li > a:focus {background:#00477c; color:#fff}
      .lnb > li > ul > li.on > a {background:#00477c; color:#fff}
      .lnb > li > ul > li > ul > li {margin-top:5px; padding-left:8px; background:url(../images/common/lnb_bl_s.gif) no-repeat 3px 7px}
      .lnb > li > ul > li > ul > li > a {display:inline-block; padding:1px 2px 4px; font-size:11px; line-height:1.0em; color:#666}
      .lnb > li > ul > li >ul > li > a:hover, .lnb > li > ul > li> ul > li > a:focus {background:#00477c; color:#fff}
      .lnb > li > ul > li > ul > li.on > a {background:#00477c; color:#fff}

      .lnb_scroll {height:285px; overflow-y:scroll}

      .lnb_btm_stats p {margin-bottom:5px; font-size:12px; color:#757575}
      .lnb_btm_stats a {display:block; height:38px; line-height:34px; background:#5c5c5c; color:#fff; text-align:center}

      /*.lnb_btm_bn {padding:15px 10px 0; border:1px solid #e1e1e1; background:url(../images/common/bg_btm_customer.gif) no-repeat 142px 18px #f9f9f9}*/
      .lnb_btm_bn.inq_ce {background:url(../images/common/bg_btm_inq.gif) no-repeat 138px 18px #f9f9f9}
      .lnb_btm_bn strong {font-size:14px; line-height:14px; color:#0091e4}
      .lnb_btm_bn.inq_ce strong {color:#74ad05}
      .lnb_btm_bn a {display:block}
      .lnb_btm_bn a > span {display:block; margin:5px 0 15px; font-size:11px; line-height:13px; color:#757575}
      .lnb_btm_bn a > span span {padding-right:17px; background:url(../images/common/bg_arrow2.png) no-repeat right center}
   
@media screen and (-webkit-min-device-pixel-ratio: 0){}
   .lnb > li > a {
       padding-top: 6px;
       height: 30px;
   }
}
</style>
<style>
	.content h3.tit_content {
    height: 32px;
    padding: 20px 0 20px;
    margin: 0 0 30px;
    font-size: 25px;
    color: #272727;
    line-height: 1.2em;
	}
	div, h1, h2, h3, h4, h5, h6, ul, ol, li, dl, dt, dd, p, form, fieldset, input, table, tr, th, td, button, textarea, select, thead, tbody, tfoot, pre, option {
    margin: 0;
    padding: 0;
    font-family: Malgun Gothic,'맑은고딕', '돋움', Dotum, '굴림',Gulim,Helvetica,sans-serif !important;
	}
a:-webkit-any-link {
    color: -webkit-link;
    cursor: auto;
    text-decoration: none;
}	
	h3 {
    display: block;
    font-size: 1.17em;
    -webkit-margin-before: 1em;
    -webkit-margin-after: 1em;
    -webkit-margin-start: 0px;
    -webkit-margin-end: 0px;
    font-weight: bold;
	}
</style>
<!-- location-->
<style>
.location {padding-top:9px; line-height:8px; font-size:11px; overflow:hidden}
.location ul {float:right}
.location ul:after {content:""; display:block; clear:both}
.location ul li {float:left; padding-left:12px; height:12px; background:url(../images/common/bg_bar10.gif) no-repeat 6px 1px; color:#757575}
.location ul li:first-child {background:none}
.location ul li a {/*position:relative; display:inline-block; top:-2px; */color:#757575}
.location ul li strong {/*position:relative; display:inline-block; top:-2px; */color:#333}
</style>
<!-- 컨텐츠안에 탭 -->
<style>
	.tabLayout{overflow: hidden}
	.tabLayout ul{overflow:hidden; float:left}
	.tabLayout ul li {float:left; position:relative; padding-bottom:22px; text-align:center}
    .tabLayout ul li.on {background:url('../images/common/bg_tab_blue_arr.gif') no-repeat center 34px}
	.tabLayout ul li a {display:block; height:28px; padding-left:20px; margin-left:1px; background:url('../images/common/bg_tab_gray.gif') no-repeat 0 0; line-height:20px; font-size:15px; color:#fff; }
	.tabLayout ul li a span {display:block; height:20px; padding:4px 20px 0 0; background:url('../images/common/bg_tab_gray_right.gif') no-repeat 100% 0}
	.tabLayout ul li:first-child a {margin-left:0}
	.tabLayout ul li.on a {background-image:url('../images/common/bg_tab_blue.gif'); font-weight:bold}
	.tabLayout ul li.on a span {background-image:url('../images/common/bg_tab_blue_right.gif')}
	.tabLayout ul li.on strong {display:block; height:28px; padding-left:20px; margin-left:1px; background:url('../images/common/bg_tab_blue.gif') no-repeat 0 0; line-height:20px; font-size:15px; color:#fff; }
	.tabLayout ul li.on strong span {display:block; height:20px; padding:4px 20px 0 0; background:url('../images/common/bg_tab_blue_right.gif') no-repeat 100% 0}
</style>
<style>
	.content h4{clear:both; padding:0; margin:-7px 0 8px; padding-left:12px; min-height:25px; background:url('../images/common/bl_h3.gif') no-repeat left 9px; font-size:15px; font-weight:bold; color:#333; line-height:25px; letter-spacing:-1px}
</style>
<!-- 내용 안에 대한 css입니다-->
<style>
	.slide_menu .slide_wrap {padding:10px 10px 5px; background:#f9f9f9; border-top:1px solid #e1e1e1; border-bottom:1px solid #e1e1e1; overflow:hidden; margin-bottom: 20px}
</style>
<!-- 테이블 css -->
<style>
.content ul.list > li, .pop_content ul.list > li {
	margin-bottom:10px;
    padding-left: 11px;
    background: url(../images/common/lnb_bl_s.png) no-repeat 1px 9px;
    line-height: 20px;
}

#content .cont_parbx .list{
	background: url(../images/common/lnb_bl_s.png) no-repeat 1px 9px;
}


.tbl_normal td {
    padding: 4px 10px 7px;
    font-size: 12px;
    line-height: 20px;
    word-break: break-all;
}
.tbl_normal th {padding:6px 10px 11px; font-size:13px; background:#f4f4f4; text-align:center; color:#000; line-height:1.2em}
.tbl_normal .thRight tbody th {text-align:right}
.tbl_normal {margin-bottom:20px; text-indent:0}

/*발급장소안내 버튼*/
.btn4 {
    background: #2f5586;
    border: 1px solid #1f3e65;
    border-radius: 3px;
}

/*기능사 인정불가능 종목css*/.list_bdrBox {padding:10px; color:#666; font-size:12px; border:1px solid #e1e1e1;line-height:25px}
</style>

<style>
	/*다운로드 이미지*/ a.btn3_icon.download {margin-right:4px; padding-right:26px; min-height:21px; background:url(../images/common/btn_download_bg.png) right center no-repeat; color:#757575; font-size:12px}
</style>

<style>
/*info박스 css*/
.infoBox {position:relative; margin-bottom:20px}
.infoBox div > p{margin-top:5px; font-size:12px; line-height:20px}
.infoBox > div {
    padding: 5px 30px 10px 10px;
    background: #f5f7fa;
    border: 1px solid #e1e1e1;
}

.content .cont_parbx {
    padding: 10px 10px 5px;
    margin-bottom: 40px;
    background: #f9f9f9;
    border-top: 1px solid #e1e1e1;
    border-bottom: 1px solid #e1e1e1;
    font-size: 13px;
}

.content .cont_parbx .whBox {
    margin-bottom: 5px;
    padding: 10px 10px 10px 15px;
    background: #fff;
    border: 1px solid #e1e1e1;
}

.content h5 {
    position: relative;
    padding: 0 0 0 12px;
    margin: 27px 0 10px;
    background: url(../images/common/bl_h5.gif) no-repeat left 6px;
    font-size: 13px;
    font-weight: bold;
    color: #333;
    line-height: 1.2em;
}

</style>
<!-- 공통 좌측메뉴에 관한 부분입니다. -->
<script>
   $(function(){
      var $lnb = $(".lnb");
      var $contH = $(document).find(".content").height();
      $("#lnb").css({"min-height":$contH});

      $lnb.find(">li >ul").each(function(){
         $(this).parent("li").addClass("low");
      });
      $lnb.find("> li > ul").hide();
      $lnb.find("> li.on > ul").show();
      $lnb.find("> li.on").addClass("active");

      $lnb.find("> li > a").click(function(){
         $lnb.find("> li").removeClass("on");
         if($(this).parent("li").find(">ul").css("display") == "none"){
            $lnb.find("> li").removeClass("on");
            $(this).parent("li").addClass("on");
            $(this).parent("li").find(">ul").slideDown("easeInOutQuart");
            $(this).parent("li").siblings().find(">ul").slideUp("easeInOutQuart");

         } else {
            $(this).parent("li").removeClass("on");
            $(this).parent("li").find(">ul").slideUp("easeInOutQuart");
         }

      });


      $lnb.find(">li").filter(":last").find("a:last").off('keydown').on('keydown', function (b) {
         if(b.keyCode == 9 && b.shiftKey) {
         } else if (b.keyCode == 9) {
            lnbReset();
         }
      });

      $lnb.find(">li").filter(":last").find(">a").off('keydown').on('keydown', function (b) {
         if(b.keyCode == 9 && b.shiftKey) {
         } else if (b.keyCode == 9) {
            if($(this).parent("li").find(">ul").css("display") == "none"){
               lnbReset();
            }
         }
      });

      $lnb.find(">li").filter(":first").find(">a").off('keydown').on('keydown', function (b) {
         if(b.keyCode == 9 && b.shiftKey) {
            lnbReset();
         } else if (b.keyCode == 9) {}
      });

      function lnbReset(){
         $lnb.find("> li").removeClass("on");
         $lnb.find("> li > ul").hide();
         $lnb.find("> li.active").addClass("on");
         $lnb.find("> li.active ul").show();
      }

      $lnb.find(">li>ul>li>ul>li>a").mouseenter(function(){
         $(this).closest("ul").parent("li").addClass("on");
      });
      /*
      .focusin(function(){
         $(this).mouseenter();
      });
      */

      $lnb.find(">li>ul>li>ul").mouseleave(function(){
         $(this).parent("li").removeClass("on");
      });

      $lnb.find(">li>ul>li>ul>li").filter(":last").find("a").off('keydown').on('keydown', function (b) {
         if(b.keyCode == 9 && b.shiftKey) {
         } else if (b.keyCode == 9) {
            $(this).closest("ul").parent("li").removeClass("on");
         }
      });
   })
</script>

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
		<div class="location">
				<ul>
					<li>홈</li>
					<li>원서접수</li>
					<li><strong>원서접수 안내</strong></li>
				</ul>
			</div>
		<div class="content">
				<!-- 컨텐츠 타이틀 -->
				<h3 class="tit_content">보수교육 갱신 등록폐지</h3>
				<!-- //컨텐츠 타이틀 -->
				<!-- 컨텐츠 내용 -->
				<h4>보수교육 갱신 등록폐지란?</h4>
				<div class="cont_parbx mb20">
					<p class="list">&nbsp&nbsp정부의 행정규제기본법에 의한 규제정비계획에 따라 기술자격취득자에 대한 보수교육 및 갱신등록 의무제도가 법률 제5890호(’99.2.8)로 폐지되었습니다.</p>
					<h5>폐지된 규정</h5>
					<div class="whBox">
						<ul class="list">
							<li>국가기술자격취득자 보수교육에 관한 규정 삭제(국가기술자격법 제4조3)</li>
							<li>국가기술자격취득자로 하여금 등록하고 매5년마다 갱신등록 하도록 한 규정을 삭제(국가기술자격법 제8조)</li>
							<li>국가기술자격취득자가 등록 또는 갱신등록을 하지 않을 때에는 일정한 기간 기술자격을 정지하도록 한 규정을 삭제(국가기술자격법 제12조4)</li>
						</ul>
					</div>
					<h5>규정폐지 후 효력</h5>
					<div class="whBox">
						<ul class="list">
							<li>보수교육 미이수 및 갱신등록 미필로 기술자격 유효기간이 경과 자의 자격 정지사항이 법률폐지 공포일로부터 일괄해지 되었으며, 자격증은 자격 유효 기간 및 정지사항과 관계없이 계속 유효합니다.
								<p class="impt"><strong>※ 이 법은 법률공포일(’99.2.8)부터 시행되었습니다.</strong></p>
							</li>
						</ul>
					</div>
				</div>
				<!-- //컨텐츠 내용 -->
				</div>
			<!--  컨텐츠 끝 -->
		</div>
	</div>
</article>