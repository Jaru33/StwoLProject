<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="../css/ShowID.css" rel="stylesheet" type="text/css">
</head>
<body>
	<jsp:include page="/Header.jsp" />
	
	<div class="wrap11">
	
		<div id="showIdWrap">
		<div id="showIdHeader">ȸ������ ����</div>
		<div id="showIdContent1">ȸ�������� ȯ���մϴ�.</div>
	</div>
	
	<div id="BtnList">
		<div id="LoginBtn" onclick="LoginPage()">�α���</div>
		<div id="JoinBtn" onclick="JoinPage()">ȸ������</div>
	</div>
	
	</div>
	
	<jsp:include page="/Footer.jsp" />
	
	<script type="text/javascript">
		function LoginPage(){
			location.href = "./Login.jsp";
		}
		function JoinPage(){
			location.href = "../member/signup";
		}
	</script>
</body>
</html>