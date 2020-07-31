<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Driver"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSetMetaData"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
Connection conn=null;	//연결자
Statement stmt=null;	//지시문
ResultSet rs=null;		//결과세트
ResultSetMetaData rsmd=null;	//결과 메타셋(결과에 대한 정보)

// 데이터베이스 처리 클래스 배정

try{
	// 연결하기
	Class.forName("oracle.jdbc.driver.OracleDriver");
	String url="jdbc:oracle:thin:@localhost:1521:orcl";
	String user="PROJECT1";
	String password="Test1234";
	conn=DriverManager.getConnection(url, user, password);
	stmt=conn.createStatement();
	rs=stmt.executeQuery(sql);
//	out.print("<pre>DB Ok</pre>");
}catch(ClassNotFoundException e){
	out.print("<pre>클래스 에러</pre>");
	out.print("<pre>"+e.getMessage()+"</pre>");
	
	/*
	No suitable driver found for localhost 에러처리
	1. WEB-INF>lib>.jar
	C:\app\Kosmo_25\product\11.2.0\dbhome_1\jdbc\lib\ojdbc6.jar 복사해서 위 폴더에 붙여넣기
	2. C:\Program Files\Java\jre1.8.0_221\lib\ext 폴더에도 .jar 파일 붙여넣기
	3. url 주소를 톰캣 서버의 Connection URL 에 있는 값으로 바꾸기
	*/
}catch(SQLException e){
	out.print("<pre>일단 SQL ERROR</pre>");
	String err=e.getMessage();
	if(err.indexOf("ORA-01017")>-1){
		out.print("<pre>아이디 패스워드 문제</pre>");
	}else if(err.indexOf("ORA-28009")>-1){
		out.print("<pre>권한없음</pre>");

	}else if(err.indexOf("IO")>-1){
		out.print("<pre>연결에러</pre>");
		
	}else if(err.indexOf("ORA-00900")>-1){
		out.print("<pre>문법에러</pre>");
		
	}else if(err.indexOf("ORA-00001")>-1){
		out.print("<pre>무결성 제약 조건(USERS.EMP)에 위배됩니다.</pre>");
		
	}else if(err.indexOf("ORA-00942")>-1){
		out.print("<pre>테이블 또는 뷰가 존재하지 않습니다</pre>");
		
	}else if(err.indexOf("ORA-01400")>-1){
		out.print("<pre>NULL을 ('SCOTT,EMP,EMPNO') 안에 삽입할 수 없습니다.</pre>");
		
	}else if(err.indexOf("ORA-01438")>-1){
		out.print("<pre>이 열에 대해 지정된 전체 자릿수보다 큰 값이 허용됩니다</pre>");
		
	}else{
		out.print("<pre>"+err+"</pre>");
	}
}

%>