<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Login</title>
        <!--<link rel="stylesheet" href="login.css">-->
    </head>
    <body>
        <div class="box">
                <form action="LoginServlet" method="POST">
                <div class="tieude"><span>Login Form</span></div>
                <input type="hidden" name="action" value="Login">
                <input type="text" placeholder="Username -- MSV" name="username" value="${user._user}">
                <input type="password" placeholder="PassWord" name="password">
                <p><i>${message}</i></p>
                <input type="submit" value="checkLogin" class="_Check">
            </form>

        </div>
    </body>
</html>