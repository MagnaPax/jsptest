<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

	<style type="text/css">
	/* CSS selector */ /* 중요 */
	
	/* Tag selector 해당 태그 전체에 영향*/	
	div{ border:1px solid grey;
	}
	
	/* ID selector 헤더를 선택하여(#) 영향주기
	페이지 안에 1개만 있는 경우 
	*/
	#header{
		background-color:green;
	}
	
	/* Class selector 클래스 선택자(.) 영향주기
	페이지 안에 여러개 있는 경우
	*/
	.box{margin:10px;
	}
	#wrap{
		width:600px;
		margin:0 auto; /*중앙 정렬*/
	}
	
	/* 자식 선택자 */
	#menu li{
		float: left; /*가로 정렬*/
		list-style:none; /* 리스트 헤더 없애기 */
		margin: 10px 20px; /* 마진 가로 세로 조정 */
	}
	.clb{
		clear:both; /* float 된 것들을 정리 */
	}
	table, td, th{
		border:1px solid grey;
		border-collapse:collapse;
	}
	#dataTable{
		margin:10px;
		width:100%
	}
	.tred{color:red}
	.tblue{color:blue}
	.tgreen{color:green}
	
	  #block {
	    position: absolute;
	    background-color: #abc;
	    left: 50px;
	    width: 90px;
	    height: 90px;
	    margin: 5px;
	  }	
	
	</style>
	
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script type="text/javascript">
		//alert("Hello World");
		//$("#header").css("background-color", "red");
		//로딩되지 않은 요소는 선택할 수 없다.
	</script>
</head>
<body>
	<div id="wrap">
		<div id="header" class="box">
			<h1> JAVA 빅데이터 전문가 과정</h1>
		<nav>
			<ul id="menu">
				<li> <a href="/jsptest/">Home</a> </li>
				<li> <a href="board.jsp">게시판</a> </li>
				<li> <a href="jsp.jsp">JSP</a> </li>
				<li> <a href="login.jsp">login</a> </li>
			</ul>
		</nav>
		<div class="clb"></div>
		</div>
		
		
	