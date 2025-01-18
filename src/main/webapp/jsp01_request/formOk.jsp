<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Arrays" %>
<%@ page import="java.util.Enumeration" %>
<%
        //form의 post 전송방식은 폼의 한글코드와 통신상의 한글코드가
        // 다르기 떄문에 백엔드에서 request 하기전에 한글코드를 무엇으로 할지
        // 설정을 먼저 해야한다.

        request.setCharacterEncoding("UTF-8");

        String username = request.getParameter("username");//이름
        String userid = request.getParameter("userid");//아이디
        String tel = request.getParameter("tel");//연락처
        String gender = request.getParameter("gender");//성별

        //취미
        String hobby[] = request.getParameterValues("hobby"); // ["등산"] , ["영화감상","산책"];

%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
<div class="container">

    <h1>form태그의 데이터전송 </h1>
    <table class="table table-dark">
        <tr><td>이름</td><td><%=username%></td></tr>
        <tr><td>아이디</td><td><%=userid%></td></tr>
        <tr><td>연락처</td><td><%=tel%></td></tr>
        <tr><td>성별</td><td><%=gender%></td></tr>
        <tr>
        <td>취미</td>
        <td>
            <%=Arrays.toString(hobby)%>
        </td>
        </tr>
    </table>

    <hr/>
    <ol>
    <%
            // 이전페이지의 폼에 있는 name속성의 값을 전체를 request한다.
            Enumeration names = request.getParameterNames();
            while(names.hasMoreElements()){
                //out.println("<li>"+names.nextElement()+"</li>";
                %>
                <li><%=names.nextElement()%></li>
                <%
            }
    %>
    </ol>
    <div>
        <ul>
         <li>사용자 컴퓨터의 ip구하기 : <%=request.getRemoteAddr()%></li>
         <li>프로토콜 : <%= request.getProtocol()%></li>
         <li>서버이름 : <%= request.getServerName()%></li>
         <li>전송방식 : <%= request.getMethod()%></li>
         <li>QueryString : <%= request.getQueryString()%></li>
         <li>포트번호 : <%= request.getServerPort()%></li>
         <li>contextPath : <%= request.getContextPath()%></li>
         <li>encoding : <%= request.getCharacterEncoding()%></li>
         <li>contentType : <%= request.getContentType()%></li><!-- null구해짐 -->
         <li>파일의 실제위치 : <%= request.getServletContext().getRealPath("/jsp01_request")%></li>
         <li>요청헤더 : <%= request.getHeader("user-agent")%></li>
    </div>
</div>
</body>
</html>