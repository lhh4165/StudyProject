<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath}/resources/css/style.css"
	rel="stylesheet" />
<link
	href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css"
	rel="stylesheet">
<script src="https://code.jquery.com/jquery-3.1.1.js?ver=1"></script>
<script src="${pageContext.request.contextPath}/resources/js/bootstrap.min.js"></script>
<script>
	function mjoin() {
		memberjoin.submit();
	}
</script>
</head>
<body>
	<nav class="navbar navbar-default">
		<div class="navbar navbar-fluid">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
					<span class="sr-only">Toggle navigation</span>
					<span class="icon-bar">board</span>
					<span class="icon-bar"></span>
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="#">Brand</a>
			</div>
		</div>
	</nav>
	
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-offset-2 col-md-8">
				
			</div>
		</div>
	</div>



	<div class="container-fluid">
		<div class="row">
			<div class="col-md-offset-2 col-md-8">
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h2 class="panel-title">
							<span class="glyphicon glyphicon-panel"></span>이곳은
							main.jsp입니다. 이훈희, 한수정
						</h2>
					</div>
					<div class="panel-body">
						<c:forEach items="${info}" var="member">
							member 인덱스 : ${member.member_IDX}<br>
							아이디 : ${member.member_id}<br>
							패스워드 : ${member.member_pw}<br>
							등급 : ${member.member_grade}<br>
							패스 : ${pageContext.request.contextPath}<br>
						</c:forEach>
					</div>
				</div>
				<div class="panel panel-primary">
					<div class="panel-heading">
						<h2 class="panel-title">
							<span class="glyphicon glyphicon-panel">회원가입</span>
						</h2>
					</div>
					<div class="panel-body">
						<form name="memberjoin" id="memberjoin" action="${pageContext.request.contextPath}/member/join.do"
							method="post">
							<label for="member_id" class="control-label">아이디</label>
							<div class="form-group">
								<input type="text" class="form-control" id="member_id" name="member_id">
							</div>
							<label for="member_pw" class="control-label">비밀번호</label>
							<div class="form-group"><input type="text" class="form-control" id="member_pw"
									name="member_pw">
							</div>
						</form>
					</div>
				</div>
				<div>
					<button type="button" class="btn btn-info" onclick="mjoin()">회원가입
					</button>
				</div>
			</div>
		</div>
	</div>
</body>
</html>