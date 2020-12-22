<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Список</title>
</head>
<body>
	<center>
		<h1>Работа с типами лотерей</h1>
        <h2>
        	<a href="new">Добавить новый тип</a>    	&nbsp;&nbsp;&nbsp;
        	<a href="list">Список всех типов</a>        	
        </h2>
	</center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Список</h2></caption>
            <tr>
                <th>ИД</th>
                <th>Название</th>
            </tr>
            <c:forEach var="entity" items="${list}">
                <tr>
                    <td><c:out value="${entity.id}" /></td>
                    <td><c:out value="${entity.name}" /></td>
                    <td>
                    	<a href="edit?id=<c:out value='${entity.id}' />">Редактировать</a>           	&nbsp;&nbsp;&nbsp;&nbsp;
                    	<a href="delete?id=<c:out value='${entity.id}' />">Удалить</a>                    	
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>	
</body>
</html>
