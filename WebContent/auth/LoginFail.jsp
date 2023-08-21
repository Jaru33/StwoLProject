<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
	<link href="../css/Login.css" rel="stylesheet" type="text/css">
	<jsp:useBean
	id="member"
	scope="session"
	class="spms.dto.MemberDto"
	/>
</head>
<body>
	
	<jsp:include page="/Header.jsp" />
	
	<div class="wrap11">
	
	<div class="div-htag">
		<p>�α���</p>
	</div>
	
	<div class="content-wrap">
	<div class="login-wrap">
		<div class="user-select">
			<div class="user1" onclick="inputbox1()">ȸ��</div>
			<div class="user2" onclick="inputbox2()">��ȸ�� �ֹ���ȸ</div>
		</div>
		
		<div>
			<div style="width:360px; height: 20px; font-size:13px; color: #e63740; text-align:center; line-height: 20px; display: block; padding:4px 0 12px; margin-top:10px;">
				���̵� �Ǵ� ��й�ȣ�� ��Ȯ���� �ʽ��ϴ�.
			</div>
		</div>
	
		<form class="form-login" name="loginForm" action="./login" method="post">
			<input type="text" name="mid" placeholder="���̵�" class="input-id" style="margin-top:0;"><br>
			<input type="password" name="pwd" placeholder="��й�ȣ" class="input-pw"><br> 
			<input type="button" value="�α���" class="input-btn" onclick="check()">
			<br>
		</form> 
	</div>
	
	<div class="ad-side">
		<div style="text-align:center; font-size:25px; font-weight: bold; margin-top: 60px;">
			�޴��� ��ȣ�� <span style="color: orange;">�α���</span>�ϱ� <br>
		</div>
	</div>
	
	
	<div class="div-userinput">
			<div class="div-checkbox">
				<input class="input-checkbox" type="checkbox"><span style="line-height: 46px;">���̵� ����</span>
				<div class="a-list">
				<a href="#" style="font-size: 13px; line-height: 46px; text-decoration: none;">���̵�ã�� | </a> 
				<a href="#" style="font-size: 13px; line-height: 46px; text-decoration: none;">��й�ȣã�� | </a>
				<a href="#" style="font-size: 13px; line-height: 46px; text-decoration: none;">ȸ������</a>
				</div>
			</div>	
		</div>
		
		
		<br />
		<input type="submit" value="īī���� �����ϱ�" 
		style="width:360px; height:50px; background-color:yellow; 
		color:black; border:none; padding:0;"><br>
		
		</div>
		</div>
 		<jsp:include page="/Footer.jsp" />
		
		
		
<script type="text/javascript">
	
	function inputbox1(){
		var inputChange1 = document.getElementsByClassName('input-id')[0];
		inputChange1.setAttribute('placeholder','���̵�');
		
		var inputChange2 = document.getElementsByClassName('input-pw')[0];
		inputChange2.setAttribute('placeholder','��й�ȣ');
		
		var inputChange3 = document.getElementsByClassName('input-btn')[0];
		inputChange3.setAttribute('value','�α���');
		
		var selectBox = document.getElementsByClassName('user1')[0];
		selectBox.setAttribute('style','border: 1px solid black; border-bottom-style: none;');
		
		var selectBox2 = document.getElementsByClassName('user2')[0];
		selectBox2.setAttribute('style','border: 1px solid #f3f3f3; background-color: #f3f3f3;');
	}
	
	function inputbox2(){
		var inputChange1 = document.getElementsByClassName('input-id')[0];
		inputChange1.setAttribute('placeholder','�ֹ��ڸ�');
		
		var inputChange2 = document.getElementsByClassName('input-pw')[0];
		inputChange2.setAttribute('placeholder','�޴��� ��ȣ');
		
		var inputChange3 = document.getElementsByClassName('input-btn')[0];
		inputChange3.setAttribute('value','�ֹ����� ��ȸ�ϱ�');
		
		var inputForm = document.getElementsByClassName('form-login')[0];
		inputForm.setAttribute('style','height: 154px;');
		
		var selectBox = document.getElementsByClassName('user1')[0];
		selectBox.setAttribute('style','border: 1px solid #f3f3f3; background-color: #f3f3f3;');
		
		var selectBox2 = document.getElementsByClassName('user2')[0];
		selectBox2.setAttribute('style','border: 1px solid black; border-bottom-style: none; color:black; background-color:white;');
	}
	
	var inputID = document.getElementsByClassName('input-id')[0];
	var inputPW = document.getElementsByClassName('input-pw')[0];
	
	
	function check(){
		var form = document.loginForm;
		
		if (inputID.value === '') {
			alert('ȸ��ID�� �Է��� �ּ���.');
			form.mid.focus();
	        return false;
		} else if(inputPW.value === ''){
			alert('��й�ȣ�� �Է��� �ּ���.');
			form.pwd.focus();
			return false;
		}
		form.submit();
	}
</script>
</body>
</html>

