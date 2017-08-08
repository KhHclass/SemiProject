<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!-- join 디자인 해놓은것입니다 누님같은행님 ^ㅡ^ -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
h1 {
	text-align: center;
	color: black;
}

body {
	height: 100%;
	min-height: 100%;
	background: #ececee;
	text-align: center;
}
#table1{
background-color: white;
display: inline-block;
height: 100em;
width: 50em;
border-spacing: 10px;
}
#maintable{
margin: 0px auto;
}
th{
height: 25px;
font-size: 15px;
text-align: left;
border: 1px solid black;
background-color: #e4e4e4;
}

td{
text-align: left;
}
#aa{
text-align: center;
}
</style>
</head>
<body>

<div id="table1">
<div><img src ="img/badal.jpg"></div>
<h1>배·민 회원가입</h1>
<form action="join_ok.jsp" name="join" method="post">
			<table id="maintable">
				<tr>
					<th>ID</th>
					<td><input type="text" name="id" 
					required="required" size="27" 
					readonly="readonly" onclick="openIdCheck()"></td>
					<td><input type="button" value="중복검사" onclick="openIdCheck"></td>
				</tr>

				<tr>
					<th>이름</th>
					<td><input type="text" name="name" required="required" size="27"></td>
				</tr>

				<tr>
					<th>비밀번호</th>
					<td><input type="password" name="password" required="required" placeholder="영문 ·숫자 (8~12) 조합" size="27">
					</td>
					
				</tr>

				<tr>
					<th>비밀번호 확인</th>
					<td><input type="password" name="pwd2" required="required" size="27"></td>
				</tr>

				<tr>
					<th>전화번호</th>
					<td><select name="tel1">
							<option value="010">010</option>
							<option value="011">011</option>
							<option value="017">017</option>
					</select> - <input type="text" name="tel2" size="4" maxlength="4" required="required"> -
						<input type="text" name="tel3" size="4" maxlength="4" required="required">
						<input type="hidden" name="tel">
						</td>
				</tr>

				<tr>
					<th>주소</th>
					<td><input type="text" name="address" size="27" readonly="readonly" onclick="findAddress()"></td>
					<td><input type="button" value="주소찾기" onclick="findAddress()"></td>
				</tr>

				<tr>
					<th>상세주소</th>
					<td><input type="text" name="address2" size="27" readonly="readonly"></td>
				</tr>

				<tr>
					<th>E-Mail</th>
					<td><input type="text" size="9" name="email1" required="required"> @ <input
						type="text" size="9" name="email2" required="required"></td>
					<td><select name="email3">
							<option value="0">직접입력</option>
							<option value="naver.com">naver.com</option>
							<option value="daum.net">daum.net</option>
					</select><input type="hidden" name="email"></td>
				</tr>

				<tr>
					<th>2차비밀번호 질문</th>
					<td><select name="ask" style="width:215px;">
							<option value="나의 첫 사랑은?">나의 첫사랑은?</option>
							<option value="나의 출신 초등학교는?">나의 초등학교 출신은?</option>
							<option value="내 보물 1호는?">내 보물 1호는?</option>
					</select></td>
				</tr>

				<tr>
					<th>2차비밀번호 답변</th>
					<td><input type="text" name="ans" size="27" required="required"></td>
				</tr>

				<tr>
					<td id="aa"align="center" colspan="3"><input type="button" onclick="javascript:aa()"value="회원가입">&nbsp&nbsp&nbsp&nbsp&nbsp<input
						type="reset" value="다시작성"></td>
				</tr>
			</table>
		</form>
</div>

</body>
</html>
