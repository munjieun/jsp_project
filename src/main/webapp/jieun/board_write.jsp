<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
form { width: 70%; margin: auto;}
label { width: 150px; display: inline-block; vertical-align: top; }
form button:nth-of-type(1) { margin-left: 300px; }
</style>
</head>
<body>
<c:if test="${loginUser == null}">
	<script type="text/javascript">
		alert('로그인 먼저 해주세요.')
		location.href="${contextPath}/jieun/login.jsp"
	</script>
</c:if>
<jsp:include page="../default/header.jsp"/>
<div class="wrap">
	<form action="${contextPath}/jieun/board_save.jsp" method="post">
		<label>제목 :</label><input type="text" name="title"><br>
		<label>작성자 : </label>${loginUser}<input type="hidden" value="${loginUser}" name="id"><br>
		<label>내용 : </label><textarea rows="10" cols="50" name="content"></textarea><br>
		<button>저장</button>
	</form>
</div>
<jsp:include page="../default/footer.jsp"/>
</body>
</html>