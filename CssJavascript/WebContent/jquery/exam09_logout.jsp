<%@ page contentType="application/json; charset=UTF-8"%>

<%-- 세션에 로그아웃 정보 제거 --%>
<%session.invalidate();%>

<%-- 응답으로 JSON 보내기 --%>
{"state":"success"}










