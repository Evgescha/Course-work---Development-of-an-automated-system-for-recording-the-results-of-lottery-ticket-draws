<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Лотереи</title>
</head>
<body>
	<center>
		<h1>Работа с лотереями</h1>
        <h2>
        	<a href="lotteryEdit">Добавить лотерею</a>    	&nbsp;&nbsp;&nbsp;
        	<a href="lottery">Список всех лотерей</a>        	
        </h2>
	</center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Список</h2></caption>
            <tr>
                <th>ИД</th>
                <th>Тип</th>
                <th>Дата проведения</th>
                <th>Приз</th>
            </tr>
            <c:forEach var="entity" items="${list}">
                <tr>
                    <td><c:out value="${entity.id}" /></td>
                    <td><c:out value="${entity.type.name}" /></td>
                    <td><c:out value="${entity.dates}" /></td>
                    <td><c:out value="${entity.prize.name}" /></td>
                    <td>
                    	<a href="lotteryEdit?id=<c:out value='${entity.id}' />">Редактировать</a>           	&nbsp;&nbsp;&nbsp;&nbsp;
                    	<a href="lotteryDelete?id=<c:out value='${entity.id}' />">Удалить</a>                    	
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>	
</body>
</html>
