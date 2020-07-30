<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    		<div id="footer" class="box">
		<div>copyright 2020 Saimdang</div>
		<button id="left"><-</button><button id="right">-></button>
		</div>
	</div>
	<div id="block"> Block </div>
	<script type="text/javascript">
	//alert("페이지 로딩완료");
	$("#header").css("background-color","red");
	$( "#right" ).click(function() {
		  $( "#block" ).animate({ "left": "+=50px" }, "slow" );
		});
		 
		$( "#left" ).click(function(){
		  $( "#block" ).animate({ "left": "-=50px" }, "slow" );
		});
	</script>
</body>
</html>