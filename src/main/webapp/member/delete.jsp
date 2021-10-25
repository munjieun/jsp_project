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
	<jsp:useBean id="dao" class="com.care.root.member.dao.MemberDAO"/>
	${dao.delete(session_id)}
	<c:remove var="session_id" scope="session"/>
	<c:redirect url="memberView.jsp"/>
</body>
</html>