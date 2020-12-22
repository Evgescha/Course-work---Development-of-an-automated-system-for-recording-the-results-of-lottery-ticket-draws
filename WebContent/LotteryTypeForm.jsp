<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Списки</title>
</head>
<body>
	<center>
		<h1>Создание/Редактирование</h1>
        <h2>
        	<a href="newLotteryType">Добавить новый тип</a>       	&nbsp;&nbsp;&nbsp;
        	<a href="listLotteryType">Список всех типов</a>
        	
        </h2>
	</center>
    <div align="center">
		<c:if test="${entity != null}">
			<form action="updateLotteryType" method="post">
        </c:if>
        <c:if test="${entity == null}">
			<form action="insertLotteryType" method="post">
        </c:if>
        <table border="1" cellpadding="5">
            <caption>
            	<h2>
            		<c:if test="${entity != null}">
            			Редактировать
            		</c:if>
            		<c:if test="${book == null}">
            			Добавить 
            		</c:if>
            	</h2>
            </caption>
        		<c:if test="${entity != null}">
        			<input type="hidden" name="id" value="<c:out value='${entity.id}' />" />
        		</c:if>            
            <tr>
                <th>Title: </th>
                <td>
                	<input type="text" name="title" size="45"
                			value="<c:out value='${entity.name}' />"
                		/>
                </td>
            </tr>           
            <tr>
            	<td colspan="2" align="center">
            		<input type="submit" value="Save" />
            	</td>
            </tr>
        </table>
        </form>
    </div>	
</body>
</html>
