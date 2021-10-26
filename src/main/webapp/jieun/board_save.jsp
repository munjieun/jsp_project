<%@page import="org.apache.taglibs.standard.tag.common.fmt.RequestEncodingSupport"%>
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

<c:set var="save" value="${dao.newBoard(dto)}"/>
결과 : ${save}
<c:choose>
	<c:when test="${save == 1}">
		<script type="text/javascript">
			alert('저장 성공!')
			location.href="${contextPath}/jieun/board.jsp"
		</script>
	</c:when>
	<c:otherwise>
		<script type="text/javascript">
			alert('저장 실패!')
			location.href="${contextPath}/jieun/board_write.jsp"
		</script>
	</c:otherwise>
</c:choose>
</body>
</html>