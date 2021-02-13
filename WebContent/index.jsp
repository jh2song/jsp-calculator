<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
	<jsp:include page="include/head.jsp" />
	
	<body>
		<jsp:include page="include/header.jsp"/>
		
		<div class="container-fluid ml-0 mr-0">	
			<div class="row">
				<button type="button" onclick="input('7')" class="col-sm-3 btn btn-light btn-lg calc-body">7</button>
				<button type="button" onclick="input('8')" class="col-sm-3 btn btn-light btn-lg calc-body">8</button>
				<button type="button" onclick="input('9')" class="col-sm-3 btn btn-light btn-lg calc-body">9</button>
				<button type="button" onclick="input('/')" class="col-sm-3 btn btn-light btn-lg calc-body">/</button>
			</div>
			<div class="row">
				<button type="button" onclick="input('4')" class="col-sm-3 btn btn-light btn-lg calc-body">4</button>
				<button type="button" onclick="input('5')" class="col-sm-3 btn btn-light btn-lg calc-body">5</button>
				<button type="button" onclick="input('6')" class="col-sm-3 btn btn-light btn-lg calc-body">6</button>
				<button type="button" onclick="input('*')" class="col-sm-3 btn btn-light btn-lg calc-body">*</button>
			</div>
			<div class="row">
				<button type="button" onclick="input('1')" class="col-sm-3 btn btn-light btn-lg calc-body">1</button>
				<button type="button" onclick="input('2')" class="col-sm-3 btn btn-light btn-lg calc-body">2</button>
				<button type="button" onclick="input('3')" class="col-sm-3 btn btn-light btn-lg calc-body">3</button>
				<button type="button" onclick="input('-')" class="col-sm-3 btn btn-light btn-lg calc-body">-</button>
			</div>
			<div class="row">
				<button type="button" onclick="input('C')" class="col-sm-3 btn btn-light btn-lg calc-body">C</button>
				<button type="button" onclick="input('0')" class="col-sm-3 btn btn-light btn-lg calc-body">0</button>
				<button type="button" onclick="input('.')" class="col-sm-3 btn btn-light btn-lg calc-body">.</button>
				<button type="button" onclick="input('+')" class="col-sm-3 btn btn-light btn-lg calc-body">+</button>
			</div>	
			
			<input id="totalInput" type="text" class="form-control" value="" style="text-align:right;" readonly/>
			
			<br>
			
			<div class="row">
				<button type="button" onclick="calculate()" class="col-sm-4 btn btn-primary btn-lg event-button">계산하기</button>
				<button type="button" onclick="searchGoogle()" class="col-sm-4 btn btn-default btn-lg event-button">구글에 검색하기</button>
				<button type="button" onclick="searchNaver()" class="col-sm-4 btn btn-success btn-lg event-button">네이버에 검색하기</button>
			</div>
		</div>
		
		<script>
			function input(value) {
				var totalInput = document.getElementById("totalInput");
				if (value == "C")
					totalInput.value = null;
				else
					totalInput.value += value;
			}
		
			function calculate() {
				try {
					var totalInputVar = document.getElementById("totalInput").value;
					var result = eval(totalInputVar);
					alert("결과는: " + result + "입니다.");
				} catch (e) {
					alert("입력에 오류가 있습니다.");
				}
			}
			
			function searchGoogle() {
				var totalInputVar = document.getElementById("totalInput").value;
				var uri = "https://google.com/search?q=" + encodeURIComponent(totalInputVar);
				window.open(uri);
			}
			
			function searchNaver() {
				var totalInputVar = document.getElementById("totalInput").value;
				var uri = "https://search.naver.com/search.naver?query=" + encodeURIComponent(totalInputVar);
				window.open(uri);
			}
		</script>
		
		<jsp:include page="include/footer.jsp"/>
	</body>
</html>