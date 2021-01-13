<%@ page contentType="text/html; charset=UTF-8"%>
    

<div>
	<%for(int i=6; i<=10; i++) {%>
		<img src="<%=application.getContextPath()%>/resources/images/photo<%=i%>.jpg" height="100px"/>
	<%}%>
</div>





