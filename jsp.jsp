<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSP:2020</title>
	
	<jsp:include page="inc/top.jsp"></jsp:include>
	
		<div id="content" class="box">


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
			int modResult = (i*j) % 10;
			
			switch(modResult){
				case 3:
					tclass = " class=\"tred\"";				
					break;
				case 4:
					tclass = " class=\"tblue\"";				
					break;
				case 5:
					tclass = " class=\"tgreen\"";				
					break;
				default:
					tclass = "";
					break;
			}

			out.print("<td"+ tclass +">" + i*j + "</td>");
			
		}
	%>
	</tr>
	<%
	}
	%>
</table>


		
		
<jsp:include page="inc/bottom.jsp"></jsp:include>
		
