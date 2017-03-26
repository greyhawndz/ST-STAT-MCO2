<%-- 
    Document   : coin
    Created on : Mar 26, 2017, 3:42:29 PM
    Author     : glenn
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"
            integrity="sha256-hVVnYaiADRTO2PzUGmuLJr8BLUSjGIZsDYGmIJLv2b8="
    crossorigin="anonymous"></script>
    <link rel="stylesheet" type="text/css"
          href="css/semantic/semantic.min.css">
    <script src="css/semantic/semantic.min.js"></script>

    <title>Coin</title>
    <style>
        #container {
            background-color: #ffffff;
            position: relative;
            z-index: 1;
        }
        .coverFixed {
            background-size: cover;
            background-attachment: fixed;
        }
        .headersection {
            height: 100vh;
        }
    </style>

    <body>
        <div class="container" style="background-color: white;">
            <div class="headersection coverFixed" style="background-image: url(images/coinHeader.jpg);  background-position: 0 -120px; ">
                <jsp:include page="headerInverted.html"></jsp:include>

                <h1 class="ui header inverted centered" style="font-size: 3rem; padding-top:140px;">
                    Experiment
                </h1>
                <h1 class="ui header inverted centered" style="font-size: 7rem;">COIN TOSS
                </h1>
                <h1 class="ui header centered">
                    <div class="ui large basic button inverted centered"><b>View</b> <i class="right arrow icon"></i></div>
                </h1>
            </div>

        </div>


    </body>
</html>
