<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.7.1/jquery.min.js" integrity="sha512-v2CJ7UaYy4JwqLDIrZUI/4hqeoQieOmAZNXBeQyjo21dadnwR+8ZaIJVT8EE2iyI61OV8e6M8PP2/4hpQINQ/g==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        function formCheck(){
            if(document.getElementById("username").value==""){
                alert("이름을 입력하세요")
                return false;
            }
            return true;
        }
        function sendLocation(){
            location.href = "locationTest.jsp?nowpage=4&searchWord=컴퓨터";
        }
    </script>
    </head>
    <body>
    <div>
    <h1>form이용한 데이터 전송</h1>
    <form method="get" action="formOk.jsp">
        이름 : <input type="text" name="username" id="userid" onsubmit="return formCheck()"/><br/>
        아이디 : <input type="text" name="userid" id="userid"/><br/>
        연락처 : <input type="text" name="tel" id="tel"/><br/>
        성별 : <input type="radio" name="gender" id="M" value="M"/>남
                <input type="radio" name="gender" id="M" value="F"/>여<br/>
        취미 : <input type="checkbox" name="hobby" value="등산">등산
        <input type="checkbox" name="hobby" value="산책">산책
        <input type="checkbox" name="hobby" value="게임">게임
        <input type="checkbox" name="hobby" value="영화감상">영화감상
        <input type="checkbox" name="hobby" value="쇼핑">쇼핑
        <input type="submit" value="전송하기">
        </form>

        <h1>자바스크립트를 이용한 데이터 전송하기</h1>
        <a href="javascript:sendLocation()">클릭하세요</a>
        </div>
        </body>
        </html>