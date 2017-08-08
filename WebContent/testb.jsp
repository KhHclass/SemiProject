<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
body {
	height: 100%;
	min-height: 100%;
	width: 100%;
	background: #ececee;
	text-align: center;
	margin: 0px auto;
}

#wrap {
	width: 65em;
	height: 100em;
	display: inline-block;
	margin: 0px auto;
	background-color: white;
}

#login {
	text-align: right;
	margin-right: 40px;
	margin-bottom: 20px;
	font-family: "배달의민족 도현";
}

#headerLogo img {
	width: 300px;
	height: 250px;
	display: inline-block;
	float: left;
}

#headerImg img {
	width: 700px;
	height: 250px;
	display: inline-block;
}

#bodywrap {
	
}

#bodyList>ul {
	text-align: left;
	list-style: none;
	font-size: 30px;
	font-family: "배달의민족 도현";
	float: left;
	
}


</style>
</head>
<body>
	<div id="wrap">
		<div id="headerwrap">
			<div id="login">로그인 | 회원가입</div>
			<div id="headerLogo">
				<img src="/semi/img/badal.jpg">
			</div>
			<div id="headerImg">
				<img src="/semi/img/mainImg.jpg">
			</div>
		</div>
		<div id=bodywrap>
			<div id="bodyList">
				<ul>
					<li>공지사항</li>
					<br>
					<br>
					<li>쿠폰함</li>
					<br>
					<br>
					<li>고객센터</li>
				</ul>
			</div>
			<div id="bodyImg">
				<table>

					<tr>

						<td><a href="#"><img src="img/chicken.jpg"></a></td>
						<td><a href="#"><img src="img/jang.jpg"></a></td>
						<td><a href="#"><img src="img/pizza.jpg"></a></td>
						<td><a href="#"><img src="img/bunsik.jpg"></a></td>
					</tr>

					<tr>

						<td><a href="#"><img src="img/jokbal.jpg"></a></td>
						<td><a href="#"><img src="img/sushi.jpg"></a></td>
						<td><a href="#"><img src="img/dakbal.jpg"></a></td>
						<td></td>
					</tr>


				</table>
			</div>
		</div>
	</div>
</body>
</html>