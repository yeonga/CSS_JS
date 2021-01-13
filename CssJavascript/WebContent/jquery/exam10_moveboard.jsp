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

<table class="table table-bordered">
	<thead>
		<tr style="background-color: orange;">
			<th>번호</th>
			<th>제목</th>
			<th>내용</th>
			<th>글쓴이</th>
			<th>날짜</th>
		</tr>
	</thead>
	<tbody>
		<%for(int i=start; i<=end; i++) {%>
		<tr>
			<td><%=i%></td>
			<td>제목<%=i%></td>
			<td>내용<%=i%></td>
			<td>글쓴이<%=i%></td>
			<td>2020.10.27</td>
		</tr>
		<%}%>
	</tbody>
</table>












