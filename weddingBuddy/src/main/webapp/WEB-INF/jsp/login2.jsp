<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>login Page</title>
</head>
<body>
	<div class="container-xxl bg-white p-0">
		<%@ include file="navbar.jsp"%>
		<div class="container-xxl bg-primary page-header">
			<div class="container text-center">
				<h1 class="text-white animated zoomIn mb-3">플래너 로그인</h1>
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb justify-content-center">
						<li class="breadcrumb-item"><a class="text-white" href="#">Home</a></li>
						<li class="breadcrumb-item"><a class="text-white" href="#">플래너찾기</a></li>
						<li class="breadcrumb-item text-white active" aria-current="page">Contact</li>
					</ol>
				</nav>
			</div>
		</div>
	</div>
	<!-- login form  -->
	<div class="py-4 text-center">
		<h2 id="logo">로그인</h2>
	</div>
	<div class="container"
		style="display: flex; justify-content: center; align-items: center;">
		<div>
			<form name="form" method="POST"
				action="<c:url value='/planner/login' />">
				<div class="row">
					<div class="col-md-12">
						<label for="id" id="menu">아이디</label>
					</div>
					<div class="col-md-12 mb-3">
						<input type="text" class="form-control" name="account_id" value=""
							id="account_id" placeholder="아이디">
					</div>
				</div>
				<br>
				<div class="row">
					<div class="col-md-12">
						<label for="password" id="menu">비밀번호 <span
							class="text-muted"></span></label>
					</div>
					<div class="col-md-12 mb-3">
						<input type="password" class="form-control" placeholder="비밀번호"
							id="password" value="" name="password" required>
					</div>
				</div>
				<c:if test="${loginFailed}">
					<br>
					<font color="red"><c:out value="${exception.getMessage()}" /></font>
					<br>
				</c:if>

				<hr class="mb-4">
				<div style="text-align: center;">
					<button class="btn btn-primary btn-primary" id="btn" type="submit"
						style="width: 30%">로그인</button>
					&nbsp; &nbsp;

					<button class="btn btn-primary btn-primary" id="buttons" type="button"
						style="width: 35%" onClick="location.href='/join'">회원가입</button>
				</div>
			</form>
		</div>
	</div>

	<%@ include file="footer.jsp"%>
	
	
</body>
</html>