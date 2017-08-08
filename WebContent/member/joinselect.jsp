<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!--joinselect 테스트입니다요 형님  -->
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function join() {
		location.href = 'join.jsp';
	}
	function joinceo() {
		location.href = 'joinceo.jsp';
	}
</script>
<style>
body {
	height: 100%;
	min-height: 100%;
	background: #ececee;
	text-align: center;
}

#inner {
	width: 50em;
	height: 50em;
	background-color: white;
	margin: 0px auto;
}

h3 {
	margin-left: 100px;
	text-align: left;
	font-family: "굴림";
	margin-top: 0px;
}

#selectImg>img {
	width: 250px;
	height: 250px;
	display: inline-block;
}

h3 {
	font-family: "고딕";
	margin-top: 0px;
}

#selectImg {
	background-image: url("img/1.jpg");
	background-size: cover;
}
#zz{
cursor: pointer;
}
#yy{
cursor: pointer;
}
</style>

<script>
	function aa() {
		document.getElementById("zz").style.border = "1px solid red";
	}
	function bb() {
		document.getElementById("zz").style.border = "1px solid gray";
	}

	function cc() {
		document.getElementById("yy").style.border = "1px solid red";
	}
	function dd() {
		document.getElementById("yy").style.border = "1px solid gray";
	}
	
</script>
</head>
<body>
	<div class="wrapper">
		<div id="inner" style="border: 1px solid black">
			<img src="/semi/img/badal1.jpg" style="width: 600px; height: 250px;">
			<h3>가입유형을 선택해 주세요.</h3>
			<div id="selectImg">
				<img id="zz" onmouseover="aa()" onmouseout="bb()"
					src="../img/member.jpg" style="border: 1px solid gray;"> <img
					id="yy" onmouseover="cc()" onmouseout="dd()" src="../img/ceo.jpg"
					style="border: 1px solid gray;">
			</div>
		</div>
	</div>
</body>
</html>
