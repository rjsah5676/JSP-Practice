<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script>
    //자바스크립트에서 쿠키 생성하기
    var now = new Date();
    now.setDate(now.getDate()+1);
    document.cookie = "logstatus=yes;path=/;expires="+now;
    document.cookie = "notice=yes";
</script>
<%
    //jsp에서 클라이언트의 컴퓨터에 쿠키 정보를 기록한다.
    //                       저장할 정보
    Cookie cookie = new Cookie("userid","goguma");
    // 생명주기 설정하기(초단위)
    cookie.setMaxAge(60*60*24);

    response.addCookie(cookie);
%>
<div>
    <a href="cookieView.jsp">쿠키값 확인하기</a>
</div>