<%--
  Created by IntelliJ IDEA.
  User: ny
  Date: 2023-08-28
  Time: 오후 10:22
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <style>
        .message {
            border-top: 1px solid #ccc;
            padding: 10px;
            margin-top: 5px;
        }
        #chat-container {
            background-image: url('images/pic02.jpg'); /* 이미지 파일의 경로 설정 */
            border-radius: 10px;
            height: 800px;
            display: flex;
            flex-direction: column;
            border: 1px solid #ccc;
        }
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
    <div id="main" class="wrapper style1">
        <div class="container">
            <header class="major">
                <h2>오늘의 옷차림</h2>
                <p>Ipsum dolor feugiat aliquam tempus sed magna lorem consequat accumsan</p>
            </header>

            <!-- Content -->
<%--            <section id="content">--%>
                <div id="chat-container">
                    <div id="chat-messages"></div>
                    <div id="user-input">
                        <input type="text" id="userInput" placeholder="send message" />
                        <a id="sendButton" class="button">send</a>
                    </div>
                </div>
            <%--</section>--%>

        </div>
    </div>
</html>

