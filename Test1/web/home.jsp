<%@page import="Model.Message"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.Date"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <title>Trang chủ</title>
        <!--        <link rel="stylesheet" href="trangchu.css">
                <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css">
                <meta name="viewport" content="width=device-width, initial-scale=1">-->
    </head>
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <div class="tenUser">
                        <%@page import="Model.Student" %>
                        <%
                            Student s = (Student) session.getAttribute("user");
                        %>
                        <span><%= s.getUser()%> - <%= s.getName()%></span>
                    </div>
                    <div class=" menu">
                        <ul class="nav">
                            <li><a href="trangchu.html">Trang chủ</a></li>
                            <li><a href="hoctap.html">Học tập</a></li>
                                <%
                                    Date d = new Date(System.currentTimeMillis());
                                    request.getSession().setAttribute("keyDateSearch", d.toString());
                                    ArrayList<Message> list = new ArrayList<Message>();
                                    request.getSession().setAttribute("listMessage", list);
                                    String linkMessage = "MessageServlet?action=search&date=" + d.toString();
                                %>
                            <li><a href="<%= linkMessage%>">Quản lý cá nhân</a></li>
                            <li><a href="timetable.jsp">Xem thời khóa biểu</a></li>
                            <li><a href="point_table.jsp">Xem điểm</a></li>
                            <li class=""><a href="">Logout</a></li>
                        </ul>
                    </div>
                </div>

                <div class="col-md-9 main ">
                    <div class="iconTB">
                        <p class="glyphicon glyphicon-bell"></p>
                    </div>
                    <div class="sukienTop">
                        <div class="tbsukienTop">
                            <span>          </span>
                        </div>
                    </div>
                    <div class="sukien">

                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
