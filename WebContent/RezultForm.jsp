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
			<a href="rezultEdit">Добавить</a> &nbsp;&nbsp;&nbsp;
			<a href="rezult">Список всех</a>
		</h2>
	</center>
	<div align="center">
		<form action="rezultUpdate" method="post">
			<table border="1" cellpadding="5">
				<caption>
					<h2>
						<c:if test="${entity != null}">Редактировать</c:if>
						<c:if test="${entity == null}">Добавить</c:if>
					</h2>
				</caption>
				<c:if test="${entity != null}">
					<input type="hidden" name="id" value='${entity.id}' />
				</c:if>			 
				   
			    <tr>
			    	<th>Лотерея:</th>
			    	<td><select name="lottery">
				    	<c:forEach var="type" items="${lotteries}">
					 		<option name="lottery" value="${type.id}">${type.type.name} ${type.dates}</option>				    		
				    	</c:forEach>
					</select>
					</td>
            	</tr>
            
            	<tr>
			    	<th>Номера выигрыша:</th>
			    	<td><input type="text" name="numbers" value='${entity.numbers}' ></td>
            	</tr>
            
            	<tr>
			    	<th>Выигшравший билет:</th>
			    	<td><select name="winner">
				    	<c:forEach var="ticket" items="${tickets}">
					 		<option name="winner" value="${ticket.id}">${ticket.id}-${ticket.numbers}</option>				    		
				    	</c:forEach>
					</select>
					</td>
            	</tr>
                       	
				<tr>
					<td colspan="2" align="center"><input type="submit" value="Сохранить" /></td>
				</tr>
			</table>
		</form>
	</div>
</body>
</html>
