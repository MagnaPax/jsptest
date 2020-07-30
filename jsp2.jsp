<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSP:2020</title>
	
	<jsp:include page="inc/top.jsp"></jsp:include>
	
		<div id="content" class="box">

<table id="dataTable" border="1">
<tr>
<%
// 구구단 테이블 만들기
// 
for(int i=1 ; i<10 ; i++){
	for(int j=2 ; j<3 ; j++){
//		out.print(i + "*" + j + "=" + j*i);

		%>
		
		<td><%= i %></td>		
		<td><% out.print("*"); %></td>		
		<td><%= j %></td>		
		<td><% out.print("="); %></td>		
		<td><%= i*j %></td>
		<tr></tr>		
		
		<%
		
	}
}
%>
</tr>
</table>


<!-- 구구단 만들기 (정답) -->
<table id="dataTable">
	<%
	// 3으로 나눠지면 tred 4로 나누어지면 tblue 5로 나누어지면 tgreen
	for(int j=1 ; j<10 ; j++){
	%>
	<tr>
	<%		
		out.print("<td>"+j+"단</td>");
		String tclass="";
		for(int i=2 ; i<10 ; i++){
			int result = i*j;
			if(result%3==0){
				tclass = " class=\"tred\"";				
			}
			else if(result%4==0){
				tclass = " class=\"tblue\"";				
			}
			else if(result%5==0){
				tclass = " class=\"tgreen\"";				
			}
			else
				tclass = "";

			out.print("<td"+ tclass +">" + result + "</td>");
			
		}
	%>
	</tr>
	<%
	}
	%>
</table>


		
		
<jsp:include page="inc/bottom.jsp"></jsp:include>
		
