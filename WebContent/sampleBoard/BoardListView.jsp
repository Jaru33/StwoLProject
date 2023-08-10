<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원 목록</title>
	
   	<script type="text/javascript">

	</script>	
</head>

<body>
<%--  	<jsp:include page="/Header.jsp"/> --%>
	<h1>셈플 게시판</h1>
	<p>
	<a href='./add'>신규 회원</a>
	</p>
<%-- <jsp:useBean --%>
<%-- 	id="memberList" --%>
<%-- 	scope="request" --%>
<%-- 	class="java.util.ArrayList" --%>
<%-- 	type="java.util.ArrayList<spms.dto.MemberDto>" --%>
<%-- /> --%>
	
	

	<c:forEach var = "memberDto" items="${memberList}">
	
	${memberDto.no},
	<a href='./update?no=${memberDto.no}'>${memberDto.name}</a>
	, ${memberDto.email}
	, ${memberDto.createDate}, 
	<a href='./delete?no=${memberDto.no}'>[삭제]</a>
	<br>
	
	</c:forEach>
	
<%--  	<jsp:include page="/Tail.jsp"/> --%>
</body>


</html>