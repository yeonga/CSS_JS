<%@ page contentType="text/html; charset=UTF-8"%>

<%
int no = Integer.parseInt(request.getParameter("no"));
%>

<%
int start = 0;
int end = 0;
if(no == 1) {
	start = 1;
	end = 8;
} else if(no == 2) {
	start = 9;
	end = 16;
}
%>

<div>
	<%for(int i=start; i<=end; i++) {%>
		<img width="140px" 
			 height="110px"
			 src="<%=application.getContextPath()%>/resources/images/photo<%=i%>.jpg"
			 style="margin-right:2px; margin-bottom:2px;"/>
	<%}%>
</div>












