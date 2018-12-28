<%-- 
    Document   : point_view
    Created on : Dec 26, 2018, 10:01:35 AM
    Author     : LuongThanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Xem Diem</title>
    </head>
    <body>
        <form action="Timetable" method="post">
            <input type="text" placeholder="Enter Your Username" name="masv">
            <input type="submit" value="Xem">
            <select id="semesters" name="semester">
                <option value="1">Ki 1</option>
                <option value="2">Ki 2</option>
            </select>
            <br>
            <br>
            <table border="1">
                <tr>
                    <th>Mon Hoc</th>
                    <th>CC</th>
                    <th>TH</th>
                    <th>BT</th>
                    <th>KT</th>
                    <th>Trung Binh</th>
                </tr>
                <c:forEach var="element" items="${Subject}">
                    <tr>
                        <td><c:out value = "${element.getNameSub()}"/></td>
                        <td><c:out value = "${element.getCc()}"/></td>
                        <td><c:out value = "${element.getTh()}"/></td>
                        <td><c:out value = "${element.getBt()}"/></td>
                        <td><c:out value = "${element.getKi()}"/></td>
                        <td><c:out value = "${element.getAverage()}"/></td>
                    </tr>
                </c:forEach>
            </table>
            <br>
            <table border="1">
                <tr>
                    <th>He so 4</th>
                    <th>Trung binh</th>
                </tr>
                <tr>
                    <td></td>
                    <td>${averageF}</td>
                </tr>
            </table>
        </form>
    </body>
</html>
