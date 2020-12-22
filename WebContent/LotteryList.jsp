<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Лотереи</title>
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
		<h1>Работа с лотереями</h1>
        <h2>
        	<a href="lotteryEdit">Добавить лотерею</a>    	&nbsp;&nbsp;&nbsp;
        	<a href="lottery">Список всех лотерей</a>        	
        </h2>
	</center>
    <div align="center">
        <table border="1" cellpadding="5">
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
