<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>친목게시판글쓰기</title>
</head>

<body>
<%-- 	<jsp:include page="/Header.jsp"/> --%>
	<h1>친목게시판글쓰기</h1>
	<form action="add" method="post">
		작성자<input type="text" name="name"><br>
		제목<input type="text" name="title"><br>
		내용<input type="text" name="contents"><br>
		<input type="submit" value="등록하기">
		<input type="reset" value="게시글 목록보기">
	</form>



<%--  	<jsp:include page="/Tail.jsp"/> --%>
</body>


</html>