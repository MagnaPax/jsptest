<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>HOME</title>


<jsp:include page="include/top.jsp"></jsp:include>	
	
      <!-- Main component for a primary marketing message or call to action -->
      <div class="jumbotron">
        <h1>자바 빅데이터 전문가</h1> 
        <h2>한천희 프로젝트</h2>
        <div class=" col-md-offset-4 col-md-3"> <!-- 화면을 총12등분 했을 때  맨왼쪽부터 4칸을 띄고 3칸을 만들어라 -->
        
<%
//get 방식으로 들어온 오류 처리
String errcode=request.getParameter("error");
	  if(errcode!=null && errcode.equals("1")){
		  out.print("<pre>로그인정보를 찾을 수 없습니다.</pre>");
	  }else{
		  out.print("<pre>"+errcode+"</pre>");		  
	  }
%>        
        	<jsp:include page="include/log.jsp"></jsp:include>
        </div>

        </p>
      </div>

    </div> <!-- /container -->

</body>
</html>