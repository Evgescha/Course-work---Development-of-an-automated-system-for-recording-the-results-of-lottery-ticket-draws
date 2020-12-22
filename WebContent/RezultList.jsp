<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Результат</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<link rel="icon" href="images/favicon.png">

	<!-- font -->
	<link href="https://fonts.googleapis.com/css2?family=Spartan:wght@400;500;600;700;900&display=swap" rel="stylesheet"> 
	<!-- end font -->

	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/ionicons.min.css">
	<link rel="stylesheet" href="css/magnific-popup.css">
	<link rel="stylesheet" href="css/fakeLoader.min.css">
	<link rel="stylesheet" href="css/swiper-bundle.min.css">
	<link rel="stylesheet" href="css/style.css">
	
</head>
<body>
	<center>
		<h1>Работа со списком</h1>
        <h2>
        	<a href="rezultEdit">Добавить новый элемент</a>    	&nbsp;&nbsp;&nbsp;
        	<a href="rezult">Список всех элементов</a>        	
        </h2>
	</center>
    <div align="center">
        <table border="1" cellpadding="5">
            <caption><h2>Список результатов розыгрышей</h2></caption>
            <tr>
                <th>ИД</th>
                <th>Лотерея</th>
                <th>Дата проведения</th>
                <th>Выигрышные номера</th>
                <th>Номер выбигравшего билета</th>
                <th>Номера в выигавшем билете</th>
            </tr>
            <c:forEach var="entity" items="${list}">
                <tr>
                    <td><c:out value="${entity.id}" /></td>
                    <td><c:out value="${entity.lottery.type.name}" /></td>
                    <td><c:out value="${entity.lottery.dates}" /></td>
                    <td><c:out value="${entity.numbers}" /></td>
                    <td><c:out value="${entity.winner.id}" /></td>
                    <td><c:out value="${entity.winner.numbers}" /></td>
                    <td>
                    	<a href="rezultEdit?id=<c:out value='${entity.id}' />">Редактировать</a>           	&nbsp;&nbsp;&nbsp;&nbsp;
                    	<a href="rezultDelete?id=<c:out value='${entity.id}' />">Удалить</a>                    	
                    </td>
                </tr>
            </c:forEach>
        </table>
    </div>	
</body>
</html>
