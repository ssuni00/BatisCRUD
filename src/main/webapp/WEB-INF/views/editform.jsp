<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>edit product</title>
</head>
<body>

<h1>상품 수정</h1>
<form:form modelAttribute="u" method="POST" action="../editok">
    <form:hidden path="seq"/>
    <table id="edit">
        <tr>
            <td>판매자 이름:</td>
            <td><form:input type="text" path="sellername"/></td>
        </tr>
        <tr>
            <td>상품 이름:</td>
            <td><form:input type="text" path="product"/></td>
        </tr>
        <tr>
            <td>상품 가격 (숫자만 입력):</td>
            <td><form:input type="text" path="price"/></td>
        </tr>
        <tr>
            <td>카테고리:</td>
            <td>
                <form:select  class="form-select" name="category" id="state" path="category">
                    <form:option value="" label="상품 종류를 선택하세요" />
                    <form:option value="식품" label="식품" />
                    <form:option value="전자제품" label="전자제품" />
                    <form:option value="의류" label="의류" />
                    <form:option value="뷰티" label="뷰티" />
                    <form:option value="쥬얼리" label="쥬얼리" />
                    <form:option value="etc" label="etc" />
                </form:select>
                </td>
        </tr>
        <tr>
            <td>상세설명:</td>
            <td><form:textarea name="detail" cols="50" rows="5" path="detail"/></td>
        </tr>
        <tr>
            <td>거래 희망 위치:</td>
            <td><form:input type="text" path="location"/></td>
        </tr>
        <tr>
            <td>거래 희망 일자:</td>
            <td><form:input type="date" path="dealtime"/></td>
        </tr>
        <tr>
            <td><input type="button" value="취소하기" onclick="history.back()"/></td>
            <td align="right"><input type="submit" value="수정 완료"/></td>
        </tr>
    </table>
</form:form>

</body>
</html>