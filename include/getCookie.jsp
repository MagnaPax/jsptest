<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
/*
Cookie co= new Cookie("ID","홍길동");
co.setMaxAge(60*60);
co.setPath("/");
response.addCookie(co);
*/

// 쿠키정보를 가져오기
Cookie[] cs=request.getCookies();
// 쿠키가 비었는지 확인
String loger=null;
if(cs!=null){
	//쿠키 탐색
	for(Cookie c:cs){
		if(c.getName().equals("login_name")){
			loger=c.getValue();
		}
		//out.print("<pre>"+c.getName()+":"+c.getValue()+"</pre>");
	}
}
String logbox=null;
if(loger==null){
	// 쿠키탐색후에 로그인한 사람을 찾을수 없을때
	logbox="로그인 해주세요";
}else{
	logbox=loger+"님 환영합니다.<a href='logoutc.jsp'>logout</a>";
}
out.print("<pre>"+logbox+"</pre>");
 %>