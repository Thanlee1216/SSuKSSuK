<%--
  Created by IntelliJ IDEA.
  User: taehan
  Date: 2023-09-10
  Time: 오후 4:13
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<spring:eval expression="@environment.getProperty('WS.URL')" var="WS_URL"/>
<script src="/js/jquery/jquery.js"></script>
<script src="/js/jquery/jquery-validate/jquery.validate.js"></script>
<script src="/js/jquery/jquery-validate/additional-methods.js"></script>
<script src="/js/jquery/jquery-validate/localization/messages_ko.js"></script>
<script src="/js/common.js"></script>
<html>
<head>
    <title>준비중입니다.</title>
</head>
<body>
<h1>준비중입니다.</h1>
</body>
</html>

<script>
    function currentLocation() {
        // HTML5의 geolocation으로 사용할 수 있는지 확인합니다
        if (navigator.geolocation) {

            // GeoLocation을 이용해서 접속 위치를 얻어옵니다
            navigator.geolocation.getCurrentPosition(function(position) {

                let lat = position.coords.latitude; // 위도
                let lon = position.coords.longitude; // 경도

                let param = {
                    'lat' : lat
                    , 'lon' : lon
                };
                getWeather(param);

            });
        } else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다

        }
    }

    //onclick 방식
    function getWeather(param) {
        commAjax.request(
            "${WS_URL}/WSAPI/getWeather"
            , "POST"
            , param
            , function (data) {
                console.log('success');
            }
        )
    }

</script>
