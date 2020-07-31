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
// 전송 데이터 불러오기
String uid=request.getParameter("uid");
String upw=request.getParameter("upw");
String rem=request.getParameter("remember");
out.print(uid+":"+upw+":"+rem);
%>
<%
// 쿼리 만들기
String sql=" select uname from USERS where userid='"+uid+"' and userpw='"+upw+"'";
%>
<%@ include file="include/DBconn.jsp" %>
<%
	
//테이블 데이터 만들기
int flag=0;
String userName=null;
while(rs.next()){
	flag++;
	//rs.getString(colname)
	userName=rs.getString("uname");
}
if(flag>0){
	out.print("<pre>"+userName+"환영합니다.</pre>");
	
	//로그인 정보를 저장
	//세션을 생성하기
	session.setAttribute("sess_name", userName);
	// 쿠키를 생성하고
	Cookie c= new Cookie("login_name",userName);
	// 쿠키의 수명을 결정
	c.setMaxAge(60*30);
	// 쿠키의 저장
	c.setPath("/");
	response.addCookie(c);
	
	out.print("<script>window.location.href='index.jsp'</script>");
	
}else{
	out.print("<pre>로그인정보를 찾을수 없습니다.</pre>");
	session.setAttribute("id", "");
	// 로그인창으로 리다이렉트 됬을때 이유는 Get 방식으로 전송
	//out.print("<script>window.location.href='login.jsp?error=1'</script>");
	response.sendRedirect("login.jsp?error=1");
	return;
}


%>

</body>
</html>