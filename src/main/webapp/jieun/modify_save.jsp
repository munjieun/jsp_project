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
<% request.setCharacterEncoding("utf-8");%>
<jsp:useBean id="dao" class="com.care.root.member.dao.BoardDAO"/>
<jsp:useBean id="dto" class="com.care.root.member.dto.BoardDTO"/>
<jsp:setProperty property="*" name="dto"/>
<c:set var="modify" value="${dao.modifyBoard(dto)}"/>
<c:choose>
	<c:when test="${modify == 1}">
		<script type="text/javascript">
			alert('수정 성공!')
			location.href="${contextPath}/jieun/board_view.jsp?id=${dto.id}"
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert('수정 실패!')
			location.href="${contextPath}/jieun/board_modify.jsp?id=${dto.id}"
		</script>
	</c:otherwise>
</c:choose>
</body>
</html>