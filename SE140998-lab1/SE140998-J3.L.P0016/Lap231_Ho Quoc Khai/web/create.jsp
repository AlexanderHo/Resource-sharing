<%-- 
    Document   : index
    Created on : May 30, 2021, 7:53:56 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
<!--        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>-->
        <!------ Include the above in your HEAD tag ---------->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Create new account</title>
        <script src='https://www.google.com/recaptcha/api.js?hl=en'></script>
       <link href="css/create.css" rel="stylesheet" type="text/css"/>
  <!--       <%--     <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">--%>
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>-->
        <script>

        </script>
    </head>
    <body>
        <div class="container register" >
            <div class="row">
                   
                <div class="col-md-9 register-right">
                    <form action="MainController" method="POST">
                        <div class="tab-content" id="myTabContent">
<!--                            <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">-->
                               
                                    <span style="color: red; font-size: small">${ERROR}</span>
                                </h3>
                                <div class="row register-form">
                                    <div class="col-md-6">
                                        <div class="form-group">
                                            UserId:<br/>
                                            <input type="email" class="form-control" name="userid"  required/>
                                        </div>
                                        <div class="form-group">
                                            Password: <br/>
                                            <input type="password" class="form-control" id="password" name="password"  required=""/>
                                        </div>
                                        <div class="form-group">
                                            Confirm Password: <br/>
                                            <input type="password" class="form-control" id="confirmPass" name="confirmPass"  oninput="check(this)"  required="" />
                                            <span id="errorConfirm"></span>
                                            <script language='javascript' type='text/javascript'>
                                                function check(input) {
                                                    if (input.value !== document.getElementById('password').value) {
                                                        input.setCustomValidity('Password Must be Matching.');
                                                    } else {
                                                        input.setCustomValidity('');
                                                    }
                                                }
                                            </script>
                                        </div>
                                        <div class="form-group">
                                            Your address: <br/>
                                            <input type="text" class="form-control" name="address"  required=""/>
                                        </div>
                                        <div class="form-group">
                                            Name: </br>
                                            <input type="text" class="form-control" name="name"  required=""/>
                                        </div>
                                        <div class="form-group">
                                            phone: <br/>
                                            <input type="text" pattern="[0-9]{10}" title="The phone must be 10 digits" name="phone" class="form-control"  required="" />
                                        </div>
                                        <input type="hidden" name="role" value="employee"/>
                                        <input type="hidden" name="status" value="active"/>
                                        <input type="submit" class="btnRegister" name="btnAction" value="Create"/>
                                     <a href="index.jsp"><input type="submit" name="" value="Back to login"/><br/></a>
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
