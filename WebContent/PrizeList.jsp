<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Список призов</title>
</head>
<body>
	<center>
		<h1>Работа с призами</h1>
        <h2>
        	<a href="prizeEdit">Добавить новый тип</a>    	&nbsp;&nbsp;&nbsp;
        	<a href="prize">Список всех типов</a>        	
        </h2>
	</center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Список</h2></caption>
            <tr>
                <th>ИД</th>
                <th>Название</th>
                <th>Описание</th>
            </tr>
            <c:forEach var="entity" items="${list}">
                <tr>
                    <td><c:out value="${entity.id}" /></td>
                    <td><c:out value="${entity.name}" /></td>
                    <td><c:out value="${entity.description}" /></td>
                    <td>
                    	<a href="prizeEdit?id=<c:out value='${entity.id}' />">Редактировать</a>           	&nbsp;&nbsp;&nbsp;&nbsp;
                    	<a href="prizeDelete?id=<c:out value='${entity.id}' />">Удалить</a>                    	
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>	
</body>
</html>
