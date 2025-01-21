<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<div>
    <h1>세션정보 가져오기</h1>
    <%
        String userid = (String) session.getAttribute("userid");
        String username = (String) session.getAttribute("username");
        String visited = (String) session.getAttribute("visited");

        String sessionId = (String) session.getId();
        String logStatus = (String) session.getAttribute("logStatus");
    %>
    <table class="table">
        <tr>
            <td>아이디</td>
            <td><%=userid%></td>
        </tr>
        <tr>
            <td>이름</td>
            <td><%=username%></td>
        </tr>
        <tr>
            <td>방문수</td>
            <td><%=visited%></td>
        </tr>
        <tr>
            <td>세션 아이디</td>
            <td><%=sessionId%></td>
        </tr>
        <tr>
            <td>로그인 상태</td>
            <td><%=logStatus%></td>
        </tr>
    </table>
</div>