
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <title>Login index</title>
        <script src='https://www.google.com/recaptcha/api.js?hl=en'></script>
        <script src="//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js"></script>
        <link href="css/index.css" rel="stylesheet" type="text/css"/>
        <meta name="google-signin-client_id" content="867484619789-7983ciomcml3l8h5vvm7bdcgtq44aa9m.apps.googleusercontent.com">
        <script src="https://apis.google.com/js/platform.js" async defer></script>

    </head>
    <body>


        <div class="wrapper fadeInDown">
            <div id="formContent">

                <div class="fadeIn first">
                    <c:if test="${not empty ERROR}">
                        <p style="color: red">${ERROR}</p>   
                    </c:if>
                </div>

                <form action="MainController" method="POST">
                    <h1 style="text-align: center">Login</h1><br>
                    User ID:<input type="text" id="login"  name="txtUserID"  style="padding: 15px 20px;">
                    PassWord:<input type="password" id="password"  name="txtPassword"style="padding: 15px 20px;"><br/>
                    <input type="submit" value="Login" name="btnAction">
                    <a class="underlineHover" style="" href="create.jsp">Create new account</a>
                </form>

            </div>
        </div>

    </body>
</html>
