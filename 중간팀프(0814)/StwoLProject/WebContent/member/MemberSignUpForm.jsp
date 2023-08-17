<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<style type="text/css">
		
		#locbar_crop {
			color: #333333;
			margin: 2px 0px 0px;
		}
		
		#locbar_crop.holder {
			padding-left: 400px;
			margin-bottom: 10px;
		}
		
		#tit_joinid {
		
			width: 780px;
			height:70px;
			margin-left: 500px;
			margin-top: 30px;
			margin-bottom : 10px;
			background-color: #001437;
		}
	
		.tit-join {
			font-size: 35px;
			color: #fff;
			text-align: left;
			text-shadow:black;
			padding-top: 10px;
			margin-top: 85px;
			margin-left: 70px;
		}
		
		.tit-join {
			text-shadow: black;
		}
		
		#inputInfo {
			width: 940px;
			height: 412px;
			color: #333333;
			font: Gulim;
			font-size: 40px;
			padding: 32px 0px 3px;
			margin-left: 300px;
			border-bottom: 1px solid gray;
		}
		
		.info-cont > ul > li {
			margin-bottom: 16px;
			margin-left: 330px;
			font-size: 10px;
			float: none;
			
			
		}
		
		.info-cont > ul > li > input{
			padding : 4px 0px 7px 11px;
			color: gray;
		}
		
		#agreeInfo {
			width: 940px;
			height: 412px;
			color: #333333;
			font: Gulim;
			font-size: 40px;
			padding: 32px 0px 3px;
			margin-left: 300px;
			border-bottom: 1px solid gray;
		}
		
		#agreeBox {
			font-size: 15px;
			text-align: left;
		}
		
		#agree{
			font-size: 18px;
			margin-left: 350px;
			margin-top: 30px;
			margin-bottom : 10px;
		}
		.check_essential1 {
			color: gray;
			font-size: 12px;
		}
		
		.check_essential2 {
			color: gray;
			font-size: 12px;
		}
		
		.check_essential3 {
			color: gray;
			font-size: 12px;
		}
		
		.check_essential4 {
			color: gray;
			font-size: 12px;
		}
		
		.check_select1 {
			color: gray;
			font-size: 12px;
		}
		
		.check_select2 {
			color: gray;
			font-size: 12px;
		}
		
		.check_select3 {
			color: gray;
			font-size: 12px;
		}
		
		.check_select4 {
			color: gray;
			font-size: 12px;
		}
		
		#buttonBox {
			width: 940px;
			height: 412px;
			color: #333333;
			font: Gulim;
			font-size: 12px;
			padding: 32px 0px 3px;
			margin-left: 300px;
		}
		
		#buttonBox.memberAddButton {
			width: 215px;
			height: 48px;
			margin: 0;
			padding: 0;
			text-align: center;
		}
		
		#buttonBox.memberCancelButton {
			width: 215px;
			height: 48px;
			margin: 0;
			padding: 0;
			text-align: center;
		}
	</style>
	
	<script type="text/javascript">
	
	function inputNameInfo() {
		var txtnameObj = document.getElementById('txt_name');
		
		if(txtnameObj.value == '이름') {
			txtnameObj.value = '';
		}
		
// 		console.log($(this).val());
	}
	
	function inputNameInfoOnFocus() {
		var txtnameObj = document.getElementById('txt_name');
		
		if(txtnameObj.value == '이름') {
			txtnameObj.value = '';
		}
	}
	
	function inputNameInfoOnBlur() {
		var txtnameObj = document.getElementById('txt_name');
		
		if(txtnameObj.value == '') {
			txtnameObj.value = '이름';
		}
	}
	
	function inputIdInfo() {
		var txtidObj = document.getElementById('txt_id');
		if(txtidObj.value == '아이디'){
			txtidObj.value = '';
		}
		
		if(txtidObj.length < 4 || txtidObj.length > 12) {
			alert("띄어쓰기 없이 영문과 숫자를 혼합하여 4~12자를 사용할 수 있습니다.");
		}
		
		return false;
	}
	
	function inputIdInfoOnFocus() {
		var txtidObj = document.getElementById('txt_id');
		if(txtidObj.value == '아이디'){
			txtidObj.value = '';
			
		}
		
		if(txtidObj.length < 4 || txtidObj.length > 12) {
			alert("띄어쓰기 없이 영문과 숫자를 혼합하여 4~12자를 사용할 수 있습니다.");
		}
		
	}
	
	function inputIdInfoOnBlur() {
		var txtidObj = document.getElementById('txt_id');
		if(txtidObj.value == ''){
			txtidObj.value = '아이디';
		}
		
		if(txtidObj.length < 4 || txtidObj.length > 12) {
			alert("띄어쓰기 없이 영문과 숫자를 혼합하여 4~12자를 사용할 수 있습니다.");
		}
	}
	
	function inputPwdInfo() {
		var txtpwdObj = document.getElementById('txt_pwd');
		if (txtpwdObj.value == '비밀번호') {
			txtpwdObj.value = '';
		}
		
		if (txtpwdObj.length > 4 || txtpwdObj.length < 12) {
			alert("영문과 숫자를 혼합하여 4~12자 사용하여 입력해주세요.");
			
			return false;
		}
		
	}
	
	function inputPwdInfoOnFocus() {
		var txtpwdObj = document.getElementById('txt_pwd');
		if (txtpwdObj.value == '비밀번호') {
			txtpwdObj.value = '';
		}
	}
	
	function inputPwdInfoOnBlur() {
		var txtpwdObj = document.getElementById('txt_pwd');
		if (txtpwdObj.value == '') {
			txtpwdObj.value = '비밀번호';
		}
	}
	
	function inputPwdReInfo() {
		var txtpwdObj = document.getElementById('txt_pwd');
		var txtpwdReInputObj = document.getElementById('txt_pwdReInput');
		if (txtpwdReInputObj.value == '비밀번호 재입력') {
			txtpwdReInputObj.value = '';
		}
	}
	
	function inputPwdReInfoOnFocus() {
		var txtpwdObj = document.getElementById('txt_pwd');
		var txtpwdReInputObj = document.getElementById('txt_pwdReInput');
		if (txtpwdReInputObj.value == '비밀번호 재입력') {
			txtpwdReInputObj.value = '';
		}
	}
	
	function inputPwdReInfoOnBlur() {
		var txtpwdObj = document.getElementById('txt_pwd');
		var txtpwdReInputObj = document.getElementById('txt_pwdReInput');
		if (txtpwdReInputObj.value == '') {
			txtpwdReInputObj.value = '비밀번호 재입력';
		}
		

		if (txtpwdObj.value != txtpwdReObj.value) {
			alert('비밀번호가 일치하지 않습니다.')
		}
	}
	
	function inputEmailInfo() {
		var email1Obj = document.getElementById('email1');
		if (email1Obj.value == '이메일') {
			email1Obj.value = '';
		}
	}
	
	function inputEmailInfoOnFocus() {
		var email1Obj = document.getElementById('email1');
		if (email1Obj.value == '이메일') {
			email1Obj.value = '';
		}
	}
	
	function inputEmailInfoOnBlur() {
		var email1Obj = document.getElementById('email1');
		if (email1Obj.value == '') {
			email1Obj.value = '이메일';
		}
	}	
	
	function checkAllSelectFnc() {
		
		const checkBoxes 
			= document.querySelectorAll('input[name="checkAgree"]');
		
		const checked 
			= document.querySelectorAll('input[name="checkAgree"]:checked');
		
		const selectAll 
			= document.querySelector('input[name="checkAllSelect"]');
		
			if (checkBoxes.length === checked.length) {
				selectAll.checked = true;
			}else {
				selectAll.checked = false;
			}
	}

	function checkAllAgreeFnc(checkAllAgreeFnc) {
		
		const checkBoxes 
			= document.getElementsByName('checkAgree');
		
		checkBoxes.forEach((checkBoxes) => {
			checkBoxes.checked = checkAllAgreeFnc.checked;
		})
		
	}
	
	function joinformCheck() {
		
		var userName = document.getElementById('txt_name');
		var userId = document.getElementById('txt_id');
		var userPassword = document.getElementById('txt_pwd');
		var userPasswordRe = document.getElementById('txt_pwdReInput');
		var userEmailId = document.getElementById('email_id');
		var checkEssential1 = document.getElementById('agree1');
		var checkEssential2 = document.getElementById('agree2');
		var checkEssential3 = document.getElementById('agree3');
		var checkEssential4 = document.getElementById('agree4');
		var memberAddBtn = document.getElementById('memberAddButton');
		var agreeBoxObj = document.getElementById('agreeBox');
		var agreeList = agreeBoxObj.getElementsByTagName('input');
		
		var guideIdObj = document.getElementById('enter_guide_id');
	
		if (userName.value == '') {
			alert('이름을 입력해주세요.');
			userName.focus();
			
			return false;
		}
		
		if (userId.value == '') {
			alert('ID를 4자 이상 12자 이하로 입력해주세요');
			userId.focus();
			
			return false;
		} else if (userId.length < 4 || userId.length > 12 ) {
			alert('영문과 숫자를 혼합하여 4~12자 사용하여 입력해주세요.');
			userId.focus();
			
			return false;
		}
		
		if (userPassword.value == '') {
			alert('비밀번호를 재입력해주세요.');
			userPassword.focus();
			
			return false;
		}
		
		if (userPassword.length < 4 || userPassword.length > 12) {
			alert("영문과 숫자를 혼합하여 4~12자 사용하여 입력해주세요.");
			userPassword.focus();
			
			return false;
		}
		
		if (userPasswordRe.value == '') {
			alert('처음 설정한 비밀번호를 다시 입력해주세요');
			userPasswordRe.focus();
			
			return false;
		}
		
		if (userPasswordRe.value == userPassword.value) {
			alert('처음 설정한 비밀번호를 다시 입력해주세요');
			userPasswordRe.focus();
			
			return false;
		}
		
		if (userEmailId.value == '') {
			alert('이메일 주소를 확인해주세요.');
			userPassword.focus();
			
			return false;
		} 
		
		if (checkEssential1 == true && checkEssential2 == true &&
			checkEssential3 == true && checkEssential2 == true) {
			
			memberAddBtn.disabled = false;
			return false;
		} else {
			
			memberAddBtn.disabled = true;
			return true;
		}
		
		if (!checkEssential1.checked) {
			alert('1. 약관 동의를 체크해주세요.');
			
			return false;
		}
		
		
		
		if (!checkEssential2.checked) {
			alert('2. 약관 동의를 체크해주세요.');
			
			return false;
		}
		if (!checkEssential3.checked) {
			alert('3. 약관 동의를 체크해주세요.');
			
			return false;
		}
		if (!checkEssential4.checked) {
			alert('4. 약관 동의를 체크해주세요.');
			
			return false;
		}
			
		$('#signup').submit();
	}
	
	</script>

