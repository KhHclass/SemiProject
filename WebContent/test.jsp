<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<!-- main 화면입니다요 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<style>
	body{
	width:1280px;
	height:1024px;
	margin: 0px auto;
	
	}


#footer {
	height: 50px;
	text-align: center;
}


﻿﻿#mainImg {
	overflow: hidden;
	vertical-align: middle;
	display: inline-block;
}

#mainImg ul {
	margin: 50px 50px;
}

#mainImg ul>li {
	font-size: 30px;
	list-style: none;
	font-family: '배달의민족 도현';
}

#list1 {
	float: left;
	overflow: hidden;
	width: 20%;
	height: 300px;
}

#list1 a {
	text-decoration: none;
	color: black;
}

#list2 {
	float: left;
	overflow: hidden;
	width: 80%;
	height: 50%;
}

#list2 img {
	width: 300px;
	height: 300px;
}
</style>
	<div id="wrapper">
		<%@include file="header.jsp" %>
		<div id="mainImg">
			<div id="list1">
				<ul>
					<li><a href="http://www.naver.com">공지사항</a></li>
					<br>
					<br>
					<li><a href="#">쿠폰함</a></li>
					<br>
					<br>
					<li><a href="#">고객센터</a></li>
				</ul>
			</div>
			<div id="list2">
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

		<div id="footer">Copyright &copy; 먹자. All Rights Reserved.</div>
	</div>
</body>
</html>