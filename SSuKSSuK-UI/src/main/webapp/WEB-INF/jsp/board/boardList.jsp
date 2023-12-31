<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 2023-08-28 028
  Time: 오후 10:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--<link rel="stylesheet" href="assets/css/login.css"/>--%>

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
</head>
<body class="is-preload landing">
<div id="page-wrapper">

  <!-- Header -->
  <header id="header">
    <h1 id="logo"><a href="index.html">Landed</a></h1>
    <nav id="nav">
      <ul>
        <li><a href="/index">Home</a></li>
        <li>
          <a href="#">Layouts</a>
          <ul>
            <li><a href="left-sidebar.html">Left Sidebar</a></li>
            <li><a href="right-sidebar.html">Right Sidebar</a></li>
            <li><a href="no-sidebar.html">No Sidebar</a></li>
            <li>
              <a href="#">Submenu</a>
              <ul>
                <li><a href="#">Option 1</a></li>
                <li><a href="#">Option 2</a></li>
                <li><a href="#">Option 3</a></li>
                <li><a href="#">Option 4</a></li>
              </ul>
            </li>
          </ul>
        </li>
        <li><a href="elements.html">Elements</a></li>
        <li><a href="/ootd">Ootd</a></li>
        <li><a href="/board">Board</a></li>
        <%
          if(!"true".equals((String) session.getAttribute("sessionInfo"))) {
        %>
        <li><a href="/login" class="button primary">Sign In</a></li>
        <%
        }else {
        %>
        <li><a href="/logout" class="button primary">Sign Out</a></li>
        <%
          }
        %>
      </ul>
    </nav>
  </header>
  <div id="main" class="wrapper style1">
    <div class="container">
      <header class="major">
        <h2>게시판</h2>
      </header>
      <body>
      <h2>게시글 목록</h2>
      <a href="/board/write" class="button primary">글 쓰기</a>
      <table border="1" width="600px">
          <tr>
              <th>번호</th>
              <th>제목</th>
              <th>이름</th>
              <th>작성일</th>
          </tr>
      </table>
      <c:forEach items="boardlist" var="list">

      </c:forEach>
      </body>

    </div>
  </div>
</div>
<!-- Scripts -->
<script src="assets/js/jquery.min.js"></script>
<script src="assets/js/jquery.scrolly.min.js"></script>
<script src="assets/js/jquery.dropotron.min.js"></script>
<script src="assets/js/jquery.scrollex.min.js"></script>
<script src="assets/js/browser.min.js"></script>
<script src="assets/js/breakpoints.min.js"></script>
<script src="assets/js/util.js"></script>
<script src="assets/js/main.js"></script>
<script src="js/jquery/jquery.js"></script>
<script src="js/common.js"></script>
<script src="js/chatbot.js"></script>
</body>
</html></html>
