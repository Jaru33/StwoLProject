<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>친목게시글 수정</title>

	<script type="text/javascript">
		function pageMoveListFnc(){
			location.href="./list";	
		}
		function pageMoveDeletFnc(no){
			var url = './delete?no=' + no;
			
			location.href= url;
		}
		
		
	</script>

</head>
<body>

<%-- 	<jsp:include page="/Header.jsp"/> --%>
	<h1>친목게시글 수정</h1>
	<form action='./update' method='post'>
		작성자<input type='text' name='name' value='${memberDto.no}' readonly='readonly'><br>
		제목<input type='text' name='title' 
			value='${memberDto.name}'><br>
		내용<input type='text' name='contents' value='${memberDto.email}'><br>
		가입일:${requestScope.memberDto.createDate}
		<br>
		<input type='submit' value='저장'>
		<input type='button' value='삭제' 
			onclick='pageMoveDeletFnc(${memberDto.no});'>
		<input type='button' value='회원목록으로' onclick='pageMoveListFnc();'>
	</form>
<%--  	<jsp:include page="/Tail.jsp"/> --%>
</body>
</html>
