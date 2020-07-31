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
      <div class="col-md-6">
      <h1>게시판</h1>
<%
String sql=" select BIDX,BTITLE,UNAME,BDATE,BSEE from BOARD_USER ";
%>
<%@ include file="include/DBconn.jsp" %>

		<div class="panel panel-success">
            <div class="panel-heading">
              
              <div class="pull-right">
              	<a href='addDoc.jsp' class='btn btn-sm btn-info'>글 추가</a>
              </div>
              <h3 class="panel-title">게시판</h3>
            </div>
            <div class="panel-body">
            
<%@ include file="component/board_c.jsp" %>

            </div>
          </div>



<%@ include file="include/DBclose.jsp" %>
      </div>
      
    </div> 
</div><!-- container -->
      
<!-- INSERT INTO "PROJECT1"."BOARD" (BIDX, BTITLE, BWRITER, BCONTENT, BDATE, BSEE) VALUES ('1', '안녕하세요
', '1', '첫글', TO_DATE('2020-07-31 15:22:21', 'YYYY-MM-DD HH24:MI:SS'), '0')
 -->

</body>
</html>