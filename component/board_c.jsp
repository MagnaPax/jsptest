<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%

rsmd = rs.getMetaData();
int colnum = rsmd.getColumnCount();
if(colnum > 0){// 메타데이터를 통하여 데이터 사전 정보 취득
	//out.print("<pre>데이터획득</pre>");
}

out.print("<table class='table table-bordered'><tr>");
// 테이블 헤더 만들기
	out.print("<th>No</th>");
	for(int i=2;i<=colnum;i++){
		out.print("<th>"+rsmd.getColumnName(i)+"</th>");
	}
	out.print("<th>처리</th>");
	out.print("</tr>");
/********************************************************/		
//테이블 데이터 만들기
	String colname=null;
int rowNo=1;// 행번호
String idx=null;
while(rs.next()){
	out.print("<tr>");
	out.print("<td>"+rowNo+"</td>");//행번호 표시
	rowNo++;// 행번호 증가
	for(int i=2;i<=colnum;i++){
		//colname=rsmd.getColumnName(i);
		//rs.getString(colname)
		out.print("<td>"+rs.getString(i)+"</td>");
	}
	idx=rs.getString(1);
	out.print("<td><a href='editDoc.jsp?id="+idx+"' class='btn btn-xs btn-success'>수정</a> ");
	out.print("| <a href='delDoc.jsp?id="+idx+"'  class='btn btn-xs btn-danger'>삭제</a></td>");
	out.print("</tr>");
}
out.print("</table>");
%>