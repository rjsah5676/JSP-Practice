<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*" %>
<%@ page import="com.ict.home.MemberVO" %>

<div class="container">
    <h1>foreach 태그</h1>
    <h2>구구단</h2>
    <c:set var="dan" value="7"></c:set>
    <ul>
        <c:forEach var="i" begin="1" end="9" step="1">
            <li>${dan} * ${i} = ${dan*i}</li>
        </c:forEach>
    </ul>
    <hr/>
    <%
        int data[] = {56,66,44,24,521,99};
    %>
    <c:forEach var="d" items="<%=data%>">
        <li>${d}</li>
    </c:forEach>
    <hr/>
    <%
        List<MemberVO> list = new ArrayList<>();
        list.add(new MemberVO(1,"일길동","010-1111-1111","일동"));
        list.add(new MemberVO(2,"이길동","010-2222-2222","이동"));
        list.add(new MemberVO(3,"삼길동","010-3333-3333","삼동"));
        list.add(new MemberVO(4,"사길동","010-4444-4444","사동"));
        list.add(new MemberVO(5,"오길동","010-5555-5555","오동"));
    %>
    <style>
        .list>ul, .list>ul>li {
            margin:0;
            padding:0;
            list-style-type:none;
        }
        .list>ul {
            overflow:auto;
        }
        .list li {
            float:left; width:25%; line-height:40px; border-bottom:1px solid #ddd;
        }
    </style>
    <div class="list">
        <ul>
        <%
            for(int i=0;i<list.size();i++) {
            MemberVO vo = list.get(i);
        %>
            <li><%= vo.getNum()%></li><li><%= vo.getUsername() %></li><li><%= vo.getTel() %></li><li><%= vo.getAddr() %>
            </li>
        <% } %>
        </ul>
        <hr/>
        <ul>
            <c:forEach var="vo" items="<%=list%>">
                <li>${vo.num}</li>
                <li>${vo.username}</li>
                <li>${vo.tel}</li>
                <li>${vo.addr}</li>
            </c:forEach>
        </ul>
    </div>
</div>