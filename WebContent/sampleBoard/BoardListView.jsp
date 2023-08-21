<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>샘플 게시판</title>
<style type="text/css">
.wrap1 {
	min-height: 100%;
	position: relative;
	padding-bottom: 220px;
	padding-top: 10px;
}

.header {
	margin: 0 auto;
	text-align: left;
	font-size: 30px;
	font-weight: bold;
	width: 600px;
}

table {
	margin: 0 auto;
	border-collapse: collapse;
	font-size: 13px;
	margin-top: 2px;
	width: 600px;
}

table tr {
	height: 30px;
	border-collapse: collapse;
	border-top: 1px solid #EAEAEA;
	border-bottom: 1px solid #EAEAEA;
}

#boardTh>td {
	font-weight: bold;
	border-collapse: collapse;
	background-color: #F6F6F6;
	border-top: 1px solid #EAEAEA;
	border-bottom: 1px solid #EAEAEA;
}

.boardNum, .writerId {
	text-align: center;
}

.boardTitle, .writeDate {
	text-align: left;
}

.viewsNo, .replyNo {
	text-align: right;
}

.boardTitle {
	color: blue;
}

input[name=add] {
	margin-left: 545px;
}

#className {
	width: 300px;
}

.paging {
	margin: 0 auto;
	width: 600px;
	text-align: center;
}

a {
	text-decoration: underline; /* 밑줄 추가 */
	cursor: pointer;
}

.search {
	margin: 0 auto;
	width: 600px;
}
</style>
<script type="text/javascript">
   		
		function pageMoveAdd(str){
			if(str==""){
				alert("로그인후 이용해주세요.")
				location.href= '../auth/login';
				return null;
			}
				var url = './add';
		         location.href= url;			
		}
		function pageDetail(no1,no2){
			
			var url = './detail?no1=' + no1 + '&no2=' + no2;
	         location.href= url;
		}
		
		function pageMove(no){
			var url = './list?pno=' + no;
	         
	         location.href= url;
		}
		function pagePrev(no){
			if(no-1 < 1){
				alert("첫페이지입니다.")
				return null;
			}
			location.href='./list?pno='+ (no-1);
			
		}
		function pageNext(no, no2){
			if((no+1) > no2){
				alert("마지막페이지입니다.")
				return null;
			}
			location.href='./list?pno='+ (no+1);
		}
		function searchForm(){
            var selectElement = document.getElementById('search');
            var selectedValue = selectElement.options[selectElement.selectedIndex].value;
			var searchValue = document.getElementsByName("searchOp2")[0].value;
			if(searchValue == null){
				alert("검색내용을 입력해주세요.");
				
			}else{
				location.href='./search?searchVal1='+ selectedValue + '&searchVal2=' + searchValue;
			}
			
		}
	</script>
</head>

<body>
	<jsp:include page="/Header.jsp" />
	<div class="wrap1">
		<div class="header">
			샘플 게시판 <input type='button' name="add" value="글쓰기"
				onclick='return pageMoveAdd("${sessionScope.member.getMname()}")'>
		</div>
		<table style="text-align: center;">
			<tr id="boardTh">
				<td class="boardNum" style="width: 30px">번호</td>
				<td width="240px">제목</td>
				<td class="writerId" style="width: 40px">작성자</td>
				<td class="writeDate" style="width: 60px">날짜</td>
				<td class="viewsNo" style="width: 30px">조회수</td>
				<td class="replyNo" style="width: 30px">댓글수</td>
			</tr>

			<c:forEach var="boardDto" items="${boardList}"
				begin='${requestScope.bi}' end='${requestScope.ei}'>

				<tr>
					<td class="boardNum">${boardDto.bNo}</td>
					<td class='boardTitle'><a
						onclick='pageDetail(${boardDto.bNo},${boardDto.no})'>${boardDto.cTitle}</a>
					</td>
					<td class="writerId">${boardDto.id}</td>
					<td class="writeDate">${boardDto.bModifiedDate}</td>
					<td class="viewsNo">${boardDto.bViewsNo}</td>
					<td class="replyNo">${boardDto.bReplyNo}</td>
				</tr>

			</c:forEach>

		</table>
		<div class="search">
			<form>
				<select id="search" name="searchOp1">
					<option value="CTITLE" selected="selected">제목</option>
					<option value="WMID">작성자</option>
				</select> <input type="text" name="searchOp2"> <input type="button"
					onclick="searchForm();" value='검색'>
			</form>
		</div>

		<div class="paging">
			<div class="pages">
				<a href="list?pno=0">[처음]</a> <a
					onclick='return pagePrev(${requestScope.currentPage});'>[이전]</a>
				<c:forEach var="pages" begin="${requestScope.startPagesNo}"
					end="${requestScope.endPagesNo - 1}">
					<span><a onclick='pageMove(${pages})'>${pages+1}</a></span>
				</c:forEach>
				<a onclick='return pageNext(${requestScope.currentPage},${requestScope.endPagesNo - 1});'>
					[다음] 
				</a> 
				<a href="list?pno=${requestScope.endPagesNo - 1}">[마지막]</a>
			</div>
		</div>
	</div>
	<jsp:include page="/Footer.jsp" />
</body>

</html>