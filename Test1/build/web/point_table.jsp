<%-- 
    Document   : point_table
    Created on : Dec 26, 2018, 9:57:20 AM
    Author     : LuongThanh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Xem Điểm</title>
    </head>
    <body>
        <form action="Point" mothod="post">
            <input type="text" placeholder="Enter Your Username" name="masv" value="Manh">
            <input type="submit" value="Xem">
            <select id="semesters" name="semester">
                <option value="1">Ki 1</option>
                <option value="2">Ki 2</option>
            </select>

        </form>
    </body>
</html>
