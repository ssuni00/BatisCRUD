<%@ page language="java" contentType="text/html; charset=UTF-8" isELIgnored="false"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>add new product</title>
</head>
<body>

<h1>상품을 추가해보세요!</h1>
<form action="addok" method="post">
    <table>
        <tr>
            <td>판매자 이름:</td>
            <td><input type="text" name="sellername"/></td>
        </tr>
        <tr>
            <td>상품 이름:</td>
            <td><input type="text" name="product"/></td>
        </tr>
        <tr>
            <td>상품 가격 (숫자만 입력):</td>
            <td><input type="text" name="price"/></td>
        </tr>
        <tr>
            <td>카테고리</td>
            <td><label for="state" class="form-label"></label>
                <select class="form-select" id="state" name="category">
                    <option value="">상품 종류를 선택하세요</option>
                    <option value="식품">식품</option>
                    <option value="전자제품">전자제품</option>
                    <option value="의류">의류</option>
                    <option value="뷰티">뷰티</option>
                    <option value="쥬얼리">쥬얼리</option>
                    <option value="etc">etc</option>
                </select></td>
        </tr>
        <tr>
            <td>상세설명:</td>
            <td><textarea  cols="50" rows="5" name="detail"></textarea></td>
        </tr>
        <tr>
            <td>거래 희망 위치:</td>
            <td><input type="text" name="location"/></td>
        </tr>
        <tr>
            <td>거래 희망 일자:</td>
            <td><input type="date" name="dealtime" value="2023-12-16"/></td>
        </tr>
        <tr>
            <td><a href="list">상품 리스트로 돌아가기</a></td>
            <td align="right"><button type="submit"/>상품 등록</td>
        </tr>
    </table>
</form>
</body>
</html>