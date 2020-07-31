<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<style type="text/css">
	/* CSS selector */
	/* Tag selector 해당 태그 전체에 영향*/
	div{ border:1px solid grey;
	}
	/* ID selector 헤더를 선택하여(#) 영향주기 
	페이지내에 1개만 있는경우
	*/
	#header{
	background-color:white;
	}
	/* Class Selector 클래스 선택하여(.) 영향주기 
	페이지내에 여러개 있는 경우
	*/
	.box{margin:10px;
	}
	#wrap{
	width:400px;
	margin:0 auto; /*중앙 정렬*/
	}
	/* 자식선택자 */
	#menu li{
	float: left; /*가로 정렬*/
	list-style:none; /* 리스트 헤더 없애기*/
	margin:10px 20px; /* 마진 가로 세로 조정*/
	}
	.clb{
	clear:both;/* float 된것들을 정리*/
	}
	</style>
</head>
<body>
	<div id="wrap">
		<div id="header" class="box">
		<h1> JAVA 빅데이터 전문가 과정 </h1>
		<nav>
			<ul id="menu">
				<li> <a href="/jsptest1/">Home</a> </li>
				<li> <a href="java.jsp">JAVA</a> </li>
				<li> <a href="jsp.jsp">JSP</a> </li>
				<li> <a href="python.jsp">Python</a> </li>
			</ul>
		</nav>
		<div class="clb"></div>
		</div>