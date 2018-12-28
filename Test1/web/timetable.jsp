<%-- 
    Document   : timetable
    Created on : Dec 23, 2018, 9:29:41 AM
    Author     : LuongThanh
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Timetable</title>
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
            
        </form>
        
</html>
