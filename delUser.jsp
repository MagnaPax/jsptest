<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%
 request.setCharacterEncoding("UTF-8");
 //get 방식으로 들어온 오류 처리
 	String eid=request.getParameter("id");
   	String sql="";
    if(eid==null){
      out.print("<script>window.location.href='index.jsp'</script>");
      return;
    }else{
    //out.print("eid:"+eid);
    sql=" delete from USERS where idx='"+eid+"'";
    }
 %>
<%@ include file="include/DBconn.jsp" %>
<%
	out.print("<script>alert('Delete OK');window.location.href='index.jsp'</script>");
%>