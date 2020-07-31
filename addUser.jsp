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
<form class="form-signin" action="createUser.jsp" method="post">
	<h2 class="form-signin-heading">입력하기</h2>
	<label for="uname"  class="">이름</label>
		<input type="text" id="uname" name="uname" placeholder="user name" class="form-control" />
	<label for="userid" class="">아이디</label>
		<input type="text" id="userid" name="userid" placeholder="userid" class="form-control" />
	<label for="userpw" class="">패스워드</label>
		<input type="password" id="userpw" name="userpw" placeholder="password" class="form-control" />
	<label for="uemail" class="">이메일</label>
		<input type="text" id="uemail" name="uemail" placeholder="user@aaa.com" class="form-control" />
	<label for="ustat" class="">상태</label>
		<input type="text" id="ustat" name="ustat" value="0" class="form-control" />
	<label for="uauth" class="">권한</label>
		<input type="text" id="uauth" name="uauth" value="0" class="form-control" />
	<button class="btn btn-lg btn-primary btn-block" type="submit">전송하기</button>
</form>
        </div>

	</div>

    </div> <!-- /container -->
    <!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
</body>
</html>