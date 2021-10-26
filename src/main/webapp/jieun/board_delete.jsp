<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<jsp:useBean id="dao" class="com.care.root.member.dao.BoardDAO"/>
<c:set var="delete" value="${dao.deleteBoard(param.id)}"/>
<c:choose>
	<c:when test="${delete == 1}">
		<script type="text/javascript">
			alert('삭제 성공!')
			location.href="${contextPath}/jieun/board.jsp"
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert('삭제 실패!')
			location.href="${contextPath}/jieun/board_view.jsp?id=${param.id}"
		</script>
	</c:otherwise>
</c:choose>
</body>
</html>