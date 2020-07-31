<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("UTF-8");
 	//get 방식으로 들어온 오류 처리
	String bidx	= request.getParameter("bidx");
	String btitle	= request.getParameter("btitle");
	String bwriter	= request.getParameter("bwriter");
	String bcontent= request.getParameter("bcontent");
	String bdate	= request.getParameter("bdate");
	String bsee	= request.getParameter("bsee");

 	String sql = "";
 	if (bidx == null) {// idx가 없으면 업데이트 대상이 없으므로 뒤로 돌아가기
 		out.print("<script>window.location.href='index.jsp'</script>");
 		return;
 	} else {
 		
 		
 		//out.print("eid:"+eid);
 		sql = " update BOARD set btitle='" + btitle + "',bwriter='" + bwriter + "',bcontent='" + bcontent
 				+ "',bdate=SYSDATE, bsee='" + bsee + "' where  bidx='" + bidx + "'";
 	}
 %>
<%@ include file="include/DBconn.jsp" %>
<%
	out.print("<script>alert('OK update');window.location.href='board.jsp'</script>");

 %>
