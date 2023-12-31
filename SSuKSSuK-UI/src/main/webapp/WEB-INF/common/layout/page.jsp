<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="t" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<spring:eval expression="@environment.getProperty('WS.URL')" var="WS_URL"/>
<spring:eval expression="@environment.getProperty('LOGIN.URL')" var="LOGIN_URL"/>
<html>
<head>
    <title>Landed by HTML5 UP</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
    <script src="js/common.js"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=946d94f48169090ca5123187383f5626&libraries=services"></script>

    <script src="js/jquery/jquery.js"></script>
    <script src="js/jquery/jquery-validate/jquery.validate.js"></script>
    <script src="js/jquery/jquery-validate/additional-methods.js"></script>
    <script src="js/jquery/jquery-validate/localization/messages_ko.js"></script>

    <link rel="stylesheet" href="assets/css/bootstrap.min.css"/>
</head>
<body>
    <c:set var="URL" value="${requestScope['javax.servlet.forward.request_uri']}"/>
    <c:choose>
        <c:when test="${URL == '/login'}">
            <t:insertAttribute name="body" />
        </c:when>
        <c:otherwise>
            <t:insertAttribute name="config" />
            <body class="is-preload landing">
                <div id="page-wrapper">
                    <t:insertAttribute name="header" />
                    <t:insertAttribute name="body" />
                    <t:insertAttribute name="footer" />
                </div>
            </body>
        </c:otherwise>
    </c:choose>
</body>
</html>
