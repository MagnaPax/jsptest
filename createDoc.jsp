<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 	request.setCharacterEncoding("UTF-8");
 	//get 방식으로 들어온 오류 처리

 	String btitle = request.getParameter("btitle");
 	String bwriter = request.getParameter("bwriter");
 	String bcontent = request.getParameter("bcontent");
 	String bdate = request.getParameter("bdate");


 	String sql = "";
 	if (btitle == null) {// btitle가 없으면 업데이트 대상이 없으므로 뒤로 돌아가기
 		out.print("<script>window.location.href='board.jsp'</script>");
 		return;
 	} else {
 		//out.print("eid:"+eid);
 		sql = " INSERT INTO BOARD (BIDX, BTITLE, BWRITER, BCONTENT, BDATE, BSEE) VALUES (BOARD_SEQ.NEXTVAL,'"+btitle+"','"+bwriter+"','"+bcontent+"',SYSDATE,'0')";
 	}
 %>
<%@ include file="include/DBconn.jsp" %> <%----%>
<%
	out.print(sql);
	//out.print("<script>window.location.href='board.jsp'</script>");

 %>
