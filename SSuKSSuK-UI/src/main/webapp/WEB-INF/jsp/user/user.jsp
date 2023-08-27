<%--
  Created by IntelliJ IDEA.
  User: taehan
  Date: 2023-08-16
  Time: 오후 8:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:eval expression="@environment.getProperty('LOGIN.URL')" var="LOGIN_URL"/>
<script src="js/jquery/jquery.js"></script>
<script src="js/jquery/jquery-validate/jquery.validate.js"></script>
<script src="js/jquery/jquery-validate/additional-methods.js"></script>
<script src="js/jquery/jquery-validate/localization/messages_ko.js"></script>
<script src="js/common.js"></script>
<link rel="stylesheet" href="assets/css/login.css"/>

<head>
    <script src="https://use.fontawesome.com/releases/v5.2.0/js/all.js"></script>
</head>

<div class="container" id="container">
    <div class="form-container sign-up-container">
        <form id="signUpFrom">
            <h1>Create Account</h1>
            <div class="social-container">
                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
            </div>
            <span>or use your email for registration</span>
            <input type="text" id="signUp_name" name="NAME" placeholder="Name" />
            <input type="email" id="signUp_email" name="EMAIL" placeholder="Email" />
            <input type="password" id="signUp_password" name="PWD" placeholder="Password" />
            <button type="submit">Sign Up</button>
<%--            <button onclick="fnSignUp()">Sign Up</button>--%>
        </form>
    </div>
    <div class="form-container sign-in-container">
        <form action="#" id="signInFrom">
            <h1>Sign in</h1>
            <div class="social-container">
                <a href="#" class="social"><i class="fab fa-facebook-f"></i></a>
                <a href="#" class="social"><i class="fab fa-google-plus-g"></i></a>
                <a href="#" class="social"><i class="fab fa-linkedin-in"></i></a>
            </div>
            <span>or use your account</span>
            <input type="text" id="email" name="EMAIL" placeholder="Email" />
            <input type="password" id="password" name="PWD" placeholder="Password" />
            <a href="#">Forgot your password?</a>
            <button type="submit">Sign In</button>
<%--            <button onclick="fnLogin();">Sign In</button>--%>
        </form>
    </div>
    <div class="overlay-container">
        <div class="overlay">
            <div class="overlay-panel overlay-left">
                <h1>Welcome Back!</h1>
                <p>To keep connected with us please login with your personal info</p>
                <button class="ghost" id="signIn">Sign In</button>
            </div>
            <div class="overlay-panel overlay-right">
                <h1>Hello, Friend!</h1>
                <p>Enter your personal details and start journey with us</p>
                <button class="ghost" id="signUp">Sign Up</button>
            </div>
        </div>
    </div>
</div>
<script>
    const signUpButton = document.getElementById('signUp');
    const signInButton = document.getElementById('signIn');
    const container = document.getElementById('container');

    signUpButton.addEventListener('click', () => {
        container.classList.add("right-panel-active");
    });

    signInButton.addEventListener('click', () => {
        container.classList.remove("right-panel-active");
    });

    //onclick 방식
    <%--function fnLogin() {--%>
    <%--    let param = {--%>
    <%--        "email": $("#email").val()--%>
    <%--        , "password": $("#password").val()--%>
    <%--    }--%>
    <%--    commAjax.request(--%>
    <%--        "${LOGIN_URL}/LOGINAPI/loginAct"--%>
    <%--        , "POST"--%>
    <%--        , param--%>
    <%--        , function (data) {--%>
    <%--            if (data.result == 'false') {--%>
    <%--                alert("로그인 실패");--%>
    <%--            } else {--%>
    <%--                var form = document.createElement("form");--%>
    <%--                form.setAttribute("style", "display: none");--%>
    <%--                form.setAttribute("action", "/login/redirect");--%>

    <%--                var hiddenField = document.createElement("input");--%>
    <%--                hiddenField.setAttribute("type", "hidden");--%>
    <%--                hiddenField.setAttribute("name", "sessionInfo");--%>
    <%--                hiddenField.setAttribute("value", data.result);--%>
    <%--                form.appendChild(hiddenField);--%>
    <%--                document.body.appendChild(form);--%>

    <%--                form.submit();--%>
    <%--            }--%>
    <%--        }--%>
    <%--    )--%>
    <%--}--%>

    //form submit 방식
    var validator = $('#signInFrom').validate({
        ignore : ".ignore"
        ,rules : {
            EMAIL	: {required : true}
            ,   PWD	: {required : true}
        }
        ,submitHandler : function(form) {

            let param = {
                "email": $("#email").val()
                , "password": $("#password").val()
            }
            commAjax.request(
                "${LOGIN_URL}/LOGINAPI/loginAct"
                , "POST"
                , param
                , function (data) {
                    if (data.result == 'false') {
                        alert("로그인 실패");
                    } else {
                        var form = document.createElement("form");
                        form.setAttribute("style", "display: none");
                        form.setAttribute("action", "/login/redirect");

                        var hiddenField = document.createElement("input");
                        hiddenField.setAttribute("type", "hidden");
                        hiddenField.setAttribute("name", "sessionInfo");
                        hiddenField.setAttribute("value", data.result);
                        form.appendChild(hiddenField);
                        document.body.appendChild(form);

                        form.submit();
                    }
                }
            )
        }
    });

    //onclick 방식
    <%--function fnSignUp() {--%>
    <%--    let param = {--%>
    <%--        "email": $("#signUp_email").val()--%>
    <%--        , "password": $("#signUp_password").val()--%>
    <%--        , "name": $("#signUp_name").val()--%>
    <%--    }--%>
    <%--    // let param = $("#signUpFrom").serialize();--%>
    <%--    commAjax.request(--%>
    <%--        "${LOGIN_URL}/LOGINAPI/signUp"--%>
    <%--        , "POST"--%>
    <%--        , param--%>
    <%--        , function (data) {--%>
    <%--            if (data.result == 'false') {--%>
    <%--                alert("회원가입 실패");--%>
    <%--            } else {--%>
    <%--                location.href = "/login";--%>
    <%--            }--%>
    <%--        }--%>
    <%--    )--%>
    <%--}--%>

    //form submit 방식
    var validator1 = $('#signUpFrom').validate({
        ignore : ".ignore"
        ,rules : {
            EMAIL	: {required : true}
            ,   PASSWORD	: {required : true}
            ,   NAME	: {required : true}
        }
        ,submitHandler : function(form) {

            // if(MESSAGE_HANDLE_CONFIRM('save')){
            //     return false;
            // }

            let param = {
                "user_id": $("#signUp_email").val()
                , "pwd": $("#signUp_password").val()
                , "name": $("#signUp_name").val()
            }
            // let param = $("#signUpFrom").serialize();
            commAjax.request(
                "${LOGIN_URL}/LOGINAPI/signUp"
                , "POST"
                , param
                , function (data) {
                    if (data.result == 'false') {
                        alert("회원가입 실패");
                    } else {
                        location.href = "/login";
                    }
                }
            )
        }
    });
</script>
