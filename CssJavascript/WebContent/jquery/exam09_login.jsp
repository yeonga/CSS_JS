<%@ page contentType="application/json; charset=UTF-8"%>

<%-- 클라이언트가 보낸 요청 파라미터 값 얻기 --%>    
<%
String mid = request.getParameter("mid");
String mpassword = request.getParameter("mpassword");
%>

<%-- 로그인증 처리 --%>
<%
String result = null;
if(mid.equals("admin")) {
	if(mpassword.equals("12345")) {
		result = "success";
	} else {
		result = "wrongPassword";
	}
} else {
	result = "wrongId";
}
%>

<%-- 응답으로 JSON 보내기 --%>
{"state":"<%=result%>"}










