<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>친목게시글 수정</title>
	<style type="text/css">
		div{
			text-align: center;
		}
		table{
	
			text-align:left;
			border-collapse: collapse;
		}
		textarea{
			width:370px; 
			height:350px;
			resize: none;
		}
	</style>
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
	<div style="width:550px">
		<div style="height:30px; line-height: 30px;	">
			<h3><img src="../img/circle.jpg" width="25px"height="25px">친목게시판글수정<img src="../img/circle.jpg" width="25px"height="25px">
			</h3>
		</div>
		<div>
		<form action="update?no=${boardDto.bNo}" method="post">
			<table>
				<tr>
					<td width="50px">작성자</td>
					<td width="180px"><input type="text" name="id" style="width:170px"value="${boardDto.id}"></td>
					<td width="150px"></td>
					<td width="50px"></td>
				</tr>
				<tr>
					<td>제목</td>
					<td colspan="2"><input type="text" name="title"style="width:320px"value="${boardDto.cTitle}"></td>
					<td></td>
				</tr>
				<tr class="contentTr" height="350px">
					<td>내용</td>
					<td colspan="3"><textarea name="contents">${boardDto.bContents}</textarea></td>
				</tr>
			</table>
			<div>
				<input type="submit" value='수정하기'>
				<input type="button" value='삭제하기' onclick='pageMoveDeletFnc(${boardDto.bNo})'><br><br>
				<input type='button' value='게시글 목록보기' onclick='pageMoveListFnc();'>
			</div>
			</form>
		</div>
	</div>



<%--  	<jsp:include page="/Tail.jsp"/> --%>
</body>
</html>
