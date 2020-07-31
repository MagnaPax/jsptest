<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("UTF-8");
 	//get 방식으로 들어온 오류 처리
 	String idx = request.getParameter("idx");
 	String uname = request.getParameter("uname");
 	String userid = request.getParameter("userid");
 	String userpw = request.getParameter("userpw");
 	String uemail = request.getParameter("uemail");
 	String ustat = request.getParameter("ustat");
 	String uauth = request.getParameter("uauth");

 	String sql = "";
 	if (idx == null) {// idx가 없으면 업데이트 대상이 없으므로 뒤로 돌아가기
 		out.print("<script>window.location.href='index.jsp'</script>");
 		return;
 	} else {
 		//out.print("eid:"+eid);
 		sql = " update USERS set uname='" + uname + "',userid='" + userid + "',userpw='" + userpw
 				+ "',uemail='" + uemail + "',ustat='" + ustat + "',uauth='" + uauth + "' where  idx='" + idx + "'";
 	}
 %>
<%@ include file="include/DBconn.jsp" %>
<%
	out.print(sql);
	out.print("<script>window.location.href='index.jsp'</script>");

 %>