</head>

<body>

	<div id="locbar_crop">
		<div class="holder">
			<a href="../auth/login" class="home">홈</a>
		</div>
	</div>
	<hr>
	
	<div id="tit_joinid">
		<h2 class="tit-join">
			옥션 회원가입
		</h2>
	</div>
	<form action="signup" method="post">
	<div id="inputInfo">
		<p>1 정보입력</p>
		<div class="info-cont">
			<ul>
				<li class="entername_area">
					<input name="name" type="text" 
					id="txt_name" class="enter_name" 
					placeholder="이름"
					onclick="inputNameInfo();"
					onfocus="inputNameInfoOnFocus();" 
					onblur="inputNameInfoOnBlur();"
					>
					<br>
					<span class="err_name"></span>
				</li>
				<li class="enterid_area">
					<input type="text" name="id"
					placeholder="아이디" id="txt_id"
					onclick="inputIdInfo();"
					onfocus="inputIdInfoOnFocus();"
					onblur="inputIdInfoOnBlur();"
					>
					<br>
					<p class="enter_guide_id" style="display: none;">
						띄어쓰기 없이 영문과 숫자를 혼합하여 4~12자를 사용할 수 있습니다.
					</p>
					<p class="txt_id_1" style="display: none;">
						사용가능한 아이디입니다.
					</p>
					<p class="txt_id_error1" style="display: none;">
						이미 사용중인 아이디입니다.
					</p>
					
				</li>
				<li class="enterpwd_area">
					<input type="password" name="pwd"
					value="비밀번호" id="txt_pwd"
					oncancel="inputPwdInfo();"
					onfocus="inputPwdInfoOnFocus();"
					onblur="inputPwdInfoOnBlur();"
					>
					<span class="pw-guide">
						<a href="">비밀번호 도움말</a>
					</span>
					<p class="enter-guide" 
						style="display: block;">
						안전한 사용을 위해 영문, 숫자, 
						특수문자 조합 8~15자를 사용해주세요.
					</p>
					<p class="txt_pwd_1" style="display: none">
						완벽한 비밀번호 입니다.
					</p>	
					<p class="txt_pwd_2" style="display: none;"id="pwd_error">
						유추하기 쉬운 비밀번호입니다.
					</p>
				</li>
				<li class="enterpwd_area">
					<input type="password" value="비밀번호 재입력"
					id="txt_pwdReInput"
					onclick="inputPwdReInfo();"
					onfocus="inputPwdReInfoOnFocus();" 
					onblur="inputPwdReInfoOnBlur();" 
					>
				</li>
					<p class="txt_pwd_error1" style="display: none;">
						비밀번호가 일치하지 않습니다.
					</p>
				<li class="enterphonenum_area">
					<span name="phoneNum" id="mobile_tell span">
						<select name="phoneNumber1"
							id="ddlMobileTell"
							title="휴대폰 앞자리 선택">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="0130">0130</option>
							<option value="016">016</option>
							<option value="017">017</option>
							<option value="018">018</option>
							<option value="019">019</option>
						</select>
						<span class="selectbox">-</span>
						<input type="text" name="phoneNumber2"
							id="phoneNum2"
							>
						<span class="selectbox">-</span>
						<input type="text" name="phoneNumber3"
							id="phoneNum3"
							>
					</span>
				</li>
				<li class="enteremail_area">
					<span></span>
					<input type="text" name="email" 
						placeholder="이메일"
						onclick="inputEmailInfo();"
						onfocus="inputEmailInfoOnFocus();"
						onblur="inputEmailInfoOnBlur();"
						id="email_id">
					<span id="email_span">@</span>
					<select name="이메일 주소" id="email_Domain">
						<option>선택</option>
						<option>naver.com</option>
						<option>hanmail.net</option>
						<option>daum.net</option>
						<option>nate.com</option>
						<option>gmail.com</option>
						<option>hotmail.com</option>
						<option>직접입력</option>
					</select>
				</li>
			</ul>
		</div>
	</div><!--inputInfo end-->
	
	<div id="agreeInfo">
		<span>2 약관동의</span>
		<div id="agree">
							
			<div id="agreeBox">
				<p><input type="checkbox" name="checkAllSelect" id="all_agree" 
					onclick="checkAllAgreeFnc(this);">
					<label>전체 동의</label>
				</p>
				<p><input type="checkbox" name="checkAgree" id="agree1"
					value="essential1" onclick="checkAllSelectFnc();">
					<label>옥션 이용약관</label>
					<span class="check_essential1">(필수)</span></p>
				<p><input type="checkbox" name="checkAgree" id="agree2"
					value="essential2" onclick="checkAllSelectFnc();">
					<label>전자금융거래 이용약관</label>
					<span class="check_essential2">(필수)</span></p>
				<p><input type="checkbox" name="checkAgree" id="agree3"
					value="essential3" onclick="checkAllSelectFnc();">
					<label>개인정보 수집 및 이용</label>
					<span  class="check_essential3">(필수)</span></p>
				<p><input type="checkbox" name="checkAgree" id="agree4"
					value="essential4" onclick="checkAllSelectFnc();">
					<label>만 14세 이상입니다</label>
					<span  class="check_essential4">(필수)</span></p>
				<p><input type="checkbox" name="checkAgree" id="agree5"
					onclick="checkAllSelectFnc();">
					<label>개인정보 제3자(판매자) 제공</label>
					<span class="check_select1">(선택)</span></p>
				<p><input type="checkbox" name="checkAgree" id="agree6"
					onclick="checkAllSelectFnc();">
					<label>개인정보 수집 및 이용</label>
					<span class="check_select2">(선택)</span></p>
				<p><input type="checkbox" name="checkAgree" id="agree7"
					onclick="checkAllSelectFnc();">
					<label>위치정보 이용약관</label>
					<span class="check_select3">(선택)</span></p>
				<p><input type="checkbox" name="checkAgree" id="agree8"
					onclick="checkAllSelectFnc();">
					<label>혜택 알림 이메일, 문자, 앱 푸시 수신</label>
					<span class="check_select4">(선택)</span></p>
			</div>
		</div>
	</div>
	
	<div id="buttonBox">
		<span class="guide_txt1">
			<p>
				고객의 동의를 거부할 권리가 있으며 동의를 거부할 경우,
				 사이트 가입 또는 일부 서비스 이용이 제한됩니다.
			</p>
		</span>	
	
		<div id="memberAddButton">
			<input type="submit" value="회원가입" onclick="joinformCheck();">
		</div>
		</form>
		<div id="memberCancelButton">
			<input type="button" value="취소" 
				onclick='location.href = "../auth/Login.jsp"'>
		</div>
	</div><!--buttonBox end-->
	
</body>
</html>