<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="wrap">
<fmt:requestEncoding value="utf-8"/>
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
	<jsp:useBean id="dto" class="com.care.root.member.dto.MemberDTO"/>
	
	<c:set var="list" value="${dao.memberInfo(param.id)}"/>
	<c:set var="listPwd" value="${list.pwd}"/>
	<c:set var="inputPwd" value="${param.pwd}"/>
	<c:choose>
		<c:when test="${list==null}">
			<script type="text/javascript">
				alert('등록되지 않은 아이디입니다.')
				location.href="${contextPath}/jieun/login.jsp"
			</script>
		</c:when>
		<c:when test="${list.pwd == param.pwd}">
			<c:set var="loginUser" value="${list.id}" scope="session"/>
			<script type="text/javascript">
				location.href="${contextPath}/jieun/login_view.jsp"
			</script>
		</c:when>
		<c:otherwise>
			<script type="text/javascript">
				alert('비밀번호가 일치하지 않습니다.')
				location.href="${contextPath}/jieun/login.jsp"
			</script>
		</c:otherwise>
	</c:choose>
</div>
</body>
</html>