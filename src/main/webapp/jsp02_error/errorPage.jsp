<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- 에러가 발생하면 실행할 페이지에는 isErrorPage속성을 가진 지시부를 기술한다. -->
<%@ page isErrorPage="true"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>에러가 발생하면 실행할 페이지</title>
</head>
<body>
<img src = "<%=request.getContextPath()%>/image/404.jpeg"/>
<p>
    <h1>에러 메시지 : <%= exception.getMessage()%></h1>
</p>
</body>
</html>