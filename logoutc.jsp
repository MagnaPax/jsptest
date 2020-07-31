<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

// 쿠키 로그아웃
session.invalidate();
String myname=null;
//세션이 살아있는지 확인
if(request.isRequestedSessionIdValid()){//session==null||
	myname=(String)session.getAttribute("sess_name");
}
String cmsg=null;

if(myname==null){
	cmsg="로그아웃 완료";
}
/*
Cookie[] cs=request.getCookies();

if(cs!=null){
	for(Cookie c:cs){
		if(c.getName().equals("login_name")){
			c.setMaxAge(0);
			c.setPath("/");
			response.addCookie(c);
			cmsg="로그아웃 완료";
		}
	}
}
*/
if(cmsg==null){
	cmsg="로그 정보를 찾을 수 없습니다.";
}
// 검사용 out.print("<pre>"+cmsg+"</pre>");
out.print("<script>window.location.href='index.jsp'</script>");

%>