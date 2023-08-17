<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>샘플 게시판</title>
	<style type="text/css">
		table{
			border-collapse : collapse;
			font-size: 10px;
			margin-top: 2px;
		}
		table tr{
			height: 24px;
			border-collapse : collapse;
			border-top: 1px solid #EAEAEA;
			border-bottom: 1px solid #EAEAEA;
		}
		
		#boardTh > td{
			font-weight:bold;
			border-collapse : collapse;
			background-color: #F6F6F6;
			border-top: 1px solid #EAEAEA;
			border-bottom: 1px solid #EAEAEA;
		}
		.boardNum , .writerId{
			text-align: center;
		}
		.boardTitle , .writeDate{
			text-align: left;
		}
		.viewsNo , .replyNo{
			text-align: right;
		}
		.boardTitle{
			color: blue;
		}
		input[name = add]{
			margin-left: 385px;
		}
		#className{
			width:300px;
		}
	</style>
   	<script type="text/javascript">
   		
		function pageMoveAdd(no){ 
			
			var url = './add?no=' + no;
	         
	         location.href= url;
		}
		
		function pageMove(no){
			var url = './list?pno=' + no;
	         
	         location.href= url;
		}
		
		function pageDetail(no){
			var url='./detail?no='+no;
	         
	         location.href= url;
		}
		
	
	</script>	
</head>

<body>
<jsp:include page="/Header.jsp" />

	<div style="font-size: 30px; font-weight: bold">
		샘플 게시판
	</div>
	<input type='button' name="add" value="글쓰기" onclick='pageMoveAdd(${boardDto.no})'>
	<table>
		<tr id="boardTh">
			<td class="boardNum" width ="30px">번호</td>
			<td width ="240px">제목</td>
			<td class="writerId" width ="40px">작성자</td>
			<td class="writeDate" width ="60px">날짜</td>
			<td width ="30px">조회수</td>
			<td width ="30px">댓글수</td>
		</tr>
		
			<c:forEach var ="boardDto" items="${boardList}" begin='${requestScope.bi}' end='${requestScope.ei}'>
		
		<tr>
			<td class="boardNum">${boardDto.bNo}</td>
			<td class="boardTitle">
				<a onclick='pageDetail(${boardDto.no})'>${boardDto.cTitle}</a>
			</td>
			<td class="writerId">${boardDto.id}</td>
			<td class="writeDate">${boardDto.bModifiedDate}</td>
			<td class="viewsNo">${boardDto.bViewsNo}</td>
			<td class="replyNo">${boardDto.bReplyNo}</td>
		</tr>	
	
		</c:forEach>
		
	</table>
	
<!-- 	 <div class="page"> -->
<!--          <span><button onclick="backPageMove()">◀ 이전</button></span> -->
<!--          <span><a href="./list?pno=1">1</a></span> -->
<!--          <span><a href="#!">2</a></span> -->
<!--          <span><a href="#!">3</a></span> -->
<!--          <span><button onclick="nextPageMove()">다음 ▶</button></span> -->
<!--      </div> -->
<!-- 		<div class="pagination-wrapper clearfix"> -->
<!-- 			<ul class="pagination float--right" id="pages"> -->
<!-- 			</ul> -->
<!-- 		</div> -->
		<div>
		
			<c:forEach var = "pages" begin = "1" end="${totalPages}">
				<span><a onclick='pageMove(${pages})'>${pages}</a></span>
			</c:forEach>
			
		</div>
<%--  	<jsp:include page="/Tail.jsp"/> --%>
</body>

</html>