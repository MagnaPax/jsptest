<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>

<jsp:include page="include/top.jsp"></jsp:include>

      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h1>자바빅데이터 전문가 </h1>
        <h2> 홍길동 프로젝트</h2>
        <div class=" col-k.md-offset-4 col-md-4">
 <%
 //get 방식으로 들어온 오류 처리
 String errcode=request.getParameter("error");
    if(errcode!=null && errcode.equals("1")){
      out.print("<pre>로그인정보를 찾을수 없습니다.</pre>");
    }else{
    	//out.print("<pre>"+errcode+"</pre>");
    }
 %>       
        <jsp:include page="include/log.jsp"></jsp:include>
        </div>


      </div>

    </div> <!-- /container -->
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>