<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<%@ taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="/web/css/bootstrap.min.css" rel="stylesheet">
<link href="/web/css/kfonts2.css" rel="stylesheet">
<style>
body {
	padding-top: 20px;
}
</style>
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="/web/js/bootstrap.min.js"></script>
<script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<script type="text/javascript">
$(function(){
   
});
</script>
</head>
<body>
	<a href="castException.do">castException.do1</a>
	<a href="castException.do?job=mvcCore/jobView">castException.doParam</a>
	<a href="<%=request.getContextPath() %>/nullException.do?no=1">castException.do null</a>
	<a href="/web/userException.do?port=5000">userException.do</a>
	<a href="/web/userException.do?port=3000">userException.do</a>
</body>
</html>