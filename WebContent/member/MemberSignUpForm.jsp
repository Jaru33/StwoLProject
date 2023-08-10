<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>회원가입</title>
	<style type="text/css">
		
		#locbar_crop {
			width: 1903px;
			height: 36px;
			color: #333333;
			margin: 2px 0px 0px;
			border-bottom: 1px solid gray;
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
	}
	
	function inputIdInfoOnFocus() {
		var txtidObj = document.getElementById('txt_id');
		if(txtidObj.value == '아이디'){
			txtidObj.value = '';
		}
	}
	
	function inputIdInfoOnBlur() {
		var txtidObj = document.getElementById('txt_id');
		if(txtidObj.value == ''){
			txtidObj.value = '아이디';
		}
	}
	
	function inputPwdInfo() {
		var txtpwdObj = document.getElementById('txt_pwd');
		if (txtpwdObj.value == '비밀번호') {
			txtpwdObj.value = '';
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
		var txtpwdReInputObj = document.getElementById('txt_pwdReInput');
		if (txtpwdReInputObj.value == '비밀번호 재입력') {
			txtpwdReInputObj.value = '';
		}
	}
	
	function inputPwdReInfoOnFocus() {
		var txtpwdReInputObj = document.getElementById('txt_pwdReInput');
		if (txtpwdReInputObj.value == '비밀번호 재입력') {
			txtpwdReInputObj.value = '';
		}
	}
	
	function inputPwdReInfoOnBlur() {
		var txtpwdReInputObj = document.getElementById('txt_pwdReInput');
		if (txtpwdReInputObj.value == '') {
			txtpwdReInputObj.value = '비밀번호 재입력';
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
	
	function checkAllAgreeFnc() {
		var agreeObj document.getElementById('agree');
		for (var i = 0; i < 4; i++) {
			agreeObj.checked = true;
			if (agreeObj.checked = true) {
				var agreeList[i] = document.getElementsByTagName('input');
				for (var i = 0; i < agreeList[i].length; i++) {
					agreeList[i] = true;
				} else {
					
				}
				
				
			}
		}
	}
	
	function cancelButtonFnc() {
		history.back();
	}
	</script>

</head>

<body>
	<div id="locbar_crop">
		<div class="holder">
			<a href="" class="home">홈</a>
		</div>
	</div>
	
	<div id="tit_joinid">
		<h2 class="tit-join">
			옥션 회원가입
		</h2>
	</div>
	
	<div id="inputInfo">
		<p>1 정보입력</p>
		<div class="info-cont">
			<ul>
				<li class="entername_area">
					<input name="txt_name" type="text" 
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
					<input type="text" placeholder="아이디" 
					id="txt_id"
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
					<input type="password" value="비밀번호"
					id="txt_pwd"
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
					<span id="mobile_tell span">
						<select name="ddlMobileTell"
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
						<input type="text" name="휴대폰 두번째 자리"
							id="phoneNum2"
							>
						<span class="selectbox">-</span>
						<input type="text" name="휴대폰 세번째 자리"
							id="phoneNum3"
							>
					</span>
				</li>
				<li class="enteremail_area">
					<span></span>
					<input type="text" name="이메일 아이디" 
						placeholder="이메일"
						onclick="inputEmailInfo();"
						onfocus="inputEmailInfoOnFocus();"
						onblur="inputEmailInfoOnBlur();"
						id="email1">
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
			<p><input type="checkbox" id="all_agree" 
				onclick="AllagreeButtonFnc();">
					<label>전체 동의</label></p>
			<div id="agreeBox">
				<p><input type="checkbox" id="agree1">
					<label>옥션 이용약관</label>
					<span class="check_essential1">(필수)</span></p>
				<p><input type="checkbox" id="agree2">
					<label>전자금융거래 이용약관</label>
					<span class="check_essential2">(필수)</span></p>
				<p><input type="checkbox" id="agree3">
					<label>개인정보 수집 및 이용</label>
					<span  class="check_essential3">(필수)</span></p>
				<p><input type="checkbox" id="agree4">
					<label>만 14세 이상입니다</label>
					<span  class="check_essential4">(필수)</span></p>
				<p><input type="checkbox" id="agree5">
					<label>개인정보 제3자(판매자) 제공</label>
					<span class="check_select1">(선택)</span></p>
				<p><input type="checkbox" id="agree6">
					<label>개인정보 수집 및 이용</label>
					<span class="check_select2">(선택)</span></p>
				<p><input type="checkbox" id="agree7">
					<label>위치정보 이용약관</label>
					<span class="check_select3">(선택)</span></p>
				<p><input type="checkbox" id="agree8">
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
			<input type="submit" value="회원가입" onclick="">
		</div>
		
		<div id="memberCancelButton">
			<input type="button" value="취소" onclick="cancelButtonFnc();">
		</div>
	</div><!--buttonBox end-->
	
</body>
</html>