<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="container">
    <h1>세션 값 저장하기</h1>
    <%
        session.setAttribute("userid","goguma");
        session.setAttribute("username","고구마");
        session.setAttribute("visited","25");

        session.setAttribute("logStatus","y");
    %>
    <a href="sessionView.jsp">세션정보 확인</a></br>
    <a href="sessionRemove.jsp">세션정보 지우기</a></br>
    <a href="sessionInvalidate.jsp">세션객체 지우기</a>
</div>