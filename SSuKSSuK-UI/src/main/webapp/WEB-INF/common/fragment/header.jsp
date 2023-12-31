<%--
  Created by IntelliJ IDEA.
  User: taehan
  Date: 2023-12-31
  Time: 오후 2:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
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
            <%
                if(!"true".equals((String) session.getAttribute("sessionInfo"))) {
            %>
            <li><a href="/ootd">Ootd</a></li>
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
</html>
