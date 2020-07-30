<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<title><%=session.getAttribute("id") %></title>
<jsp:include page="inc/top.jsp">
<jsp:param value="" name=""/>
</jsp:include>
	<div id="content" class="box">
	
<%-- <%@ include file="include/getCookie.jsp" --%>
<%@ include file="include/getSession.jsp" %>

<%
String sql=" select * from USERS ";
%>
<%@ include file="include/DBconn.jsp" %>
<%
rsmd = rs.getMetaData();
int colnum = rsmd.getColumnCount();
if(colnum > 0){// 메타데이터를 통하여 데이터 사전 정보 취득
	//out.print("<pre>데이터획득</pre>");
}
out.print("<table><tr>");
// 테이블 헤더 만들기
	for(int i=1;i<=colnum;i++){
		out.print("<th>"+rsmd.getColumnName(i)+"</th>");
	}	
	out.print("</tr>");
//테이블 데이터 만들기
	String colname=null;
while(rs.next()){
	out.print("<tr>");
	for(int i=1;i<=colnum;i++){
		//colname=rsmd.getColumnName(i);
		//rs.getString(colname)
		out.print("<td>"+rs.getString(i)+"</td>");
	}	
	out.print("</tr>");
}
out.print("</table>");
%>

<%@ include file="inc/class1.jsp" %>
<%@ include file="include/DBclose.jsp" %>




	</div>		
<jsp:include page="inc/bottom.jsp"></jsp:include>