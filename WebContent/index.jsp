<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<jsp:include page="include/head.jsp" />
	<body>
		<jsp:include page="include/header.jsp"/>
		
		<div class="container-fluid ml-0 mr-0">	
			<div class="row">
				<button type="button" class="col-sm-3 btn btn-light btn-lg calc-body">7</button>
				<button type="button" class="col-sm-3 btn btn-light btn-lg calc-body">8</button>
				<button type="button" class="col-sm-3 btn btn-light btn-lg calc-body">9</button>
				<button type="button" class="col-sm-3 btn btn-light btn-lg calc-body">/</button>
			</div>
			<div class="row">
				<button type="button" class="col-sm-3 btn btn-light btn-lg calc-body">4</button>
				<button type="button" class="col-sm-3 btn btn-light btn-lg calc-body">5</button>
				<button type="button" class="col-sm-3 btn btn-light btn-lg calc-body">6</button>
				<button type="button" class="col-sm-3 btn btn-light btn-lg calc-body">*</button>
			</div>
			<div class="row">
				<button type="button" class="col-sm-3 btn btn-light btn-lg calc-body">1</button>
				<button type="button" class="col-sm-3 btn btn-light btn-lg calc-body">2</button>
				<button type="button" class="col-sm-3 btn btn-light btn-lg calc-body">3</button>
				<button type="button" class="col-sm-3 btn btn-light btn-lg calc-body">-</button>
			</div>
			<div class="row">
				<button type="button" class="col-sm-3 btn btn-light btn-lg calc-body">C</button>
				<button type="button" class="col-sm-3 btn btn-light btn-lg calc-body">0</button>
				<button type="button" class="col-sm-3 btn btn-light btn-lg calc-body">.</button>
				<button type="button" class="col-sm-3 btn btn-light btn-lg calc-body">+</button>
			</div>	
			
			<input type="text" class="form-control" readonly/>
			
			<div class="row">
				<button type="button" class="col-sm-4 btn btn-primary btn-lg event-button">계산하기</button>
				<button type="button" class="col-sm-4 btn btn-default btn-lg event-button">구글에 검색하기</button>
				<button type="button" class="col-sm-4 btn btn-success btn-lg event-button">네이버에 검색하기</button>
			</div>
		</div>
		<jsp:include page="include/footer.jsp"/>
	</body>
</html>