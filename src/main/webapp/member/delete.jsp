<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 첫번째처럼 쓰면 만약 session보다 범위가 작은 값이 있을 경우 그 값이 들어가게 된다. -->
	id : ${session_id}<br>
	id : ${sessionScope.session_id}<br>
	
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
	<c:set var="result" value="${dao.delete(session_id)}"/>
	<c:choose>
		<c:when test="${result == 1}">
			<script type="text/javascript">
				alert('성공적으로 삭제되었습니다!');
				location.href="memberView.jsp";
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert('삭제를 실패했습니다!');
				location.href="member_info.jsp?id=${session_id}";
			</script>
		</c:otherwise>
	</c:choose>
	<c:remove var="session_id" scope="session"/>
	<%--
	아래 내용을 쓰면 script가 실행 안됨
	<c:redirect url="memberView.jsp"/>
	--%>
</body>
</html>