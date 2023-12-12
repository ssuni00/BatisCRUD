
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
         pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Handong Market</title>
    <style>
        #list {
            font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
            border-collapse: collapse;
            width: 100%;
        }
        #list td, #list th {
            border: 1px solid #ddd;
            padding: 8px;
            text-align:center;
        }
        #list tr:nth-child(even){background-color: #f2f2f2;}
        #list tr:hover {background-color: #ddd;}
        #list th {
            padding-top: 12px;
            padding-bottom: 12px;
            text-align: center;
            background-color: #006bb3;
            color: white;
        }
        .logoutBtn{
            margin-bottom: 20px;
        }
    </style>
    <script>
        function delete_ok(){
            alert("삭제성공 !!!");
        }

    </script>
</head>
<body>
<h1>한동마켓 게시판</h1>

<br/><button class="logoutBtn"><a href="../login/logout">로그아웃</a></button>

<table id="list" width="90%">
    <tr>
        <th>Id</th>
        <th>상품 이름</th>
        <th>상품 가격</th>
        <th>카테고리</th>
        <th>상세설명</th>
        <th>판매자 이름</th>
        <th>거래 희망 위치</th>
        <th>거래 희망 일자</th>
        <th>등록 일자</th>
        <th>수정</th>
        <th>삭제</th>
    </tr>
    <c:forEach items="${list}" var="u">
        <tr>
            <td>${u.seq}</td>
            <td><a href="view/${u.seq}">${u.product}</a></td>
            <td>${u.price}원</td>
            <td>${u.category}</td>
            <td>${u.detail}</td>
            <td>${u.sellername}</td>
            <td>${u.location}</td>
            <td>${u.dealtime}</td>
            <td>${u.regdate}</td>
            <td><a href="editform/${u.seq}">클릭!</a></td>
            <td><a href="deleteok/${u.seq}" onclick="delete_ok()">클릭!</a></td>
        </tr>
    </c:forEach>
</table>
<br/><button type="button" onclick="location.href='add'">상품 등록</button>
</body>
</html>