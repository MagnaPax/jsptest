<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>JSP:2020</title>
	
<jsp:include page="inc/top.jsp"></jsp:include>

		<div id="content" class="box">
		
<table id="dataTable">
	<%
	// 3으로 나눠지면 class=tred 4로 나눠지면 tblue 5로 나눠지면 tgreen
	for(int j=1;j<10;j++){
	%>
	<tr>
	<% 
	//구구단 테이블 만들기
		out.print("<td>"+j+"단</td>");
		for(int i=2;i<10;i++){
			int result=i*j;
			// 연속 if
			if(result % 3==0){// yes
				out.print("<td class='tred'>"+i*j+"</td>");	
			}else if(result % 4==0){// no
				out.print("<td class='tblue'>"+i*j+"</td>");
			}else if(result % 5==0){
				out.print("<td class='tgreen'>"+i*j+"</td>");
			}else{
				out.print("<td>"+i*j+"</td>");
			}
			
		}// end for 1
	%>
	</tr>
	<%
	}//end for 2
	%>	
</table>

		</div>
<jsp:include page="inc/bottom.jsp"></jsp:include>