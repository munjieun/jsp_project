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
.write {
	text-decoration: none; padding: 5px 10px;
	background: black; color: white; border-radius: 10px;
}
</style>
</head>
<body>
<jsp:include page="../default/header.jsp"/>
<jsp:useBean id="dao" class="com.care.root.member.dao.BoardDAO"/>
<c:set var="list" value="${dao.allBoard()}"/>
<div class="wrap" style="text-align: center;">
	<h1>게시판</h1>
	<table border="1" style="margin: auto;">
		<tr>
			<th>제목</th><th>내용</th><th>작성자</th>
		</tr>
		<c:forEach var="s" items="${list}">
			<tr>
				<td><a href="${contextPath}/jieun/board_view.jsp?id=${s.id}">${s.title}</a></td>
				<td style="width: 100px;">${s.content }</td>
				<td>${s.id}</td>
			</tr>
		</c:forEach>
	</table>
	<br>
	<c:if test="${loginUser != null}">
		<a class="write" href="${contextPath}/jieun/board_write.jsp">글쓰기</a>
	</c:if>
</div>
<jsp:include page="../default/footer.jsp"/>
</body>
</html>