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
<jsp:useBean id="dao" class="com.care.root.member.dao.BoardDAO"/>
<c:set var="modify" value="${dao.selectBoard(param.id)}"/>
<jsp:include page="../default/header.jsp"/>
<div class="wrap">
	<form action="${contextPath}/jieun/modify_save.jsp" method="post">
		<label>제목 :</label><input type="text" name="title" value="${modify.title}"><br>
		<label>작성자 : </label>${modify.id}<input type="hidden" value="${modify.id}" name="id"><br>
		<label>내용 : </label><textarea rows="10" cols="50" name="content">${modify.content}</textarea><br>
		<button type="submit">저장</button>
	</form>
</div>
<jsp:include page="../default/footer.jsp"/>
</body>
</html>