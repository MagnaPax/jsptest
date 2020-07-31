<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%
 	String idx = request.getParameter("idx");

 	String uname = request.getParameter("uname");
 	String userid = request.getParameter("userid");
 	String userpw = request.getParameter("userpw");
 	String uemail = request.getParameter("uemail");
 	String ustat = request.getParameter("ustat");
 	String uauth = request.getParameter("uauth");

 	String sql = "";
 	if (userid == null) {// idx가 없으면 업데이트 대상이 없으므로 뒤로 돌아가기
 		out.print("<script>window.location.href='index.jsp'</script>");
 		return;
 	} else {
 		//out.print("eid:"+eid);
 		sql = " insert into USERS (idx,uname,userid,userpw,uemail,ustat,uauth) values (SEQUENCE1.NEXTVAL,'"+uname+"','"+userid+"','"+userpw+"','"+uemail+"','"+ustat+"','"+uauth+"')";
 	}
 %>
<%@ include file="include/DBconn.jsp" %> <%----%>
<%
	out.print(sql);
	out.print("<script>window.location.href='index.jsp'</script>");

 %>
