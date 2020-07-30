<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

</head>
<body>
<%
String sql="select IDX, UNAME, USERID, USEREMAIL, USTAT from USERS ";
%>

<%@ include file="include/DBconn.jsp" %>

<%

String idNumber = request.getParameter("id");
out.print(idNumber);

String delSql = "delete from users where idx="+idNumber;
out.print(delSql);

stmt.executeQuery(delSql);
rsmd = rs.getMetaData();
//out.print("<script>window.location.href='index.jsp'</script>");
//out.print("<script>window.location.href='index.jsp'</script>");


%>
</body>
</html>
