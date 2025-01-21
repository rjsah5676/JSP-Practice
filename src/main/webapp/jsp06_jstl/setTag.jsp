<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*" %>
<div class="container">
    <h1>setTag: 변수선언,값대입,변수삭제</h1>

    <%
        int a = 200;
    %>

    <c:set var="num" value="${300}"></c:set>
    <c:set var="name" value="${'홍길동'}"></c:set>
    <c:set var="aa" value="<%=a%>"></c:set>
    <c:set var="now" value="<%=new Date()%>"></c:set>
    <c:set var="result" value="${5+4}"></c:set>
    <hr/>
    <ul>
        <li> a: <%= a%> </li>
        <li> num: ${num} </li>
        <li> name: ${name} </li>
        <li> aa: ${aa} </li>
        <li> now: ${now} </li>
        <li> result: ${result} </li>

        <li> ${5+9/2} , ${'이순신'}</li>
        <li> <%= (String)session.getAttribute("username")%></li>
        <li> ${username}</li>
        <li>
            <c:remove var="result"></c:remove>
            result:${result}, userid:${userid}
        </li>
    </ul>
</div>