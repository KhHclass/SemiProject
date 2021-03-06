<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");
%>
<jsp:useBean id="mdao" class="semi.member.MemberDAO" scope = "page"/>

<%
String type = request.getParameter("what");

if(type.equals("고객")) {
	String userid = request.getParameter("userid");
	String userpwd = request.getParameter("userpwd");
	String saveid = request.getParameter("saveid");
	int result = mdao.loginCheck(userid, userpwd);

	if(result==mdao.LOGIN_OK) {
		String username=mdao.getUserInfo(userid);
		session.setAttribute("sid", userid);
		session.setAttribute("sname", username);
		session.setAttribute("stype", type);
		
		if(saveid!=null) {
			Cookie ck = new Cookie("saveid", userid);
			ck.setMaxAge(60*60*24*30);
			response.addCookie(ck);
		} else {
			Cookie ck = new Cookie("saveid", userid);
			ck.setMaxAge(0);
			response.addCookie(ck);
		}
		
		%>
		<script>
		window.alert('<%=username%>님 환영합니다.');
		opener.location.reload();
		window.self.close();
		</script>
		
		<%
	}else if(result==mdao.NOT_ID) {
		%>
		<script>
		window.alert('아이디가 없거나 아이디나 비밀번호를 잘못 입력하셨습니다.');
		location.href='login.jsp';
		</script>
		<%
	}else if(result==mdao.NOT_PWD) {
		%>
		<script>
		window.alert('아이디가 없거나 아이디나 비밀번호를 잘못 입력하셨습니다.');
		location.href='login.jsp';
		</script>
		<%
		//요즘은 정보보안법에 따라 아아디나 비밀번호 중 뭐가 틀렸는지 알려주지 않도록 하고 있음.
	}else if(result==mdao.ERROR) {
		out.println("<h3>고객센터 연락바람~</h3>");
	}
	

} else {
	
	String userid = request.getParameter("userid");
	String userpwd = request.getParameter("userpwd");
	String saveid = request.getParameter("saveid");
	int result = mdao.loginceoCheck(userid, userpwd);

	if(result==mdao.LOGIN_OK) {
		String username=mdao.getCeoInfo(userid);
		session.setAttribute("sid", userid);
		session.setAttribute("sname", username);
		session.setAttribute("stype", type);
		
		if(saveid!=null) {
			Cookie ck = new Cookie("saveid", userid);
			ck.setMaxAge(60*60*24*30);
			response.addCookie(ck);
		} else {
			Cookie ck = new Cookie("saveid", userid);
			ck.setMaxAge(0);
			response.addCookie(ck);
		}
		
		%>
		<script>
		window.alert('<%=username%>님 환영합니다.');
		opener.location.reload();
		window.self.close();
		</script>
		
		<%
	}else if(result==mdao.NOT_ID) {
		%>
		<script>
		window.alert('아이디가 없거나 아이디나 비밀번호를 잘못 입력하셨습니다.');
		location.href='login.jsp';
		</script>
		<%
	}else if(result==mdao.NOT_PWD) {
		%>
		<script>
		window.alert('아이디가 없거나 아이디나 비밀번호를 잘못 입력하셨습니다.');
		location.href='login.jsp';
		</script>
		<%
		//요즘은 정보보안법에 따라 아아디나 비밀번호 중 뭐가 틀렸는지 알려주지 않도록 하고 있음.
	}else if(result==mdao.ERROR) {
		out.println("<h3>고객센터 연락바람~</h3>");
	}
	
}

%>