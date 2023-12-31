<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2023-12-25 025
  Time: 오후 7:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <link rel="stylesheet" href="assets/css/main.css" />
    <noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
    <style>
        #chat-messages {
            flex: 1;
            overflow-y: auto;
            padding: 10px;
            display: flex;
            flex-direction: column-reverse;
        }
        #user-input {
            display: flex;
            padding: 10px;

        }
        #user-input input {
            flex: 1;
            padding: 10px;
            outline: none;
        }
    </style>
    <title>게시글 쓰기</title>
</head>
<body>
<header>
    <h2>게시글 쓰기</h2>
</header>
<form action="boardWrite.jsp">

</form>


</body>
</html>
