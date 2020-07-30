<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

        <form class="form-signin" action="mcheck.jsp" method="post"> <!-- action 이걸 어디론가 보내겠다  post 방식으로 하겠다 -->
        <h2 class="form-signin-heading">로그인 해 주세요</h2>
        
        <label for="uid" class="sr-only">아이디</label>
        
        <input type="text" name="uid" id="uid" class="form-control" placeholder="아이디" required autofocus> <!-- 글씨 쓸 수 있는 창 -->
        
        <label for="upw" class="sr-only">패스워드</label>
        
        <input type="password" name="upw" id="upw" class="form-control" placeholder="패스워드" required> <!-- required 필수라는 뜻 -->
        
        <div class="checkbox">
          <label>
            <input type="checkbox" name="remember" id="remember"> 기억하기
          </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
      </form>