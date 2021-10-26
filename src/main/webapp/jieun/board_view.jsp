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
.view { width: 50%; margin: auto; }
</style>
</head>
<body>
<c:if test="${loginUser == null}">
	<script type="text/javascript">
		alert('로그인 먼저 해주세요.')
		location.href="${contextPath}/jieun/login.jsp"
	</script>
</c:if>
<jsp:useBean id="dao" class="com.care.root.member.dao.BoardDAO"/>
<c:set var="select" value="${dao.selectBoard(param.id)}"/>
<jsp:include page="../default/header.jsp"/>
<div class="wrap">
	<div class="view">
		<label>제목 : ${select.title}</label><br>
		<label>작성자 : ${select.id}</label><br>
		<label>내용 : ${select.content}</label><br><br>
		
		<c:if test="${loginUser == select.id}">
			<button onclick="location.href='${contextPath}/jieun/board_modify.jsp?id=${select.id}'">수정</button>
			<button onclick="location.href='${contextPath}/jieun/board_delete.jsp?id=${select.id}'">삭제</button>
		</c:if>
	</div>
</div>
<jsp:include page="../default/footer.jsp"/>
</body>
</html>