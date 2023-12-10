<%--
  Created by IntelliJ IDEA.
  User: ssuni
  Date: 2023/11/29
  Time: 11:28 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<html>
<head>
    <title>view prodect</title>
</head>
<body>
<h1>상품 자세히 보기</h1>

<div>

    <table>

        <tr>
            <td>판매자 이름:</td>
            <td><label name="sellername">${u.sellername}</label></td>
        </tr>
        <tr>
            <td>상품 이름:</td>
            <td><label name="product">${u.product}</label></td>
        </tr>
        <tr>
            <td>상품 가격:</td>
            <td><label name="price">${u.price}원</label></td>
        </tr>
        <tr>
            <td>카테고리:</td>
            <td><label name="category">${u.category}</label></td>
        </tr>
        <tr>
            <td>상세설명:</td>
            <td><label name="detail">${u.detail}</label></td>
        </tr>
        <tr>
            <td>거래 희망 위치:</td>
            <td><label name="location">${u.location}</label></td>
        </tr>
        <tr>
            <td>거래 희망 일자:</td>
            <td><label name="dealtime">${u.dealtime}</label></td>
        </tr>
        <tr>
            <td><input type="button" value="상품 리스트로 돌아가기" onclick="history.back()"/></td>
        </tr>
    </table>
</div>
</body>
</html>