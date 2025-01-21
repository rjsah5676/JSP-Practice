<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<div class="container">
    <h1>ifTag : 조건문</h1>
    <%
        int num = Integer.parseInt(request.getParameter("num"));
        String name = request.getParameter("name");
        int age = Integer.parseInt(request.getParameter("age"));
    %>
    <%=num%>,<%= name%>,<%=age%>
    <hr/>
    <ul>
        <li>번호: ${param.num} </li>
        <li>이름: ${param.name} </li>
        <li>나이: ${param.age} </li>
    </ul>
    <h1>if문</h1>
    <c:if test="${true}">
        <div>${param.name}</div>
    </c:if>
    <c:set var="age" value="${param.age}"></c:set>

    <c:if test="${age<20}">
        <div>${param.name}은 20세 미만입니다.</div>
    </c:if>
</div>