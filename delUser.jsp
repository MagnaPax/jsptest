<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

 <%
 	String eid=request.getParameter("id");
 
   	String sql="";
    if(eid==null){ //eid 가 없으면 업데이트 대상이 없으므로 뒤로 보내버리기
      out.print("<script>window.location.href='index.jsp'</script>");
      return;
    }else{
    sql = "delete USERS where idx="+eid;
    }
 %>
<%@ include file="include/DBconn.jsp" %>
<%
	out.print("<script>alert('Delete OK');window.location.href='index.jsp'</script>");

%>