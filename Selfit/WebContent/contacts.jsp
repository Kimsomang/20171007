<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Selfit 제휴문의</title>
<link type="text/css" rel="stylesheet" href="css/common.css">
<script type="text/javascript">

function init() {
	document.getElementById("corpName").focus();
	document.getElementById("mobile").value = "- 를 포함하여 연락처를 입력해주세요."
	document
}

window.onload = function() {
	init();
}

function rsValue(takeData) {
	var value = "- 를 포함하여 연락처를 입력해주세요.";
	if(takeData == value) {
		document.getElementById("mobile").value = "";
	}
}

function setValue(takeData) {
	if(takeData.trim().length == 0 || takeData == null) {
		document.getElementById("mobile").value = "- 를 포함하여 연락처를 입력해주세요.";
	}
}

</script>
</head>
<body>
<div id="header">
	<%@ include file="header.jsp" %>
</div>
<div id="contents">
	<h3>SELFIT 제휴문의</h3>
	
	<form name="contactForm" method="post" action="control?action=contact">
	<div>
		<div><h5>신청서 작성하기</h5></div>
		<div>* 는 필수입력 사항입니다.</div>
		<div>* 업체명 : 
			<input type = "text" name = "corpName" id = "corpName" size="35">
		</div>
		<div>* 담당자 : 
			<input type = "text" name = "corpManager" id = "corpManager" size="35">
		</div>
		<div>* 연락처 : 
			<input type = "text" name = "mobile" id = "mobile" size="35"
			onclick="rsValue(this.value)" onblur="setValue(this.value)">
			</div>
		<div>* 이메일 : 
			<input type = "text" name = "email" id = "email" size="35"><br>
<pre>
제휴 문의 등록시 문의에 대한 회신 메일이 발송되오니,
수신 가능한 정확한 이메일로 등록 해주시기 바랍니다.
</pre>
		</div>
		<div><input type = "submit" value="문의등록">
		<input type = "reset" value="취소">
		</div>
	</div>
	</form>
</div>
<div id="footer">
	<%@ include file="footer.jsp" %>
</div>
</body>
</html>