<%@ page contentType="application/json; charset=UTF-8" import="java.util.*"%>

<%
request.setCharacterEncoding("UTF-8");
String mid = request.getParameter("mid");
String mname = request.getParameter("mname");
String mpassword = request.getParameter("mpassword");
String[] arr = {mid, mname, mpassword};
%>

<%
List<String[]> members = (List<String[]>) application.getAttribute("members");
if(members == null) {
	members = new ArrayList<String[]>();
	application.setAttribute("members", members);
}
%>

<%
boolean exists = false;
for(String[] member : members) {
	String dbMid = member[0];
	if(dbMid.equals(mid)) {
		exists = true;
	}
}
%>

<%if(exists) {%>    
	{"state": "fail"}
<%} else {
	members.add(arr);%>
	{"state": "success"}
<%}%>

<%
System.out.println("[List에 저장된 멤버 정보]");
for(String[] member : members) {
	System.out.println(Arrays.toString(member));
}
%>





