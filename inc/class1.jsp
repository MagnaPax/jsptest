<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- html 사이에 삽입할 때 사용 -->    
<%=sql %>
<br>
<!-- 여러줄 프로그램을 작동시킬 때 -->
<%
out.print(sql);
%>

<%!
// 선언만 할 수 있음. 
int a=3;

// 아래처럼 실행하려고 하는건 안돼
// out.print("Hello");
%>


