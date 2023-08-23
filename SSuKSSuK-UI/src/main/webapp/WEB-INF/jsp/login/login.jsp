<%--
  Created by IntelliJ IDEA.
  User: taehan
  Date: 2023-08-16
  Time: 오후 8:43
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:eval expression="@environment.getProperty('LOGIN.URL')" var="LOGIN_URL" />
<script src="js/jquery/jquery.js"></script>
<script src="js/common.js"></script>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div>
    id : <input type="text" id="email">
</div>
<div>
    pw : <input type="password" id="password">
</div>
<div>
    <input type="button" onclick="fnLogin()" value="로그인">
</div>

</body>
</html>
<script>
    function fnLogin() {
        let param = {
            "email" : $("#email").val()
            , "password" : $("#password").val()
        }
        commAjax.request(
            "${LOGIN_URL}/LOGINAPI/loginAct"
            , "POST"
            , param
            , function(data) {
                if(data.result == 'false') {
                    alert("로그인 실패")
                }else {
                    location.href="/index"
                }
            }
        )
    }
</script>
