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
		String tclass="";
		for(int i=2;i<10;i++){
			int modResult=(i*j) % 10;
			// 연속 if
			switch(modResult){
				case 3:// yes
					tclass=" class='tred'";
					break;
				case 4:// no
					tclass=" class='tblue'";
					break;
				case 5:// no
					tclass=" class='tgreen'";
					break;
				default:
					tclass="";
				break;
			}
			
			out.print("<td "+tclass+">"+i*j+"</td>");
		}// end for 1
	%>
	</tr>
	<%
	}//end for 2
	%>	
</table>

		</div>
<jsp:include page="inc/bottom.jsp"></jsp:include>