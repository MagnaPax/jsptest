<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

String loger = (String)session.getAttribute("sess_name");

String logbox=null;
if(loger==null){
	// 쿠키탐색후에 로그인한 사람을 찾을수 없을때
	logbox="로그인 해주세요";
}else{
	logbox=loger+"님 환영합니다.<a href='logoutc.jsp'>logout</a>";
}
out.print("<pre>"+logbox+"</pre>");
%>