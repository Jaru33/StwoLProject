<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
<link href="../css/Logout.css" rel="stylesheet" type="text/css">
</head>
<body>
	<jsp:useBean
	id="member"
	scope="session"
	class="spms.dto.MemberDto"
/>
	<jsp:include page="/Header.jsp" />
	
	<div class="wrap12">
	
		<div class="userwrap">
			<div class="title">&nbsp;&nbsp;�α׾ƿ�</div>
			<div class="userName">&nbsp;&nbsp;<%=member.getMname() %>��,</div><br>
			<div class="userText">&nbsp;&nbsp;���� �α׾ƿ� �Ͻðڽ��ϱ�?</div>
		</div>
		<div class="btn-list">
				<div class="btn-logout" onclick="logout()">��</div>
				<div class="btn-logout2" onclick="history_back()">�ƴϿ�</div>
		</div>
		
	</div>	
		
	<jsp:include page="/Footer.jsp" />	
	
	<script>
		function logout(){
			location.href = "${pageContext.request.contextPath}/auth/logout";		
		}
		function history_back(){
			history.back();
		}
	</script>
</body>
</html>