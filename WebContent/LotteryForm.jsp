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
			<a href="lotteryEdit">Добавить</a> &nbsp;&nbsp;&nbsp;
			<a href="lottery">Список всех</a>
		</h2>
	</center>
	<div align="center">
		<form action="lotteryUpdate" method="post">
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
			    	<th>Тип лотереи:</th>
			    	<td><select name="lottery_type">
				    	<c:forEach var="type" items="${lotteryTypes}">
					 		<option name="lottery_type" value="${type.id}">${type.name}</option>				    		
				    	</c:forEach>
					</select>
					</td>
            	</tr>
            
            	<tr>
			    	<th>Дата проведения:</th>
			    	<td><input type="date" name="dates" value='${entity.dates}' ></td>
            	</tr>
            
            
                <tr>
			    	<th>Приз:</th>
			    	<td><select name="prize">
				    	<c:forEach var="prize" items="${prizes}">
					 		<option value="${prize.id}">${prize.name}</option>				    		
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
