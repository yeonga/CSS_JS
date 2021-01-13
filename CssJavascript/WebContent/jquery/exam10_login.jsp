<%@ page contentType="application/json; charset=UTF-8" import="java.util.*"%>

<%
request.setCharacterEncoding("UTF-8");
String mid = request.getParameter("mid");
String mpassword = request.getParameter("mpassword");
%>

<%
List<String[]> members = (List<String[]>) application.getAttribute("members");
if(members == null) {
	members = new ArrayList<String[]>();
	application.setAttribute("members", members);
}
%>

<%
boolean result = false;
for(String[] member : members) {
	String dbMid = member[0];
	String dbMpassword = member[2];
	if(dbMid.equals(mid) && dbMpassword.equals(mpassword)) {
		result = true;
	}
}
%>

<%if(result) {%>    
	{"state": "success"}
<%} else {%>
	{"state": "fail"}
<%}%>

<%
System.out.println("[List에 저장된 멤버 정보]");
for(String[] member : members) {
	System.out.println(Arrays.toString(member));
}
%>





