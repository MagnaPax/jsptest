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
        <div class=" col-md-6">
 <%
 request.setCharacterEncoding("UTF-8");
 //get 방식으로 들어온 오류 처리
 	String eid=request.getParameter("id");
   	String sql="";
    if(eid==null){
      out.print("<script>window.location.href='board.jsp'</script>");
      return;
    }else{
    //out.print("eid:"+eid);
    sql=" select * from BOARD where bidx='"+eid+"'";
    }
 %>
<%@ include file="include/DBconn.jsp" %>
<%
int flag=0;
String bidx= null;
String btitle= null;
String bwriter= null;
String bcontent= null;
String bdate= null;
String bsee= null;

while(rs.next()){
	flag++;
	bidx	= rs.getString("bidx");
	btitle	= rs.getString("btitle");
	bwriter	= rs.getString("bwriter");
	bcontent= rs.getString("bcontent");
	bdate	= rs.getString("bdate");
	bsee	= rs.getString("bsee");
}
if(flag>0){
	//out.print(uname+":"+userid);	
}else{
	out.print("<script>window.location.href='board.jsp'</script>");
	return;
}

%>
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">글수정</h3>
			</div>
			<div class="panel-body">

				<form class="form-signin" action="updateDoc.jsp" method="post">
					<label for="btitle" class="">제목</label> 
					<input type="hidden" id="bidx" name="bidx" value="<%=bidx %>" />
					<input type="hidden" id="bsee" name="bsee" value="<%=bsee %>" />
					<input type="text" id="btitle" name="btitle" class="form-control" value="<%=btitle %>" required /> 
					<label for="bwriter" class="">작성자</label>
					
					<select id="bwriter" class="form-control">
					<option value="1">홍길동</option>
					<option value="13">박문수</option>
					</select>
					
					<input type="hidden" id="bwriter" name="bwriter" class="form-control"  value="<%=bwriter %>" required />
					 
					<label for="bcontent" class="">내용</label> 
					<textarea id="bcontent" name="bcontent"
					class="form-control" rows=5 
					cols=20 ><%=bcontent %></textarea>
					<label for="bdate" class="">작성일</label> 
					<input type="datetime" id="bdate" name="bdate"  value="<%=bdate %>"
						class="form-control" />
					<button class="btn btn-lg btn-primary btn-block" type="submit">전송하기</button>
				</form>
			</div>
			</div>

	</div>

    </div> <!-- /container -->
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>