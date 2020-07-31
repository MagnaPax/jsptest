<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	
	<title>Home</title>
<%--<%@ include file="include/getCookie.jsp" %>--%>
<%@ include file="include/getSession.jsp" %>
<%@ include file="inc/top.jsp" %>

	<div id="content" class="box">

<%
String sql=" select IDX,UNAME,USERID,UEMAIL,USTAT from USERS ";
%>
<%@ include file="include/DBconn.jsp" %>

<%
rsmd = rs.getMetaData();
int colnum = rsmd.getColumnCount();
if(colnum > 0){// 메타데이터를 통하여 데이터 사전 정보 취득
	//out.print("<pre>데이터획득</pre>");
}
out.print("<div><a href='addUser.jsp'>사용자 추가</a></div>");
out.print("<table><tr>");
// 테이블 헤더 만들기
	out.print("<th>No</th>");
	for(int i=2;i<=colnum;i++){
		out.print("<th>"+rsmd.getColumnName(i)+"</th>");
	}
	out.print("<th>처리</th>");
	out.print("</tr>");
/********************************************************/		
//테이블 데이터 만들기
	String colname=null;
int rowNo=1;// 행번호
String idx=null;
while(rs.next()){
	out.print("<tr>");
	out.print("<td>"+rowNo+"</td>");//행번호 표시
	rowNo++;// 행번호 증가
	for(int i=2;i<=colnum;i++){
		//colname=rsmd.getColumnName(i);
		//rs.getString(colname)
		out.print("<td>"+rs.getString(i)+"</td>");
	}
	idx=rs.getString(1);
	out.print("<td><a href='editUser.jsp?id="+idx+"'>수정</a></td>"); // 어떤 것을 수정할 지 get 방식으로 id 전달
	out.print("</tr>");
}
out.print("</table>");
%>

<%@ include file="inc/class1.jsp" %>
<%@ include file="include/DBclose.jsp" %>
	</div>		
<jsp:include page="inc/bottom.jsp"></jsp:include>