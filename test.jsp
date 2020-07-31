<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Home</title>
	
<jsp:include page="inc/top.jsp"></jsp:include>

		
		<div id="content" class="box">
<!-- html 주석 -->

<%
// 스크립트릿 :JSP 핵심 로직 작성 부분  주석등은 자바와 유사
// 단열주석
/*
다열주석
*/
String title="JAVA index 전문가 과정";
%>
<%=title %>
<br>
<%
// 분리된 스크립트릿 간에 연결성
for(int i=1;i<7;i++){
	%>
	<h<%=i %>>
	<%
		out.print(title); // 스크립트릿을 활용한 방식
	%>
	</h<%=i %>>
	<%
}
%>
		</div>		
<jsp:include page="inc/bottom.jsp"></jsp:include>