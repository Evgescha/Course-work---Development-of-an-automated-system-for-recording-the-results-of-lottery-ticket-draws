<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Редактор</title>
</head>
<body>
	<center>
		<h1>Создание/Редактирование</h1>
		<h2>
			<a href="prizeEdit">Добавить новый приз</a> &nbsp;&nbsp;&nbsp;
			<a href="prize">Список всех призов</a>
		</h2>
	</center>
	<div align="center">
		<form action="prizeUpdate" method="post">
			<table border="1" cellpadding="5">
				<caption>
					<h2>
						<c:if test="${entity != null}">Редактировать</c:if>
						<c:if test="${entity == null}">Добавить</c:if>
					</h2>
				</caption>
				<c:if test="${entity != null}">
					<input type="hidden" name="id" value="<c:out value='${entity.id}' />" />
				</c:if>
				<tr>
					<th>Название приза:</th>
					<td><input type="text" name="name" size="45" value="<c:out value='${entity.name}' />" /></td>
				</tr>
				<tr>
					<th>Описание:</th>
					<td><input type="text" name="description" size="45" value="<c:out value='${entity.description}' />" /></td>
				</tr>
				<tr>
					<td colspan="2" align="center"><input type="submit" value="Сохранить" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
