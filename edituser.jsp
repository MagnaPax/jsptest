<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<jsp:include page="include/top.jsp"></jsp:include>

      <!-- Main component for a primary marketing message or call to action -->
      <div class="row">
        <div class=" col-md-4">
 <%
 request.setCharacterEncoding("UTF-8");
 //get 방식으로 들어온 오류 처리
 	String eid=request.getParameter("id");
   	String sql="";
    if(eid==null){ //eid 가 없으면 업데이트 대상이 없으므로 뒤로 보내버리기
      out.print("<script>window.location.href='index.jsp'</script>");
      return;
    }else{
    //out.print("eid:"+eid);
    sql=" select * from USERS where idx='"+eid+"'";
    }
 %>
<%@ include file="include/DBconn.jsp" %>
<%
int flag=0;
String idx= null;
String uname= null;
String userid= null;
String userpw= null;
String uemail= null;
String ustat= null;
String uauth= null;
while(rs.next()){
	flag++;
	idx		= rs.getString("idx");
	uname	= rs.getString("uname");
	userid	= rs.getString("userid");
	userpw	= rs.getString("userpw");
	uemail	= rs.getString("uemail");
	ustat	= rs.getString("ustat");
	uauth	= rs.getString("uauth");
}
if(flag>0){
	//out.print(uname+":"+userid);	
}else{
	out.print("<script>window.location.href='index.jsp'</script>");
	return;
}

%>
<form class="form-signin" action="updateUser.jsp" method="post">
<h2 class="form-signin-heading">수정하기</h2>
	<label for="uname"  class="">이름</label>
		<input type="hidden" id="idx" name="idx" value="<%=idx %>"/>
		<input type="text" id="uname" name="uname" value="<%=uname %>" class="form-control" />
	<label for="userid" class="">아이디</label>
		<input type="text" id="userid" name="userid" value="<%=userid %>" class="form-control" />
	<label for="userpw" class="">패스워드</label>
		<input type="password" id="userpw" name="userpw" value="<%=userpw %>" class="form-control" />
	<label for="uemail" class="">이메일</label>
		<input type="text" id="uemail" name="uemail" value="<%=uemail %>" class="form-control" />
	<label for="ustat" class="">상태</label>
		<input type="text" id="ustat" name="ustat" value="<%=ustat %>" class="form-control" />
	<label for="uauth" class="">권한</label>
		<input type="text" id="uauth" name="uauth" value="<%=uauth %>" class="form-control" />
	<button class="btn btn-lg btn-primary btn-block" type="submit">전송하기</button>
</form>
        </div>

	</div>

    </div> <!-- /container -->
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>