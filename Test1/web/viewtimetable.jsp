<%-- 
    Document   : viewtimetable
    Created on : Dec 25, 2018, 3:44:33 AM
    Author     : LuongThanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="Timetable" method="post">
            <input type="hidden" name="action" value="Xoa"> 
            <h1>PERSONAL TIMETABLE</h1>
            <label>Theo tuần</label>
            <select id="weeks" name="week_id">
                <option value="1">Tuần 1</option>
                <option value="2">Tuần 2</option>
            </select>
            <input type="submit" value="get_data">
            <br>
            <br>
            <table border="1">
                <tr>
                    <th>Thu</th>
                    <th>Ca</th>
                    <th>Mon Hoc</th>
                    <th>Phong Hoc</th>
                    <th>Giang Vien</th>
                </tr>
                <c:forEach var="element" items="${Lesson}">
                    <tr>
                        <td><c:out value = "${element.getDay()}"/></td>
                        <td><c:out value = "${element.getShift()}" /></td>
                        <td><c:out value = "${element.getSubject()}"/></td>
                        <td><c:out value = "${element.getRoom()}"/></td>
                        <td><c:out value = "${element.getTeacher()}"/></td>
                    </tr>
                </c:forEach>
            </table>
        </form>
        <div>

            <div>
                </body>
                </html>
