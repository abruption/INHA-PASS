<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>해외직구 통관조회 및 배송조회 :: INHA-PASS</title>
</head>
<body>

<!--  Header 부분 시작  -->
<jsp:include page="header.jsp" flush="false"></jsp:include>
<!--  Header 부분 종료  -->	

<div class="container">
	<div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 mgt30 detail-contents mgb30" style="word-wrap: break-word; padding: 0 5px;">
		<p><p class="ls2 lh6 bs5 ts4" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">
		<span class="emphasis" style="color: rgb(67, 116, 172); font-weight: bold;">('http://Inha-pass.com'이하 'Inha-pass')</span>
		은(는) 개인정보보호법에 따라 이용자의 개인정보 보호 및 권익을 보호하고 개인정보와 관련한 이용자의 고충을 원활하게 처리할 수 있도록 다음과 같은 처리방침을 두고 있습니다.</p>
		<p class="ls2 lh6 bs5 ts4" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">
		<span class="emphasis" style="color: rgb(67, 116, 172); font-weight: bold;">('Inha-pass')</span>&nbsp;은(는) 회사는 개인정보처리방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.</p>
		<p class="ls2" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">○ 본 방침은부터&nbsp;
		<span class="emphasis" style="color: rgb(67, 116, 172); font-weight: bold;">2019</span>년&nbsp;
		<span class="emphasis" style="color: rgb(67, 116, 172); font-weight: bold;">1</span>월&nbsp
	<span class="emphasis" style="color: rgb(67, 116, 172); font-weight: bold;">1</span>일부터 시행됩니다.</p>
	<br style="letter-spacing: -1px; color: rgb(119, 119, 119); font-family: &quot;Malgun Gothic&quot;;">
	<p class="lh6 bs4" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">
	<strong style="color: rgb(67, 116, 172);">1. 개인정보의 처리 목적&nbsp;
	<span class="emphasis"><Inha-pass>('http://Inha-pass.com'이하 'Inha-pass')</Inha-pass></span>은(는) 개인정보를 다음의 목적을 위해 처리합니다. 처리한 개인정보는 다음의 목적이외의 용도로는 사용되지 않으며 이용 목적이 변경될 시에는 사전동의를 구할 예정입니다.</strong></p>
	<p class="ls2" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">가. 홈페이지 회원가입 및 관리</p>
	<p class="ls2" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">회원 가입의사 확인, 회원제 서비스 제공에 따른 본인 식별·인증, 서비스 부정이용 방지, 각종 고지·통지 등을 목적으로 개인정보를 처리합니다.</p>
	<br style="letter-spacing: -1px; color: rgb(119, 119, 119); font-family: &quot;Malgun Gothic&quot;;"><p class="ls2" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">나. 재화 또는 서비스 제공</p>
	<p class="ls2" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">서비스 제공, 콘텐츠 제공 등을 목적으로 개인정보를 처리합니다.</p><br style="letter-spacing: -1px; color: rgb(119, 119, 119); font-family: &quot;Malgun Gothic&quot;;">
	<p class="lh6 bs4" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">
	<strong style="color: rgb(67, 116, 172);">2. 개인정보 파일 현황<br></strong></p>
	<p class="ls2" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">1. 개인정보 파일명 : 홈페이지 회원 관리<br>
	- 개인정보 항목 : 이메일, 비밀번호<br>
	- 수집방법 : 홈페이지<br>
	- 보유근거 : 정보주체의 동의<br>
	- 보유기간 : 회원탈퇴 전<br><br></p>
	<p class="lh6 bs4" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">
	<strong style="color: rgb(67, 116, 172);">3. 개인정보의 처리 및 보유 기간</strong><br><br>
	①&nbsp;<span class="emphasis" style="color: rgb(67, 116, 172); font-weight: bold;">('Inha-pass')</span>
	은(는) 법령에 따른 개인정보 보유·이용기간 또는 정보주체로부터 개인정보를 수집시에 동의 받은 개인정보 보유,이용기간 내에서 개인정보를 처리,보유합니다.<br>
	<br>② 각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.</p>
	<span style="color: rgb(119, 119, 119); font-family: &quot;Malgun Gothic&quot;; letter-spacing: -1px;">1.&lt;홈페이지 회원가입 및 관리&gt;</span>
	<br style="letter-spacing: -1px; color: rgb(119, 119, 119); font-family: &quot;Malgun Gothic&quot;;">
	<span style="color: rgb(119, 119, 119); font-family: &quot;Malgun Gothic&quot;; letter-spacing: -1px;">&lt;홈페이지 회원가입 및 관리&gt;와 관련한 개인정보는 수집.이용에 관한 동의일로부터&lt;회원탈퇴 전까지&gt;까지 위 이용목적을 위하여 보유.이용됩니다.</span>
	<br style="letter-spacing: -1px; color: rgb(119, 119, 119); font-family: &quot;Malgun Gothic&quot;;">
	<span style="color: rgb(119, 119, 119); font-family: &quot;Malgun Gothic&quot;; letter-spacing: -1px;">-보유근거 : 정보주체의 동의</span></p><p>
	<br style="letter-spacing: -1px; color: rgb(119, 119, 119); font-family: &quot;Malgun Gothic&quot;;">
	<p class="lh6 bs4" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">
	<strong style="color: rgb(67, 116, 172);">4. 정보주체와 법정대리인의 권리·의무 및 그 행사방법 이용자는 개인정보주체로써 다음과 같은 권리를 행사할 수 있습니다.</strong></p>
	<p class="ls2" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">
	① 정보주체는 Inha-pass에 대해 언제든지 개인정보 열람,정정,삭제,처리정지 요구 등의 권리를 행사할 수 있습니다.<br>
	② 제1항에 따른 권리 행사는Inha-pass에 대해 개인정보 보호법 시행령 제41조제1항에 따라 서면, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 Inha-pass은(는) 이에 대해 지체 없이 조치하겠습니다.<br>
	③ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.<br>
	④ 개인정보 열람 및 처리정지 요구는 개인정보보호법 제35조 제5항, 제37조 제2항에 의하여 정보주체의 권리가 제한 될 수 있습니다.<br>
	⑤ 개인정보의 정정 및 삭제 요구는 다른 법령에서 그 개인정보가 수집 대상으로 명시되어 있는 경우에는 그 삭제를 요구할 수 없습니다.<br>
	⑥ Inha-pass은(는) 정보주체 권리에 따른 열람의 요구, 정정·삭제의 요구, 처리정지의 요구 시 열람 등 요구를 한 자가 본인이거나 정당한 대리인인지를 확인합니다.</p>
	<br style="letter-spacing: -1px; color: rgb(119, 119, 119); font-family: &quot;Malgun Gothic&quot;;">
	<br style="letter-spacing: -1px; color: rgb(119, 119, 119); font-family: &quot;Malgun Gothic&quot;;">
	<p class="lh6 bs4" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">
	<strong style="color: rgb(67, 116, 172);">5. 처리하는 개인정보의 항목 작성&nbsp;</strong><br><br>①&nbsp;
	<span class="emphasis" style="color: rgb(67, 116, 172); font-weight: bold;">('http://Inha-pass.com'이하 'Inha-pass')</span>
	은(는) 다음의 개인정보 항목을 처리하고 있습니다.</p>
	<p class="ls2" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">1&lt;홈페이지 회원가입 및 관리&gt;<br>- 필수항목 : 이메일, 비밀번호<br><br></p>
	<br style="letter-spacing: -1px; color: rgb(119, 119, 119); font-family: &quot;Malgun Gothic&quot;;"><p class="lh6 bs4" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">
	<strong style="color: rgb(67, 116, 172);">6. 개인정보의 파기<span class="emphasis"><Inha-pass>('Inha-pass')</Inha-pass></span>은(는) 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.</strong></p><p class="ls2" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">-파기절차<br>이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.<br><br>-파기기한<br>이용자의 개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.</p><p class="ls2" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">-파기방법<br>DB삭제</p><br style="letter-spacing: -1px; color: rgb(119, 119, 119); font-family: &quot;Malgun Gothic&quot;;"><br style="letter-spacing: -1px; color: rgb(119, 119, 119); font-family: &quot;Malgun Gothic&quot;;"><p class="lh6 bs4" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;"><strong style="color: rgb(67, 116, 172);">7. 개인정보 자동 수집 장치의 설치•운영 및 거부에 관한 사항</strong></p><p class="ls2" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">Inha-pass 은 정보주체의 이용정보를 저장하고 수시로 불러오는 ‘쿠키’를 사용하지 않습니다.<br><br></p><p class="lh6 bs4" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;"><br></p><p class="lh6 bs4" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;"><strong style="color: rgb(67, 116, 172);">8. 개인정보 처리방침 변경</strong></p><p style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">①이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.</p><br style="letter-spacing: -1px; color: rgb(119, 119, 119); font-family: &quot;Malgun Gothic&quot;;"><br style="letter-spacing: -1px; color: rgb(119, 119, 119); font-family: &quot;Malgun Gothic&quot;;"><p class="lh6 bs4" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;"><strong style="color: rgb(67, 116, 172);">9. 개인정보의 안전성 확보 조치&nbsp;<span class="emphasis"><Inha-pass>('Inha-pass')</Inha-pass></span>은(는) 개인정보보호법 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고 있습니다.</strong></p><p class="ls2" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">1. 정기적인 자체 감사 실시<br>개인정보 취급 관련 안정성 확보를 위해 정기적(분기 1회)으로 자체 감사를 실시하고 있습니다.<br><br>2. 내부관리계획의 수립 및 시행<br>개인정보의 안전한 처리를 위하여 내부관리계획을 수립하고 시행하고 있습니다.<br><br>3. 개인정보의 암호화<br>이용자의 개인정보는 비밀번호는 암호화 되어 저장 및 관리되고 있어, 본인만이 알 수 있으며 중요한 데이터는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 사용하고 있습니다.<br><br>4. 접속기록의 보관 및 위변조 방지<br>개인정보처리시스템에 접속한 기록을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능 사용하고 있습니다.<br><br>5. 개인정보에 대한 접근 제한<br>개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여,변경,말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.</p><p class="ls2" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;"><br></p><p class="ls2" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;"><span style="font-weight: 700; color: rgb(67, 116, 172);">10. 통관알림서비스의 사용</span><br></p><p class="ls2" style="letter-spacing: -1px; margin-top: 0.5em; margin-bottom: 0.5em; padding: 0px; font-size: 14px; color: rgb(119, 119, 119); line-height: 1.6; word-break: keep-all; overflow-wrap: break-word; font-family: &quot;Malgun Gothic&quot;;">개인통관알림 서비스를 사용하는 경우 이메일은 통관알림 전송 용도로만 사용됩니다.<br></p></p>
	</div>
</div>

<!-- Footer 부분 시작 -->
 <jsp:include page="footer.jsp" flush="false" /> 
<!-- Footer 부분 종료 -->	

</body>
</html>