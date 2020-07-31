<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Doc add</title>

<jsp:include page="include/top.jsp"></jsp:include>

      <!-- Main component for a primary marketing message or call to action -->
   <div class="row">
	<div class=" col-md-6">
		<div class="panel panel-success">
			<div class="panel-heading">
				<h3 class="panel-title">글작성</h3>
			</div>
			<div class="panel-body">

				<form class="form-signin" action="createDoc.jsp" method="post">
					<label for="btitle" class="">제목</label> 
						<input type="text" id="btitle" name="btitle" class="form-control" required /> 
					<label for="bwriter" class="">작성자</label>
					<input type="text" id="bwriter" name="bwriter" class="form-control" required /> 
					<label for="bcontent" class="">내용</label> 
						
					<textarea id="bcontent" name="bcontent"
						class="form-control" rows=5 cols=20 >
						 
					</textarea>
						
					<label for="bdate" class="">작성일</label> 
					<input type="datetime" id="bdate" name="bdate" 
						class="form-control" />
					<button class="btn btn-lg btn-primary btn-block" type="submit">전송하기</button>
				</form>
			</div>
			</div>
		</div>

	</div>
	<!-- /container -->
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>