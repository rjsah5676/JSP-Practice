<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page errorPage="errorPage.jsp"%>
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
    <div class="mt-4 p-5 bg-primary text-white rounded">
        <form action="errorTest.jsp">
            수1 : <input type="text" name="su1"/><br/>
            수2 : <input type="text" name="su2"/><br/>
            <input type="submit" value="결과보기"/>
        </form>
    </div>
    <%
        String su1 = request.getParameter("su1");
        String su2 = request.getParameter("su2");

        System.out.println(su1 +"," + su2);
        if(su1 !=null && su2 !=null && !su1.equals("") && !su2.equals("")){
                // su1, su2 는 null, ""아닐때 실행됨
               int su1Int = Integer.parseInt(su1);
               int su2Int = Integer.parseInt(su2);
            %>
            <ul>
                <li><%=su1%> + <%=su2%> = <%= su1Int + su2Int%></li>
                <li><%=su1%> - <%=su2%> = <%= su1Int - su2Int%></li>
                <li><%=su1%> * <%=su2%> = <%= su1Int * su2Int%></li>
                <li><%=su1%> / <%=su2%> = <%= su1Int / su2Int%></li>
            </ul>
            <%
            }
    %>
</body>
</html>