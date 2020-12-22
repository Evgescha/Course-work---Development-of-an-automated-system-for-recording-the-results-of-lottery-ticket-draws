<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Билеты</title>
</head>
<body>
	<center>
		<h1>Работа со списком</h1>
        <h2>
        	<a href="ticketEdit">Добавить новый элемент</a>    	&nbsp;&nbsp;&nbsp;
        	<a href="ticket">Список всех элементов</a>        	
        </h2>
	</center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Список</h2></caption>
            <tr>
                <th>ИД</th>
                <th>Лотерея</th>
                <th>Дата проведения</th>
                <th>Номера в билете</th>
            </tr>
            <c:forEach var="entity" items="${list}">
                <tr>
                    <td><c:out value="${entity.id}" /></td>
                    <td><c:out value="${entity.lottery.type.name}" /></td>
                    <td><c:out value="${entity.lottery.dates}" /></td>
                    <td><c:out value="${entity.numbers}" /></td>
                    <td>
                    	<a href="ticketEdit?id=<c:out value='${entity.id}' />">Редактировать</a>           	&nbsp;&nbsp;&nbsp;&nbsp;
                    	<a href="ticketDelete?id=<c:out value='${entity.id}' />">Удалить</a>                    	
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>	
</body>
</html>
