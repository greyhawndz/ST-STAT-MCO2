<%-- 
    Document   : header
    Created on : Mar 26, 2017, 1:38:03 PM
    Author     : glenn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!--<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>-->

<style>
    .main.menu.fixed {
        box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2);
    }

    .main.menu.fixed {
        box-shadow: 0px 8px 5px rgba(0, 0, 0, 0.2);
    }

    .main.menu {
        border-radius: 0;
        border: none;
        box-shadow: none;
        transition: box-shadow 0.5s ease, padding 0.5s ease;	
    }

</style>

<br>
<div id="transparentmenu"
     class="ui large top  menu main four item secondary menu borderless ">
    <div class="ui container">
        <!-- 	<div href="Home.php" class="header item">
        <img onclick="window.location='Home.php'" class="ui small image"
                src="images\logo.PNG">
</div> -->

        <a href="Home.php" class="item "> Home </a> 
        <a href="About.php" class="item"> Coin </a> 
        <a href="MilkaMinute.php" class="item "> Card </a> <a href="News.php" class="item"> Marble </a>
    </div>
</div>