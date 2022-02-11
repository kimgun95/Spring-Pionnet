<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>회원가입</title>

<style>
.container {
	width: 800px;
}

.main {
	width: 700px;
	border: 3px solid #87ceeb;
}

.inputDiv {
	width: 680px;
	padding: 2px;
	margin: 3px auto;
	border: 2px solid #c8c8d2;
}

.inputDiv_header {
	width: 200px;
	display: inline-block;
	background-color: #87ceeb;
	text-align: left;
}

.footer {
	width: 700px;
	text-align: center;
}

.footer_container {
	width: 300px;
	margin: 15px auto 0;
}

.footer_container input {
	width: 100px;
}
</style>
</head>
<script src="/js/jquery.js"></script>
<body>
	<div class="container">
		<form method="post" id="singUpForm" action="/member/signUp" enctype="multipart/form-data">
			<div class="main">
				<div class="inputDiv">
					<div class="inputDiv_header">
						<p>아이디
					</div>
					<input type="text" id="id" name="id"><input type="button"
						value="중복확인">
				</div>
				<div class="inputDiv">
					<div class="inputDiv_header">
						<p>패스워드
					</div>
					<input type="password" id="password" name="password">
				</div>
				<div class="inputDiv">
					<div class="inputDiv_header">
						<p>패스워드 확인
					</div>
					<input type="password" id="checkPwd" name="checkPwd">
					<span id="pwd_span"></span>
				</div>
				<div class="inputDiv">
					<div class="inputDiv_header">
						<p>이름
					</div>
					<input type="text" id="name" name="name">
				</div>
				<div class="inputDiv">
					<div class="inputDiv_header">
						<p>성별
					</div>
					<input type="radio" id="male" name="gender" value="남" checked><label
						for="male">남</label> <input type="radio" id="female" name="gender"
						value="여"><label for="female">여</label>
				</div>
				<div class="inputDiv">
					<div class="inputDiv_header">
						<p>생일
					</div>
					<input type="text" id="year" name="year" placeholder="년(4자)">
					<select id="month" name="month">
						<option value="1">1</option>
						<option value="2">2</option>
						<option value="3">3</option>
						<option value="4">4</option>
						<option value="5">5</option>
						<option value="6">6</option>
						<option value="7">7</option>
						<option value="8">8</option>
						<option value="9">9</option>
						<option value="10">10</option>
						<option value="11">11</option>
						<option value="12">12</option>
					</select> <input type="text" id="day" name="day" placeholder="일">
				</div>
				<div class="inputDiv">
					<div class="inputDiv_header">
						<p>이메일
					</div>
					<input type="text" id="emailId" name="emailId"> @ <select
						id="emailAddress" name="emailAddress">
						<option value="naver.com">naver.com</option>
						<option value="hanmail.com">hanmail.com</option>
						<option value="google.com">google.com</option>
						<option value="pionnet.co.kr">pionnet.co.kr</option>
					</select>
				</div>
				<div class="inputDiv">
					<div class="inputDiv_header">
						<p>휴대전화
					</div>
					<input type="text" id="phone" name="phone">
				</div>
				<div class="inputDiv">
					<div class="inputDiv_header">
						<p>주소
					</div>
					<input type="text" id="address" name="address">
				</div>
				<div class="inputDiv">
					<div class="inputDiv_header">
						<p>이미지
					</div>
					<input type="file" id="files" name="files">
				</div>
			</div>
			<div class="footer">
				<div class="footer_container">
					<input type="submit" value="가입"> <input type="button" value="취소">
				</div>
			</div>
		</form>
	</div>
	
<%--	<button onclick="testJson()">Json Test</button>--%>
	
	<script>

		// const testJson = function(){
		// 	console.log("`_~_~_~_");
		// }
	
		window.onload = function() {
 			document.getElementById('checkPwd').addEventListener('blur', function(){
 				var password = document.getElementById('password').value;
 				if(password === this.value) {
 					document.getElementById('pwd_span').innerHTML = '비밀번호가 일치합니다.';
 					document.getElementById("pwd_span").style.color = 'blue';
 				}else{
 					document.getElementById('pwd_span').innerHTML = '비밀번호가 일치하지 않습니다.';
 					document.getElementById("pwd_span").style.color = 'red';
 				}
			});
 			
 			$.ajax({
 				url: '/test/json',
 				data: JSON.Stringify({
 					name: 'test명'
 				}),
 				method: 'post'
// 				contentType : ''
 			})
		}
	</script>
</body>
</html>